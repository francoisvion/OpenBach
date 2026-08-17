\version "2.24.4"
\header {
  title = "Fugue N° 5"
  subtitle = "Le clavier bien tempéré - Livre 1"
  opus = "BWV 850"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
#(set-global-staff-size 18)
global = {\time 4/4 \key d \major}
roll = \relative{d32 e fis g fis e fis d}
theme = \relative{\roll b8. b16 a8. g16}
scale = \relative{d e fis g a b cis}
soprano=\new Voice{\voiceOne
  s1 | s1 | s1 | s1 |
  r4 \transpose d a' {\theme} |
  \relative c'' {
    cis8.*5/6 e32 fis g a8. a16 a8.*5/6 d,32 e fis g8. g16 |
    g4 <fis d>8. <e cis>16 d8. e16 cis8. cis16 |
    cis4
    \modalTranspose d b' \scale {\theme}|
    d4 b'16 a b gis gis fis gis e e d e cis |
    cis4 a'16 g a fis fis e fis d d c d b |
    b4 \transpose d g' {\theme} |
    b8. cis16 d2 cis4 |
    d \transpose d d'' {\theme} |
    fis8.*5/6 d32 e fis g8. g16 g8. a16 fis8. fis16 |
    fis8. e32 dis e4~e8. dis16 e8. fis16 |
    b,8. c32 a <b g>8. <c e,>16 g4 fis |
    \modalTranspose d e' \scale {\roll} g'8 r r2 |
    \modalTranspose d a' \scale {\roll} fis8 r r2 |
    \transpose d g' {\roll} e8 r r2 |
    \modalTranspose d fis' \scale {\roll} d8. d16 d8. e16 cis8. d32 e |
    fis4 b16 a b g g fis g e e d e cis |
    cis4 d8. d16 d8. e16 cis8. d16 |
    d4 \modalTranspose d b' \scale {\roll}
    e4 \modalTranspose d a' \scale {\roll} |
    d4
    \transpose d g' {\roll}
    \modalTranspose d cis'' \scale {\roll}
    \modalTranspose d fis'' \scale {\roll}|
    b'8. <cis, a>16 <d a>8. <e cis>16 <fis d>8. <fis, d>16 <g d>8. <a fis> 16 |
    <b g>8. <b d,>16 <cis e,>8. <d fis,>16 <fis, d>4 <e cis> |
    <d a>1 \fermata
    \bar "|."
  }
}
alto= \new Voice{\voiceOne
  s1 | s1 | s1 |
  r4 \transpose d d' {\theme}|
  \relative f' {
    fis8. gis16 \voiceTwo a4~a gis |
    \voiceThree
    a cis d d |
    cis8.*5/6 e32 d cis  s4  b4 e, |
    a4 \voiceTwo b~b ais |
    b r <d b>8. <b gis>16 <b gis>8. <a e>16 |
    <a e>4 r <c a>8. <a fis>16 <a fis>8. <g d>16 |
    <g d>4 r r2 |
    r4 \transpose d d'\theme |
    fis8. a16 d4~d c~|
    c4 b a2 |
    g4 \voiceThree b s2 |
    s4 s4 \voiceTwo e,4 dis |
    e r s2 |
    s4 r s2 |
    s4 r s2 |
    fis4 \modalTranspose d b \scale {\roll} g2 |
    fis4 r4 <d' b>8. <b g>16 <b g>8. <a e>16 |
    <a e>4 <a fis>8. <a fis>16 <b fis>8. <b g>16 <a e>4 |
    <a fis> r b r|
    a r r2 |
    r8. s16 s2.
    s1
    s1
    }
  }
