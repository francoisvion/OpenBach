\version "2.27.1"

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

#(define (extract-title content)
   (or (extract-field content "title")
       (let ((m (string-match "\n[ \t]*title[ \t]*=[ \t]*\\\\markup[ \t]*\\{"
                               (string-append "\n" content))))
         (if (not m)
             #f
             (let* ((full (string-append "\n" content))
                    (open-idx (- (match:end m) 1))
                    (close-idx (find-matching-brace full open-idx))
                    (span (substring full open-idx (+ close-idx 1)))
                    (parts (list-matches "\"([^\"]*)\"" span)))
               (apply string-append (map (lambda (pm) (match:substring pm 1)) parts)))))))

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

#(define (inject-header score-text piece-markup opus)
   (let* ((brace-idx (string-index score-text #\{))
          (before (substring score-text 0 (+ brace-idx 1)))
          (after (substring score-text (+ brace-idx 1))))
     (string-append before "\n  \\header { piece = " piece-markup " opus = \"" opus "\" }\n" after)))

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
           (cons 'subtitle (extract-field content "subtitle"))
           (cons 'opus (extract-field content "opus"))
           (cons 'score (extract-score-block content)))))

#(define records (map make-record layout-files))
#(define sorted-records (sort records bwv-less?))

#(define (piece-text rec)
   (let* ((base (assq-ref rec 'base))
          (notes-path (string-append source-dir "/" base "_notes.ily"))
          (title (escape-quotes (assq-ref rec 'title)))
          (subtitle (assq-ref rec 'subtitle))
          (opus (assq-ref rec 'opus))
          (score (assq-ref rec 'score))
          (piece-markup (if subtitle
                             (string-append "\\markup \\column { \\bold \"" title "\" \\small \"" (escape-quotes subtitle) "\" }")
                             (string-append "\\markup \\bold \"" title "\""))))
     (if (not score)
         ""
         (string-append
           "\\tocItem \\markup { \"" title "  —  " opus "\" }\n"
           (read-utf8-file notes-path)
           "\n"
           (inject-header score piece-markup opus)
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

  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

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
  tocItemMarkup = \markup \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }
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

\markup \null
\markup \vspace #10
\markup \fill-line { \null \fontsize #8 \bold "RECUEIL DES CHORALS" \null }
\markup \vspace #1
\markup \fill-line { \null \fontsize #6 "de Jean-Sébastien Bach" \null }
\markup \vspace #4
\markup \fill-line { \null \fontsize #4 \italic "Classés par ordre croissant de numéro BWV" \null }
\markup \vspace #20
\markup \fill-line { \null "© 2026 — OpenBach" \null }
\pageBreak
\markuplist \table-of-contents
\pageBreak

#(ly:parser-include-string big-content)
