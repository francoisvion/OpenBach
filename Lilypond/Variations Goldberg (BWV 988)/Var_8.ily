%voices
rha=\relative c' {
  d16 g h a g h d c h d g r
  d,16 fis a g fis a c h a d fis r
  h,,16 e g fis e g h a g cis e r
  a,,16 d fis e d fis a g fis a d8~
  d16 h g a h g d e f d h r
  e'16 c a h c a e fis g e c r
  a''16 fis d e fis d a h c a fis c'
  h16 g d fis g d h c d h g a
  h8 h''16 a g fis e d cis e d e
  a,8 a'16 g fis e d cis h d cis d
  g,8 g'16 fis e d cis h a cis h d
  cis16 e a, h cis a e fis g e cis e
  d8 fis a d r16 c a fis
  g8 h d g r16 g fis g
  a,8 cis e g r16 g a cis,
  d16 fis a cis d cis32 h a g fis e d4
  a16 d fis e d fis a g fis a c r
  d,,16 g h a g h d c h d f r
  e16 c a h c a fis g a fis dis e
  \clef bass
  fis16 dis h cis dis h fis g a fis dis fis
  \clef treble
  g16 h e dis e g h a g h e r
  e,16 a c h a c e d c e a r
  r16 c, h fis' g dis e g, fis e' dis a'
  g16 \prallprall fis e8 r16 a, g fis \appoggiatura fis e4~
  e8 e'16 d c h a g fis ais cis e
  d16 fis, d' c h a gis fis e gis h d
  c16 e, c' h a c e d c e a g
  fis16 a c h a g fis e d fis a c
  h16 d g, a h g d e f d h d
  e16 g c, d e c a h c a e g
  fis16 a d, e fis d
  a16 h c a fis a
  h16 d g, a h g h d g4
}
lhb=\relative g {
  g8 d h g r16 g' fis e
  fis8 d a fis r16 fis' e d
  e8[ h] g[ e] r16 e' d cis
  d8 a fis d r16 c' h a
  h8[ d] g[ h] r16 g f g
  c,8[ e] a[ c] r16 a g a
  d,8[ fis] a[ d] r16 d, c d
  g,8[ g'] h,[ d] g, r
  \clef treble
  g'16 h d c h d g fis e g h r
  fis,16 a cis h a cis fis e d fis a r
  \clef bass
  e,16 g h a g h e d \clef treble cis e g fis
  e16 g cis h a cis e d cis e a g
  fis16 a d, e fis d a h c a fis a
  h16 d g, a h g e fis g e h d
  \clef bass
  cis16 e a, h cis a e fis g e cis e
  fis16 a d, e fis d fis a d4
  d8 a fis d r16 c' h a
  g8[ d] h[ g] r16 f' e d
  c16 e a g fis a c h a c dis c
  \clef treble
  h16 dis fis e dis fis a g fis a c a
  h16 g e fis g e h dis e h g h
  \clef bass
  c16 a e gis a e c d e c a c
  dis,8 dis' e c a h
  e,8 g h e r16 d c h
  c16 e g f e g c h ais cis fis r
  h,,16 d fis e d fis h a gis h e r
  a,,16 c e d c a c e a c fis, g
  a16 fis d e fis d a h c a fis d
  g8 h d f r16 f e d
  c8 e g c r16 c h c
  d,8 fis a c
  r16 c d fis,
  g16 h d fis g fis32 e d c h a g4
}
%general stafflayout
rhlayout= {
  \time 3/4
  \repeat volta 2 { s2.*16 }
  \mLineBreak
  \repeat volta 2 { s2.*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
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
      \new Voice {\global \clef bass \lhb}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 8. a 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
