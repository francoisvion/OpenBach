%voices
rha=\relative c'' {
  r8 h g
  d'8 a d
  g4.~
  g8 fis r
  R4.
  R4.
  r8 a, c~
  c16 a h8 r
  r8 e g
  cis,8 a'4
  d,8 g4~
  g8 fis e~
  e8 d c~
  c8 h4
  a8 d cis~
  cis8 d r
  cis8 d r
  r8 fis d
  g8 h4~
  h8 a16 g fis e
  dis16 e fis4~
  fis8 e g
  cis,8 dis e~
  e8 dis16 cis h a
  g16 \prall fis e8 r
  r8 c' e
  a,8 h d
  g,8 c4~
  c8 d c
  h16 c d4~
  d16 c d c h a
  d8 g, fis~
  fis8 g s
  fis8 g r
}
rhb=\relative c' {
  s4.
  r8 d fis
  h,8 g' c
  h16 g a8 r
  R4.
  r8 c, e
  a,8 d4~
  d8 g r
  R4.
  s4.
  r8 cis e
  a,4 g8~
  g8 fis a
  d,8 e g
  cis,8 a' g~
  g16 e fis8 r
  g16 e fis8 r
  R4.
  r8 d' h
  g8 a c
  fis,4 r8
  r8 h g
  e8 fis g
  fis4.
  e4 r8
  r8 a c
  fis,8 g h
  e,8 a4~
  a8 fis a~
  a8 g h
  e,4.
  a,8 d c~
  c16 a h8 r
  c16 a h8 r
}
lhc=\relative c' {
  s4.
  s4.
  r8 h g
  d'4 r8
  r8 g, h
  e,8 a g~
  g8 fis16 e fis8
  g8 d r
  s4.
  r8 \staffUp \stemDown d' fis \staffDown \stemUp
  h,8 e r
  s8 cis e
  a,4.~
  a8 g h
  e,8 fis e
  d4 r8
  d4 r8
  s4.
  r8 d' g
  e8 c4~
  c8 h16 a g fis
  g16 a h4~
  h8 a h
  c8 h4~
  h8 g h
  e,8 a16 g fis g
  d'4.
  c8 fis, a
  d,4.~
  d4 g8~
  g8 a c
  fis,8 g a
  g4 r8
  g4 r8
}
lhd=\relative c' {
  g4.
  fis4.
  e4.
  r8 d fis
  h,4.
  c4.
  d4.
  r8 h d
  g,8 g'4~
  g8 fis4~
  fis8 e g
  cis,8 a' cis
  fis,4.
  g8 g,4~
  g8 fis a
  d,8. d'16 e fis
  d,8. a''16 h cis
  d4 c8
  h4 g8
  c8 fis, a
  h8 dis, h
  e8 g e
  a8 fis e
  a8 h h,
  e4 d8
  c4.~
  c8 h4~
  h8 a c
  fis,8 d fis
  g8 h g
  c4.~
  c8 h d
  g,8. a'16 h cis
  g,4 s8
}
%general stafflayout
rhlayout= {
  \time 3/8
  \repeat volta 2 { s4.*15 }
  \alternative {{s4.} {s}}
  \bar "||"
  \mLineBreak
  \repeat volta 2 { s4.*15 }
  \alternative {{s4.} {s}}
  \bar "|."
}
lhlayout = {
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
      \new Voice {\voiceOne \global \clef bass \lhc}
      \new Voice {\voiceTwo \global \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 4. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}

