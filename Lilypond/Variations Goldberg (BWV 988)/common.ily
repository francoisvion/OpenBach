cueWhile =
#(define-music-function
   (parser location instrument name dir music)
   (string? string? ly:dir? ly:music?)
   #{
     \cueDuring $instrument #$dir {
       \once \override TextScript.self-alignment-X = #RIGHT
       \once \override TextScript.direction = $dir
       s1*0-\markup { \tiny $name }
       $music
     }
   #})
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% LSR 336
%% Usage:
%%   \new Staff \with {
%%     \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%   } << \somevoice \\ \othervoice >>
%% or (globally):
%%   \layout {
%%     \context {
%%       \Staff
%%       \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%     }
%%   } 
%%
%% Limitations:
%% - only handles two voices
%% - does not handle multi-measure/whole-measure rests
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
		 ;; keep the rest that looks best:
		 (let* ((keep-v1? (>= (rest-score v1-rest)
				      (rest-score v2-rest)))
			(rest-to-keep (if keep-v1? v1-rest v2-rest))
			(dot-to-kill (if keep-v1? v2-dot v1-dot)))
		   ;; uncomment if you're curious of which rest was chosen:
		   ;;(ly:grob-set-property! v1-rest 'color green)
		   ;;(ly:grob-set-property! v2-rest 'color blue)
		   (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
		   (if (ly:grob? dot-to-kill)
		       (ly:grob-suicide! dot-to-kill))
		   (ly:grob-set-property! rest-to-keep 'direction 0)
		   (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
	#t
	(ly:rest-collision::calc-positioning-done grob))))
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% LSR 467
#(define-markup-command (markupWithHeader layout props markup) (markup?)
  "Interpret the given markup with the header fields added to the props. 
   This way, one can re-use the same functions (using fromproperty 
   #'header:field) in the header block and as top-level markup."
  (let* (
      ; TODO: If we are inside a score, add the score's local header block, too!
      ; Currently, I only use the global header block, stored in $defaultheader
      (scopes (list $defaultheader))
      (alists (map ly:module->alist scopes))
  
      (prefixed-alist
        (map (lambda (alist)
          (map (lambda (entry)
            (cons
              (string->symbol (string-append "header:" (symbol->string (car entry))))
              (cdr entry)))
            alist))
          alists))
      (props (append prefixed-alist
              props
              (layout-extract-page-properties layout)))
    )
    (interpret-markup layout props markup)
  )
)
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% LSR 312 display multibar-lines on demand 
showMultiRests = { \set Score.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    multi-measure-rest-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface) 
	}
hideMultiRests = { \set Score.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface) 
	}

showStaff = {
 \set Staff.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    multi-measure-rest-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface)
}
showStaffReset = \unset Staff.keepAliveInterfaces

% markups usage: \markUpBegin \mark \markup { \bold "Sonata" } 
markUpBegin = {
  \once \override Score . RehearsalMark.break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark.direction = #UP
  \once \override Score . RehearsalMark.self-alignment-X = #LEFT
  \once \override Score . RehearsalMark.padding = #1
}

markDownBegin = {
  \once \override Score . RehearsalMark.break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark.direction = #DOWN
  \once \override Score . RehearsalMark.self-alignment-X = #LEFT
  \once \override Score . RehearsalMark.padding = #1
}

markUpEnd = {
  \once \override Score . RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark.direction = #UP
  \once \override Score . RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark.padding = #1
}

markDownEnd = {
  \once \override Score . RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark.direction = #DOWN
  \once \override Score . RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark.padding = #1
}

segnoMark = { 
  \once \override Staff . RehearsalMark.break-visibility = #end-of-line-invisible
  \once \override Staff . RehearsalMark.direction = #UP
  \once \override Staff . RehearsalMark.self-alignment-X = #CENTER
  \mark \markup \musicglyph #"scripts.segno"
}

