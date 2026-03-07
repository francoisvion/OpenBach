\version "2.19.11"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Functions, macros
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#(define CH (if (defined? 'CH) CH #{ \clef treble  #}))
#(define CL (if (defined? 'CL) CL #{ \clef bass  #}))

#(define RH (if (defined? 'RH) RH #{ \change Staff = "up" #}))
#(define LH (if (defined? 'LH) LH #{ \change Staff = "down" #}))

daCapo = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup\bold{"Da Capo"}
}

dalSegno = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup\bold{Dal Segno \raise #1.0 \tiny{\musicglyph #"scripts.segno"}}
}

segno = \mark \markup{\musicglyph #"scripts.segno"}

VS = {
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup\bold{V.S.}
}


% Baroque-ish stuff
%
% Override *before* including this file to choose something else than the
% modern default

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


% More dynamics

FMarkup = \markup{\normal-text\bold{f}}
F = #(make-dynamic-script FMarkup)
FFMarkup = \markup{\normal-text\bold{ff}}
FF = #(make-dynamic-script FFMarkup)
PMarkup = \markup{\normal-text\bold{p}}
P = #(make-dynamic-script PMarkup)
FPMarkup = \markup{\normal-text\bold{fp}}
FP = #(make-dynamic-script FPMarkup)

% More for the Urtext stuff

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


% Control length of laissezVibrer ties
% Usage:
% 	\extendLV #3.0
extendLV = #(define-music-function (parser location further) (number?) #{
    \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
    \override LaissezVibrerTie  #'details #'note-head-gap = #(/ further -2)
    \override LaissezVibrerTie  #'extra-offset = #(cons (/ further 2) 0)
#})


% Notes in markup
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


% Id-ed spanner
% Usage:
%	b\sp2( c\sp2)
sp=#(define-event-function (parser location n e) (index? ly:event?)
     (set! (ly:music-property e 'spanner-id) (format "sp~a" n))
     e)

% Controllable espressivo; each dynamic takes @var{time} of time
% Usage:
% 	\espr 16. f4.
espr=#(define-music-function (parser location time music)
        (ly:duration? ly:music?)
        "Put an < > under the music; each dynamic takes @var{time} of time"
        #{ \context Bottom << { <>\< \skip $time <> \> \skip $time <>\! } $music >> #}
    )


% Suppress accidentals
sA = {
    \once \override Accidental #'stencil = ##f
}
sAon = {
    \override Accidental #'stencil = ##f
}
sAoff = {
    \revert Accidental #'stencil
}



% Set the various attributes to completely change the staff size
staffSize = #(define-music-function (parser location new-size) (number?) #{
    \set fontSize = #new-size
    \override StaffSymbol.staff-space = #(magstep new-size)
    \override StaffSymbol.thickness = #(magstep new-size)
#})



%%%%%%%%%%%%%
%
% Definitions by Reinhold Kainhofer, Lilypond user list sep 28 2012
%
%%%%%%%%%%%%%

#(define-public (parentheses-item::calc-parenthesis-left-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list (ly:font-get-glyph font "accidentals.leftparen") empty-stencil)))

#(define-public (parentheses-item::calc-parenthesis-right-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list empty-stencil (ly:font-get-glyph font "accidentals.rightparen"))))

parenthesizeLeft = #(define-music-function (parser loc arg) (ly:music?)
#{
  -\tweak ParenthesesItem.stencils
#parentheses-item::calc-parenthesis-left-stencils
  -\parenthesize $arg
#})
parenthesizeRight = #(define-music-function (parser loc arg) (ly:music?)
#{
  -\tweak ParenthesesItem.stencils
#parentheses-item::calc-parenthesis-right-stencils
  -\parenthesize $arg
#})


%%%%%%%%%%%%%


% Parenthesize things

% (|
pKO = -\parenthesizeLeft-!
% |)
pKS = -\parenthesizeRight-!
% (.
pDO = -\parenthesizeLeft-.
% .)
pDS = -\parenthesizeRight-.

paren = #(define-event-function (parser location dyn) (ly:event?)
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

%%%%%%%%%%%%%%

% este fragmento sirve para poner un regulador de angulo entre dos markups, p.e.
% parentesis, corchetes, barras o cualquier otro texto

% leftText y rightText serán los textos a la izquierda y a la derecha respectivamente
% leftText and rightText will be the markup texts on each side of the hairpin

hairpinBetweenText =
#(define-music-function (parser location leftText rightText) (markup? markup?)
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

%cambiando el contenido de los \markup cambiamos el objeto de texto (elemento
%de marcado y aceptara cualquier cosa que se pueda incluir en estos.

%you can change de content of the \markup to show diferent texts
%or any other thing you can put in a \markup

parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"


% This example provides a function to typeset a hairpin (de)crescendo with
% some additional text below it, such as molto or poco. The added text
% will change the direction according to the direction of the hairpin. The
% Hairpin is aligned to DynamicText.
% 
% The example also illustrates how to modify the way an object is normally
% printed, using some Scheme code.

hairpinWithCenteredText =
#(define-music-function (parser location text) (markup?)
#{
  \once \override Voice.Hairpin #'after-line-breaking = 
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
#(define-music-function (parser location text) (markup?)
#{
  \once \override Voice.Hairpin #'after-line-breaking = 
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

%%%%%%%%%%%%% examples
% hairpinMolto = 
% \hairpinWithCenteredText \markup { \italic molto }
% 
% hairpinMore = 
% \hairpinWithCenteredText \markup { \larger moltissimo }
% 
% \layout { ragged-right = ##f }
% 
% \relative c' {
%   \hairpinMolto
%   c2\< c\f
%   \hairpinMore
%   c2\ppppp\< c\f
%   \break
%   \hairpinMolto
%   c2^\< c\f
%   \hairpinMore
%   c2\ppppp\< c\f
% }


% first a pageBreak
blankPage = \markup{
		\column {
		    \combine \null \vspace #25.0
		    "This page intentionally blank to facilitate page turning."
		}
	    }

% surround by pageBreaks
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


%LSR contributed by Valentin as per request http://code.google.com/p/lilypond/issues/detail?id=503

schleiferVH =
#(define-music-function (parser location start upstep leftstep) (ly:music? number? number?)
  #{\once \override Slur $'direction = #UP
    \once \override Slur $'stencil = $(lambda (grob)
    (let* ((slur-stencil (ly:slur::print grob))
           (Y-ext (ly:stencil-extent slur-stencil Y))
           (text-stencil (ly:text-interface::print grob))
           (prall-stencil (ly:stencil-translate text-stencil
                           (cons 2.5 (car Y-ext))))
           (combo-stencil (ly:stencil-combine-at-edge
                           prall-stencil X RIGHT
                           slur-stencil 0))
            (combo-X-ext (ly:stencil-extent combo-stencil X)))
      (ly:stencil-translate combo-stencil (cons leftstep upstep ))))
    \once \override Slur #'positions = #'(-1 . 2)
    \once \override Slur #'text = \markup {
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
    s1*0( $start \noBreak
    \once \override Rest #'transparent = ##t
    \once \override Rest #'X-extent = #'(0 . 1.7)
    \grace r1
    s1*0) #})

schleiferV =
#(define-music-function (parser location start upstep) (ly:music? number?)
    #{
	\schleiferVH #start #upstep #1.2
    #})

schleifer =
#(define-music-function (parser location start) (ly:music?)
    #{
	\schleiferV #start #0.2
    #})

% Example usage:
% \relative c'' { \schleifer a2 d }


%%%%%% snippet %%%%%%

#(define (make-bend x)
    (make-music 'BendAfterEvent
                'delta-step x))

bend = #(define-music-function (parser location delta) (integer?)
    (make-bend (* -1 delta)))

bendBefore = #(define-music-function (parser location argument) (integer?)
    #{
	\once \override BendAfter #'rotation = #'(180 -1 -1) \bend #$argument 
    #} )


% Usage:
%    c'1\bendAfter #5 e'1 d' \bendBefore #5 e'


#(define ((longer-script x) grob)
  (let* ((stil (ly:script-interface::print grob)))
  (ly:stencil-scale stil x 1)))

