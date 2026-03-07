\version "2.23.1"
mystaffsize = #17.5
%default settings page,font,layout
\include "./_common/myLayout.ily"
\include "./_common/myFont.ily"
\include "./_common/common.ily"
\include "titling.ily"

\header {
  title = "Aria con Variazioni"
  subtitle = "BWV 988"
  composer = "J.S. Bach"
  tagline = ##f
  mutopiatitle = "Goldberg Variationen"
  mutopiacomposer = "BachJS" %HandelGF,,BuxtehudeD,PurcellH,MozartWA etc.
  mutopiapoet = ""
  mutopiaopus = "BWV 988"
  mutopiainstrument = ""
  date = ""
  source = ""
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Martin Straeten"
  maintainerEmail = "martin.straeten@gmx.de"
}

%options
#(ly:set-option 'delete-intermediate-files #t)
%#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
  %spacing issues
  %annotate-spacing =##t
  %ragged-last-bottom = ##f
  %ragged-bottom = ##t
  %page-count = #8
  %systems-per-page = #7
  indent = #0
}
%addition Layout Params
\layout{
  \context {
    \Score
    %	\override VerticalAlignment.max-stretch = #ly:align-interface::calc-max-stretch
  }
  \context {
    \Staff
    %	\override VerticalAxisGroup.minimum-Y-extent = #'(-4.0 . 4.0)
    \override TimeSignature.break-visibility = #end-of-line-invisible
    explicitClefVisibility = #end-of-line-invisible
  }
}

mPageBreak = \pageBreak
mLineBreak = \break

\include "Aria.ily"
\pageBreak
\include "Var_1.ily"
\include "Var_2.ily"
%\markup \fill-line {\null \italic "Volti" }
\pageBreak
\include "Var_3.ily"
\include "Var_4.ily"
\pageBreak
\include "Var_5.ily"
\include "Var_6.ily"
\pageBreak
\include "Var_7.ily"
\include "Var_8.ily"
\pageBreak
\include "Var_9.ily"
\include "Var_10.ily"
%\pageBreak
\include "Var_11.ily"
\pageBreak
\include "Var_12.ily"
\pageBreak
\include "Var_13.ily"
\pageBreak
\include "Var_14.ily"
\pageBreak
\include "Var_15.ily"
%\pageBreak
\include "Var_16.ily"
\pageBreak
\include "Var_17.ily"
\pageBreak
\include "Var_18.ily"
\pageBreak
\include "Var_19.ily"
\pageBreak
\include "Var_20.ily"
\include "Var_21.ily"
\pageBreak
\include "Var_22.ily"
\pageBreak
\include "Var_23.ily"
\pageBreak
\include "Var_24.ily"
\pageBreak
\include "Var_25.ily"
\pageBreak
\include "Var_26.ily"
\pageBreak
\include "Var_27.ily"
\include "Var_28.ily"
\pageBreak
\include "Var_29.ily"
\pageBreak
\include "Var_30.ily"
\markup \fill-line { " " "Aria da Capo e Fine." " "}
\pageBreak
\include "Canones.ily"
%}
