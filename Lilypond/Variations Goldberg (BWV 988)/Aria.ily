%voices
rha=\relative c'' {
  g'4 g( a8.\prallmordent) h16
  a8 \appoggiatura g16 fis8 \appoggiatura e16 d2
  g,4\prallmordent g4.\downprall fis16 g
  a32( g fis16) g32( fis e16) \grace e8 d2
  d'4 d( e8.\prallmordent) f16
  e8 \appoggiatura d16 c8 \appoggiatura h16 a4. fis'8\turn
  g32( fis16.) a32( g16.) fis32( e16.) d32( c16.) \appoggiatura c8 a'8. c,16
  h32( g16.) fis8 \appoggiatura fis g2\prallmordent
  \stemUp h4 h( cis8.\prallmordent) d16
  d16 cis h a~ a2 \stemDown
  \stemUp <h e g>4\arpeggio \stemDown g'4.\downprall fis16 g
  g8 \appoggiatura fis16 e8 \stemLen #4 cis4.\lineprall e8
  a16( g fis e) d8 \stemUp a4^~ a32 h c16
  h16( a g fis) e8 \grace d'16 cis4^~ cis32 d e16
  d16( cis h a) g'8 h,4 cis8
  \grace cis16 d8^~ d32 e d cis \grace cis8 d2 \stemNeutral
  a4\prallmordent a_~\downprall \stemUp a16 a32( h c d e16)
  \appoggiatura e16 d8 \appoggiatura c16 h8 \stemNeutral \appoggiatura a g4. g'8
  \appoggiatura fis16 e8. fis32 dis \appoggiatura dis8 e4.\prallmordent a32 h a g
  a8. fis16 \appoggiatura e8 dis4. h8
  \grace{\graceSchleifer e16} g8. fis16 \appoggiatura fis8 e4^~ e16[ h c32( h a h)]
  g'32[( e16.) fis32( dis16.)] \grace dis8 e4^~ e16 g, fis e
  \stemUp fis8. e'16 \appoggiatura e dis8 \grace{\graceSchleifer fis16} a8 g fis
  \grace fis16 e8. fis32 dis \grace dis8 e2
  e8 \appoggiatura d16 c8 \appoggiatura h16 a4. h16[ c]
  d32[( c h16) c32( h a16)] \grace a8 g4. a16 h
  c16 d c h c a e a c4^~
  c16 d c h c a fis a c e d c
  h16 c h a h g d g h g c d
  e16 f e d e c g c e c fis g
  a16 c, h a h c d g, h a g fis
  g4^~ g16 d g fis \appoggiatura fis8 g4
}
lhb=\relative c' {
  \stemUp
  s4 \restNoExt r d
  s4 \restNoExt r d
  s4 \restNoExt r cis
  s4 \restNoExt r a
  s4 \restNoExt r g
  r4 r a
  s2.*2
  r4 \restNoExt r \staffUp \stemDown e'
  s2.
  g4\arpeggio s2
  \stemUp s2.
  s4 \staffDown \restNoExt r d
  s2.*2
  r4 r8 a d4
  s2.*6
  r4 r r8 dis,
  e4 s2
  r4 \restNoExt r a^~
  a8 fis \grace e16 d8 e16 fis g fis g8^~
  g8 e a\noBeam r r4
  s2.*5
}
lhc=\relative c' {
  r4 h2
  r4 a2
  r4 g2
  r4 fis2
  r4 d2
  s4. e
  r8 c'^~ c h16 a g fis e fis
  g8 a h2
  s4 h2
  a4 \staffUp \voiceThree \shiftNote #-.3 d'2 \staffDown
  r8 h, e4. d8
  cis8 d \voiceOne \staffUp \stemDown e2 \voiceThree \staffDown \stemUp
  r4 a,2
  r4 h \staffUp \stemDown e
  fis4 e8. fis16 g4_~
  g4 fis2 \staffDown \stemUp
  r8 e fis2\prallmordent
  r8 c d2
  r8 e g4 fis8\prallprall e
  dis8 e fis2
  r8 a, g\prallprall fis g4
  r8 a g\prallprall fis g h
  \staffUp \stemDown fis'4. c'8 h a_~
  a4 g2
  \staffDown s4 \stemUp e,2
  s2.
  s4. \staffUp \stemDown e'8_~ e16 h' a g
  fis4 s8 fis4.
  g8 s s d8. g_~
  g4 s8 g8. c
  s2.
  \staffDown \stemUp r16 c, h a h2
}
lhd=\relative c' {
  \stemDown g2.
  fis2.
  e2.
  d2_~ d8 c
  h2.
  c2_~ c8 d
  e8 c d2
  g,4. d'8 e8.\prallmordent fis16
  g2._~
  g4 fis8\prallprall e fis h
  e,4. e8 fis g
  a4. h8 a g
  fis2.
  g2.
  a2.
  d,2.
  d'2 c4
  h4. a8 h4
  c4. h8 a4
  h4. a8 g fis
  e2 d4
  c2 h4
  a8 c h a h4
  e8 h e, h' e d
  c2.
  h2.
  a4. g8 fis e
  \stemUp d8 a' d c h a
  g8 d' g f e d \stemNeutral
  c8 g' c h a g
  fis8[ d] g[ h] d[ d,]
  g4. d8 g,4
}
%general scorelayout
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
      \new Voice {\global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\voiceOne \global \lhb}
      \new Voice {\voiceThree \global \lhc}
      \new Voice { \global \clef bass \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Aria" }
  \layout {
    system-count = #7
    system-system-spacing = #'((padding . 0) (basic-distance . 0.1))
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    }
  }
  \midi { \tempo 4 = 80 \context { \Voice \remove "Dynamic_performer"}}
}
