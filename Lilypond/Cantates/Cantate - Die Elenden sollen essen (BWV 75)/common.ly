\version "2.17.20"

pocofMarkup = \markup{\normal-text poco \dynamic f}
pocof = #(make-dynamic-script pocofMarkup)

commonMusic = {
    \compressFullBarRests

    \accidentalStyle modern-cautionary

    \override Staff.TextScript.font-shape = #'italic

    \set Staff.soloText = #"1."
    \set Staff.soloIIText = #"2."
}

commonScore = {
    \override Score.BarNumber.font-size = #3
}


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

pKO = -\parenthesizeLeft-|
pKS = -\parenthesizeRight-|
pDO = -\parenthesizeLeft-.
pDS = -\parenthesizeRight-.

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

% first a pageBreak
blankPage = \markup{
		\column {
		    \combine \null \vspace #25.0
		    "This page intentionally blank to facilitate page turning"
		}
	    }

% surround by pageBreaks
middleBackPage = \markup{
    \fill-line {
	\center-column{
	    \combine \null \vspace #25.0
	    "This page is intended as the back"
	    "of the middle of 3 pages that must"
	    "be put beside each other on the stand"
	}
    }
}

