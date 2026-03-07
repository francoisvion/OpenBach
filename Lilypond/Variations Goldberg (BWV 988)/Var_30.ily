%voices
rha = \relative d' {
  \partial 8 r8
  \oneVoice r2 r4 r8 d
  \voiceOne g8 a h c d c16 h a8 \once\override Rest.staff-position = #'0 r
  d4 d e e
  d8 e d c h \prallprall a g4
  r2 h'4\rest g8\rest d
  g8 fis e d cis \prallprall h16 cis a8 r
  a'4 a h h
  a8 h a g fis e d
  \partial 8 a'8
  fis8 a fis a d, e16 fis g8 e
  a8 g fis e dis cis16 dis h8 b'
  e,8 h' e, h' dis,16 e fis g a8 g16 f
  g8 fis16 e dis e fis dis e2~
  e16 (d ) fis (e) g (fis) a8 d,4. c16 d
  e8 fis16 g a8 g fis16 \prallprall e32 fis d8 r4
  h'8 c d h c h a g
  fis8 g a fis g4 g8
}
rhb = \relative g' {
  \partial 8 r8
  s1
  g4 g a a
  g8 a g f e d c h'
  a8 g a fis g4 g8 d
  \stemUp g8 a h c d c16 h a8 d~\stemNeutral
  \voiceFour d8 c h4 \voiceTwo a4. h16 cis
  d8 e fis d h d g fis
  e8. d16 ~ d cis e8~ e16 d8 cis16 d8
  c8\rest
  \voiceThree a4 a h h \voiceTwo
  a8 h a g fis e dis r
  h'4 h c c
  h8 c h a g fis16 g e8 r
  r2 g4 g
  c8 d c b a g c d
  h8 a16 h g8 r r e'16 d c8 e
  a,16 d c h c a d8~ d c16 d h8
}
rhc=\relative c''{
  \partial8 s
  s1*7
  s4 s8 \voiceThree \stemDown \shiftNote #'0.5 a_~
  \once \override Beam.positions = #'(-3.75 . -4.5)
  \shiftNote #'-0.5 a8[  g] \shiftNote #'.5 fis
}
lhd = \relative d {
  \partial 8 d8
  g8 a h c d c16 h a8 g16 a
  h8 a g2 fis8 \prallprall e16 fis
  g4 r8 d' c h a g
  fis4~ \prallprall fis16 e32 fis d8~ d4 r
  \staffUp\voiceTwo g'4 g a a
  g8 a g fis \staffDown\voiceOne  e d cis r
  fis,8 g a fis g fis e d
  cis8 d e cis d4 d8
  \staffUp\voiceTwo
  fis'8
  d8 fis d fis g d d g \staffDown\voiceOne
  e8 r r4 fis fis
  g4 g fis8 g fis e
  dis8 e16 fis h,4~ h8 a16 h g8 a16 h
  c8 d e fis g fis16 e d8 r
  r8 a' e d16 e fis8 g4 fis8
  d4 d e e
  d8 e d c h a g
}
lhe = \relative g {
  \partial 8 r8
  g2 fis
  e2 d4. c8
  h2 c
  d2 g,4 r8 h'16 a
  g8 fis16 g e8 d16 e fis4. h8
  e,4. fis16 g a4~ a16 g fis e
  fis4 d g g,
  a2 d,4 r8
  \oneVoice r8
  d''4 c h g \voiceTwo
  c8 h c a h4. a8
  g8 e' g, e' a,4. ais8
  h4 h, e4. d8
  c4 c' h4. c16 h
  a4. h16 c d4. c16 d
  g,8 a h g c4. cis8
  d4 d, g g,8
}
%general stafflayout
rhlayout= {
  \time 4/4

  \repeat volta 2 { s1*8 }
  %	\mLineBreak
  \repeat volta 2 { s1*8 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \time 4/4
  \repeat volta 2 { s1*8 }
  %	\mLineBreak
  \repeat volta 2 { s1*8 }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key g \major
}

\score {
  \new PianoStaff
  <<
    \new Staff = "up" 
    <<
      \new Voice {\rhlayout}
      \new Voice {\voiceOne \global \clef treble \rha}
      \new Voice {\voiceTwo \global \rhb}
      \new Voice {\voiceTwo \global \rhc}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\voiceThree \global \lhd}
      \new Voice {\voiceFour \global \clef bass \lhe}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 30. Quodlibet. a 1 Clav." }
  \layout {
    ragged-bottom = ##t
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