segnoMarkDown = { 
  \once \override Staff . RehearsalMark.break-visibility = #end-of-line-invisible
  \once \override Staff . RehearsalMark.direction = #DOWN
  \once \override Staff . RehearsalMark.self-alignment-X = #CENTER
  \mark \markup \musicglyph #"scripts.segno"
}
segnoMarkEnd = { 
  \once \override Staff . RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Staff . RehearsalMark.direction = #UP
  \once \override Staff . RehearsalMark.self-alignment-X = #CENTER
  \mark \markup \musicglyph #"scripts.segno"
}

segnoMarkDownEnd = { 
  \once \override Staff . RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Staff . RehearsalMark.direction = #DOWN
  \once \override Staff . RehearsalMark.self-alignment-X = #CENTER
  \mark \markup \musicglyph #"scripts.segno"
}

dacapoOverrides = {
  \once \override Score . RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark.direction = #DOWN
  \once \override Score . RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark.padding = #2
}

custosNote = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead.stencil = #ly:text-interface::print
              \once \override Voice.NoteHead.text =
              #(markup #:null #:raise 0.0 #:musicglyph "custodes.mensural.u0")
              \once \override Voice.Stem.stencil = ##f #}
              note)))

longupprall = 
#(markup #:halign -1 #:combine #:musicglyph "scripts.upprall" #:halign -2 #:musicglyph "scripts.prallprall")
longdownprall = 
#(markup #:halign -1 #:combine #:musicglyph "scripts.downprall" #:halign -2 #:musicglyph "scripts.prallprall")
longprall = 
#(markup #:halign -1 #:combine #:musicglyph "scripts.prallprall" #:halign -2 #:musicglyph "scripts.prallprall")

akzent = 
#(let ((m (make-articulation "staccatissimo")))
   (set! (ly:music-property m 'tweaks)
                (acons 'stencil (lambda (grob)
                                  (grob-interpret-markup
                                   grob
                                   (make-musicglyph-markup "rests.M1mensural")))
                       (ly:music-property m 'tweaks)))
   m)


%usage: \schleifer a2 e'
schleifer =
#(define-music-function (parser location start) (ly:music?)
  #{\once \override Slur $'direction = #UP
    \once \override Slur $'stencil = $(lambda (grob)
    (let* ((slur-stencil (ly:slur::print grob))
            (Y-ext (ly:stencil-extent slur-stencil Y))
            (text-stencil (ly:text-interface::print grob))
            (prall-stencil (ly:stencil-translate text-stencil
                          (cons 2.5 (car Y-ext))))
            (combo-stencil (ly:stencil-combine-at-edge
                            prall-stencil X RIGHT
                            slur-stencil 0 0))
            (combo-X-ext (ly:stencil-extent combo-stencil X)))
      (ly:stencil-translate combo-stencil (cons 0 -1))))
    \once \override Slur $'positions = $'(-1 . 2)
    \once \override Slur $'text = \markup {
    \musicglyph #"scripts.prall" }
    \once \override Slur $'control-points = $(lambda (grob)
    (let* ((coords (ly:slur::calc-control-points grob))
            (point-0 (list-ref coords 0))
            (point-1 (list-ref coords 1))
            (point-2 (list-ref coords 2))
            (point-3 (list-ref coords 3)))
    (set-car! point-0 (+ (car point-0) 2))
    (set-car! point-1 (+ (car point-1) 1.5))
    (set-car! point-2 (+ (car point-2) -1))
    (set-car! point-3 (+ (car point-3) -1))
    coords))
    s1*0( $start
    \once \override Rest $'transparent = $#t
    \once \override Rest $'X-extent = $'(0 . 3)
    \grace r1
    s1*0) #})
    
%usage: \grace{\graceSchleifer c16} e
graceSchleifer = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead.stencil = #ly:text-interface::print
              \once \override Voice.NoteHead.X-extent = #'(-2 . -0) 
              \once \override Voice.NoteHead.text =
              #(markup #:large #:halign .2 #:raise 0.0 #:combine #:halign .8 #:musicglyph "scripts.prall"  
              #:rotate 140 #:normalsize #:raise 2.4 #:musicglyph "flags.u3")
              \once \override Stem.stencil = ##f 
   			  \once \override Flag.stencil = ##f #}
              note)))

