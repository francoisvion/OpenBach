\version "2.22.0"

decorateSlur =
#(define-event-function
  (options slur)
  (ly:context-mod? ly:music?)
  (define (option name default)
    (if (symbol-list? name)
        (set! name (string->symbol
                    (string-join (map symbol->string name) "-"))))
    (let ((mod (find (lambda (mod) (and (eq? 'assign (first mod))
                                        (eq? name (second mod))))
                 (ly:get-context-mods options))))
      (if (list? mod) (third mod) default)))

  (define (bezier-core cpts param)
    (define (lerp a b t)
      (cons (+ (* (- 1 t) (car a)) (* t (car b)))
        (+ (* (- 1 t) (cdr a)) (* t (cdr b)))))
    (let loop ((pre '()) (post '()) (cpts cpts))
      (set! pre (append pre (list (first cpts))))
      (set! post (append (list (last cpts)) post))
      (if (< 1 (length cpts))
          (loop pre post (map (lambda (a b) (lerp a b param))
                           (drop-right cpts 1)
                           (drop cpts 1)))
          (list (first cpts) pre post))))
  (define (bezier cpts param) (first (bezier-core cpts param)))
  (define (bezier-pre cpts param) (second (bezier-core cpts param)))
  (define (bezier-post cpts param) (third (bezier-core cpts param)))
  (define (bezier-slope cpts param)
    (define (slope a b) (cons (- (car b) (car a)) (- (cdr b) (cdr a))))
    (bezier (map slope (drop-right cpts 1) (drop cpts 1)) param))
  (define (bezier-adjust cpts start stop)
    (if (> start stop)
        (bezier-adjust (reverse cpts) (- 1 start) (- 1 stop))
        (if (< (- 1 start) stop)
            (bezier-post (bezier-pre cpts stop) (/ start stop))
            (bezier-pre (bezier-post cpts start)
              (- 1 (/ (- 1 stop) (- 1 start)))))))

  (define (slope-angle slope)
    (ly:angle (car slope) (cdr slope)))
  (define (stencil-aligned sten x y)
    (ly:stencil-aligned-to (ly:stencil-aligned-to sten X x) Y y))
  (define (handle-anchor anchor grob cpts)
    (let* ((name (car anchor))
           (param (cdr anchor))
           (text (option (list name 'text)
                   (option 'common-text (markup #:null))))
           (sten (grob-interpret-markup grob text))
           (use-dir? (option 'use-direction #f))
           (dir (ly:grob-property grob 'direction))
           (orient? (option (list name 'orient)
                      (option 'common-orient #f)))
           (align-X (option (list name 'align-X)
                      (option 'common-align-X CENTER)))
           (align-Y (option (list name 'align-Y)
                      (option 'common-align-Y CENTER))))
      (if use-dir? (set! align-Y (* align-Y dir)))
      (set! sten (stencil-aligned sten align-X align-Y))
      (and orient? (set! sten (ly:stencil-rotate-absolute sten
                                (slope-angle (bezier-slope cpts param))
                                0 0)))
      (ly:stencil-translate sten (bezier cpts param))))

  (define (stencil-proc grob)
    (let ((cpts (ly:grob-property grob 'control-points)))
      (ly:grob-set-property! grob 'control-points
        (bezier-adjust cpts
          (option 'curve-start 0)
          (option 'curve-stop 1)))
      (apply ly:stencil-add
        (ly:slur::print grob)
        (map (lambda (anchor) (handle-anchor anchor grob cpts))
          (option 'anchors '())))))
  #{ \tweak stencil #stencil-proc #slur #})

parenthesizeSlur =
\decorateSlur \with {
  curve-start = #0.05
  curve-stop = #0.95
  use-direction = ##t
  anchors = #'((left . 0) (right . 1))
  common-align-Y = #-0.3
  left-text = \markup \fontsize #-4 "("
  right-text = \markup \fontsize #-4 ")"
} \etc

bracketizeSlur =
\decorateSlur \with {
  curve-start = #0.05
  curve-stop = #0.95
  use-direction = ##t
  anchors = #'((left . 0) (right . 1))
  common-align-Y = #-0.3
  left-text = \markup \fontsize #-4 "["
  right-text = \markup \fontsize #-4 "]"
} \etc