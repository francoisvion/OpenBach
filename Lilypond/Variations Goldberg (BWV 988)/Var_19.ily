%voices
rha=\relative c'' {
  d8 d4~
  d8 d4~
  d8 d cis
  d4 r8
  g16 fis g d h d
  e16 d e c a c
  d16 c d e d c
  h16 a h c h a
  g8 g'4~
  g8 fis4~
  fis8 e d
  cis16 d e4~
  e8 d c
  c8 h g'~
  g16 e fis d e cis
  d4.
  fis16 e fis d a d
  g16 fis g d h d
  e16 dis e g fis e
  dis16 e fis dis h dis
  e8 e4~
  e8 e4~
  e8 e dis
  e4 r8
  r8 e16 c a c
  d4.~
  d8 c16 h c8~
  c8 d16 c h a
  d16 c d h g h
  e16 d e c a c
  fis16 e fis a d, fis
  g16 fis g d h g
}
rhb = \relative c'' {
  h16 a h g d g
  a16 g a fis d fis
  g16 fis g h a g
  fis16 e fis g a fis
  g8 g4~
  g8 g4~
  g8 g fis
  g4 r8
  r8 r d'
  cis4 c8
  h8 e, gis
  a4 g8
  fis4 a8
  d,8 g h
  cis8 a g~
  g8 fis4
  d8 d4
  d8 h g'~
  g8 g c
  fis,8 r r
  h16 a h g e g
  c16 h c a fis a
  h16 a h c h a
  g16 fis g a h g
  e4 r8
  r8 d16 g h g
  e4.
  d8 r r
  \staffDown \voiceThree g,8 g4~
  g8 c, c'~
  c8 a c~
  c8 h4
}
lhc = \relative c' {
  g8 g, g'
  fis8 fis, fis'
  e8 e, e'
  d8 d, c'
  h8 h' g
  c8 c, c'
  h16 a h c d8
  g,8 g,16 d' g a
  h16 a h g e g
  a16 g a fis d fis
  g16 fis g e h e
  g16 fis g e cis e
  a16 g a fis d fis
  h16 a h g e g
  a8 a, a'
  d16 cis d a fis d
  d'8 d, c'
  h8 g h
  c8 h a
  h8 a16 g a fis
  g8 e g
  a8 a, a'
  g16 fis g a h8
  e,8 e' d
  c16 h c a fis a
  h16 a h g e g
  a16 g a c e, g
  fis16 e fis a d, fis
  \voiceFour h,8 g h
  c8 a c
  d8 c d
  g4.
}

%general stafflayout
rhlayout= {
  \time 3/8
  \repeat volta 2 { s4.*16 }
  \mLineBreak
  \repeat volta 2 { s4.*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \repeat volta 2 { s4.*16 }
  \repeat volta 2 { s4.*16 }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 19. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
