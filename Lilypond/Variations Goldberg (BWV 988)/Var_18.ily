%voices
rha=\relative c''' {
  r2 g~
  g2 fis~
  fis4 g8 fis e2~
  e4 d8 cis d2
  r2 e~
  e4 d8 e fis2~
  fis4 a8 g a2~
  a8 g a fis g2
  r2 e~
  e2 d~
  d4 e8 fis g2~
  g8 fis g e fis2~
  fis4 fis e2~
  e4 e d2~
  d4 g cis,8 d e4~
  e2 d
  r2 a'~
  a2 g~
  g4 a8 h c2~
  c8 h c4 h2
  r2 e,~
  e2 dis4 e
  fis2. e8 fis
  g2~ g8 fis e d
  c4 r a'2~
  a2 g~
  g4 a8 h c2~
  c8 h c a h2~
  h4 h a2~
  a4 a g2~
  g4 c fis,8 g a4~
  a2 g
}
rhb = \relative c'' {
  h1
  a2. h8 a
  g2. fis8 e
  fis2 r
  g2. fis8 g
  a2. c8 h
  c2~ c8 h c a
  h2 r
  g1
  fis2~ fis4 g8 a
  h2~ h8 a h g
  a2. a4
  g2. g4
  fis2. h4
  e,8 fis g2.
  fis1
  c'1
  h2. c8 d
  e2~ e8 dis e4
  dis2 r
  g,1
  fis4 g a2~
  a4 g8 a h2~
  h8 a g fis e4 r
  c'1
  h2. c8 d
  e2~ e8 d e c
  d2. d4
  c2. c4
  h2. e4
  a,8 h c2.
  h1
}
lhc = \relative c' {
  r4 g8 a h4 c
  d4 d, d'2
  r4 e8 d cis4 a
  d4 d, d' c?
  h4-\prallprall a8 h c4 c,
  c'4 h8 c d4 a
  d,4 fis8 e fis4 d
  g4 d g, g'8 a
  h4 a8 h cis4 h8 cis
  d4 cis h a
  g4 fis e d
  cis4 h8 cis d4 cis8 d
  h4 a8 h cis4 h8 cis
  ais4 gis8 ais h a g fis
  g4 e a a,
  d4 a' d2
  r4 d8 e fis4 d
  g4 g, g' a8 h
  c4 h a g8 a
  h4. a8 g fis e dis
  e4 e'8 d c4 h
  a4 h8 c fis,4 g8 a
  dis,4 e8 fis h,4 cis8 dis
  e4 \clef treble e'8 dis e4 fis8 g
  a4 g8 a fis4 e8 fis
  g4 fis e d
  c4 h \clef bass a g
  fis4 e8 fis g4 fis8 g
  e4 d8 e fis4 e8 fis
  dis4 cis8 dis e d c h
  c4 a d d,
  g4 d' g2
}
%general stafflayout
rhlayout= {
  \time 2/2
  \repeat volta 2 { s1*16 }
  \mLineBreak
  \repeat volta 2 { s1*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
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
      \new Voice {\global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 18. Canone alla Sesta." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
