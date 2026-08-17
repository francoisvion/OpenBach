\version "2.27.1"

#(define CH (if (defined? 'CH) CH #{ \clef treble  #}))
#(define CL (if (defined? 'CL) CL #{ \clef bass  #}))

#(define RH (if (defined? 'RH) RH #{ \change Staff = "up" #}))
#(define LH (if (defined? 'LH) LH #{ \change Staff = "down" #}))

daCapo = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.direction = #DOWN
    \mark \markup\bold{"Da Capo"}
}

dalSegno = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.direction = #DOWN
    \mark \markup\bold{Dal Segno \raise #1.0 \tiny{\musicglyph "scripts.segno"}}
}

segno = \mark \markup{\musicglyph "scripts.segno"}

VS = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.direction = #DOWN
    \mark \markup\bold{V.S.}
}

#(define clefSoprano  (if (defined? 'clefSoprano)  clefSoprano  #{ \clef treble #}))
#(define clefMezzo    (if (defined? 'clefMezzo)    clefMezzo  #{ \clef treble #}))
#(define clefAlto     (if (defined? 'clefAlto)     clefAlto  #{ \clef treble #}))
#(define clefTenor    (if (defined? 'clefTenor)    clefTenor #{ \clef "treble_8" #}))
#(define clefBaritone (if (defined? 'clefBaritone) clefBaritone #{ \clef bass #}))
#(define clefObDAm    (if (defined? 'clefObDAm)    clefObDAm  #{ \clef treble #}))
#(define transpObDAm  (if (defined? 'transpObDAm)  transpObDAm  #{ a, #}))
#(define clefObDaC    (if (defined? 'clefObDaC)    clefObDaC  #{ \clef treble #}))
#(define transpObDaC  (if (defined? 'transpObDaC)  transpObDaC  #{ f, #}))
#(define clefTaille   (if (defined? 'clefTaille)   clefTaille  #{ \clef treble #}))
#(define transpTaille (if (defined? 'transpTaille) transpTaille  #{ f, #}))

FMarkup = \markup{\normal-text\bold{f}}
F = #(make-dynamic-script FMarkup)
FFMarkup = \markup{\normal-text\bold{ff}}
FF = #(make-dynamic-script FFMarkup)
PMarkup = \markup{\normal-text\bold{p}}
P = #(make-dynamic-script PMarkup)
FPMarkup = \markup{\normal-text\bold{fp}}
FP = #(make-dynamic-script FPMarkup)

ForMarkup = \markup{\normal-text\italic{forte}}
For = \tweak DynamicText.self-alignment-X #LEFT #(make-dynamic-script ForMarkup)
PiaMarkup = \markup{\normal-text\italic{piano}}
Pia = \tweak DynamicText.self-alignment-X #LEFT #(make-dynamic-script PiaMarkup)
PPiaMarkup = \markup{\normal-text\italic{pianissimo}}
PPia = \tweak DynamicText.self-alignment-X #LEFT #(make-dynamic-script PPiaMarkup)

rf = #(make-dynamic-script "rf")

moltopMarkup = \markup{\normal-text \italic molto \dynamic p}
moltop = #(make-dynamic-script moltopMarkup)
moltofMarkup = \markup{\normal-text \italic molto \dynamic f}
moltof = #(make-dynamic-script moltofMarkup)

menopMarkup = \markup{\normal-text \italic meno \dynamic p}
menop = #(make-dynamic-script menopMarkup)
menofMarkup = \markup{\normal-text \italic meno \dynamic f}
menof = #(make-dynamic-script menofMarkup)

pocofMarkup = \markup{\normal-text \italic poco \dynamic f}
pocof = #(make-dynamic-script pocofMarkup)
pocopMarkup = \markup{\normal-text \italic poco \dynamic p}
pocop = #(make-dynamic-script pocopMarkup)

sempreppMarkup = \markup{\normal-text \italic sempre \dynamic pp}
semprepp = #(make-dynamic-script sempreppMarkup)
semprepMarkup = \markup{\normal-text \italic sempre \dynamic p}
semprep = #(make-dynamic-script semprepMarkup)
semprefMarkup = \markup{\normal-text \italic sempre \dynamic f}
sempref = #(make-dynamic-script semprefMarkup)
sempreffMarkup = \markup{\normal-text \italic sempre \dynamic ff}
sempreff = #(make-dynamic-script sempreffMarkup)
sempremoltofMarkup = \markup{\normal-text \italic { sempre molto } \dynamic f}
sempremoltof = #(make-dynamic-script sempremoltofMarkup)

