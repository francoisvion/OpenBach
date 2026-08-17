\version "2.25.80"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
  title = "Prélude n° 4 en la mineur"
  subtitle = "5 petits préludes"
  opus = "BWV 942"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
soprano = \relative a'' {
  a8 [ e f ] a [ d, e ] a [ c, d ]
  a'8 [ b, c ] a8. [ c16 b a ] dis8 [ c b ]
  g'8 [ dis e ] c' [ g fis ] b [ fis e ]
  a8 [ fis dis ] g8 [ fis16 e dis e ] g8 [ d cis ] |
  f8 [ cis d ] f8 [ e16 d cis d ] f8 [ c b ]
  e8 [ b c ] e [ a, b ] e [ g, a ]
  e'8 [ fis, g ] e8. [ g16 fis e ] cis'8 [ bes a ]
  d8 [ e, f ] d8. [ f16 e d ] gis8 [ f e ]
  c'8 [ gis a ] d [ gis, a ] e' [ gis, a ]
  f16 [ g f e d e ] f [ g a b c d ] e [ fis g a b c ]
  d,8 [ e f ] e [gis a ] b, [ c a ]
  gis8 [ f' e ] a, [ e' d ] b [ d c ]
  c8 [ b a ] f' [ a, gis ] e' [ g, fis ]
  d'8 [ f, e ] c' [ gis a ] fis [ gis a ]
  gis16 [ e' d c b a ] gis [ fis e d c b ] s4.
  s4 s16 e16 a16 [ c e b c a ] e8 [ a gis ]
  a8 [ g16 f e d ] c [ b a gis a e ] r4. \fine
}	

bass = \relative a {
  a4 r8 c4 r8 f4 r8
  e4 r8 c4 r8 a4 r8
  e'8 [ b c ] e [ a, b ] e [ g, a ]
  e'8 [ fis, g ] e8. [ g16 fis e ] cis'8 [ bes a ]
  d8 [ e, f ] d8. [ f16 e d ] b'8 [ aes g ]
  c8 [ gis a ] b [ fis g ] a [ e fis ]
  g8 [ dis e ] cis'4 r8 a4 r8
  f8 [ cis d ] gis4 r8 e4 r8
  a4 r8 b4 r8 c4 r8
  d,4. r4 r8 r4 r8
  b8 [ c16 b a b ] c8 [ d16 c b c ] d8 [ e16 d c d ]
  e4. r4 r8 r4 r8
  a8 [ e f ] a [ d, e ] a [ cis, d ]
  a'8 [ b, c ] a8. [ c16 b a ] dis8 [ c b ]
  e4 r8 r4 r8 a16 [ gis fis e fis gis ]
  a16 c,16 [ e a c ] r16 r4 d,8 e4 e,8
  a4 r8 r4 r8 a4 r8 \fine

}

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier"
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 9/8 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 9/8 \bass }
    >>
    \layout{  }
    \midi { }
}