scaleEspr =
#(define-event-function (parser location x-val)(number?)
#{
    \tweak #'stencil #(longer-script x-val)
    \espressivo
#})

% Usage:
% \relative c'' {
%   c4 e f\scaleEspr #2 g |
%   f e g f |
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \epsfile-mm includes an eps at a nonscaling width
% Thanks to Marc Hohl 2014/04/28
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-markup-command (epsfile-mm layout props axis size file-name)
  (number? number? string?)
  (let* ((o-s (ly:output-def-lookup layout 'output-scale))
         (scaled-size (abs (/ size o-s))))
  (if (ly:get-option 'safe)
      (interpret-markup layout props "not allowed in safe")
      (eps-file->stencil axis scaled-size file-name)
      ))) 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Keep empty staves for the current Staff context
% By Kieren MacMillan
% From http://osdir.com/ml/lilypond-user-gnu/2014-02/msg00549.html
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

KeepEmptyStaves = \set Staff.keepAliveInterfaces = 
			#'( rhythmic-grob-interface 
			    multi-measure-rest-interface 
			    lyric-interface 
			    stanza-number-interface 
			    text-interface
			    text-script-interface
			    percent-repeat-interface) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% snippet-title = "Adjusting horizontal spacing"
% snippet-author = "David Nalesnik, Janek Warchoł"
% snippet-description = \markup {
% Sometimes you want to change horizontal spacing relative to what
% LilyPond calculated by default.  You could do this by overriding
% common-shortest-duration property of the SpacingSpanner, but that
% requires some tial-and-error to figure out what values make the
% spacing tighter, and what values make it looser.  Additionally,
% this is different for different pieces - in one piece overriding
% common-shortest-duration to 1/8 may make the spacing looser than
% the default, but in another piece it may make the spacing tighter.
% 
% This function allows you to adjust spacing without having to
% figure out anything.  Positive values make spacing looser,
% negative make it tighter, working similarly in any score.
% There are two predefined “shorthands”.
% 
% This can also be used inside a "\layout" block.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

stretchHorizontalSpacing =
#(define-music-function (parser location exponent) (number?)
   (_i "This function determines the default value of the property
@var{common-shortest-duration} and multiplies it by a moment
derived from the @var{exponent} passed as an argument.
Negative values of @var{exponent} make the spacing tighter,
while positive values make the spacing looser.
")
   #{
     \override Score.SpacingSpanner #'common-shortest-duration =
     #(lambda (grob)
        (let* ((func (assoc-get 'common-shortest-duration
                       (reverse (ly:grob-basic-properties grob))))
               (default-value (func grob))
               ;; When dealing with moments, we need to operate on an
               ;; exponential scale. We use 'inexact->exact' to make sure
               ;; that 'rationalize' will return an exact result as well.
               (factor (inexact->exact (expt 2 (- 0 exponent))))
               ;; The second argument to 'rationalize' has to be fairly
               ;; small to allow lots of stretching/squeezing.
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

% example:
% dedication = \markup \put-mm #DOWN #10 "dedicated to me"


% By Nick Payne. Hide notes etc but also avoid (invisible) collisions.

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% +thumb bracket
% Robin Bannister
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% +thumb bracket

#(define (make-thumb-bracket-props location spec-str settings-alist) 
  (define (inchar? index) (> (string-length spec-str) index))
  (define (inchar  index) (string-ref spec-str index))
  (define (char->dir ch) 
   (case (char-upcase ch) ((#\R) 1) ((#\L) -1) (else 0))) 
  (define (char->digit ch)
   (if (char-numeric? ch) (- (char->integer ch) (char->integer #\0)) 0))
  (define (inhit->1 key-str) (if (string-contains spec-str key-str) 1 0))
  (define (get key) (assq-ref settings-alist key))
  (define (warn p1 p2) (ly:warning 
   (_ " ~a bad thumb-bracket ~a ~a~a~a") location p1 "" p2 ""))
  (let* ( ;% decode spec
    (vdir            (if (inchar? 0) (char->dir   (inchar 0)) 0))
    (vbigger  (* 0.5 (if (inchar? 1) (char->digit (inchar 1)) 0)))
    (vfurther (* 0.5 (if (inchar? 2) (char->digit (inchar 2)) 0)))
    (hcloser  (* 0.5 (if (inchar? 3) (char->digit (inchar 3)) 0)))
    (hrear    (* 0.5 (if (inchar? 4) (char->digit (inchar 4)) 0)))
    (vbigger+ (* 5 (string-count spec-str #\|)))
    (posdir   ((if (string-contains spec-str "*") - +) vdir))
    (hcloser? (eq? (string-contains spec-str "!") #f))
    (vtip=?   (string-contains spec-str "="))
    (hdir-req (- (inhit->1 "]") (inhit->1 "[")))
    (closed? (char-lower-case? (inchar 0))))
   (if (zero? vdir) (begin (warn "first char in" spec-str) '())
   (let* ( ;% collect settings
    (hdir-init (get 'hdir-init))   (htip (get 'htip)) 
    (vtip (get (if vtip=? 'vtip= 'vtip)))  
    (vstem (get 'vstem))   (vmin (get 'vmin))   (hvernier (get 'hvernier))
    (vO 0) (hO 0) (hpad-base 0.5) ;% givens
    (hdir (if (zero? hdir-req) hdir-init hdir-req))
    (hflip? (positive? hdir))
    (h-interval 
     (if (positive? hdir) (cons hO (+ htip hrear)) (cons (- hrear) htip)))
    (vsize (+ vtip (if closed? vtip vstem) vbigger vbigger+))
    (vsize+ (if (and closed? (< vsize vmin)) (- vmin vsize) 0))
    (vshift (+ vfurther vtip (* 0.5 vsize+)))
    (bracket (lambda (grob) (let* ( ;% collect chord range from grob
      (vnote-lo-hi (ly:grob-property grob 'positions))
      (vnote ((if (eq? posdir 1) cdr car) vnote-lo-hi)))
     (grob-interpret-markup grob (markup #:translate (cons 
        ((if (positive? hdir) - +) hvernier) (- vnote (* vdir vshift)))
       #:combine #:draw-line (cons htip vO) #:combine 
        #:translate (cons hO (if closed? (* vdir (+ vsize vsize+)) vO))
         #:draw-line (cons htip vO)
        #:translate (cons (if (positive? hdir) htip hO) vO)
         #:draw-line (cons hO (* vdir (+ vsize vsize+)))))))))
    ;% alist of props for misusing Arpeggio as a thumb bracket
    `((stencil . ,bracket) 
      (X-extent . ,h-interval) 
      (padding . ,((if hcloser? - +) hpad-base hcloser)) 
      (direction . ,hdir) 
      (thickness . ,(get 'weight)))))))

thumbBracketEx = #(define-music-function 
  (parser location spec settings) (string? list?)
 (let* (
   (props (make-thumb-bracket-props location spec settings)))
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

thumbBracket = #(define-music-function (parser location spec) (string?)
 (let ((settings thumbBracketSettings)) ;% as Defaults, or user defined
   ((ly:music-function-extract thumbBracketEx) 
      parser location spec settings)))

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
             
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -thumb bracket

 #(define thBr thumbBracket) thbR = \thBr "R" thbL = \thBr "L"



%{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key f \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { c'''16--[ b''16-- d'''16--  f''16--] }
rhlo = { d''32[ \thBr "L9" f''32 ees''32 d''32 ~ d''16 c''32 b'32] }
lhhi = { g'32[ aes'32 g'32 f'32 g'32 f'32 ees'32 d'32] }
lhlo = { s4 }
\markup "Reger 14"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef treble \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key bes \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { <bes' bes''>4 <c''! a''>16[ <bes' g''>16 c''16 <ees''! g''>16] }
rhlo = { d''8[ ees''!8] \thBr "L" fis'16[ g'16 \thBr "R" a'16 <g' bes'>16] }
lhhi = { d'8[ ees'!8] c'16[ bes16 c'16 bes16] }
lhlo = { bes4 fis16[ g16 a16 bes16] }

\markup "Reger 17"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef treble \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key bes \major
  \time 4/4
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { <ees' g' bes' ees''>2-> <c' f' a' c''>-> <f' f''>2.*2/3-> }
rhlo = { s1  <a' c''>8--[ <f' a'>8--] <f' ~ bes'>8--[ <f' c''>8--]  }
lhhi = { c8[ g16 a16] bes16[ g16 c'8]  
         \thBr "R" c'16[ d'16 ees'16 d'16] c'16[ d'16 ees'16 c'16] 
         \thBr "L4*" <a c'>8--[ <f a>8--] <f bes>8--[ c'8--] }
lhlo = { <c, c>4.-- c8-. <f, f>4.-- a,8-. d4-- d8--[ c8--] }

\markup "Reger 60"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key aes \major
  \time 9/8
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { ees''4.-> ees''4.-> ~ ees''8[ d''8 ees''8] }
rhlo = { \thBr "L" <aes aes'>8.[ <aes aes'>16 <aes aes'>8] r8 
         \thBr "R*" <ees' g'>8-.[ <ees' g'>8-.] <ees' aes'>4. }
lhhi = { \oneVoice s4. r8 s4 s4. } 
lhlo = { \thBr "R" <c ees ees'>8.[ <c ees ees'>16 <c ees ees'>8] s8 
          <bes, ees des'>8^.[ <beses, ees des'>8^.] <aes, ees c'>4.^> }

\markup "Scriabin IMSLP #02002 II bar48"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key fis \major
  \time 12/8
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { eis'2. ~ eis'4. eis'4. }
rhlo = { cis'2. ~ cis'4. cis'4. }
lhhi = { \thBr "r4*=" <eis gis>2. ~ gis4 cis8 gis!4 g8 } 
lhlo = { <cis, cis>2. <gisis,, gisis,>2. }

\markup "Scriabin IMSLP 10999 p5"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key bes \major
  \time 9/8
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Staff.TimeSignature.stencil = ##f
}
rhhi = { \partial 4 <cis' cis''>8[\( <d' d''>8] <ees' ees''>4 
         <e' e''>8 <fis' fis''>4 <g' g''>8 <g' g''>4 <fis' fis''>8\) }
rhlo = { \partial 4 r8 r8 r8 bes'8[ bes'8] r8 e''8[ e''8] 
         <a' ees''>8[ <a' ees''>8 <c'' ees''>8] }
lhhi = { \partial 4 \oneVoice r8 r8 r8 s4 
         \once \override Rest.X-extent = #'(0 . 2.5) 
         r8 s4 s4.}
lhlo = { \partial 4 s4 s8 <cis, cis>8[ 
         \thBr "R" <g bes g'>8] s8 
         \thBr "R1=" <bes e' bes'>8[ <cis, cis>8] 
         \stemUp <cis, cis>8[<c, c>8 <a, a>] }

\markup "Scriabin IMSLP 08382 p47"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key bes \major
  \time 4/4
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \override Staff.TimeSignature.stencil = ##f
}
arpLengthenTo = #(define-music-function (parser location bound) (integer?)
#{ \once \override Arpeggio.positions = #(lambda (grob)
   (interval-union (cons bound bound) (ly:arpeggio::calc-positions grob)))
#})

%%% saw what looked like tie pushing arpeggio vertically when doubled up alto
rhhiA = {
  \once \override Arpeggio.arpeggio-direction = #down 
  \once \override NoteColumn.force-hshift = #-0.2 
  <\tweak transparent ##t  d' ees'' g'' c'''>1\arpeggio ~ <ees'' g'' c'''>1 }
rhhiB = {
  \once \override Arpeggio.arpeggio-direction = #down 
  \arpLengthenTo #-4
  <ees'' g'' c'''>1\arpeggio  ~ <ees'' g'' c'''>1 }
rhhi = { \rhhiA \rhhiB }
rhlo = \repeat unfold 2 { \thBr "l22]" <f' bes'>1 ~ <f' bes'>1 }
lhhi = \repeat unfold 2 { \oneVoice r1 r1}
lhlo = \repeat unfold 2 { s1 s1 }

\markup "F9sus"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global = {
  \key f \major
  \time 3/4
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}
rhhi = { a'2. }
rhlo = { r4 
  \thumbBracketEx "L442" #(acons 'htip 2.5 thumbBracketSettings) 
  <a c'>8[ <bes d'>8] <c' e'>8[ <a c'>8] }
lhhi = { f,2.}
lhlo = { \hideNotes f,16 } % spacing hack

\markup "Possibility"
\score {
\new PianoStaff <<
  \new Staff = "rh" { \clef treble \global << \rhhi \\ \rhlo >>}
  \new Staff = "lh" { \clef bass   \global << \lhhi \\ \lhlo >>}
>>
\layout { indent = 0.0\cm }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%}



%% http://lsr.dsi.unimi.it/LSR/Item?id=748
%% see also http://www.lilypond.org/doc/v2.17/Documentation/notation/modifying-shapes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \appoggiatura function to modify the shape of slurs by offsetting the positions property
% from default control-point values. Setting either y1 or y2 to zero will leave
% that attachment-point unchanged. Syntax: \offsetPositions #'(y1 . y2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

offsetPositions =
  #(define-music-function (parser location offsets) (pair?)
    #{
       \once \override Slur.positions = #(lambda (grob) 
     `(,(+ (car offsets) (cdar (ly:slur::calc-control-points grob))) . 
       ,(+ (cdr offsets) (cdr (cadddr (ly:slur::calc-control-points grob))))))
    #})

%{
\relative c'' {
  c4(^"default" c, d2)
  \offsetPositions #'(0 . 1)
  c'4(^"(0 . 1)" c, d2)
  \offsetPositions #'(0 . 2)
  c'4(^"(0 . 2)" c, d2)
  \bar "||"
  g4(^"default" a d'2)
  \offsetPositions #'(1 . 0)
  g,,4(^"(1 . 0)" a d'2)
  \offsetPositions #'(2 . 0)
  g,,4(^"(2 . 0)" a d'2)
}
%}


%{
\header {
  snippet-title = "merge-rests-engraver"
  snippet-author = "Jay Anderson"
  snippet-source =
    "http://www.mail-archive.com/lilypond-user%40gnu.org/msg69608.html"
  snippet-description = \markup {
    Merge rests of equal duration in different voice
  }
  tags = "merge, rest, rests, voice, voices"
  status = "ready"
}
%}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% "Tacet" directive. Usage: \markup \Tacet {\mvtIIIpiece \mvtIVpiece}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