piupMarkup = \markup{\normal-text \italic piú \dynamic p}
piup = #(make-dynamic-script piupMarkup)
piufMarkup = \markup{\normal-text \italic piú \dynamic f}
piuf = #(make-dynamic-script piufMarkup)

crMarkup = \markup{\normal-text \italic cresc.}
cr = #(make-dynamic-script crMarkup)
decrMarkup = \markup{\normal-text \italic cresc.}
decr = #(make-dynamic-script decrMarkup)

extendLV = #(define-music-function (further) (number?) #{
    \override LaissezVibrerTie.X-extent = #'(0 . 0)
    \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
    \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

#(define-markup-command (sixteenth layout props) ()
    "sixteenth note in markup"
    (interpret-markup layout props
        #{\markup \raise #0.5 \smaller \smaller \note-by-number #4 #0 #UP #}))
#(define-markup-command (eighth layout props) ()
    "eighth note in markup"
    (interpret-markup layout props
        #{\markup \raise #0.5 \smaller \smaller \note-by-number #3 #0 #UP #}))
#(define-markup-command (quarter layout props) ()
    "quarter note in markup"
    (interpret-markup layout props
        #{\markup \raise #0.5 \smaller \smaller \note-by-number #2 #0 #UP #}))
#(define-markup-command (half layout props) ()
    "half note in markup"
    (interpret-markup layout props
        #{\markup \raise #0.5 \smaller \smaller \note-by-number #1 #0 #UP #}))

sp=#(define-event-function (n e) (index? ly:event?)
     (set! (ly:music-property e 'spanner-id) (format "sp~a" n))
     e)

espr=#(define-music-function (time music)
        (ly:duration? ly:music?)
        "Put an < > under the music; each dynamic takes @var{time} of time"
        #{ \context Bottom << { <>\< \skip $time <> \> \skip $time <>\! } $music >> #}
    )

sA = {
    \once \override Accidental.stencil = ##f
}
sAon = {
    \override Accidental.stencil = ##f
}
sAoff = {
    \revert Accidental.stencil
}

staffSize = #(define-music-function (new-size) (number?) #{
    \set fontSize = #new-size
    \override StaffSymbol.staff-space = #(magstep new-size)
    \override StaffSymbol.thickness = #(magstep new-size)
#})

#(define-public (parentheses-interface::calc-parenthesis-left-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list (ly:font-get-glyph font "accidentals.leftparen") empty-stencil)))

#(define-public (parentheses-interface::calc-parenthesis-right-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list empty-stencil (ly:font-get-glyph font "accidentals.rightparen"))))

parenthesizeLeft = #(define-music-function (arg) (ly:music?)
#{
  -\tweak Parentheses.stencils
#parentheses-interface::calc-parenthesis-left-stencils
  -\parenthesize $arg
#})
parenthesizeRight = #(define-music-function (arg) (ly:music?)
#{
  -\tweak Parentheses.stencils
#parentheses-interface::calc-parenthesis-right-stencils
  -\parenthesize $arg
#})

pKO = -\parenthesizeLeft-!
% |)
pKS = -\parenthesizeRight-!
% (.
pDO = -\parenthesizeLeft-.
% .)
pDS = -\parenthesizeRight-.

paren = #(define-event-function (dyn) (ly:event?)
            (make-dynamic-script
             #{ \markup{\concat{
                \normal-text\italic\fontsize #2 (
                \pad-x #0.2 #(ly:music-property dyn 'text)
                \normal-text\italic\fontsize #2 )
                }}
             #}
            )
        )
pPPP = \paren\ppp
pPP = \paren\pp
pP = \paren\p
pMP = \paren\mp
pMF = \paren\mf
pF = \paren\f
pFF = \paren\ff
pFFF = \paren\fff
pRF = \paren\rf
pSF = \paren\sf
pFZ = \paren\fz
pFP = \paren\fp
pT = -\parenthesize\trill

pK = -\parenthesize-!
pD = -\parenthesize-.

