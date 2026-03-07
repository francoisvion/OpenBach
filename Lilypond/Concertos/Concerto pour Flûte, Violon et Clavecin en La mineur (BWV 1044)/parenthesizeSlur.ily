\version "2.22.0"

parenthesizeSlur =
-\tweak stencil
#(lambda (grob)
   (let* ((cp (ly:grob-property grob 'control-points))
          (lp (grob-interpret-markup grob (markup #:teeny "(")))
          (rp (grob-interpret-markup grob (markup #:teeny ")"))))
     (set! lp (ly:stencil-aligned-to lp Y CENTER))
     (set! lp (ly:stencil-aligned-to lp X 0.2))
     (set! lp (ly:stencil-translate lp (first cp)))
     (set! rp (ly:stencil-aligned-to rp Y CENTER))
     (set! rp (ly:stencil-aligned-to rp X -0.2))
     (set! rp (ly:stencil-translate rp (last cp)))
     (list-set! cp 0
       (cons (cdr (ly:stencil-extent lp X))
         (cdr (first cp))))
     (list-set! cp (1- (length cp))
       (cons (car (ly:stencil-extent rp X))
         (cdr (last cp))))
     (ly:grob-set-property! grob 'control-points cp)
     (apply ly:stencil-add (list lp rp
                             (ly:slur::print grob)))))
\etc