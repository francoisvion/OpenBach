%voices
rha=\relative g, {
  \clef bass
  g8\prallmordent r \clef treble g'''4.~ ^\longupprall g16 fis32 g
  a8 r \clef bass fis,,4 \prallmordent~ fis16 a g fis
  e8 r \clef treble e'' ( d cis d16 e )
  f,8 r \clef bass c,4. ^\longprall c16 h32 c
  h8[ g] h[ d] g[ h,]
  c8[ e g c] e,[ g]
  fis8[ a] d,[ fis a c]
  h8[ g h d] \clef treble g r
  r16 h'32 a h16-. r r e,32 d e16-. r r a,32 g a16-. r
  r16 a'32 g a16-. r r d,32 cis d16-. r r g,32 fis g16-. r
  r16 g'32 fis g16-. r r h,32 a h16-. r r e,32 d e16-. r
  r16 \clef bass g,32 fis g16-. r r cis,32 h cis16-. r r g32 fis g16-. r \clef treble
  r32 d'' e fis a fis e d r d e fis a fis e d r d e fis a fis e d
  h'8-. r \clef bass f,-. r e-. r \clef treble
  r16 e'32 d e16-. a32 g a16-. d,32 cis d16-. g32 fis g16-. cis,32 h cis16-. fis32 e
  fis16-. d cis d fis32 e d16 a'32 g fis16 d'8 r
  fis16 a d a fis a d, fis a fis g a
  d,16 g h g d g h, d g h, c d
  g,16 c e c a c fis, a c fis, g a
  dis,16 fis h fis dis fis h, dis fis dis e fis
  h,16 e g e h e g, h e dis e g
  c,16 f a f c f a, c f e f a
  dis,16 fis a fis dis fis h, dis \clef bass fis, a g fis
  g16 h e h g h e, fis g e g h
  e16 r r e,32[ d e16-.] r r c'32[ h c16-.] r r \clef treble a'32 g
  a16-. r r \clef bass d,,32[ c d16-.] r r h'32[ a h16-.] r r \clef treble g'32 fis
  g16-. r r \clef bass c,,32[ h c16-.] r r a'32[ g a16-.] r r \clef treble fis'32 e
  fis16-. r r d'32[ c d16-.] r r g32[ fis g16-.] r r h32 a
  h8-. r d,,-. r f-. r
  r32 e f g c g f e r fis g a c a g fis r g a b cis b a g
  d'16-. c32 h c16-. h32 a h16-. b32 a b16-. a32 g a16-. d32 c d16-. g,32 fis
  g32 a h c d c h a g16 h d, g g,8 r
}
lhb = \relative h{
  h16 g d g h g d' h g h a g
  d'16 a fis a
  \once \override Beam.positions = #'(-4 . -5) d16 a \clef treble a' fis d fis e d
  g16 e h e g e h' g e h' a g
  d'16 a fis a d a a' fis d fis e d
  g16 d h d g d h' g d f e d
  e16 c g c e c g' e c d c h
  a16 fis d fis a fis d' a fis a g fis
  g16 d h d g d h' g d' c h a
  g8 r16 g'32[ fis g16-.] r r cis,32[ h cis16-.] r r fis,32 e
  fis16-. r r fis'32[ e fis16-.] r r h,32[ a h16-.] r r e,32 d
  e16-. r r e'32[ d e16-.] r r g,32[ fis g16-.] r r cis,32 h
  cis16-. r r \clef bass e,32[ d e16-.] r r a,32[ g a16-.] r r fis32 e
  fis8-. r \clef treble d'''-. r c-. r \clef bass
  r32 g, a h d h a g r g a b d b a g r gis a h d h a gis
  a16-. cis32 h cis16-. fis,32 e fis16-. h32 a h16-. e,32 d e16-. a32 g a16-. d,32 cis
  d32 e fis g a g fis e d16 fis a, d d,8 r
  d'8\prallmordent r \clef treble c'''4.~^\longupprall c16 h32 c
  h8 r f,4 \prallmordent~ f16 a g f
  e8 r fis' ( a dis, e16 fis )
  h,8 r \clef bass a,,4.~^\longdownprall a16 g32 a
  g8 e g h g e
  a8 a, a' c h a
  h8[ dis fis h] \once \override Beam.positions = #'(4 . 3) h, \clef treble e'16 dis
  e8 g h[ e16 dis e8] r \clef bass
  r16 c,,32 h c16-. r r a'32 gis a16-. r r e'32 d e16-. r
  r16 h,32 a h16-. r r g'32 fis g16-. r r d'32 c d16-. r
  r16 a,32 g a16-. r r e'32 d e16-. r r c'32 h c16-. r
  r16 \clef treble a'32 g a16-. r r fis'32 e fis16-. r r a32 g a16-. r
  r32 g, a h d h a g r g a h d h a g r g a h d h a g
  c8 r \clef bass a, r e r
  fis16-. a32 g a16-. d32 c d16-. g,32 fis g16-. c32 h c16-. fis,32 e fis16-. h32 a
  h16 g fis g h32 a g16 d'32 c h16 g'8 r
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 14. a 2 Clav" }
  \layout {
    system-count = #'12
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}