%voices
rha=\relative c'' {
  r16 h r g r d r h r \clef bass g fis e
  fis8 a \clef treble d fis a d
  r16 g, r e r cis r a r \clef bass g fis e
  d8 fis a \clef treble d fis a
  r16 fis r d r h r g r \clef bass f e d
  c8 e g c e g
  r16 fis r d r a r fis r d c d
  g,8 h d g fis c'
  \clef treble
  \tweak #'transparent ##f \times 2/3 { h16[ a h] cis[ h cis] } \times 2/3 { d[ cis d] e[ d e] fis[ e fis] g[ fis g] }
  \tweak #'transparent ##f \times 2/3 { a16[ g a] } \times 2/3 { h[ a h] cis[ h cis] d[ cis d] e[ d e] fis[ e fis] }
  g8 r \clef bass e,,4 \prallmordent r8 \clef treble h''
  g'8 r \clef bass cis,,,4 \prallmordent r8 \clef treble g'''
  \tweak #'transparent ##f \times 2/3 { fis16[ a d,] } \times 2/3 { e[ g cis,] d[ fis h,] c[ e a,] h[ d g,] a[ c fis,] }
  g8 \clef bass g, fis a fis d'
  \clef treble
  \times 2/3 { cis16[ a h] cis[ d e] } fis8~ \times 2/3 { fis16[ e d] } h'8 cis \turn
  \times 2/3 { d16[ a fis] \clef bass d[ a fis] } d8 r r4
  \clef treble
  r16 a''' r fis r d r a r fis r d
  \clef bass
  r16 h r g r d r h r g a h
  \once \override Beam.positions = #'(-3.75 . -3.75)
  c8 g' c e a, \clef treble c'~
  \tweak #'transparent ##f \times 2/3 { c16[ h ais] } \times 2/3 { h[ cis dis] e[ dis cis] dis[ e fis] g[ fis e] fis[ g a] }
  \tweak #'transparent ##f \times 2/3 { h16[ a g] } \times 2/3 { a[ h c] } dis,8[ c'] h[ d,]~
  \times 2/3 { d16[ cis dis] e[ fis g] } ais,8[ g'] fis[ a,]
  g8[ dis] \clef bass e[ c] dis,[ \clef treble dis'']
  e8[ e,]	\tweak #'transparent ##f \times 2/3 { r16 g h }
  \times 2/3 { e16[ g dis] e[ h g] r gis f' }
  \times 2/3 { e16[ c a] r d, h' r c, a' r h, g' r c, a' r fis es' }
  \times 2/3 { d16[ h g] r c, a' r h, g' r a, fis' r h, g' r e d' }
  \times 2/3 { c16[ a e } c8-.] c-. c-. c-. c'-.
  \times 2/3 { c16[ a fis } c8-.] c-. c-. c-. c'-.
  \times 2/3 { h16[ g d'] c[ a e'] } d8 h, g f''
  \times 2/3 { e16[ g c,] d[ f h,] c[ e a,] h[ d g,] a[ c fis,] g[ h e,] }
  \times 2/3 { fis16[ d e] fis[ g a] } h,8~ \times 2/3 { h16[ a g] } e'8 fis \turn
  \times 2/3 { g16[ d h] \clef bass g[ d h] } g8 r r4
}
lhb= \relative g {
  \clef treble g8 h d g h cis
  r16 d r a r fis r d r \clef bass a g fis
  e8 g a cis e g
  r16 fis r d r a r fis r e d c
  h8 d g h d f
  r16 e r c r g r e r c h a
  d8 fis a \clef treble d fis a
  r16 h r g r d r h r a g fis
  g8 r h''4 \prallmordent r8 e,,
  fis,8 r a''4 r8 d,,
  \tweak #'transparent ##f \times 2/3 { h'16[ c h] } \times 2/3 { a[ h a] g[ a g] fis[ g fis] e[ fis e] d[ e d] }
  \clef bass
  \tweak #'transparent ##f \times 2/3 { cis16[ d cis] } \times 2/3 { h[ cis h] a[ h a] g[ a g] fis[ g fis] e[ fis e] }
  d8 a' fis' a, d, c'
  \clef treble
  \tweak #'transparent ##f \times 2/3 { h16[ g d'] } \times 2/3 { cis[ a e'] d[ h fis'] e[ cis g'] fis[ d a'] g[ e h'] }
  a8~ \times 2/3 {a16[ h cis] d[ cis h] } a8~ \times 2/3 {a16[ g fis] e[ fis g] }
  fis8 r \times 2/3 {r16 fis a d[ fis a] } d8 r

  \clef bass
  d,,,8 d, fis a d fis
  g8 \clef treble h d g h4 \prallmordent~
  \tweak #'transparent ##f \times 2/3 { h16[ e, dis] } \times 2/3 { e[ fis g] a[ g fis] g[ a h] c[ h a] g[ fis e] }
  dis8~ \tweak #'transparent ##f \times 2/3 { dis16[ e fis] } \times 2/3 { g[ fis e] fis[ g a] } \clef bass h,8 a
  \tweak #'transparent ##f \times 2/3 { g16[ fis e]~ } \times 2/3 { e[ dis e] f[ e f] fis[ e fis] g[ fis g] gis[ fis gis] }
  a8~ \times 2/3 { a16[ ais h] c[ h c] cis[ h cis] d[ cis d] dis[ cis dis] }
  \clef treble
  \times 2/3 { e16[ dis e] fis[ e fis] g[ fis g] a[ g a] h[ a h] c[ h a] }
  \times 2/3 { g16[ fis g] a[ g fis] } e4. \clef bass d,8
  c8 e'-. e-. e-. e-. c,
  h8 d'-. d-. d-. d-. h,
  a8 \times 2/3 { r16 h' g' r a, fis' r g, e' r fis, d' r g, e' }
  d,8 \clef treble \times 2/3 { r16 a' fis' r h, g' r c, a' r h, g' r a, fis' }
  g,8 g'~ \times 2/3 { g16[ h e,] f[ a d,] e[ g c,] d[ fis h,] }
  \times 2/3 { a16[ g e'] d[ h f']} e8 g' c e,
  d8~ \times 2/3 { d16[ e fis] g[ fis e] } d8~ \times 2/3 { d16[ c h] a[ b c] }
  h8 r \times 2/3 { r16 h, d g[ h d] } g8 r
}
%general stafflayout
rhlayout= {
  \time 3/4
  \repeat volta 2 { s2.*16 }
  %	\mLineBreak
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
  \override TupletBracket.stencil = ##f
  \override TupletNumber.transparent = ##t %#'stencil = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 20. a 2 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
