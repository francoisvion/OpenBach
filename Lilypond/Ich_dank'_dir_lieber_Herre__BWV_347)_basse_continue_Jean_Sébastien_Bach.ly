\version "2.24.4"

\header{
  title = "Ich dank' dir, lieber Herre"
  opus = "BWV 347"
  composer = "Jean Sébastien Bach (1685-1750)"
  subtitle = "Basse continue"
  tagline = ##f
}

\paper {
  top-margin = 12
}

\include "italiano.ly"

basse =  \context Voice = "basse" {

	\set Staff.midiInstrument = "harpsichord"
	\time 4/4
	\clef bass
	\voiceTwo
  	\key la \major
	\repeat volta 2 {
	  \partial 4
	  la8 sold
	  fad4 dod re red
	  mi si, mi, mi
	  la si dod' si8 la
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  si4 si, mi
	}

	\set Timing.measureLength = #(ly:make-moment 1/4)
	dod4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	fad8 sold la4 mi dod8 la,
	re4 dod8 re mi4 dod
	si, dod re8 sol fad4
	si,2. dod4
	fad mi8 re dod4 si,
	la,8 si, dod re mi4 si,
	fad8 sold la4 sold8 mi la4~
	la8 sold fad4 mi8 re mi4
	\set Timing.measureLength = #(ly:make-moment 3/4)
	la,2.
	\bar "|."
      }

gris = \once \override BassFigure.color = #(x11-color 'grey)

bassechiffree = \figuremode {
  <_>8 \gris <2>8 
  % Mesure 1
  <_>4 <6>4 <_>4 <6>4
  % Mesure 2
  <_!>4 <_+>8 <7_\+>8 <_>4 <_>4
  % Mesure 3
  <_>4 <6_+>8 \gris <_+>8 <6>4 \gris <2>8 \gris <6 5>8
  % Mesure 4 (3/4)
  <6 4>4 <_+>8 <7_\+>8 <_>4
  % Partie B
  % Anacrouse
  <_>8 \gris <7>8
  % Mesure 5
  <6>8 \gris <9 8>8 <3>8 \gris <4 3>8 <_>4 <6>8 \gris <7_\+>
  % Mesure 6
  <_>8 \gris <6 4\+>8 <6>8 \gris <7\+>8 <_>4 <6\+ 3>4
  % Mesure 7
  <_>8 \gris <7>8 \gris <7>8 <6\+ 3>8 <6>8 \gris <6>8 <_+>4
  % Mesure 8 (cadence)
  <_>2. <_>4
  % Mesure 9
  <_>4 <7>8 \gris <6>8 <_>4 <_>8 \gris <6>8
  % Mesure 10
  <_>8 \gris <7 4 3>8 \gris <6 3 2>8 \gris <7>8 <_>4 <_>4
  % Mesure 11
  <_>8 \gris <6 4>8 <2>8 \gris <9 6 3>8 <6>8 <_>8 <6 5>8 \gris <7 4>8
  % Mesure 12
  <5>8 \gris <6 3 2>8 <7>8 \gris <4 3>8 <6 4>8 \gris <7>8 <5>8. <7_\+>16
  % Mesure 13 (3/4 final)
  <5>2.
}

lower = \context Staff = lower <<
\basse
\new FiguredBass {\bassechiffree}
>>

\paper{indent = 0}

\score {
	\lower
	\layout {}
	\midi {\tempo 4 = 72}
}