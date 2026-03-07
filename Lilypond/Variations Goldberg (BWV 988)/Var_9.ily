%voices
rha=\relative h' {
  h8 a h c d a d c
  h8 d g4~ g8 a16 g fis4
  g8 fis g a h fis h a
  g8 a16 h c4~ c8 h16 a h8 h,
  \once \override Beam.positions = #'(4 . 5) cis8 h cis dis
  \once \override Beam.positions = #'(5 . 4) e8 h e d
  c8 d16 e f4~ f8 e16 d e fis g8~
  g8 fis4 e8 fis g a g
  fis4 e d2
  fis8 d e fis g d g a
  h8 e, a4~ a8 g16 fis g8 r
  \restLtExt r8 e4 d16 c
  \once \override Beam.positions = #'(4 . 3.5) h16 a g fis \shiftNote #0.5 g a h g
  \once \override Beam.positions = #'(2 . 3) \appoggiatura fis8 e8. fis16 dis4\prallprall e8 r h'4~
  h8 a4 gis8 a c16 h c e d c
  h4 cis d2~
  d8 g fis e d g16 fis g a h8
  e,8 a fis8. \prallprall g16 g2
}
rhb=\relative g' {
  R1
  g8 fis g a h fis h a
  g8 h e4~ e8 fis16 e d4
  e8 d e fis g d g fis
  \once \override Beam.positions = #'(-3 . -2) e8 fis16 g \once\override Tie.staff-position = #6 a4^~
  \once \override Beam.positions = #'(-1.5 . -2.5) a8 g16 fis g8 g,
  a8 g a h c g c h
  a8 h16 cis d4~ d8 cis16 h cis d e8~
  e8 d4 cis8 d2
  R1
  d8 h cis dis e h e fis
  g8 cis, \once\override Tie.staff-position = #0 f4~
  \once \override Beam.positions = #'(-3 . -4) f8 e16 dis e8 r
  r8 c~ \once \override Beam.positions = #'(-4 . -5) c[ h16 a] g fis e d e fis g e
  \appoggiatura d8 c8. d16 h4\prallprall c8 r g'4~
  g8 fis4 e8 fis a16 g a c h a
  g4 a h2~
  h8 e d c h2
}
lhc=\relative g, {
  g4 g'~ g8 fis16 e fis8 d
  g8 a h c
  d4. dis8
  e4
  \clef treble
  r8 c g d' g a16 h
  c8 h a d g,2~
  g8 \clef bass g,4 fis8 e e'16 dis e4~
  e8 e,4 d8 c c'16 h c d e d
  cis16 a d cis h a h gis a h a g fis e d cis
  d16 cis h a g e a8 d, fis16 a d4
  d8 d'4 c8 h16 a h c h a g fis
  g8 g'4 fis8 e16 dis e fis e d c h
  ais16 e' fis g a8 a, g16 a h g e fis g e
  c'8 a h h, e,4 r8 e'~
  e8 c d e a, a' e16 d e fis
  g16 a h g a fis g a d, e fis g fis e d c
  h16 g a h c d e fis g a h a g fis e d
  c16 h c a d8 d, g h16 d g4
}
%general stafflayout
rhlayout= {
  \time 4/4
  \repeat volta 2 { s1*8 }
  %\mLineBreak
  \repeat volta 2 { s1*8 }
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 9. Canone alla Terza. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
