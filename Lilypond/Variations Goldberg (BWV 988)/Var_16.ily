%voices
rha=\relative c'' {
  r4 r32 g a h c d e fis g8. d16 h8. g16
  d'4. \prallmordent e8 c4~ \downprall c8. \times 2/3 {b32 c d }
  g,8. g'32 fis g8. e16 \grace d8 cis8. h'16 a8. g16
  \stemUp fis4. \downprall \stemDown g8 \grace g a2~
  a8. \times 2/3 { a32 g fis } g8. d16_~ d2
  \grace f8 \stemUp e8.[ \times 2/3 { d32 c h] } c8.[ \times 2/3 { h32 a g] }\stemNeutral a8.[ a16] g'8.[ \prallmordent g16]
  \stemUp <d g>4~ \arpeggio \stemNeutral g32 h a g fis e d c a'8.[ c,16] a'8.[ c,16]
  h4~ \downprall h8. \times 2/3 { a32 g fis } g16[ d'-. e-. fis-.] g-.[ fis-. g-. a-.]
  h8.[ \times 2/3 { a32 g fis] } g8.[ \times 2/3 { fis32 e dis] } \stemUp e8. h16 cis8. \prallmordent d16
  \grace d8 cis8.[ \times 2/3 { e32 fis g ]} a8. a16 a4^~
  a8. \times 2/3 { a32 g fis }
  g8. \times 2/3 { fis32 e dis } e8. h'16 d,4. \downprall cis16 h
  cis8. \times 2/3 { d32 cis d } d8. \prallprall cis32 d e4~ e32 d cis h a g fis e
  d8. fis16 a8. \prallmordent h16 \grace{\graceSlur h4 } < a c>^~ c8. \times 2/3 { c32 h a }
  h8.[ \times 2/3 { cis32 d e] } d8.[ \prallprall \times 2/3 { cis32 d e] } a,8.[ \times 2/3 { e'32 fis g] } a8.[ cis,16]
  \grace{\graceSlur e4} d4. e8 e4. \downprall d8
  <a d>1
  d8 a'16 g fis e
  \voiceOne
  fis8 g a
  d,16 fis e g fis a
  g8 fis g
  e8 dis e
  \once\override Tie.staff-position = #10.5 a4.~
  a8 g16 e fis dis
  \once\override Tie.staff-position = #10 h'4.~
  h16 c h a g fis
  g16 e a e h' e,
  c'16 h a g fis e
  d16 fis e g fis a
  g16 a a8. \prallprall g32 a
  h4 g8
  e8 fis dis
  d4 r8
  r8 e16 d c h
  c8 d e
  a,16 c h d cis e
  d32 e fis16 fis8. \downprall e32 fis
  g8 fis16 e d c
  h16 d c e d f
  e4.~
  e16 d c h c fis
  a16 d, c h c a
  h16 e d c d gis
  h16 e, d c d h
  c4.^~
  c16 h a h c a
  d4 h8
  g8 a fis
  g4 r8
  r8 a'16 g fis e
  <d, g>1
}
rhb = \relative c'' {
  s1*3
  d4 s2.
  \stemUp s2 \grace e8 f4.^\prallmordent g8 \stemDown
  c,8 s s2.
  <h>4 \arpeggio s2.
  s1
  s2 s4. s16 h
  a4 r8 r16 a' dis,8. fis16 h,4~
  h4 r h2
  a4 h cis s
  s2 fis,4 s
  s1
  s4 s^\markup { \musicglyph #"scripts.turn" } cis'2
  fis,1
  s4.
  r8 d'16 c h a
  h8 c d
  g,16 h a c h d
  r8 a16 g fis e
  fis8 g a
  dis,16 fis e g fis a
  g8 fis r
  e'8 s4
  s4.
  s4.
  a,8 h c
  d8 e fis
  g4 d8
  g,8 a fis
  g8 gis8.^\prallprall fis32 g
  a4 gis8
  a8 g4
  fis8 g e
  fis16 r r8 r
  s4.*2
  r8 fis g \turn
  a8 r r
  s4.*3
  r16 g fis g a fis
  d4.~
  d16 fis e g fis8
  \staffDown \stemUp h,8 c a
  h4 r8
  s4.
  h1
}
rhc = \relative c'' {
  s1*16
  s4.*4
  \once \override Tie.control-points = #'((2 . 1.5) (4 . 3.0) (14 . 3.0) (16 . 1.5))
  c4.^~
  c16 g' fis e dis e
  \once \override Tie.control-points = #'((2 . -0.25) (5 . 0.5) (15 . 0.5) (17 . 0.1))
  h4.~
  \once \override Beam.positions = #'(2.5 . 4.5) h16 cis dis e fis dis
  \oneVoice r8 e, dis
  e4._~
  e4 r8
  s4.*21
  s1
}
lhd = \relative d {
  <h d g>4 r r r8 r16 h'
  a4 s2.
  s1*11
  s4 r8 r16 h cis4 s
  s1 *2
  s4.*15
  r8 \oneVoice e16 d c h
  c8 d e
  a,16 c h d cis e
  d4.~
  d8 \voiceThree r r
  r8 g, fis
  g4.~
  g8 s4
  s4.*7
}
lhe = \relative c {
  \voiceFour g4 r r r8 r16 g'
  fis4~ fis32 d e fis g a h c d8. a16 fis8. d16 \oneVoice
  e4. g8 e4~ \downprall e8. \times 2/3 { d32 e fis }
  d8. c'32 h c8. a16 fis8. e'16 d8. c16
  h4. \downprall h8 h8. \times 2/3 { c32 h a } h8.[ g16]
  c4~ c8.[ \times 2/3 { d32 c h] } c8.[ \times 2/3 { h32 a g] } a8.[ \times 2/3 { g32 fis e] }
  d2~ d16 c32 h a g fis e d16 fis a d
  g,16-.[ d'-. e-. fis-.] g-.[ fis-. g-. a-.] h4~ \prallprall h8. \times 2/3 { a32 g fis }
  g16-.[ h-. cis-. dis-.] e-.[ dis-. e-. fis-.] g8. g,16 g'8. g16
  g4~ g8.[ \times 2/3 { g32 fis e]} fis8.[ \times 2/3 { h,32 cis dis] } e8.[ e16]
  e4~ e8. \times 2/3 { c32 h a } gis8. h16 e,8. gis16
  a4~ a16 a,32 h cis d e fis g8.[ e16] cis8.[ a16]
  fis'4~ fis8.[ \times 2/3 { g32 fis e] } d8.[ \times 2/3 { c32 h a] } g8.[ \times 2/3 { d'32 e fis] }
  g8.[ \prallmordent g,16] g'8.[ g16] g4~ g8. \times 2/3 { g32 fis e }
  fis16. d32 e fis g a h8. g16 a4 a,
  d,4~ d16 d'32 e fis g a h c8. a16 fis8. d16
  d,4 r8
  R4.*6
  r8 h''16 a g fis
  g8 a h
  e,16 g fis a g h
  a8 h c
  fis,16 a g h a c
  h8 c d
  g,16 h a c a d
  c8 a h
  e,8 r r
  s4.*3
  \voiceFour r8 d16 c h a
  h8 c d
  g,16 h a c h d
  c16 b a g fis e
  \oneVoice fis8 g \turn a
  d,16 fis e g fis a
  g8 a \turn h
  e,16 gis fis a gis h
  a16 e' a g fis e
  fis16 g fis e d c
  h16 d c e d fis
  e8 c d
  g,16 fis g a h c
  d8 d, s
  g1
}
%general stafflayout
rhlayout= {
  \time 2/2
  \repeat volta 2 { s1*15 }
  \alternative {{s1} {\time 3/8 s4.}}
  %	\mLineBreak
  \repeat volta 2 { s4.*30 }
  \alternative {{s4.*2} {\time 2/2 s1}}
  \bar "|."
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key g \major
  \override TupletBracket.stencil = ##f
  \override TupletNumber.stencil = ##f
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "up"
    <<
      \new Voice {\rhlayout}
      \new Voice {\global \clef treble \rha}
      \new Voice {\voiceTwo \global \clef treble \rhb}
      \new Voice {\voiceThree \global \clef treble \rhc}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\voiceThree \global \clef bass \lhd}
      \new Voice { \global \clef bass \lhe}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 16. Ouverture. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
