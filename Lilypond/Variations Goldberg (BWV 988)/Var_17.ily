%voices
rha=\relative c'' {
  h16 d fis a g8. c,16 h a g h
  a16 cis e g fis8. h,16 a g fis a
  g16 h d fis e8. a,16 g fis e g
  fis16 e fis e fis a d cis d fis a c,
  h16 g' a, fis' g, e' f, d' e, c' d, h'
  c16 e, h' d, a' c, g' h, fis' a, e' g, \clef bass
  a16 fis' g, e' fis, d' e, c' d, h' c, a'
  h,16 a h a h d g fis g8 r \clef treble
  d''16 h' c, a' h, g' a, fis' g, e' fis, d'
  e,16 d' cis h cis e a8 a \downmordent r
  h,16 g' a, fis' g, e' fis, d' e, cis' d, h'
  cis,16 h' a gis a cis e8 e4 \prallmordent~
  e16 d e cis d h c a h g a fis
  g16 e' fis, d' \once \override Beam.positions = #'(5 . 5) e, cis' \grace d32 cis16 ( h ) \grace cis32 h16 ( a ) h g'
  g8. fis32 e fis16 d h g a fis g e'
  fis,16 e fis e fis a d cis d8 r
  a'16 fis g e fis d e c d h c a
  h16 g a fis g e fis dis e c d h \clef bass
  c16 a h gis a fis g e f dis e cis
  dis16 cis dis cis dis4~ dis16 fis h a \clef treble
  g16 h a c h dis cis e dis fis e g
  fis16 a g h a c h d c e dis fis
  e16 g fis a g h a c h g a fis
  g16 e fis dis e c h a g fis e8~
  e16 e' h d c h a c h d c e
  d16 h a c h a gis h a c h d
  c16 a g h a fis' g e fis d e c'
  c8~ c32 h a g fis16 g a fis \grace e8 d4~
  d16 h c a h g' a, f' g, e' f, d'
  e,8 r32 g a h c16 a h g a fis g e
  fis16 e' d8~ d32 e fis g fis e d c h16 g' a, fis'
  g,16 fis g fis g h d fis g8 r
}
lhb = \relative c {
  g16 h a c h d c e d fis e g
  fis16 a g h a \clef treble cis h d cis e d fis
  e16 g fis a g h a cis h d cis e
  d16 cis d cis d2 (
  d16 ) h c a h g a f g e f d \clef bass
  e16 c d h c a h g a fis g e
  fis16 d e c d h c a h g a fis
  g16 fis g fis g4~ g16 d' g fis \clef treble
  g16 h d fis g8. a16 h cis d h
  cis16 h a g fis e dis cis \clef bass h a g fis
  e16 g h dis \clef treble e8. fis16 g a h g
  a16 d, cis h cis e a h cis e g h,
  a16 fis' g, e' fis, d' e, c' d, h' c, a' \clef bass
  h,16 g' a, fis' g, e' fis, d' e, cis' d, h'
  cis,16 a' h, g' a, fis' g, e' fis, d' e, cis'
  d16 cis d cis d a fis a d,8 r
  d16 fis a cis d8. e16 fis g a fis
  g16 h, c d g,8. fis'16 g a h gis
  a16 c, d e a,8. gis'16 a h c ais
  h16 ais h ais h fis g a \once \override Beam.positions = #'(4 . 2.5) h,8 \clef treble dis' \turn
  e16 g fis a g fis e g fis dis e cis \clef bass
  dis16 cis h d c a h gis a g fis a
  g16 e fis dis e dis cis e dis e fis dis
  e16 g, a h e, fis g a h c d h
  c16 e d f e g fis a gis h a c \clef treble
  h16 d c e d f e gis fis a gis h
  a16 c h d c a h g a fis g e
  fis16 d e cis d h' c, a' h, g' a, fis'
  h,8 r32 d e fis g16 e f d e c d h \clef bass
  g16 e f d e c' d, h' c, a' h, g'
  a,16 g' fis c h d g h d h c a
  h16 a h a h g d h g8 r
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 17. a 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
