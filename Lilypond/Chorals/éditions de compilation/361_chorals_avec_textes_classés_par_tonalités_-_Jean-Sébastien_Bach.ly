\version "2.27.1"

\pointAndClickOff

#(use-modules (ice-9 ftw) (ice-9 regex) (ice-9 textual-ports))

#(define own-dir (dirname (car (ly:input-file-line-char-column (*location*)))))
#(define source-dir (string-append own-dir "/../Chorals avec paroles - notes et layout séparés"))

#(define (read-utf8-file path)
   (call-with-input-file path
     (lambda (port)
       (set-port-encoding! port "UTF-8")
       (get-string-all port))))

#(define (extract-field content field-name)
   (let ((m (string-match (string-append "\n[ \t]*" field-name "[ \t]*=[ \t]*\"([^\"]*)\"")
                           (string-append "\n" content))))
     (if m (match:substring m 1) #f)))

#(define (find-matching-brace content open-index)
   (let loop ((i open-index) (depth 0) (in-string #f))
     (if (>= i (string-length content))
         (error "accolade non appariee")
         (let ((c (string-ref content i)))
           (cond
             (in-string
              (cond
                ((and (char=? c #\\) (< (+ i 1) (string-length content))) (loop (+ i 2) depth in-string))
                ((char=? c #\") (loop (+ i 1) depth #f))
                (else (loop (+ i 1) depth in-string))))
             ((char=? c #\") (loop (+ i 1) depth #t))
             ((char=? c #\{) (loop (+ i 1) (+ depth 1) in-string))
             ((char=? c #\}) (if (= depth 1) i (loop (+ i 1) (- depth 1) in-string)))
             (else (loop (+ i 1) depth in-string)))))))

#(define (extract-quoted-concat span)
   (apply string-append (map (lambda (pm) (match:substring pm 1)) (list-matches "\"([^\"]*)\"" span))))

#(define (join-with-slash strs)
   (if (null? strs)
       ""
       (let loop ((lst (cdr strs)) (acc (car strs)))
         (if (null? lst) acc (loop (cdr lst) (string-append acc " / " (car lst)))))))

#(define (extract-markup-field content field-name)
   (or (extract-field content field-name)
       (let ((m (string-match (string-append "\n[ \t]*" field-name "[ \t]*=[ \t]*\\\\markup[ \t]*\\{")
                               (string-append "\n" content))))
         (if (not m)
             #f
             (let* ((full (string-append "\n" content))
                    (open-idx (- (match:end m) 1))
                    (close-idx (find-matching-brace full open-idx))
                    (span (substring full open-idx (+ close-idx 1)))
                    (concat-matches (list-matches "\\\\concat[ \t]*\\{" span)))
               (if (null? concat-matches)
                   (join-with-slash
                     (map (lambda (pm) (match:substring pm 1)) (list-matches "\"([^\"]*)\"" span)))
                   (join-with-slash
                     (map (lambda (cm)
                            (let* ((c-open (- (match:end cm) 1))
                                   (c-close (find-matching-brace span c-open))
                                   (c-span (substring span c-open (+ c-close 1))))
                              (extract-quoted-concat c-span)))
                          concat-matches))))))))

#(define (extract-title content) (extract-markup-field content "title"))
#(define (extract-poet content) (extract-markup-field content "poet"))

#(define (extract-quoted-concat-runs span)
   ;; like extract-quoted-concat, but keeps track of which quoted parts were
   ;; wrapped in \small right before them, so the title can be re-rendered
   ;; with the same "(v. N)" small-size styling as the individual choral files.
   (map (lambda (pm)
          (let* ((start (match:start pm))
                 (prefix (substring span (max 0 (- start 12)) start)))
            (cons (if (string-match "\\\\small[ \t]*$" prefix) 'small 'plain)
                  (match:substring pm 1))))
        (list-matches "\"([^\"]*)\"" span)))

#(define (extract-title-runs content)
   (or (let ((plain (extract-field content "title")))
         (and plain (list (cons 'plain plain))))
       (let ((m (string-match "\n[ \t]*title[ \t]*=[ \t]*\\\\markup[ \t]*\\{"
                               (string-append "\n" content))))
         (and m
              (let* ((full (string-append "\n" content))
                     (open-idx (- (match:end m) 1))
                     (close-idx (find-matching-brace full open-idx))
                     (span (substring full open-idx (+ close-idx 1)))
                     (concat-matches (list-matches "\\\\concat[ \t]*\\{" span)))
                (if (null? concat-matches)
                    (extract-quoted-concat-runs span)
                    (let loop ((cms concat-matches) (first #t) (result '()))
                      (if (null? cms)
                          result
                          (let* ((cm (car cms))
                                 (c-open (- (match:end cm) 1))
                                 (c-close (find-matching-brace span c-open))
                                 (c-span (substring span c-open (+ c-close 1)))
                                 (runs (extract-quoted-concat-runs c-span)))
                            (loop (cdr cms) #f
                                  (append result (if first '() (list (cons 'plain " / "))) runs)))))))))))

#(define (runs->concat-markup runs)
   (apply string-append
     (map (lambda (r)
            (let ((text (escape-quotes (cdr r))))
              (if (eq? (car r) 'small)
                  (string-append " \\tiny \"" text "\"")
                  (string-append " \"" text "\""))))
          runs)))

#(define (strip-verse-marks s)
   (regexp-substitute/global #f "[ \t]*\\(v\\.[^)]*\\)" s 'pre 'post))

#(define (abbreviate-poet s)
   (regexp-substitute/global #f "Auteur[ \t]*:" s 'pre "Aut. :" 'post))

#(define (find-split-point text)
   (let ((m (string-match " : " text)))
     (if m
         (+ (match:start m) 2)
         (let* ((mid (quotient (string-length text) 2))
                (spaces (map match:start (list-matches " " text))))
           (if (null? spaces)
               #f
               (car (sort spaces (lambda (a b) (< (abs (- a mid)) (abs (- b mid)))))))))))

#(define (wrap-long-text text max-len)
   (if (<= (string-length text) max-len)
       (list text)
       (let ((sp (find-split-point text)))
         (if (not sp)
             (list text)
             (list (substring text 0 sp)
                   (substring text (if (char=? (string-ref text sp) #\space) (+ sp 1) sp)))))))

#(define (wrap-poet text)
   (let ((m (string-match " / " text)))
     (if m
         (list (substring text 0 (match:start m)) (substring text (match:end m)))
         (list text))))

#(define (small-lines lines)
   (apply string-append (map (lambda (l) (string-append " \\small \"" (escape-quotes l) "\"")) lines)))

#(define (extract-score-block content)
   (let ((m (string-match "\\\\score[ \t\n]*\\{" content)))
     (if (not m) #f
         (let* ((open-idx (- (match:end m) 1))
                (close-idx (find-matching-brace content open-idx)))
           (substring content (match:start m) (+ close-idx 1))))))

#(define (escape-quotes s)
   (list->string
     (fold-right (lambda (c acc) (if (char=? c #\") (cons #\\ (cons c acc)) (cons c acc)))
                 '() (string->list s))))

#(define (inject-header score-text piece-markup opus-field)
   (let* ((brace-idx (string-index score-text #\{))
          (before (substring score-text 0 (+ brace-idx 1)))
          (after (substring score-text (+ brace-idx 1))))
     (string-append before "\n  \\header { piece = " piece-markup " opus = " opus-field " }\n" after)))

#(define (natural-tokens s)
   (let loop ((i 0) (acc '()))
     (if (>= i (string-length s))
         (reverse acc)
         (let ((digit? (char-numeric? (string-ref s i))))
           (let scan ((j i))
             (if (and (< j (string-length s)) (eq? (char-numeric? (string-ref s j)) digit?))
                 (scan (+ j 1))
                 (loop j (cons (if digit? (string->number (substring s i j)) (substring s i j)) acc))))))))

#(define (natural<? a b)
   (let loop ((la (natural-tokens a)) (lb (natural-tokens b)))
     (cond
       ((and (null? la) (null? lb)) #f)
       ((null? la) #t)
       ((null? lb) #f)
       (else
        (let* ((x (car la)) (y (car lb)))
          (cond
            ((and (number? x) (number? y))
             (if (= x y) (loop (cdr la) (cdr lb)) (< x y)))
            (else
             (let ((sx (if (number? x) (number->string x) x))
                   (sy (if (number? y) (number->string y) y)))
               (if (string=? sx sy) (loop (cdr la) (cdr lb)) (string<? sx sy))))))))))

#(define (bwv-less? a b)
   (natural<? (or (assq-ref a 'opus) "") (or (assq-ref b 'opus) "")))

% --- Tonality-specific machinery ---------------------------------------

#(define tonic-fifths-alist
   '(("c" . 0) ("cis" . 7) ("ces" . -7)
     ("d" . 2) ("dis" . 9) ("des" . -5)
     ("e" . 4) ("eis" . 11) ("ees" . -3)
     ("f" . -1) ("fis" . 6) ("fes" . -8)
     ("g" . 1) ("gis" . 8) ("ges" . -6)
     ("a" . 3) ("ais" . 10) ("aes" . -4)
     ("b" . 5) ("bis" . 12) ("bes" . -2)))

#(define (tonic-fifths name) (cdr (assoc name tonic-fifths-alist)))

#(define mode-offset-alist
   '(("major" . 0) ("minor" . -3) ("dorian" . -2)
     ("phrygian" . -4) ("lydian" . 1) ("mixolydian" . -1)))

#(define (mode-offset mode) (cdr (assoc mode mode-offset-alist)))

#(define major-family-modes '("major" "lydian" "mixolydian"))

#(define (mode-family mode) (if (member mode major-family-modes) "major" "minor"))

#(define mode-priority-alist
   '(("major" . 0) ("lydian" . 1) ("mixolydian" . 2)
     ("minor" . 0) ("dorian" . 1) ("phrygian" . 2)))

#(define (mode-priority mode) (cdr (assoc mode mode-priority-alist)))

#(define tonic-french-alist
   '(("c" . "Do") ("cis" . "Do dièse") ("ces" . "Do bémol")
     ("d" . "Ré") ("dis" . "Ré dièse") ("des" . "Ré bémol")
     ("e" . "Mi") ("eis" . "Mi dièse") ("ees" . "Mi bémol")
     ("f" . "Fa") ("fis" . "Fa dièse") ("fes" . "Fa bémol")
     ("g" . "Sol") ("gis" . "Sol dièse") ("ges" . "Sol bémol")
     ("a" . "La") ("ais" . "La dièse") ("aes" . "La bémol")
     ("b" . "Si") ("bis" . "Si dièse") ("bes" . "Si bémol")))

#(define (tonic-french name) (cdr (assoc name tonic-french-alist)))

#(define mode-french-alist
   '(("major" . "majeur") ("minor" . "mineur") ("dorian" . "dorien")
     ("phrygian" . "phrygien") ("lydian" . "lydien") ("mixolydian" . "mixolydien")))

#(define (mode-french mode) (cdr (assoc mode mode-french-alist)))

#(define (tonality-label key)
   (string-append (tonic-french (car key)) " " (mode-french (cdr key))))

#(define (armure key) (+ (tonic-fifths (car key)) (mode-offset (cdr key))))

#(define (tonality-tuple key)
   (let ((arm (armure key)))
     (list (abs arm)
           (if (>= arm 0) 0 1)
           (if (string=? (mode-family (cdr key)) "major") 0 1)
           (mode-priority (cdr key)))))

#(define (tuple<? ta tb)
   (cond
     ((and (null? ta) (null? tb)) #f)
     ((< (car ta) (car tb)) #t)
     ((> (car ta) (car tb)) #f)
     (else (tuple<? (cdr ta) (cdr tb)))))

#(define (tonality-less? a b)
   (let ((tka (tonality-tuple (assq-ref a 'key)))
         (tkb (tonality-tuple (assq-ref b 'key))))
     (cond
       ((tuple<? tka tkb) #t)
       ((tuple<? tkb tka) #f)
       (else (bwv-less? a b)))))

#(define (extract-key content)
   (let ((m (string-match "\\\\key[ \t]+([a-z]+)[ \t]+\\\\(major|minor|dorian|phrygian|lydian|mixolydian)" content)))
     (if m (cons (match:substring m 1) (match:substring m 2)) (cons "c" "major"))))

% -------------------------------------------------------------------------

#(define layout-files
   (filter (lambda (f) (string-suffix? "_layout.ly" f)) (scandir source-dir)))

#(define (make-record fn)
   (let* ((full (string-append source-dir "/" fn))
          (content (read-utf8-file full))
          (base (substring fn 0 (- (string-length fn) (string-length "_layout.ly")))))
     (list (cons 'base base)
           (cons 'title (extract-title content))
           (cons 'title-runs (extract-title-runs content))
           (cons 'subtitle (extract-field content "subtitle"))
           (cons 'opus (extract-field content "opus"))
           (cons 'poet (extract-poet content))
           (cons 'key (extract-key content))
           (cons 'score (extract-score-block content)))))

#(define records (map make-record layout-files))
#(define sorted-records (sort records tonality-less?))

#(define (toc-item-markup title opus)
   (let* ((title-parts (wrap-poet title))
          (title-parts (if (= (length title-parts) 1)
                            (wrap-long-text (car title-parts) 55)
                            title-parts))
          (row (string-append
                 "\\fill-with-pattern #1 #RIGHT \".\" \\line { \\override #'(line-width . 73) \\fill-with-pattern #1 #RIGHT \".\" \""
                 (car title-parts) "\" \"\" \"" opus "\" } \\fromproperty #'toc:page")))
     (if (= (length title-parts) 1)
         (string-append "\\markup { " row " }")
         (string-append "\\markup \\column { " row
                         " \\line { \"" (cadr title-parts) "\" } \\vspace #0.33 }"))))

#(define (group-header-text key first-group)
   (let ((label (string-upcase (tonality-label key))))
     (string-append
       (if first-group "" "\\pageBreak\n")
       "\\tocItem \\markup { \\fill-line { \\bold \\fontsize #2 \"" (escape-quotes label) "\" \\fromproperty #'toc:page } }\n"
       "\\markup \\column {\n"
       "  \\vspace #1\n"
       "  \\fill-line { \\null \\fontsize #4 \\bold \"" (escape-quotes label) "\" \\null }\n"
       "  \\vspace #0.5\n"
       "  \\line { \\combine \\draw-line #'(60 . 0) \\translate #'(0 . 0.3) \\draw-line #'(60 . 0) }\n"
       "  \\vspace #1\n"
       "}\n")))

#(define (piece-text rec)
   (let* ((base (assq-ref rec 'base))
          (notes-path (string-append source-dir "/" base "_notes.ily"))
          (title-markup-inner (runs->concat-markup (assq-ref rec 'title-runs)))
          (subtitle (assq-ref rec 'subtitle))
          (opus (assq-ref rec 'opus))
          (poet (assq-ref rec 'poet))
          (score (assq-ref rec 'score))
          (piece-markup (if subtitle
                             (string-append "\\markup \\column { \\bold \\concat {" title-markup-inner " }" (small-lines (wrap-long-text subtitle 60)) " }")
                             (string-append "\\markup \\bold \\concat {" title-markup-inner " }")))
          (opus-field (if poet
                          (string-append "\\markup \\right-column { \"" opus "\"" (small-lines (wrap-poet (abbreviate-poet poet))) " }")
                          (string-append "\"" opus "\""))))
     (if (not score)
         ""
         (string-append
           "\\tocItem " (toc-item-markup (escape-quotes (strip-verse-marks (assq-ref rec 'title))) opus) "\n"
           (read-utf8-file notes-path)
           "\n"
           (inject-header score piece-markup opus-field)
           "\n"))))

#(define (build-grouped-content records)
   (let loop ((recs records) (prev-key #f) (first #t) (acc '()))
     (if (null? recs)
         (apply string-append (reverse acc))
         (let* ((rec (car recs))
                (key (assq-ref rec 'key))
                (new-group (or (not prev-key) (not (equal? key prev-key))))
                (header (if new-group (group-header-text key first) "")))
           (loop (cdr recs) key #f (cons (piece-text rec) (cons header acc)))))))

#(define big-content
   (build-grouped-content sorted-records))

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm
  print-first-page-number = ##f

  oddHeaderMarkup = \markup \fill-line { \null \if \should-print-page-number \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \if \should-print-page-number \fromproperty #'page:page-number-string \null }

  oddFooterMarkup = \markup \fill-line { \null "© 2026 — OpenBach" \null }
  evenFooterMarkup = \markup \fill-line { \null "© 2026 — OpenBach" \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))

  tocTitleMarkup = \markup \column {
    \fill-line { \null \fontsize #6 \bold "Table des matières" \null }
    \vspace #2
  }
  tocItemMarkup = \markup \fromproperty #'toc:text
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\bookpart {
  \paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    oddHeaderMarkup = \markup \column { \fill-line { \null \if \should-print-page-number \fromproperty #'page:page-number-string } \if \should-print-page-number \vspace #3 }
    evenHeaderMarkup = \markup \column { \fill-line { \if \should-print-page-number \fromproperty #'page:page-number-string \null } \if \should-print-page-number \vspace #3 }
  }

  \markup \column {
    \vspace #1
    \line { \combine \draw-line #'(105 . 0) \translate #'(0 . 0.7) \draw-line #'(105 . 0) }
    \vspace #4
    \fill-line { \null \fontsize #8 \bold "361 CHORALS" \null }
    \vspace #1
    \fill-line { \null \fontsize #6 "de Jean-Sébastien Bach" \null }
    \vspace #2
    \fill-line { \null \image #X #48.7 #"images/Bach_Haussmann_1748.png" \null }
    \vspace #2
    \fill-line { \null \fontsize #4 \italic "pour SATB sur portées de piano avec textes" \null }
    \vspace #1
    \fill-line { \null \fontsize #4 \italic "classés par tonalités par nombre d'altérations croissant" \null }
    \vspace #6
    \line { \combine \draw-line #'(105 . 0) \translate #'(0 . 0.7) \draw-line #'(105 . 0) }
  }
  \pageBreak

  \markuplist \table-of-contents
  \pageBreak
}

#(ly:parser-include-string big-content)
