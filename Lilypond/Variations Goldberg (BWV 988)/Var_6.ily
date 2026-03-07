%voices
rha=\relative c''' {
  \restLtExt r4.
  a4.~
  a8 g16 fis e d
  c4.~
  c8 h16 a g fis
  e4.~
  e8 d16 c h a
  h4.~
  \once \override Beam.positions = #'(1 . 1) h16 a c h a g
  a8 a'4~
  \once \override Beam.positions = #'(3.5 . 2.5) a8 g16 fis e d
  cis16 e a h c8~
  c8 h16 a g fis
  e4.~
  e16 d cis e d cis
  d16 c h a g fis
  g8 \voiceTwo r r
  \voiceOne d'4.
  \restLtExt r4.
  h''4.~
  h8 a16 g fis e
  dis8 d4~
  d8 c16 h a g
  fis4.~
  fis16 e dis fis e dis
  e16 d c h a gis
  \staffDown a8 \staffUp r r
  d4.~
  d16 h c a c e
  fis4.~
  fis16 dis e c e g
  a4.~
  a16 g fis a g fis
  g16 fis e d c h
  a8 \voiceTwo r r
  \voiceOne g'4.
}
rhb=\relative a'' {
  g4.~
  g8 fis16 e d c
  h4.~
  h8 a16 g fis e
  d4.~
  d8 \staffDown \stemUp c16 h a g
  a4.^~
  a16 g h a g fis
  \staffUp \stemDown g8 g'4~
  \once \override Beam.positions = #'(-5 . -6) g8 fis16 e d c
  h16 d g a b8~
  \once \override Beam.positions = #'(-4.5 . -5.5) b8 a16 g fis e
  d4.~
  d16 cis h d cis h
  \staffDown \stemUp cis16 h a g fis e
  fis8 r r
  \staffUp \stemDown g''4.
  \staffDown \stemUp fis,,4.
  \staffUp \stemDown a''4.~
  a8 g16 fis e d
  cis8 c4~
  c8 h16 a gis fis
  e4.~
  e16 dis cis e dis cis
  dis16 cis h a g fis
  g8 r r
  c4.~
  c16 a h g h d
  \once\override Tie.staff-position = #-9
  \shiftNote #1.5 e4._~
  e16 cis d h d fis
  \once\override Tie.staff-position = #-7
  \shiftNote #1.5 g4.~
  g16 fis e g fis e
  fis16 e d c h a
  g8 r r
  a''4.
  h,,4.
}
lhc=\relative g, {
  g16 fis g a h g
  d'16 c d e fis d
  g16 fis e fis g e
  a16 g fis g a fis
  h16 a g a h g
  \voiceFour c16 h a g fis e
  fis16 e fis d e fis
  g16 e d c h a
  \oneVoice g16 fis' e d c h
  cis16 a d e fis d
  g16 fis e fis g e
  a16 g fis g a fis
  h16 a g a h a
  gis8 gis, r
  a8 a, r
  \voiceFour d8 d'16 c h a
  \oneVoice g16 fis g a h g
  \voiceFour d8 g h
  \oneVoice d16 cis d e fis d
  g16 fis e fis g e
  a16 g fis g a fis
  h16 a gis a h gis
  c16 h a h c h
  ais8 ais, r
  h8 h, r
  e8 e'16 d c h
  a16 c e g fis e
  fis8 g, r
  g'8 a, r
  a'8 h, r
  h'8 c, r
  cis8 cis, cis'
  d8 d, d'
  g,8 g'16 fis e g
  fis16 e d e fis d
  g,8 d' g
}
%general stafflayout
rhlayout= {
  \time 3/8
  s4.
  \repeat volta 2 { s4.*14 }
  \alternative {{s4.*2} {s}}
  \mLineBreak
  \repeat volta 2 { s4.*14 }
  \alternative {{s4.*2} {s4.}}
  \bar "|."
}
lhlayout= {
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key g \major
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\score {
  \new PianoStaff
  <<
    \new Staff = "up"
    <<
      \new Voice {\rhlayout}
      \new Voice {\voiceOne \global \clef treble \rha}
      \new Voice {\voiceTwo \global \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 6. Canone alla Seconda a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
