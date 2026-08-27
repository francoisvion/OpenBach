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

#(define (bwv-sort-key opus-str)
   (let ((m (string-match "BWV[ \t]+([0-9]+)(.*)" (or opus-str ""))))
     (if m
         (cons (string->number (match:substring m 1)) (match:substring m 2))
         (cons 999999 (or opus-str "")))))

#(define (bwv-less? a b)
   (let ((ka (bwv-sort-key (assq-ref a 'opus)))
         (kb (bwv-sort-key (assq-ref b 'opus))))
     (or (< (car ka) (car kb))
         (and (= (car ka) (car kb)) (string<? (cdr ka) (cdr kb))))))

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
           (cons 'score (extract-score-block content)))))

#(define records (map make-record layout-files))
#(define sorted-records (sort records bwv-less?))

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
           "\\tocItem \\markup { \"" (escape-quotes (strip-verse-marks (assq-ref rec 'title))) "  —  " opus "\" }\n"
           (read-utf8-file notes-path)
           "\n"
           (inject-header score piece-markup opus-field)
           "\n"))))

#(define big-content
   (apply string-append (map piece-text sorted-records)))

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
  tocItemMarkup = \markup \fill-with-pattern #1 #RIGHT "." \fromproperty #'toc:text \fromproperty #'toc:page
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

  \markup \vspace #6
  \markup \line {
    \combine \draw-line #'(50 . 0) \translate #'(0 . 0.4) \draw-line #'(50 . 0)
    \fontsize #3 "❊"
    \combine \draw-line #'(50 . 0) \translate #'(0 . 0.4) \draw-line #'(50 . 0)
  }
  \markup \vspace #4
  \markup \fill-line { \null \fontsize #8 \bold "361 CHORALS" \null }
  \markup \vspace #1
  \markup \fill-line { \null \fontsize #6 "de Jean-Sébastien Bach" \null }
  \markup \vspace #2
  \markup \fill-line { \null \epsfile #X #11 #"images/Bach_Haussmann_1748.eps" \null }
  \markup \vspace #2
  \markup \fill-line { \null \fontsize #4 \italic "pour SATB sur portées de piano avec paroles" \null }
  \markup \vspace #1
  \markup \fill-line { \null \fontsize #4 \italic "Classés par ordre croissant de numéro BWV" \null }
  \markup \vspace #4
  \markup \line {
    \combine \draw-line #'(50 . 0) \translate #'(0 . 0.4) \draw-line #'(50 . 0)
    \fontsize #3 "❊"
    \combine \draw-line #'(50 . 0) \translate #'(0 . 0.4) \draw-line #'(50 . 0)
  }
  \pageBreak

  \markuplist \table-of-contents
  \pageBreak
}

#(ly:parser-include-string big-content)
