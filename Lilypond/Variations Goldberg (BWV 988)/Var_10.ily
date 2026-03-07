%voices
rha=\relative c'' {
  R1*8
  g'2\mordent g4.\prallprall fis16 g
  a4 fis d fis
  h,4 e e, d'
  cis4\prallprall h8 cis a h cis a
  d4 d, d'2~
  d4 d, d'2~
  d2 cis
  d1
  fis2\mordent fis4.\prallprall e16 fis
  g4 d h d
  c4 f f, e'
  dis4\prallprall cis8 dis h cis dis h
  e4 e, e'2~
  e4 e, e'2~
  e2 dis
  e2~ e8 d cis h
  a4 g'2 f8 e
  f2. e8 d
  e2. fis8 g
  a8 h g a fis4 a~
  a4 g8 fis g4 h,~
  h4 a8 h c2~
  c4 h a2
  g1
}
rhb=\relative c'' {
  R1*8
  R1*2
  \once\override MultiMeasureRest.staff-position = #'-7
  R1
  \once\override MultiMeasureRest.staff-position = #'-4
  R1
  a2 a4.\prallprall g16 a
  h4 g e g
  e4 a a, g'
  fis4\prallprall e8 fis d2
  s1*4
  h'2 h4.\prallprall a16 h
  c4 a fis a
  fis4 h h, a'
  g4 fis8 g e2~
  e4 r a2~
  a4 d h g
  g4 c8 h c2~
  c2. c4
  h2 r4 g
  e2. a8 g
  fis4 g~ g fis
  g8 d c d h2
}
lhc=\relative d' {
  \override MultiMeasureRest.staff-position = #'10
  R1*4
  \revert MultiMeasureRest.staff-position
  d2\mordent d4.\prallprall c16 d
  e4 c a c
  a4 d d, c'
  h4\prallprall a8 h g h a c
  h8 a h4 e2~
  e4 a, d2~
  d4 h e2
  e4 d cis e
  a,8 h a g fis2
  g2 r
  r4 e a2~
  a8 a g a fis2
  s1*12
  d'2 d4.\prallprall c16 d
  e4 c a c
  a4 d d, c'
  h4\prallprall a8 h g2
}
lhd=\relative c'' {
  g,2^\mordent g4.^\prallprall fis16 g
  a4 fis d fis
  e4 a a, g'
  fis4^\prallprall e8 fis d e c d
  h8 d e fis g4 h,
  c2 r4 a
  fis2 r4 d
  g4 d' h d
  g2 r4 e
  fis2 r4 d
  g2 r4 e
  a2 r4 g
  fis2 r4 d
  g,4 h g e
  a2 r4 a
  d1
  d8 e fis g a4 c,
  h8 d e fis g a h4~
  h4 a8 gis a2~
  a4 fis h a
  g8 a h a g fis g e
  a8 h c h a g a fis
  h8 a g a h a h h,
  e8 h a h g fis g e
  cis'2 cis4.^\prallprall h16 cis
  d4 h g h
  c4 e a, g'
  fis4^\prallprall e8 fis d e fis d
  \voiceFour g4 a h g
  c,2 r4 a'
  d,2 r4 d
  g2 g,
}
%general stafflayout
rhlayout= {
  \time 4/4
  \repeat volta 2 { s1*16 }
  %	\mLineBreak
  \repeat volta 2 { s1*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \time 4/4
  \repeat volta 2 { s1*16 }
  \repeat volta 2 { s1*16 }
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
      \new Voice {\voiceThree \global \lhc}
      \new Voice {\voiceFour \global \clef bass \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 10. Fugetta. a 1 Clav." }
  \layout {
    system-count= #5
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } \context { \Voice \remove "Dynamic_performer"}}
}

