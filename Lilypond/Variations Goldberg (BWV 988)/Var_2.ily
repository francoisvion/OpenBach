%voices
rha=\relative c'' {
  s2*2
  g'4 c~\prallmordent
  c8 h16 a h a g fis
  g4~ g16 f e d
  e4~ e16 d c h
  a4~ a16 c h a
  h16 g' fis a g fis e d
  c'8( h) \restLtExt r4
  s2
  h,16( dis e g) h4~
  h16 a g h a g fis e
  d4~ d16 c h a
  h4~ h16 a g fis
  e4~ e16 g fis e
  d8 s \restNoExt r4
  d4 \restNoExt r
  a'4 a'^~
  a16 g fis a g fis e dis
  e4 r8 fis
  dis8 h r4
  e4~ e16 d c h
  c4~ c16 h a g
  fis4~ fis16 a g fis
  g4 \restLtExt r
  e4 a~
  a16 g fis a g fis e d
  c4 c'~
  c16 h a c h a g fis
  h8[ g] h[ d]
  g4 c~
  c16 h a c h a g fis
  g4 \restNoExt r
  g4 \restNoExt r
}
rhb=\relative c'' {
  h4 e^~^\prallmordent
  e8 d16 c d c h a
  g4 r8 a'
  fis8 d r4
  r16 d c e d8 h~
  h16 a g h a8 g~
  g16 fis e g fis4
  g8 r r4
  g16( a h d) e4^~
  e16 d cis e d cis h a
  g4 r8 g'
  e8 cis r4
  r16 a g h a8 fis~
  fis16 e d fis e8 d~
  d16 cis h d cis4
  d8 r r4
  d4 r
  \restLtExt r16 fis' e g fis e d cis
  d4 r8 h
  g8 e a4~
  a16 g fis a g fis e dis
  e16 h' a c h8 g~
  g16 fis e g fis8 e~
  e16 dis cis e dis4
  e4 h'~
  \once \override Beam.positions = #'(-4.5 . -3)
  h16 a g h a g fis e
  d4 \once\override Tie.staff-position = #-5.5 g~
  \once \override Beam.positions = #'(-5 . -4)
  g16 fis e g fis e d c
  d4 r
  d'4 \once\override Tie.staff-position = #2 f~
  f16 e d f e g fis g
  a8 d,~ d16 c h a
  h4 r
  h4 r
}
lhc=\relative c' {
  g8[ fis g e]
  fis8[ e fis d]
  e8[ d e c]
  d8 d, d'16 c h a
  h8[ a h g]
  c8[ h c a]
  d8[ c d d,]
  g8[ g' h d]
  \clef treble
  g8[ fis g e]
  fis8[ e fis d]
  e8[ d e h]
  \clef bass
  cis8 e16 d cis h a g
  fis8[ e fis d]
  g8[ fis g e]
  a8[ g a a,]
  d8[ d'16 c] d c h a
  d,8 a d,4
  d''8[ cis d a]
  h8[ a h g]
  c16 c, h d c h a c
  h16 h' a c h a g fis
  g8[ fis g e]
  a8[ g a fis]
  h8[ ais h h,]
  e,16 e' dis fis e d c h
  c8[ h c a']
  h,8[ a h g']
  a,8[ g a g']
  fis16 d c e d c h a
  g16 g' f a g f e d
  c16 c' h d c h a g
  fis16 g fis a h,8 d
  g,8[ g'16 fis] g a h c
  g8 d g,4
}
%general stafflayout
rhlayout= {
  \time 2/4
  \repeat volta 2 { s2*15 }
  \alternative {{s2} {s}}
  \bar "||"
  \mLineBreak
  \repeat volta 2 { s2*15 }
  \alternative {{s2} {s}}
  \bar "|."
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \repeat volta 2 { s2*15 }
  \alternative {{s2} {s}}
  \repeat volta 2 { s2*15 }
  \alternative {{s2} {s}}
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 2. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