hairpinBetweenText =
#(define-music-function (leftText rightText) (markup? markup?)
   #{
     \once \override Hairpin.stencil =
     #(lambda (grob)
        (ly:stencil-combine-at-edge
         (ly:stencil-combine-at-edge
          (ly:stencil-aligned-to (grob-interpret-markup grob leftText) Y CENTER)
          X RIGHT
          (ly:stencil-aligned-to (ly:hairpin::print grob) Y CENTER)
          0)
         X RIGHT
         (ly:stencil-aligned-to (grob-interpret-markup grob rightText) Y CENTER)
         0.6))
   #})

parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"

hairpinWithCenteredText =
#(define-music-function (text) (markup?)
#{
  \once \override Voice.Hairpin.after-line-breaking = 
    #(lambda (grob)
      (let* ((stencil (ly:hairpin::print grob))
             (par-y (ly:grob-parent grob Y))
             (dir (ly:grob-property par-y 'direction))
             (new-stencil (ly:stencil-aligned-to
               (ly:stencil-combine-at-edge
                 (ly:stencil-aligned-to stencil X CENTER)
                 Y dir
                 (ly:stencil-aligned-to (grob-interpret-markup grob text) X CENTER))
               X LEFT))
             (staff-space (ly:output-def-lookup (ly:grob-layout grob) 'staff-space))
             (staff-line-thickness
               (ly:output-def-lookup (ly:grob-layout grob) 'line-thickness))
             (grob-name (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
             (par-x (ly:grob-parent grob X))
             (dyn-text (eq? (grob-name par-x) 'DynamicText ))
             (dyn-text-stencil-x-length
               (if dyn-text
                 (interval-length 
                   (ly:stencil-extent (ly:grob-property par-x 'stencil) X))
                 0))
             (x-shift 
               (if dyn-text 
                 (- 
                   (+ staff-space dyn-text-stencil-x-length)
                   (* 0.5 staff-line-thickness)) 0)))

      (ly:grob-set-property! grob 'Y-offset 0)
      (ly:grob-set-property! grob 'stencil 
         (ly:stencil-translate-axis
          new-stencil
          x-shift X))))
#})

hairpinWithInsideText = 
#(define-music-function (text) (markup?)
#{
  \once \override Voice.Hairpin.after-line-breaking = 
    #(lambda (grob)
      (let* ((stencil (ly:hairpin::print grob))
             (par-y (ly:grob-parent grob Y))
             (dir (ly:grob-property par-y 'direction))
             (new-stencil (ly:stencil-aligned-to
               (ly:stencil-combine-at-edge
                 (ly:stencil-aligned-to stencil X RIGHT)
                 Y CENTER
                 (ly:stencil-aligned-to (grob-interpret-markup grob text) X RIGHT))
               X LEFT))
             (staff-space (ly:output-def-lookup (ly:grob-layout grob) 'staff-space))
             (staff-line-thickness
               (ly:output-def-lookup (ly:grob-layout grob) 'line-thickness))
             (grob-name (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
             (par-x (ly:grob-parent grob X))
             (dyn-text (eq? (grob-name par-x) 'DynamicText ))
             (dyn-text-stencil-x-length
               (if dyn-text
                 (interval-length 
                   (ly:stencil-extent (ly:grob-property par-x 'stencil) X))
                 0))
             (x-shift 
               (if dyn-text 
                 (- 
                   (+ staff-space dyn-text-stencil-x-length)
                   (* 0.5 staff-line-thickness)) 0)))

      (ly:grob-set-property! grob 'Y-offset 0)
      (ly:grob-set-property! grob 'stencil 
         (ly:stencil-translate-axis
          new-stencil
          x-shift X))))
#})

blankPage = \markup{
		\column {
		    \combine \null \vspace #25.0
		    "This page intentionally blank to facilitate page turning."
		}
	    }

middleBackPage = \markup{
    \fill-line {
	\center-column{
	    \combine \null \vspace #25.0
	    "This page is intended as the back"
	    "of one of 3 pages that must be put"
	    "beside each other on the stand."
	}
    }
}

#(define (rest-score r)
  (let ((score 0)
	(yoff (ly:grob-property-data r 'Y-offset))
	(sp (ly:grob-property-data r 'staff-position)))
    (if (number? yoff)
	(set! score (+ score 2))
	(if (eq? yoff 'calculation-in-progress)
	    (set! score (- score 3))))
    (and (number? sp)
	 (<= 0 2 sp)
	 (set! score (+ score 2))
	 (set! score (- score (abs (- 1 sp)))))
    score))

#(define (merge-rests-on-positioning grob)
  (let* ((can-merge #f)
	 (elts (ly:grob-object grob 'elements))
	 (num-elts (and (ly:grob-array? elts)
			(ly:grob-array-length elts)))
	 (two-voice? (= num-elts 2)))
    (if two-voice?
	(let* ((v1-grob (ly:grob-array-ref elts 0))
	       (v2-grob (ly:grob-array-ref elts 1))
	       (v1-rest (ly:grob-object v1-grob 'rest))
	       (v2-rest (ly:grob-object v2-grob 'rest)))
	  (and
	   (ly:grob? v1-rest)
	   (ly:grob? v2-rest)
	   (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
		  (v2-duration-log (ly:grob-property v2-rest 'duration-log))
		  (v1-dot (ly:grob-object v1-rest 'dot))
		  (v2-dot (ly:grob-object v2-rest 'dot))
		  (v1-dot-count (and (ly:grob? v1-dot)
				     (ly:grob-property v1-dot 'dot-count -1)))
		  (v2-dot-count (and (ly:grob? v2-dot)
				     (ly:grob-property v2-dot 'dot-count -1))))
	     (set! can-merge
		   (and
		    (number? v1-duration-log)
		    (number? v2-duration-log)
		    (= v1-duration-log v2-duration-log)
		    (eq? v1-dot-count v2-dot-count)))
	     (if can-merge
		 (let* ((keep-v1? (>= (rest-score v1-rest)
				      (rest-score v2-rest)))
			(rest-to-keep (if keep-v1? v1-rest v2-rest))
			(dot-to-kill (if keep-v1? v2-dot v1-dot)))
		   (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
		   (if (ly:grob? dot-to-kill)
		       (ly:grob-suicide! dot-to-kill))
		   (ly:grob-set-property! rest-to-keep 'direction 0)
		   (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
	#t
	(ly:rest-collision::calc-positioning-done grob))))

schleiferVH =
#(define-music-function (start upstep leftstep) (ly:music? number? number?)
  #{
    s1*0( $start \noBreak
    \grace s16
    s1*0)
  #})

schleiferV =
#(define-music-function (start upstep) (ly:music? number?)
    #{
	\schleiferVH #start #upstep #1.2
    #})

schleifer =
#(define-music-function (start) (ly:music?)
    #{
	\schleiferV #start #0.2
    #})

% Example usage:
% \relative c'' { \schleifer a2 d }


%%%%%% snippet %%%%%%

#(define (make-bend x)
    (make-music 'BendAfterEvent
                'delta-step x))

bend = #(define-music-function (delta) (integer?)
    (make-bend (* -1 delta)))

bendBefore = #(define-music-function (argument) (integer?)
    #{
	\once \override BendAfter.rotation = #'(180 -1 -1) \bend #$argument 
    #} )

#(define ((longer-script x) grob)
  (let* ((stil (ly:script-interface::print grob)))
  (ly:stencil-scale stil x 1)))

scaleEspr =
#(define-event-function (x-val)(number?)
#{
    \tweak #'stencil #(longer-script x-val)
    \espressivo
#})

#(define-markup-command (epsfile-mm layout props axis size file-name)
  (number? number? string?)
  (let* ((o-s (ly:output-def-lookup layout 'output-scale))
         (scaled-size (abs (/ size o-s))))
  (if (ly:get-option 'safe)
      (interpret-markup layout props "not allowed in safe")
      (eps-file->stencil axis scaled-size file-name)
      ))) 

KeepEmptyStaves = \set Staff.keepAliveInterfaces = 
			#'( rhythmic-grob-interface 
			    multi-measure-rest-interface 
			    lyric-interface 
			    stanza-number-interface 
			    text-interface
			    text-script-interface
			    percent-repeat-interface) 

stretchHorizontalSpacing =
#(define-music-function (exponent) (number?)
   (_i "This function determines the default value of the property
@var{common-shortest-duration} and multiplies it by a moment
derived from the @var{exponent} passed as an argument.
Negative values of @var{exponent} make the spacing tighter,
while positive values make the spacing looser.
")
   #{
     \override Score.SpacingSpanner.common-shortest-duration =
     #(lambda (grob)
        (let* ((func (assoc-get 'common-shortest-duration
                       (reverse (ly:grob-basic-properties grob))))
               (default-value (func grob))
               (factor (inexact->exact (expt 2 (- 0 exponent))))
               (multiplier (ly:make-moment (rationalize factor 1/2000))))
          (ly:moment-mul default-value multiplier)))
   #})

horizontalSpacingLoose = \stretchHorizontalSpacing #1
horizontalSpacingTight = \stretchHorizontalSpacing #-1


% By Robin Bannister. Replacement for vspace with absolute dimensions.
#(define-markup-command (mm-feed layout props amount) (number?)
  (let ((o-s (ly:output-def-lookup layout 'output-scale)))
      (ly:make-stencil "" '(0 . 0) (cons 0 (abs (/ amount o-s))))))

#(define-markup-command (put-mm layout props dir amount arg)
  (ly:dir? number? markup?) (interpret-markup layout props
      (markup #:put-adjacent Y dir arg #:mm-feed amount)))

transOn = {
  \override NoteColumn.ignore-collision = ##t
  \override NoteHead.no-ledgers = ##t
  \hide NoteHead
  \hide Stem
  \hide Flag
  \hide Beam
  \hide Dots
  \hide Accidental
  \hide TupletBracket
  \hide TupletNumber
}

transOff = {
  \revert NoteColumn.ignore-collision
  \revert NoteHead.no-ledgers
  \revert NoteHead.transparent
  \revert Stem.transparent
  \revert Beam.transparent
  \revert Flag.transparent
  \revert Dots.transparent
  \revert Accidental.transparent
  \revert TupletBracket.transparent
  \revert TupletNumber.transparent
} 

#(define (make-thumb-bracket-props location spec-str settings-alist)
   (define (get-dir ch)
     (case (char-upcase ch)
       ((#\R) 1)
       ((#\L) -1)
       (else 0)))
   (define (get-digit ch)
     (if (char-numeric? ch)
         (- (char->integer ch) (char->integer #\0))
         0))

   ;; Remplacement de (_ "...") par une chaîne classique ou (G_ "...")
   ;; pour être compatible Guile 2.2 / 3.0
   (let* (
     ;% decode spec
     (vbigger+ (* 5 (string-count spec-str #\|)))
     (vdir (get-dir (string-ref spec-str 0)))
     (hdir (get-dir (string-ref spec-str (1- (string-length spec-str)))))
     (closed? (string-contains spec-str "c"))
     )
     (let* (
       ;% collect settings
       (vO 0) (hO 0) (hpad-base 0.5) ;% givens
       (vsize 2) (vsize+ 0)
       (htip 0.6)
       (bracket (lambda (grob)
                  (let* (
                    ;% collect chord range from grob
                    )
                    (grob-interpret-markup grob
                      (markup
                        #:translate (cons hO vO)
                        #:combine #:draw-line (cons htip vO)
                        #:combine #:translate (cons hO (if closed? (* vdir (+ vsize vsize+)) vO))
                        #:draw-line (cons htip vO)
                        #:translate (cons (if (positive? hdir) htip hO) vO)
                        #:draw-line (cons hO (* vdir (+ vsize vsize+)))))))))
       `((stencil . ,bracket)))))
      `(X-extent . ,h-interval)
      (padding . ,((if hcloser? - +) hpad-base hcloser)) 
      (direction . ,hdir) 
      (thickness . ,(get 'weight)))))))

thumbBracketEx = #(define-music-function 
  (spec settings) (string? list?)
 (let* (
   (props (make-thumb-bracket-props (*location*) spec settings)))
   (define (get key) (assq-ref props key))
  (if (null? props) (make-music 'SequentialMusic 'void #t) 
   #{
     \once \override Arpeggio.stencil   = #(get 'stencil)
     \once \override Arpeggio.X-extent  = #(get 'X-extent)
     \once \override Arpeggio.padding   = #(get 'padding)
     \once \override Arpeggio.direction = #(get 'direction) 
     \once \override Arpeggio.thickness = #(get 'thickness)
     $(make-music 'EventChord 'elements (list (make-music 'ArpeggioEvent)))
   #})))

thumbBracket = #(define-music-function (spec) (string?)
 (let ((settings thumbBracketSettings)) ;% as Defaults, or user defined
   ((ly:music-function-extract thumbBracketEx) 
       spec settings)))

thumbBracketDefaults = #(quasiquote( 
  (hdir-init . ,LEFT) ;% usual placement wrt note: on RIGHT or LEFT
  (weight    . 1.5  ) ;% line thickness
  (htip      . 0.8  ) ;% horizontal length of bracket tip
  (vtip      . 0.75 ) ;% usual vertical overlap beyond notehead centre 
  (vtip=     . 0.30 ) ;% alternative vertical overlap 
  (vstem     . 1.25 ) ;% length of an unextended open bracket (excl. tip)
  (vmin      . 0.6  ) ;% minimum length of a closed bracket
  (hvernier  . 0.2  ) ;% horizontal quasi-extra-offset
  ))

thumbBracketSettings =  \thumbBracketDefaults

 #(define thBr thumbBracket) thbR = \thBr "R" thbL = \thBr "L"

offsetPositions =
  #(define-music-function (offsets) (pair?)
    #{
       \once \override Slur.positions = #(lambda (grob) 
     `(,(+ (car offsets) (cdar (ly:slur::calc-control-points grob))) . 
       ,(+ (cdr offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
    #})

#(define has-one-or-less (lambda (lst) (or (null? lst) (null? (cdr lst)))))
#(define has-at-least-two (lambda (lst) (not (has-one-or-less lst))))
#(define (all-equal lst pred)
   (or (has-one-or-less lst)
       (and (pred (car lst) (cadr lst)) (all-equal (cdr lst) pred))))

#(define merge-rests-engraver
   (lambda (context)
     (let ((rest-same-length
            (lambda (rest-a rest-b)
              (eq? (ly:grob-property rest-a 'duration-log)
                   (ly:grob-property rest-b 'duration-log))))
           (rests '()))
       `((start-translation-timestep . ,(lambda (trans)
                                          (set! rests '())))
         (stop-translation-timestep . ,(lambda (trans)
                                         (if (and (has-at-least-two
                                                   rests) (all-equal rests rest-same-length))
                                             (for-each
                                              (lambda (rest)
                                                (ly:grob-set-property! rest 'Y-offset 0))
                                              rests))))
         (acknowledgers
          (rest-interface . ,(lambda (engraver grob source-engraver)
                               (if (eq? 'Rest (assoc-ref
                                               (ly:grob-property grob 'meta) 'name))
                                   (set! rests (cons grob rests))))))))))

#(define merge-mmrests-engraver
   (lambda (context)
     (let* ((mmrest-same-length
             (lambda (rest-a rest-b)
               (eq? (ly:grob-property rest-a 'measure-count)
                    (ly:grob-property rest-b 'measure-count))))
            (merge-mmrests
             (lambda (rests)
               (if (all-equal rests mmrest-same-length)
                   (let ((offset (if (eq? (ly:grob-property (car rests)
                                            'measure-count) 1) 1 0)))
                     (for-each
                      (lambda (rest) (ly:grob-set-property! rest
                                       'Y-offset offset))
                      rests)))))
            (curr-rests '())
            (rests '()))
       `((start-translation-timestep . ,(lambda (trans)
                                          (set! curr-rests '())))
         (stop-translation-timestep . ,(lambda (trans)
                                         (if (has-at-least-two curr-rests)
                                             (set! rests (cons curr-rests rests)))))
         (finalize . ,(lambda (translator)
                        (for-each merge-mmrests rests)))
         (acknowledgers
          (rest-interface . ,(lambda (engraver grob source-engraver)
                               (if (eq? 'MultiMeasureRest (assoc-ref
                                                           (ly:grob-property grob 'meta) 'name))
                                   (set! curr-rests (cons grob curr-rests))))))))))

#(define-markup-list-command (Tacet layout props arg) (markup-list?)
    "Tacet markup command"
    (interpret-markup-list layout props
        #{
            \markuplist{\fill-line{\center-column{
                \combine \null \vspace #0.6
                \line{\bold{ \fontsize #3 { #arg — \smallCaps Tacet }}}
                \combine \null \vspace #0.2
            }}}
        #}
    ))