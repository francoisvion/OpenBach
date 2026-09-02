\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "12. Canon duplex sur ladite fondation à 5 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
global= {
       \time 4/4
       \key g \major
     }
    violinOne = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r4 r16 d16 [ e fis ] g [ b a g ] d' [ g b8 ] ~ |
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  |
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] |
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] |
       d8 [ c ] b16 [ d e fis ] g [ b a g ] d' [ g b8 ] ~ |
       b8. [ a16 ] g [ fis e d ] cis8 [ g' ] r16 e16 [ fis g ]  |
       fis8 [ a, ] r16 d,16 [ e fis ] g8 [ g' ] r16 b,16 [ a g ] |
       e'8 [ e, ] r16 fis16 [ g a ] a [ c, a'8 ] r16 c16 [ a e ] |
       d2 s2 \bar "|." }}
     violinTwo = \new Voice { \relative g''{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r16 g16 [ fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] |
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] |
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] |
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] |
       b16 [ g fis e ] d [ b c d ] g, [ d b8 ] ~ b8. [ cis16 ] |
       d16 [ e fis g ] a8 [ d, ] r16 fis16 [ e d ] e8 [ cis' ] |
       r16 g'16 [ fis e ] d8 [ d, ] r16 b'16 [ c d ] f,8 [ f' ] |
       r16 e16 [ d c ] c [ a' c,8 ]r16 a16 [ c fis ] g8 [ a ] |
       b2 s2  \bar "|." }}
    violinThree = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 3"
       \set Staff.midiInstrument = "violin"
       r1 |
       r8 d8 e8 [ fis ] g [ b ] a [ g ] |
       d'8 [ d, ] a'4 g4 r4 |
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] |
       g4. a8 b4 r4 |
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] |
       d'8 [ d, ] a'4 g4 r4 |
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] |
       g4. a8 b4 r4 |
       r8 d,8 e8 [ fis ] g [ b ] a [ g ] |
       d'8 [ d, ] a'4 g4 r4 |
       r8 b8 a8 [ g ] fis [ d ] e [ fis ] |
       g2 s2 \bar "|." }}
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       s2 r8 g,8 fis8 [ e ] |
	   d8 [ b ] cis [ d ] g, [ g' ] cis,4 |
	   d4 r4 r8 b8 c8 [ d ] |
	   e8 [ g ] fis [ e ] d4. c8 |
	   b4 r4 r8 g'8 fis8 [ e ] |
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 |
	   d4 r4 r8 b8 c8 [ d ] |
	   e8 [ g ] fis [ e ] d4. c8 |
	   b4 r4 r8 g'8 fis8 [ e ] |
	   d8 [ b ] cis [ d ] g, [ g' ] c,4 |
	   d4 r4 r8 b8 c8 [ d ] |
	   e8 [ g ] fis [ e ] d4. c8 |
	 b2 s2 \bar "|." }}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       s2 g2 |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,2 g' |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,2 g' |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,2 s2 \bar "|." }}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \violinThree >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
