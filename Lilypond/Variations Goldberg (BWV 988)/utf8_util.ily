%% UTF-8 utilities
%by http://www.mrlauer.org/music/
#(define (list->utf-8 l) (apply string-append (map ly:wide-char->utf-8 l)))
           
#(define (utf-8->list str)
    (define (numBytes leader)
            (cond ((< leader #x80) 1)
                  ((< leader #xc0) (begin (stderr "programming-error: bad utf-8:~x\n" leader) 1))
                  ((< leader #xe0) 2)
                  ((< leader #xf0) 3)
                  ((< leader #xf8) 4)
                  (else (begin (stderr "programming-error: utf-8 too big:~x\n" leader) 1))))
     (define (helper start l n)
             (if (= n 0) start
                 (helper (+ (* start #x40) (modulo (car l) #x40)) (cdr l) (- n 1))))
     (define (utf-8->int l)
              (let* ((leader (car l))
                     (n (- (numBytes leader) 1))
                     (fac (/ #x80 (expt 2 n)))
                     (rest (cdr l))
                     (result (helper (modulo leader fac) rest n)))
                    result))
     (define (toListHelper lst chars)
                 (if (null? lst) (reverse chars)
                     (let* ((c (utf-8->int lst))
                            (n (numBytes (car lst)))
                            (t (list-tail lst n))
                            (newC (cons c chars)))
                        (toListHelper t newC))))
    (toListHelper (map char->integer (string->list str)) '() ))

%These are appropriate for Junicode, and other fonts.  Override as necessary
oldStyleZeroCode = ##xF730
smallCapsACode = ##xF761

%For Linux Libertine
%oldStyleZeroCodeLL = ##xE01A
%smallCapsACodeLL = ##xE051

#(define (change-char-helper aa test? offset)
    (if (string? aa) 
        (let* ((chars (string->list aa))
               (tosc (map (lambda (c)
                               (if (and (<= (char->integer c) 127) (test? c))
                                   (ly:wide-char->utf-8 (+ (char->integer c) offset))
                                   (string c) ) )
                           chars))
                (newStr (apply string-append tosc)))
             newStr)
         aa)
)

#(define (to-old-style str) (change-char-helper str char-numeric?
                                (- oldStyleZeroCode (char->integer #\0))))
                                
#(define (to-small-caps str) (change-char-helper str char-lower-case?
                                (- smallCapsACode (char->integer #\a))))

#(define-markup-command (realCaps layout props str) (markup?)
    "Real small capitals"
    (interpret-markup layout props (to-small-caps str)))
    
#(define-markup-command (oldStyleNum layout props str) (markup?)
    "Old-style numerals"
    (interpret-markup layout props (to-old-style str)))
    
#(define-markup-command (smallCapsOldStyle layout props str) (markup?)
    "Real small caps and old-style numerals"
    (interpret-markup layout props (to-old-style (to-small-caps str))))
    
#(define-markup-command (concat layout props markups) (markup-list?)
    "Concatenate markups with no spaces"
    (interpret-markup layout (cons '((word-space . 0)) props) 
            (make-line-markup markups)))

