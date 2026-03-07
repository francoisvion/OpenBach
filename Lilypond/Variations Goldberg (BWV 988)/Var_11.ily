%voices
rha=\relative h' {
  h16 a g fis e d cis8.~ cis8 e16
  a16 g fis e d cis h8.~ h8 a'16
  g16 fis e d cis h a8 cis16 e8 g16
  fis16 e d \clef bass cis h a g fis e d e c
  h16 d g h d g d h g f e d
  cis16 e g b e g e b a g fis e
  d16 g h \clef treble d g h a fis d c h a
  g16 h d g h d g8 d16 h8 fis16
  g8.~ g8 h16 e d cis h a g
  fis8.~ fis8 e'16 d cis h a g fis
  e8.~ e16 fis g cis, h' a g a h
  e,16 d' cis h cis d cis e fis g fis e
  d4.~ \downprall d8 fis,16 a8 d16
  d4.~ \upprall d8 gis,16 h8 d16
  d4.~ \upprall d16 e g cis, e g
  fis8.~ fis16 d a fis d fis a cis d
  r4. a'16 g fis e d c
  h16 a g r8. d''16 c h a g f
  e16 d c h a g fis8 dis'16 e8 ais,16
  h8 dis,16 fis8 a16 c h a g a fis
  e16 g h e g h g e h g fis e
  f16 a c f a c a f c a g fis
  g16 h e g e c' h a g fis e dis
  e16 g e h g fis g e g h e dis
  e16 d c h a g fis8.~ fis8 a16
  d16 c h a g fis e8.~ e8 d'16
  c16 h a g fis e fis e d cis d e
  fis16 e d \clef bass c h a h a g fis g a
  h16 a g f e d e d c h c d
  e16 c e g c e c a c \clef treble e a c
  fis,16 d fis a d fis d a d fis a c
  h16 g d h g fis g h d g8.
}
lhb=\relative g {
  g8.~ g8 h16 e d cis h a g
  fis8.~ fis8 e'16 d cis h a g fis
  e8 g16 h8 d16 cis h a g fis e
  d16 e fis g a h \clef treble cis d e fis g a
  g4.~ \prallprall g8 h,16 d8 g16
  g4.~ \upprall g8 cis,16 e8 g16
  g4.~ \upprall g16 a c fis, a c
  h8.~ h16 g d h g h d g a
  h16 a g fis e d cis8.~ cis8 e16
  a16 g fis e d cis h8.~ h8 a'16
  g16 fis e d cis h e d cis h a g \clef bass
  cis16 h a g fis e a g fis e fis g
  fis16 a d \clef treble fis a d a fis d c h a
  gis16 h d f h d h f e d cis h
  a16 d fis a d fis e cis a g fis e
  d16 \clef bass a fis d a fis d fis a d8.
  d16 e fis g a h c d, c'~ c h a
  g16 a h \clef treble c d e f g, f'~ f e d
  c8.~ c16 e g c h a g fis e
  dis16 cis h \clef bass a g fis e dis cis h c a
  g8.~ g16 h e g h dis e8 g,,16
  a8.~ a16 c f a c dis e8 ais,,16
  h8.~ h16 cis dis e fis g a g fis
  g16 e g h e dis e g e h g h
  c,8.~ c8 e'16 \clef treble a g fis e d c
  h8.~ h8 a'16 g fis e d c h
  a8.~ a16 h c d e fis g fis e
  d8.~ d16 e fis g a h c h a
  g8.~ g16 a h c d e f e d
  c8.~ c16 e c a e c a c e
  a16 c a fis d a \clef bass fis d fis a c fis,
  g16 h d \clef treble g h d g d h g8.
}
%general stafflayout
rhlayout= {
  \time 12/16
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
      \new Voice {\global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\global \clef bass \lhb}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 11. a 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}