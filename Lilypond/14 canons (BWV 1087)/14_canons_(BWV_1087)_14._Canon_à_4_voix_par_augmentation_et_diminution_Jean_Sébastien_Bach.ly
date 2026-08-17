\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "14. Canon à 4 voix par augmentation et diminution"
  subtitle = "sur les huit premières notes fondamentales de l'Aria des Variations Goldberg"
  subsubtitle = "14 Canons"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
global= {
       \time 4/4
       \key g \major
     }
    violinOne = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r16 d16 [e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] |
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] |
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] |
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] |
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] |
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] |
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] |
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] |
       b16 [ d, e fis ] g [ b a g ] d'8 [ d, ] r16 a16 [ b cis ] |
       d16 [ fis e d ] a' [ g fis d' ] r16 e32 [ fis g16 g, ] ~ g16 [ a32  b e,16 fis32 g ] |
       fis16 [ g' fis e ] d [ b c d ] g, [ fis g a ] b [ d c b ] |
       e16 [ f e d ] c [ a b c ] fis, [cis d e ] fis [ a g fis ] |
       b16 [ d, e fis ] g [ b a g ] d'2 \bar "|." }}
     violinTwo = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r4 d4 e fis|
       g4 b a g |
       d'2 d, |
	   r4 a4 b cis|
       d4 fis e d |
       a'4 g fis d' |
       r4 e8 [ fis ] g4 g, |
	   r4 a,4 b cis|
       d4 fis e d |
       a'4 g fis d' |
       r4 e8 [ fis ] g4 g, |
	   r4 a,4 b cis|
       d4 fis e d |
       a'4 g fis d' ~ |
       d1  \bar "|." }}
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       r1 |
       r1 |
       r2 r8 g8 fis8 [ e ] |
       d8 [ b ] cis [ d ] g,4 g'4 |
       r8 c8 b [ a ] g [ e ] f [ g ] |
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' |
      r2 r8 g8 fis8 [ e ] |
       d8 [ b ] cis [ d ] g,4 g'4 |
       r8 c8 b [ a ] g [ e ] f [ g ] |
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' |
      r2 r8 g8 fis8 [ e ] |
       d8 [ b ] cis [ d ] g,4 g'4 |
       r8 c8 b [ a ] g [ e ] f [ g ] |
       c,8 [ d ] e [ g, ] r8 fis16 [ e ]  d8 d' |
       b1  \bar "|."}}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
 	   r1 |
	   r1 |
       r2 g2 |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,2 g'2 |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,2 g' |
	   fis2 e |
	   d2 b |
	   c2 d |
	   g,1 \bar "|." }}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
