%voices
rha=\relative c'' {
  h32 c h a h8~ h32 fis g a h16 c \appoggiatura d32 c16 h a g
  d'32 e d cis d8~ d32 cis d e fis16 g \appoggiatura a32 g16 fis e d
  g32 a g fis g8~ g32 fis e fis g16 e a, h' a g
  \appoggiatura g32 fis e fis e d8~ d32 cis d e fis16 g a h32 c h16 a
  g32 f e16 f8~^\prallmordent f32 d g a h c d16 c h a g
  f32 e d16 \appoggiatura d e8~ e32 d c h c d e16 d g e c
  h32 a g16 a8~ a32 g a h c fis, g a d, fis e d a' g fis c'
  c32 h a16 h8~ h32 a g fis g h d fis g fis e d fis a h c
  h32[ a g16]~ g32[ fis e16]~ e32[ dis e16]~ e32[ fis g16]~ g32[ a h16]~ h32[ g fis e]
  a32[ g fis16]~ fis32[ e d16]~ d32[ cis d16]~ d32[ e fis16]~ fis32[ g a16]~ a32[ fis e d]
  g32 ( a h a ) g16 fis e32 ( fis g fis ) e16 d cis32 (d e d ) cis16 h
  a4.~ \downprall a32 cis h a h cis d e fis16 g
  a32 d, (cis d e d cis d ) a d g, d' fis, d' e, d' fis, d' a d fis, d' d, c'
  h32 d ( cis d e d cis d ) h d a d g, d' fis, d' g, d' h d g, d' e, d'
  cis32 g fis g a g fis g e' cis h cis d cis h cis g' e d e a g fis e
  fis16 cis cis d d g, g fis fis4
  fis'32 g fis e fis8~ fis32 e fis g a16 h~ \appoggiatura c32 h16 a g fis
  g32 a g fis g8~ g32 fis, g a h16 c~ \appoggiatura d32 c16 h a g
  e'32 fis e dis e8~ e16 gis gis a a h h c
  e,32 dis cis16 dis8~ \prallprall dis~ dis32 dis e fis e dis cis h a g a fis'
  g,32 e' dis e f e dis e fis e g e a e h' e, c' e, d' e, c' e, h' e,
  c'32 e, dis e f e dis e c' e, h' e, a e g e fis e g e a e dis cis
  dis32 a' ( g a h a g a ) h, g' ( fis g a g fis g ) a, fis'( e fis g a g fis )
  g16 ( dis ) dis (e ) \stemUp e ^( a,) a ^( g ) g8~ \prallmordent g32 h c d \stemNeutral
  e32 f e dis e8~ e16 a, \appoggiatura h32 a16 g \appoggiatura a32 g16 fis fis e'
  d32 e d cis d8~ d16 g, \appoggiatura a32 g16 f \appoggiatura g32 f16 e e d'
  c32 h a16~ a32 g fis16~ fis32 e d16~ d32 e fis16~ fis32 g a16~ a32 h c16~
  c32 d c h c g' fis e fis h a g a d c h c h a g fis e d c
  h32 g' ( fis g a g fis g ) c, fis ( e fis g fis e fis ) d f (e f g f e d )
  e32 c ( h c d c h c ) d h ( a h c h a h ) cis b ( a b c b a g )
  fis32 c' ( h c d c h c ) fis c ( h c d c h c ) a' c, ( h c d c h a )
  h16 ( fis ) fis (g) g (c,) c (h) h4
}
rhb=\relative c' {
  s2.*15
  s4 r8 cis d4
  s2.*7
  s4 r8 dis e
}
lhc = \relative c' {
  r8 r16 h d2~
  d8. a16 d2~
  d8. h16 cis2
  r8 r16 fis, a2
  r8 r16 d, g2~
  g8. fis16 g2
  g8. e16 fis2
  r8 r16 d g4 r
  r8 h e2~
  e8 a, d2~
  d8 h g2~
  g16 a g fis g8 r r4
  r8 a d4. a8
  g8 h e4. h8
  a8[ cis] g'[ e] cis4
  d8[ e,] fis[ b] a4
  \clef treble r8 r16 fis' a2
  r8 r16 d, g2~
  g8. gis16 a8 d, e g~
  g8 fis16 e fis8 \clef bass r r4
  r8 h,4 a gis8
  r8 c4 e8 c a
  r8 fis g e'4 dis8
  e8[ fis,] g[ c] h r
  r8 r16 g c d e8 d cis
  h8. fis16 h c d8 c h
  a8[ e] a[ c] a[ fis]
  d4 r r
  r8 e'[ es d] g[ h,]
  c8[ g] a[ d] e[ a,]~
  a8 a16 g a4 g8 fis
  g8[ a] h[ fis] g4
}
lhd = \relative c {
  s2.*31
  s4 \override Rest.staff-position = #'1 r8 es d4
}
lhe = \relative c' {
  g4. g8 fis e
  fis4. h8 a h
  e,4. a8 g a
  d,4. e8 d c
  h4. g8 a h
  c4. a8 h c
  d4. d8 c d
  g,4. g8 h d
  g4. g8 fis e
  fis4. h8 a h
  e,4. fis8 e d
  cis4~ cis8[ e] a,[ g]
  fis8 fis'16. e32 fis8[ a] d,[ fis]
  g,8 g'16. fis32 g8[ h] e,[ g]
  a,8 a'16. g32 a4. a8
  d,2.
  d'4. c16[ h c8 a]
  h4. d8 g, h
  c4. h8 c a
  h4. h,8 cis dis
  e,8 g'16 a g8 fis e4
  a,8 a'16 g a8[ c] a[ fis]
  h,8[ dis] e[ g] h4
  e,2~ e8 d
  c4 r8 c' h ais
  h8 h, r h' a gis
  a8 a, r4 r
  r8 a[ d, fis] a[ d]
  g,8 g' a h r g
  c,8 e f fis g fis16 e
  d4. fis8 e d
  g,4 r g
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
      \new Voice {\voiceTwo \global \clef treble \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\voiceThree \global \lhc}
      \new Voice {\voiceFour \global \lhd}
      \new Voice {\voiceFour \global \clef bass \lhe}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 13. a 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
