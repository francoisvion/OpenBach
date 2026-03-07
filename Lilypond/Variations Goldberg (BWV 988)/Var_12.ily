%voices
rha=\relative g' {
  r8 g16 fis g8 a16 h c h a g
  d'16 a h cis d e fis g a8 r
  r8 g16 fis e d cis h a g fis g
  g8 fis16\prall e d8 r r4
  r16 d'8.~ d16 h a g f e d f
  e16 g c d e8 a,4 a8~
  a16 h fis g a g fis e' d c h a
  g4 r r
  r16 fis g a h cis d fis e d cis h
  a16 g fis e d8 r r4
  r8 cis'~ cis16 h a h cis d e fis
  g8 g,16 fis g4~ g16 h a g
  fis16 e fis g fis a g fis e4~
  e8 d' cis h a fis'
  g,4. fis8 e16 a g8~
  g8 fis16 e fis d'8 cis16 d8 r
  R2.
  r8 g,16 fis g8 a16 h c h a g
  g'4~ g16 fis a g fis g e8
  \grace e16 fis8~ fis32 eis fis g fis8 a, r fis'
  g16 fis g a g fis e d c h a g
  fis2.~
  fis8 fis16 g fis8 fis fis g16 a
  g4 r e~
  e16 fis g e fis g gis a h c d e
  d8 r r4 r
  r16 c, d e d es fis g fis g a h
  a2.~
  a8 d, e fis g16 h a c
  h8 a h c d8.\prallmordent e16
  d4~ d16 h c d e fis g a
  h16 g d h g8 r r4
}
lhb = \relative fis' {
  s2.
  r8 d16 e d8 c16 h a h c d
  g,16 c h a g fis e d cis8 r
  r8 d16 e fis g a h c d e d
  d8 e16 fis g8 r r4
  r16 g,8.~ g16 h c d e fis g e
  fis16 d a g fis8 c'4 c8~
  c16 h e d c d e fis, g a h c
  d4 r r
  r16 e d cis h a g e fis g a h
  cis16 d e fis g8 r r4
  r8 a,~ a16 h cis h a g fis e
  d8 d'16 e d4~ d16 h cis d
  e16 fis e d e cis d e fis4~
  fis8 g, a h cis e,
  d'4. e8 fis16 cis d8
  r8 d16 e d8 c16 h a h c d
  d,4~ d16 e c d e d f8
  \grace fis16 e8~ e32 f e dis e8 c' r e,
  dis16 e dis cis dis e fis g a h cis dis
  e2.~
  e8 e16 dis e8 e e d16 cis
  dis4 r fis~
  fis16 e dis fis e d cis c h a g fis
  g8 r r4 r
  r16 a' gis fis gis f e d e d c h
  c2.~
  c8 g' fis e d16 h c a
  h8 c h a g8.\prallprall fis16
  g4~ g16 h a g fis e d c
  h16 d g h d8 g,~ g16 a fis8
  g4 r r
}
lhc = \relative g {
  g4 g g
  fis4 fis fis
  e4 e e
  d16 d, d'8 r c16 h a8 c
  h4 h h
  c4 c c
  d4 d d
  g8. h,16 e d c e d c h a
  h8 g r g'16 fis g8 e
  fis8 h r h,16 cis d8 h
  e16 fis g fis e8 fis e d
  cis16 d e d cis8 e cis a
  d4 r16 d e fis g a g fis
  g8 g, r16 e' fis g a fis e d
  h'16 h, e d cis a d g a e cis a
  d16 e d cis d8 a d, r
  d'4 d c
  h8 c h a g a16 h
  c8 h c e a, c
  h4 r r
  r8 e fis g a h
  c16 d c h c h a g a fis g a
  h16 c h a h fis dis fis h, dis cis h
  e16 c h a g h e dis e8 d
  c8 c' r16 e, d c d c h a
  h8 h' r16 d, c h c h a gis
  a8 a' r16 h a g a g fis e
  fis16 e d cis d c h a h a g fis
  g16 a' g fis g fis e dis e4~
  e16 d c e d4. a8
  h8 r r e c d
  g,4~ g16 h d fis g4
}
%general stafflayout
rhlayout= {
  \time 3/4
  \repeat volta 2 { s2.*16 }
  %\mPageBreak
  \repeat volta 2 { s2.*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \time 3/4
  \repeat volta 2 { s2.*16 }
  \repeat volta 2 { s2.*16 }
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
      \new Voice {\global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\voiceThree \global \lhb}
      \new Voice {\voiceFour \global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 12. Canone alla Quarta" }
  \layout {
    system-count= #14
    system-system-spacing = #'((padding . 0) (basic-distance . 0.1))
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}