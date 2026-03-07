\version "2.24.4"

\header{
  title = "Ich dank' dir, lieber Herre"
  opus = "BWV 347"
  composer = "Jean Sébastien Bach (1685-1750)"
  subtitle = "Choral à 4 voix"
  tagline = ##f
}

\paper {
  top-margin = 12
}

\include "italiano.ly"

soprano =  \context Voice = "soprano" {
	\set Staff.midiInstrument = "acoustic grand"
	\autoBeamOff
	\time 4/4
	\voiceOne
 	\key la \major
	\repeat volta 2 {
	  \partial 4
	  la'4
	  la' la' la' si'
	  sol' [fad'] mi'-\fermata si'
	  dod'' si' la' [sold'8 fad'
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  sold'4] fad' mi'-\fermata
	}

	\set Timing.measureLength = #(ly:make-moment 1/4)
	mi''4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	re'' dod'' si' la'
	la'8 [si' dod''4] si'-\fermata dod''
	re'' dod'' si' lad'
	si'2.-\fermata mi'4
	la' si' dod'' re''
	mi'' [re''8 dod''] si'4-\fermata re''
	dod'' si' mi''4. [re''8
	dod''8 si' la' si'dod''4] si'
	\set Timing.measureLength = #(ly:make-moment 3/4)
	la'2.-\fermata
	\bar "|."
      }

alto =  \context Voice = "alto" {

	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\voiceTwo
	\key la \major
	\repeat volta 2 {
	  \partial 4
	  mi'4
	  fad' mi' fad' fad'
	  mi' red' si sold'
	  la' sold'8fad' mi'2~
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  mi'4 red' si
        }

	\set Timing.measureLength = #(ly:make-moment 1/4)
	dod''8 si'
	\set Timing.measureLength = #(ly:make-moment 4/4)
	la'4 la' sold' la'8 sol'
	fad'8 sold'! la'4 sold' lad'
	si'8 la'! sol'4 fad'8 mi' fad'4
	fad'2. mi'8 re'
	dod'4 re' mi' fad'8 sold'
	la'2 mi'4 si'
	la'8 sold' fad'4 mi' fad'8 sold'
	la'2 la'4 sold'
	\set Timing.measureLength = #(ly:make-moment 3/4)
	mi'2.
	\bar "|."
      }

tenor =  \context Voice = "tenor" {

	\set Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\clef bass
	\voiceOne
 	\key la \major
	\repeat volta 2 {
	  \partial 4
	  dod'4
	  dod' dod'8 si la sold fad4
	  si4. la8 sold4 mi'
	  mi' red' dod'2
	  \set Timing.measureLength = #(ly:make-moment 3/4)
	  si4. la8 sold4
	}

	\set Timing.measureLength = #(ly:make-moment 1/4)
	sold4
	\set Timing.measureLength = #(ly:make-moment 4/4)
	la8 si dod' re' mi'4 mi'
	re' mi' mi' mi'
	fad'8 si4 lad8 si4 dod'
	re'2. sold4
	la sold8 fad mi mi' re'4
	dod'8 re' mi' fad' sold'4 fad'
	fad'8 mi' re' dod' si4 dod'8 re'
	mi'4. re'8 dod'[ fad' si mi'16 re']
	\set Timing.measureLength = #(ly:make-moment 3/4)
	dod'2.
	\bar "|."
      }

basse =  \context Voice = "basse" {

	\set Staff.midiInstrument = "acoustic grand"
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

texte = \lyricmode {
  Ich dank' dir, lie -- ber Her -- re
  Daß du mich hast __ be -- wahrt
  Mit Fin -- ster -- niss um -- fan -- gen,
  Da -- zu in gro -- ßer Noth,
  Da -- raus ich bin ent -- gan -- gen,
  Halfst du mir Her -- re Gott!
}

textedeux = \lyricmode {
  In die -- ser Nacht Ge -- fäh -- re,
  Da -- rin ich lag __ so hart
}

gris = \once \override BassFigure.color = #(x11-color 'grey)

bassechiffree = \figuremode {
  <_>8 \gris <2>8        % la sol# (pédale de tonique)

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


upper = \context Staff = upper <<
\soprano
\alto
\new Lyrics \lyricsto "soprano" {\set stanza = "1." \texte}
\new Lyrics \lyricsto "soprano" {\set stanza = "2." \textedeux}
>>


lower = \context Staff = lower <<
\tenor
\basse
\new FiguredBass {\bassechiffree}

>>

\score {
	\context PianoStaff <<
	<<
		\upper
		\lower

	>>
>>
	\layout {
	}
	\midi {
		\tempo 4 = 72
	}

}
