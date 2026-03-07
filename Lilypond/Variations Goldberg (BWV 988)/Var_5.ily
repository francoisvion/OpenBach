%voices
rha=\relative c' {
  r16 d e fis g fis g a h a g h
  a16 g fis e d e fis g a fis e d
  g16 fis e d cis d e fis g h a g
  fis16 e d cis d a d e fis d fis a
  d16 h a h g h a h d, g fis g
  e16 g d g c, g' h, g' a, g' h, g'
  c,16 g' h, g' c, fis e fis d fis c fis
  h,16 g' fis e d c h a g8 r
  h''8 r g, r h'4
  a8 r fis, r a'4
  g16 fis e dis e g d g cis, g' h, g'
  cis,16 g' e g a,8 g' fis g \turn
  a8 e, fis fis' g a
  h8 fis, e g' a h
  e,8 g, \clef bass a, e' cis a
  \once \override Beam.positions = #'(4 . 3) fis8[ \clef treble d'] fis[ a] d4
  fis8 r d, r fis'4 \downmordent
  g8 d16 g a8 d,16 a' h8 ( g )
  e8[( c]) a[( g']) fis32 e dis16 e8~
  e8 dis \prall r \clef bass a, g \prallprall fis
  e8 r \clef treble e'' r \clef bass d,,4 \prallmordent
  c8 r \clef treble e'' r \clef bass a,,,4 \prallmordent
  h8 r \clef treble g''' fis e dis
  e8 r \clef bass e,,4~ e16 d c h
  c16 e d e a e d e c' a g a \clef treble
  fis'16 a, g a g' d c d h' g fis g
  e'16 d c d fis d c d g d c d
  a'16 d, c h c h a g fis a' g fis
  g8 h, r \clef bass f, e d
  c16 c' h c \clef treble d c e c fis c g' c,
  a'16 c, h a h8[ d'] \clef bass \once \override Beam.positions = #'(-4 . -3.5) d,,[ \clef treble c'']
  h16 g d g h g d' h g'4
}
lhb=\relative c' {
  g8 r \clef treble h' r \clef bass g,4
  fis8 r \clef treble a' r \clef bass fis,4
  e8 r \clef treble g' r \clef bass e,4
  d8 r \clef treble fis' r \clef bass d, c
  h8 r \clef treble d'' r \clef bass h,,4
  c8 r \clef treble e'' r \clef bass c,,4
  d8 r \clef treble a'' r \clef bass d,,4
  g,8 r \clef treble h''4~ h16 a g fis
  g16 h cis d e fis e d cis h a g
  fis16 a h cis d e d cis h a g fis
  e8 fis g h e4 \prallmordent~
  e8 d cis16 e h e a, e' g, e'
  fis,16 e' d cis d a d, d' e, d' fis, d'
  g,16 e' d cis d h e, d' fis, d' g, d'
  a16 d cis h cis e a, cis e, g fis e
  fis16 a d, fis \clef bass a, d fis, a d,4 \clef treble
  r16 d'' c h a g fis e d c' h a
  h16 g fis e d c h a g g' a h
  c16 d e d c h a g a h c a
  h16 a h fis h, cis dis e fis g a fis
  g16 h g e g h g e g h g e
  a16 c a e g c g e fis c' fis, e
  g16 h g e h h' a h g h fis h
  g16 e g h e h g h e,8 r \clef bass
  e8 r c, r e'4
  d8 r h, r d'4
  c8 h a g fis e
  fis8 g16 a d,4~ d16 c' h a
  h16 g fis g a g h g c g d' g,
  e'8 g, r h a g
  fis16 d' e fis g d h g a c g' fis
  g8 g, d h g4
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
  s2.*16
  s2.*16
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
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "up"
    <<
      \new Voice {\rhlayout}
      \new Voice { \global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \clef bass \lhb}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 5. a 1 ô vero 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}