tenor =  \new Voice
{\oneVoice
 \change Staff = "up"
 r1 |
 r4 \transpose d a {\theme} |
 \relative c' {
   cis4
   fis8. fis16 b,8.*5/6 b32 cis d e16 d e cis |
   \voiceTwo
    a4 d~d cis |
   d
   \change Staff="down" \voiceOne
   cis b2  |
  }
 a4
 \change Staff="up" \voiceTwo
 \modalTranspose d fis' \scale {\roll} b'4
  \modalTranspose d e' \scale {\roll} |
  a'4 a'8. g'16 fis'8. g'16 a'4 |
  \relative c' {
    d4 \change Staff="down" \voiceOne d cis2 |
    b4 r s2 |
    s1 |
    s4 r r2 |
    s1 |
    s1 |
    r4 \transpose d g {\theme} |
    b4 \change Staff="up" \voiceTwo g' <fis a>2 ~ |
    <fis a>4 e8. \change Staff="down" \voiceOne fis,16 g8. a16 b8. a16 |
    g4 r <b e>8. <g cis>16 <g cis>8. <e a>16 |
    <e a>4 r <a d>8. <fis b>16 <fis b>8. <d g>16 |
    <d g>4 r <g cis>8. <e a>16 <e a>8. <cis fis>16 |
    <cis fis>4 r4 r4 \modalTranspose d a \scale {\roll} |
    d'4 r s2 |
    s1 |
    s4 r e r |
    d r r2 |
    r8. \change Staff="up" \voiceTwo e16 fis8. g16 a8. a,16 b8. c16|
    d8. g16 g8. a16 a,4 g |
    fis1 |
  }
}
bass = \new Voice
{|\oneVoice
 r4 \theme  |
 \relative c {
 fis8. g16 fis8. e16 d4 e |
 a,8. * 5/6 e'32 fis g a2 g4~ |
 g8. fis32 e fis8. d16 g8. e16 a8. a,16|
 \voiceTwo
 d8. e16 fis8. e16 d8. b16 e4 |
 a,4 r r2 |
}
 \oneVoice
 r4 \transpose d d, {\theme}
 \relative f, {
   fis8.*5/6 d'32 e fis \voiceTwo g8. fis16 e8. cis16 fis4
 \modalTranspose d b, \scale {\roll } gis8 r r2 |
 \modalTranspose d a, \scale {\roll } fis8 r r2 |
 \transpose d g,  {\roll} e8. d16 c4 d |
 g8. a16 b8. a16 g8. e16 a8. a,16 |
 \modalTranspose d b, \scale {\roll} b'8. a16 g8. e16 a8. a,16 |
 d4 e c'8. a16 d8. d,16 |
 g4 \oneVoice \transpose b e, {\modalTranspose d b \scale {\theme }} |
 g,8. fis16 \voiceTwo g8. a16 b2 |
   e4  b'16 a b g g fis g e e d e cis |
   cis4 a'16 g a fis fis e fis d d cis d b
   b4  g'16 fis g e e d e cis cis b cis a |
 a4 r \modalTranspose d e \scale {\roll} a'4|
 \roll g8 r r2 |
 <g g,>4 fis32 g a g fis e d cis b cis d cis b a b g a8. a16 |
 d,8.*5/6 d'32 e fis g4 \modalTranspose d cis \scale {\roll} fis4 |
 \modalTranspose d b, \scale {\roll}
 \modalTranspose d e \scale {\roll}
 \modalTranspose d a \scale {\roll}
 \modalTranspose d d' \scale {\roll}|
 g'8. \oneVoice g,16 fis8. e16 d8. c16 b8. a16 |
 g8. fis16 e8. d16 a'2 |
   \voiceTwo d,1\fermata
 }
}
\score {
  \new PianoStaff <<
    \new Staff = "up"{
      \set Staff.midiInstrument="harpsichord"
      \global \clef treble
      << \soprano
	 \alto
	 >>
    }
    \new Staff = "down"{
      \set Staff.midiInstrument="harpsichord"
      \global \clef bass
      <<
	\tenor
	\bass
      >>
      }
  >>
  \midi{\tempo 4=72}
  \layout{ }
}
