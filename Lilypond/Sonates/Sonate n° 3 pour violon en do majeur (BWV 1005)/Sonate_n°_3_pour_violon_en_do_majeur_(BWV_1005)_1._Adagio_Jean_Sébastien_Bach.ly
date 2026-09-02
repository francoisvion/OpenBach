\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "1. Adagio"
  subtitle = "Sonate n° 3 pour violon en do majeur"
  subsubtitle = "6 sonates pour violon"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1005"
  tagline = ##f
}
melodyOne =  \relative c' {
    c8. [ (d16) ] c8. [ (d16) ] c8. [ (d16) ] |
    d8. [ (e16) ] d8. [ (e16) ] d8. [ (e16) ] |
    d'8. [ e16 ] d8. [ e16 ] d8. [ f16 ] |
    e8. [ f16 ] e8. [ f16 ] e8. [ f16 ] |
    g8 [ (bes) ] bes [ (a) ] a [ (g) ] |
    f4 f f |
    fis4 fis fis |
    fis8. [ (g16) ] fis8. [ (g16) ] fis8. [ (g16) ] |
    a8 [ (c) ] c [ (b) ] b [ (a) ] |
    a8. [ fis16 ] g8. [ bes16 ] a16 [ g a fis ] |
    g8 [ a ] fis4. g8 |
    bes,16. [ a32 g fis g16 ] cis,4 ~ cis32 [ d32 ( e fis g a bes64 c a32)] |
    bes8. [ a16 ] bes8. [ a16 ] bes8 [ (es) ] |
    d8. [ (es32 c) ] bes4 (a8. \trill ) [ g16 ] |
    g4 g g |
    c4 c c |
    c8. [ (d16) ] c8. [ (d16) ] c8. [ (e16) ] |
    d4 d d |
    d8. [ (e16) ] d8. [ (e16) ] d8. [ (f16) ] |
    d8. [ (c16) ] d8. [ (c16) ] d8. [ (b16) ] |
    e8. [ (f16) ] e8. [ (f16) ] e8. [ (g16) ] |
    f4 r4 f4 |
    f4 r4 e8. [ f16 ] |
    g8. [ (f16) ] g8. [ (f16) ] g8. [ (e16) ] |
    f8. [ e16 ] f8. [ e16 ] f4 |
    f8. [ e16 ] f8. [ a16 ] g8. [ f16 ] |
    e4 r4 c8. [ bes16 ] |
    e4 d8. [ e16 ] f4 |
    f8. [ e16 ] f8. [ e16 ] <c e>8. r16  |
    fis,8. [ a16 ] c8. [ e16 ] d8. [ c16 ] |
    b8. [ c16 ] d4 d |
    d8. [ c16 ] d8. [ b16 ] c8. [ d16 ] |
    e8. [ fis16 ] fis8. [ g16 ] e8. [ fis16 ] |
    g4 g2 ~ |
    g4 f2 ~ |
    f4 e2  |
    a4 r8. a16 b8. [ c16 ]  |
    g4. a8 g16 [ f8.] |
    e16. [ f32 ( g a fis g ) ] c,8 ~ [c32 b ( a b )] b8. [ c16 ] |
    d,4 ~ d16 [ es (f g ] a [ b c32 d es b) ] |
    c4 ~ c16 r16 r8 r4 |
    d4 ~ d16 [ es ( d c ] b32 [ a g f es f d16 ) ] |
    es8. [ d16 ] es8. [ d16 ] es8. [ b'16 ] |
    c8 [es16 d] c4 ~ b8.\trill [c16] |
    c8 s4. s4 |
    d16 [ (b a g) ] a, [ (g' c e,) ] fis [ (c' a' c, )] |
    b2. \bar "|."
    }
melodyTwo =  \relative c' {
     s2. |
    c4 c c |
    b4 b b |
    bes4 bes bes |
    a4 a a |
    d4 d d |
    d4 d d |
    dis4 dis dis |
    dis4 dis dis |
    dis4 e es |
    d4 d2 |
    s2. |
    g8. [ fis16 ] g8. [ fis16 ] g4 |
    r4 d2 |
    g,8. [ (a16) ] g8. [ (a16) ] g8. [ (b16) ] |
    a4 a a |
    a4 a a |
    a8. [ (b16) ] a8. [ (b16) ] a8. [ (c16) ] |
    b4 b b |
    c4 c c |
    bes4 bes bes |
    a4 r4 d4 |
    g,4 r4 g4 |
    cis4 r4 cis4 |
    d'8. [ cis16 ] d8. [ cis16 ] d8. [ c16 ] |
    g,4 g g |
    c4 r4 c4  |
    fis8. [ e16 ] fis8. [ e16 ] d8. [ c16 ] |
    b4 r4 c8. [ b16 ] |
    a4 a a |
    g4 g g |
    g4 g g |
    g4 g g |
    g4 e''8. [ d16 ] e8. [ d16] |
    cis8. [ a16 ] d8. [ c16 ] d8. [ c16] |
    b8. [ g16 ] c8. [ bes16 ] a8. [ g16] |
    e'8. [ d16 ] e8. [ c16 ] d8. [ e16 ] |
    r4 r8 e,8 d4 |
    c8 r8 g'4 g,4 |
    aes4 s2 |
    a4 ~ a16 [ (g a b ] c [ d es f32 g ) ]  |
    b,4 ~ b16 s8. s4 |
    c8. [ b16 ] c8. [ b16 ] c8. [ d16 ] |
    r8 a8 g4 s4 |
    c8 [ e ] a [ c, ] b [ a'] |
    s2. |
    g,2. |
    }
melodyThree =  \relative f' {
  s2. |
  s2. |
  f4 d g |
  <g d'>4 <g d'>4 <g d'>4 |
    <e cis'>4 <e cis'>4 <e cis'>4  |
    a8. [ b16 ] a8. [ b16 ] a8. [ b16 ] |
    c8 [ (es) ] es [ (d) ] d [ (c) ] |
    b4 b b |
    c4 a b |
    c4 cis c |
    bes8 [ c ] a2 |
    s2. |
    s2. |
    s2. |
    s2. |
    g8. [ (a16) ] g8. [ (a16) ] g8. [ (a16) ]  |
    f4 f f |
    fis4 fis fis |
    g4 g g |
    <g e'>4 <g e'>4 <g e'>4  |
    <g c>4 <g c>4 <g c>4  |
    <a c>8. [ <g bes>16 ] <a c>8. [ <g bes>16 ] <a c>8. [ <f a>16 ]   |
    <g bes>8. [ <f a>16 ] <g bes>8. [ <f a>16 ] <g bes>4  |
    <e a>4 r4 <a e'>4   |
    <d, a'>4 s2  |
    <d b'>4 <d b'>4 <d b'>4  |
    <e c'>8. [ <d b'>16 ] <e c'>8. [ <f d'>16 ] <g e'>4  |
    a4 r8. c16 b8. [ a16 ] |
    <g d'>4 s4 g8. [ g16 ]  |
    s4 fis4 fis |
    g4  f8. [ e16 ] f8. [ d16 ] |
    e4  e8. [ d16 ] e8. [ f16 ] |
    <g c>4 <g c>4 <g c>4  |
    <d b'>4 s2 |
    s2.  |
    s2. |
    f4 s2  |
    b4. c8 b4 |
    <g c>8 r8 s4 d4 |
    c'4 ~ c16 s8. s4 |
    fis,4 ~ fis16 s8. s4 |
    aes4 ~ aes16 s8. s4  |
    s2. |
    es8 [ fis ] g4 d |
    e8 s4. s4 |
    s2. |
    g2. \bar "|."
    }
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree  >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