%              #(markup #:large #:halign 0 #:raise 0.0 #:combine #:halign 0.8 #:musicglyph "scripts.prall"  
%              #:rotate 140 #:normalsize #:raise 2.4 #:musicglyph "flags.u3")
graceSlur = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead.stencil = #ly:text-interface::print
              \once \override Voice.NoteHead.X-extent = #'(-2 . -0) 
              \once \override Voice.NoteHead.text =
              #(markup #:large #:halign 0.25 #:raise 0.0 #:rotate 45 #:musicglyph "scripts.lcomma")
   			  \once \override Voice.Stem.stencil = ##f
   			  \once \override Flag.stencil = ##f #}
              note)))

%twoline markup
% usage: \markup \twolines #"firstline" #"secondline" 
#(define-markup-command (twolines layout props a b) (string? string?)
(interpret-markup layout props
(markup #:center-column (a  b) )))

% Incipit Clefs
% usage: \incipitClef #'<clef> \markup instrumentname 
incipitClef =
#(define-music-function (parser location a b)  (string? markup?)
#{ \set Staff.instrumentName = \markup{ \score{
		\new Staff \with { \remove "Time_signature_engraver" }
		{ \set Staff.instrumentName = $b \clef $a s4 }
		\layout {\context { \Staff \override VerticalAxisGroup.Y-extent = #'(-4 . 4)} }
	}}
#})

addIncipitClef =
#(define-music-function (parser location a b)  (string? string?)
#{ \set Staff.instrumentName = \markup{ \score{
		\new Staff \with { \remove "Time_signature_engraver" }
		{ \set Staff.instrumentName = $b \clef $a s4 }
		\layout {\context { \Staff \override VerticalAxisGroup.Y-extent = #'(-4 . 4)} }
	}}
#})

%override stem length \stemLen #4 c'
stemLen = #(define-music-function (parser location varLength) (number?)
(make-music
          'ContextSpeccedMusic
          'context-type
          'Bottom
          'element
          (make-music
            'OverrideProperty
            'pop-first #t
            'grob-property-path (list (quote length))
            'grob-value varLength
            'once #t
            'symbol
            'Stem))
)

%shift Note \shiftNote #0.5 c'
shiftNote = #(define-music-function (parser location varShift) (number?)
(make-music
          'ContextSpeccedMusic
          'context-type
          'Bottom
          'element
          (make-music
            'OverrideProperty
            'pop-first #t
            'grob-property-path (list (quote force-hshift))
            'grob-value varShift
            'once #t
            'symbol
            'NoteColumn))
)

% usage \shapeSlur #'(x1 y1 x2 y2 x3 y3 x4 y4)
shapeSlur =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Slur.control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:slur::calc-control-points grob))
         (n 0))
     ;; add offsets to default coordinates
     (define loop (lambda (n)
                    (set-car! (list-ref coords n)
                              (+ (list-ref offsets (* 2 n))
                                 (car (list-ref coords n))))
                    (set-cdr! (list-ref coords n)
                              (+ (list-ref offsets (1+ (* 2 n)))
                                 (cdr (list-ref coords n))))
                    (if (< n 3)
                        (loop (1+ n)))))
     ;; return altered coordinates
     (loop n)
     coords))

restNoExt = {\once \override Rest.Y-extent = #'(0 . 0) }
restLtExt = {\once \override Rest.Y-extent = #'(-0.5 . 0) }

staffUp = {\change Staff = up }
staffDown = {\change Staff = down }

%32tel in 16tel verbinden
srbcsq = { \set stemRightBeamCount = #2 } 
slbcsq = { \set stemLeftBeamCount = #2 } 

%

\include "deutsch.ly"
eon = \bassFigureExtendersOn
eoff = \bassFigureExtendersOff
