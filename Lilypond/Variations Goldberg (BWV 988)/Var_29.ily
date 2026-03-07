%voices
rha = \relative a'' {
  \voiceOne
  r8 r16 g, r g r g r g r g
  r8 r16 d' r d r d r d r d
  r8 r16 g r g r g r g r g
  fis16 r r8 \oneVoice \tweak #'transparent ##f \times 2/3 { r16 c'[ h] c,[ h' a] h,[ a' g] a,[ g' fis] }
  \voiceOne
  g8 r16 g r g r g r g r f
  r8 r16 e r e r e r e r e
  r8 r16 d r d r d r d r c
  h16 r r8
  \oneVoice
  \tweak #'transparent ##f \times 2/3 { r16 a[ h]} \times 2/3 { c[ h a] h[ a g] e'[ d c] }
  \tweak #'transparent ##f \times 2/3 { d16 r g,} \times 2/3 { fis[ c] r} \tweak #'transparent ##f \times 2/3 { r r g'} \times 2/3 { a[ fis] r r r h cis[ a] r }
  \times 2/3 { r16 r d cis[ g] r r r d' e[ cis] r r r fis d[ h] r }
  \times 2/3 { r16 r c h[ g] r r r a g[ e] r r r fis e[ cis] r }
  \times 2/3 { r16 r fis e[ cis] r }
  \clef bass
  \times 2/3 { r16 r d cis[ a] r r r h a[ fis] r }
  \times 2/3 { r16 r h a[ fis] r r r g fis[ d] r r r e d[ h] r }
  \times 2/3 { r16 r e d[ h] r r r c h[ g] r r r a fis[ e] r }
  \times 2/3 { r16 g' a e'[ a, g] }
  \times 2/3 { r16 fis a d[ a fis] r e g cis[ g e] }
  \voiceOne
  r8 r16 d' r d r d r4
  \clef treble
  \tweak #'transparent ##f \times 2/3 { r16 r h'' } \times 2/3 { a[ fis] r r r g fis[ d] r r r e d[ h] r }
  \times 2/3 { r16 r e d[ h] r r r c h[ g] r r r a g[ e] r }
  \times 2/3 { r16 r f e[ c] r \clef bass r r d c[ a] r r r h a[ fis] r }
  \times 2/3 { r16 r g fis[ dis] r r r e dis[ h] r r r c h[ g] r }
  \clef treble
  r8 r16 e''' r e r e r e r e
  r8 r16 e r e r e r e r e
  \oneVoice
  \times 2/3 { r16 fis[ g] a[ b c~] c[ h a] g[ fis e] dis[ c h] a[ g fis] }
  \voiceOne
  e16 e' r e r c r c r g r g
  \oneVoice \clef bass
  \tweak #'transparent ##f \times 2/3 { r16 e, f fis[ g gis] }
  \times 2/3 { r16 h c d[ c h] \clef treble c[ d e] fis[ g a] }
  \clef bass
  \times 2/3 { r16 d,,[ es] e[ f fis] r a[ h] c[ h a] \clef treble h[ c d] e[ fis g] }
  \times 2/3 { c,16[ r f] e[ c] r r r d c[ a] r \clef bass r r h a[ fis] r }
  \clef treble
  \times 2/3 { r16 r h' a[ fis] r r r g fis[ d] r r r e d[ h] r }
  \times 2/3 { r16 r e' d[ a] r r r c h[ g] r r r a g[ e] r }
  \times 2/3 { r16 r a' g[ e] r r r f e[ c] r r r d c[ a] r }
  \times 2/3 { r16 a h c[ d e~] e[ d c] h[ a g~] g[ fis g] a[ h c] }

  \grace c8 \voiceOne h r16 g' r g r g r4
}
rhb = \relative c'' {
  r8 r16 <h, d> r <h d> r <h d> r <h d> r <h d>
  r8 r16 <fis' a> r <fis a> r <fis a> r <fis a> r <fis a>
  r8 r16 <h e> r <h e> r <h e> r <h e> r <cis e>
  <a d>16 r r8 s2
  <h d>8 r16 <h d> r <h d> r <h d> r <h d> r <h d>
  r8 r16 <g c> r <g c> r <g c> r <g c> r <g c>
  r8 r16 <fis a> r <fis a> r <fis a> r <fis a> r <fis a>
  <d g>16 r r8 s2
  s2.*7
  r8 r16 <fis, a> r <fis a> r <fis a> r4
  s2.*4
  r8 r16 <g' h> r <g h> r <g h> r <g h> r <g h>
  r8 s16 <g h> r <g h> r <g h> r <g h> r <g h>
  s2.
  r16 <g h> r <g h> r <e g> r <e g> r <h e> r <h e>
  s2.*7
  r8 r16 <h' d> r <h d> r <h d> r4
}
lhc = \relative c' {
  s4 <c fis>16 r <c fis> r <c fis> r <c fis> r
  s4 <g' cis>16 r <g cis> r <g cis> r <g cis> r
  s4 <d' fis>16 r <cis e> r <d fis> r <cis e> r
  s2.
  s4 <c fis>16 r <c fis> r <c fis> r <h d> r
  s4 <h d>16 r <h d> r <h d> r <g c> r
  s4 <g cis>16 r <g cis> r <g cis> r <fis a> r
  s2.*8
  s4 <g, cis>16 r <g cis> r s4
  s2.*4
  s4 <a' dis>16 r <a dis> r g r <a dis> r
  s4 <a dis>16 r <a dis> r g r <a dis> r
  s2.
  r8 <a dis>16 r <fis h> r <fis h> r <d fis> r <d fis> r
  s2.*7
  s4
  <c' fis>16 r <c fis> r s4
}
lhd = \relative a {
  \oneVoice g8 g,
  \voiceFour \clef treble
  a'16 r a r a r a r
  \oneVoice \clef bass
  fis8 fis,
  \voiceFour \clef treble
  e''16 r e r e r e r
  \oneVoice \clef bass
  e,8 e,
  \voiceFour \clef treble
  a''16 r g r a r g r
  \oneVoice \clef bass
  r16 d a fis d16. d'32 e,16. c'32 d,16. h'32 c,16. a'32
  h,8 b'
  \voiceFour \clef treble
  a'16 r a r a r g r
  \oneVoice \clef bass
  c,,8 c'
  \voiceFour \clef treble
  f16 r f r f r e r
  \oneVoice \clef bass
  d,8 d'
  \voiceFour \clef treble
  e16 r e r e r d r
  \oneVoice \clef bass
  r16 g, d h g16. g'32 fis16. d'32 g,16. e'32 a,16. fis'32
  \times 2/3 { h,16[ d] r r r a h[ d] r r r \clef treble c d[ g] r r r e }
  \times 2/3 { fis16[ a] r r r e fis[ a] r r r g a[ d] r r r a }
  \times 2/3 { g16[ h] r r r fis e[ g] r r r d cis[ d] r r r \clef bass h }
  \times 2/3 { a16[ his] r r r his a[ c] r r r g fis[ a] r r r e }
  \times 2/3 { d16[ fis] r r r e d[ fis] r r r c h[ d] r r r a }
  \times 2/3 { fis16[ h] r r r a g[ h] r r r fis e[ g] r r r d }
  cis8[ cis'] d[ fis,] g[ a]
  d,8[ d'] \voiceFour e16 r e r d,4

  \oneVoice \clef treble
  \times 2/3 { d'''16[ fis] r r r e d[ fis] r r r c h[ d] r r r a }
  \times 2/3 { g16[ h] r r r a g[ h] r r r fis e[ g] r r r d }
  \times 2/3 { c16[ e] r \clef bass r r h a[ c] r r r g fis[ a] r r r e }
  \times 2/3 { dis16[ fis] r r r cis h[ dis] r r r a g[ h] r r r fis }

  e8 e'
  \voiceFour \clef treble
  fis'16 r fis r g, r fis' r
  \oneVoice \clef bass
  c,8 c'
  \voiceFour \clef treble
  fis16 r fis r g, r fis' r
  \oneVoice \clef bass
  a,8[ dis,] e[ a] h[ h,]
  e8\noBeam
  \voiceFour \clef treble
  fis'16 r dis r dis r a r a r
  \oneVoice \clef bass
  c,8[ h'] a[ gis] a[ c,]
  h8[ a'] g[ fis] g[ h,]
  \times 2/3 { a16[ a'] r r r h a[ c] r r r g fis[ a] r r r e }
  \times 2/3 { d16[ d'] r r r e d[ fis] r r r c h[ d] r r r a }
  \times 2/3 { g16[ g'] r \clef treble r r a g[ h] r r r f e[ g] r r r d }
  \times 2/3 { c16[ c'] r r r d c[ e] r r r h a[ c] r r r g }
  fis8[ \clef bass a,] h[ c] d[ d,]
  g8 g,
  \voiceFour \clef treble
  a''16 r a r g,4
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 29. a 1 ô vero 2 Clav." }
  \layout {
    system-count = #14
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
