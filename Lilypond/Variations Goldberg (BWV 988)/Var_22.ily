%voices
rha = \relative d'' {
  R1*4
  r2 d~
  d4 c8 h c4 e
  a,4 d2 c4 ~
  c4 h8 a h2~
  h4 h8 a h4 e
  cis4 a'2 g8 fis
  g1~ ^\longprall
  g1~
  g4 fis8 e fis4 a
  d,2 g~
  g4 fis e2
  d1
  r2 a'~
  a4 g8 fis g4 h
  e,1~
  e4 dis8 cis dis4 fis
  h4 h, h'2~
  h4 a8 g a4 c
  fis,4 g a2~
  a4 g8 fis g4 h
  e,1
  d1
  c1
  r2 d~
  d4 c8 h c4 e
  a,2~ a8 e' d e
  a,4 d2 c4~
  c4 h8 a h2
}
rhb = \relative g' {
  R1 *2
  r2 g~
  g4 fis8 e fis4 a
  d,2. f4
  e2. g4~
  g4 fis8 e fis4 a~
  a4 g8 fis g4 h
  e,2 h'
  a2 d
  e1~
  e1~
  e4 d8 cis d4 fis
  h,2. e8 d
  e4 d2 cis4
  d4 a8 g a2
  R1
  r2 h~
  h4 a8 g a4 c
  fis,2 h
  r2 g'~
  g4 fis8 e fis4 a
  dis,4 e2 dis4
  e2 h~
  h4 a8 g a4 c
  fis,4 d g2~
  g4 fis8 e fis4 a
  d,2 r
  r2 g~
  g4 g8 fis g2~
  g4 fis8 e fis4 a~
  a4 g8 fis g2
}
lhc = \relative e' {
  r2 e~
  e4 d8 cis d2~
  d4 cis8 h cis4 e
  a,1~
  a4 g8 fis g2~
  g4 e a2~
  a4 a8 g a4 fis
  d'2 r
  r2 e~
  e4 d8 cis d2~
  d4 cis8 h cis4 e
  a,1
  r2 a~
  a4 g8 fis g4 h
  cis,4 d e8 fis g4~
  g4 fis8 e fis2
  s1*3
  s2 fis'~
  fis4 e8 dis e4 g
  c,4 e a2~
  a4 g fis2
  e2 r
  \override MultiMeasureRest.staff-position = #'10 R1*2
  \revert MultiMeasureRest.staff-position
  r2 c~
  c4 h8 a h4 d
  g,2. h4
  e,2 a~
  a4 a8 g a4 fis
  d'1
}
lhd = \relative g {
  g1
  fis1
  e1
  d2. c4
  h1
  c1
  d1
  g,1~
  g4 g'8 fis g2~
  g4 fis8 e fis4 h
  e,2. d4~
  d4 cis8 h cis4 e
  fis,2 fis'
  g,2 e'
  a,1
  d1
  d'2. c4
  h4 d g g,
  c4 e c a
  h4 h, h' a
  g1
  a1
  h1
  e,2. d4
  c2 c'~
  c4 h8 a h4 e
  a,2. g4
  fis2 g
  e2. d4
  c2 cis
  d1
  g,1
}
%general stafflayout
rhlayout= {
  \time 2/2
  \markUpBegin \mark \markup { "alla breve" }
  \repeat volta 2 { s1*16 }
  %	\mLineBreak
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
      \new Voice {\voiceThree \global \lhc}
      \new Voice {\voiceFour \global \clef bass \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 22. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
