%voices
rha = \relative c'' {
  R2.
  a8 h16 cis d e fis e d e fis8
  g,8 r r e' r r
  fis,8 g16 a h c d e d c d8
  d8 r r g, r r
  c16 d c h a g fis a c e d c
  h16 c h a g fis e g h d c h
  a8 h \turn c d, d'4~
  d16 fis e d cis h cis d e cis d e
  a,2.~ \prallmordent
  a16 a g fis e d cis d e d e cis
  fis8 r r h, r r
  h'16 c h a g fis e g h d cis h
  a16 h a g fis e dis fis a c h a
  g8 a \turn h~ h a g~
  g16 fis e d e cis d4.
  a''8 g16 fis e d c d e d c a'
  h,8 r r g' r r
  c16 d c h a g a h a g fis e
  dis8 e \turn fis h,4.~
  h16 a h d c h c f c a f a
  dis,16 e fis a g fis g8 g8. \prallprall fis32 g
  a16 h c h a8 a4.~ \turn
  a16 fis g a h c d c h a gis fis
  e16 gis a h c d e d c d e8
  a,8 r r fis' r r
  h,8 c16 d e fis g a g fis g e
  c'16 h a g fis e d4.
  d16 c d e fis g a e c a h c
  fis,16 g a h c a h d g8 r
  r8 e d c d16 c h a
  h16 d h g a fis g4. \prallmordent
}
lhb = \relative g {
  g8 a16 h c d e d c d e8
  fis,8 r r d' r r
  e,8 fis16 g a h c d c h c8
  c8 r r fis, r r
  h16 c h a g fis e g h d c h
  a16 h a g fis e d fis a c h a
  g8 a \turn h c, c'4~
  c16 e d c h a h c d h c d
  g,2.~ \prallmordent
  g16 g fis e d cis h cis d cis d h
  e8 r r a, r r
  a'16 h a g fis e d fis a c h a
  g16 a g fis e d cis e g h a g
  fis8 g \turn a~ a g fis~
  fis16 e d cis d h cis4~ \prallprall cis16 h32 cis
  d8 fis, a d,4.
  R2. \clef treble
  g''8 fis16 e d c h c d c h g'
  a,8 r r fis' r r
  h16 c h a g fis g a g fis e d \clef bass
  c8 d \turn e a,4.~
  a16 g a c h a h e h g e g
  cis,16 dis e g fis e fis8 fis8. \prallprall e32 fis
  g16 a h a g8 gis4.~ \turn
  gis16 e fis gis a h c h a g fis e
  d16 fis g a h c d c h c d8
  g,8 r r \clef treble e' r r
  a,8 h16 c d e fis g fis e fis d
  h'16 a g fis e d c4.~
  c16 h c d e fis g d h g a h
  e,16 fis g a h g a c fis8 r
  r8 d c h c16 h a g
}
%general stafflayout
rhlayout= {
  \time 6/8
  \repeat volta 2 { s2.*16 }
  %	\mLineBreak
  \repeat volta 2 { s2.*16 }
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
      \new Voice { \global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\global \clef bass \lhb}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 27. Canone alla Nona. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
