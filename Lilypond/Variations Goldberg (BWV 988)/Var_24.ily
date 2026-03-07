%voices
rha = \relative g' {
  \oneVoice g4 fis8 g4 a8 h d cis
  d4 a8 d4 e8 \grace e16 fis g fis e d8
  g8 h a h g fis g4.~
  g8 fis e \voiceOne fis g a d,4.~
  d8 g fis g h a h d16 c h a
  h8 c16 h a g a8 h16 a g fis g8 a16 g fis e
  d8 r r g r r fis r r
  g8 r r c, r r h r r
  R1*9/8*2
  r8 h' a g a fis e16 d cis8 d
  \grace d8 cis4.~ cis8 d e a, h cis
  d4 fis8 g4 a8 h,4.
  h8 a g a2.~
  a8 d cis d16 e fis8 e fis a16 g fis e
  fis8 g16 fis e d e8 fis16 e d cis d4.
  s1*9/8*2
  a'2.~ ^\longdownprall a4.~
  a8 g fis g h a h4 dis,8
  e8 g16 fis e d c8 e16 d c h a8 c16 h a g
  fis4 e'8 dis e \turn fis h,4.~
  h8 dis e~ e16 d c h c8~ c16 h a g a8~
  a8 fis g h4. \prallmordent~ h8 c d
  e8 gis, h a4.~ a8 h c
  d8 fis, a d,4 fis8 h4.~
  h4 dis,8 e fis g fis g a
  d,4. d d~
  d8 g fis g a h c d16 c h a
  h8 c16 h a g a8 h16 a g fis g8 h16 a g fis
  g8 r r d r r fis r r
  g8 r r c, r r h4.
}
rhb = \relative g {
  R1*9/8*2
  \staffDown\voiceThree g4 fis8 g4 a8 h d cis
  d4 a8 \staffUp \voiceTwo d4 e8 \grace e16 fis g fis e d8
  g8 h a h g fis g4.~
  g8 fis e fis g a d,4.~
  d8 g fis g h a h d16 c h a
  h8 c16 h a g a8 h16 a g fis g8 a16 g fis e
  d8 h' a g a fis e16 d cis8 d
  \grace d8 cis4.~ cis8 d e a, h cis
  d4 fis8 g4 a8 h,4.~
  h8 a gis a2.
  a8 d cis d16 e fis8 e fis g16 fis e d
  fis8 g16 fis e d e8 fis16 e d cis d8 e16 d cis h
  a8 r r d r r cis r r
  d8 r r g r r fis4.
  \oneVoice a2.~ ^\longdownprall a4.~
  a8 g fis g h a h4 dis,8 \voiceTwo
  e8 g16 fis e d c8 e16 d c h a8 c16 h a g
  \staffDown\voiceThree fis4 e'8 dis e \turn fis h,4.~
  h8 dis e~ e16 d c h c8~ c16 h a g a8
  a8 fis g \staffUp\voiceTwo r4. r
  s1*9/8*3
  r4. h~ h8 c d
  e8 \staffDown\voiceThree gis, h a4.~ a8 h c
  d8 fis, a d,4 fis8 h4.~
  h4 d,8 e fis g fis g a
  d,4. d d~
  d8 g fis g a h c d16 c h a
  h8 c16 h a g a8 h16 a g fis g4.
}
lhc = \relative g {
  g4. r8 r fis g4 e8
  fis4. r8 r a d,4 fis8
  \voiceFour e2._~ e4 a8 \oneVoice
  d,4. r r8 r c'
  h4. r8 r d g,4 h8
  e4 r8 r r a, h a h
  c8 h a h d c d4 d,8
  g4 g,8 g4 g'8 g fis16 e d c
  h8 g a h c d g,4 g'8~
  g8 fis e a4 g8 fis g a
  h4.~ h4 a8 g4 e8
  a,4 r8 r r g' fis4 e8
  fis4 a8 h4 cis8 d4 d,8
  g4 h,8 cis d e fis e fis
  g8 fis e fis a g a4 a,8
  d4 d,8 d4 d'8 d4.
  d8 fis a d e16 d c h c8 d16 c h a
  h4.~ h8 c d g, a h
  c8 r r a r r fis r r
  dis4 fis8 h4._~ h8 g a
  g8 r r e r r \voiceFour c r r
  a4 ais8 \oneVoice h c'16 h a g a8 h16 a g fis
  g8 a16 g fis e c'8 dis, e h e dis
  e4.~ \prallmordent e8 g h e4 d8
  c4.~ c8 h c fis, g a
  h8 d, fis h, c d g, a h
  \voiceFour c4. c c~
  c8 d16 c h a h8 c d g, a h
  e,8 r r e' r r a, r r
  g8 a h c h a h g a
  h4.~ h8 a g d'4 d,8
  g4 g,8 g4 g'8 g4.
}

%general stafflayout
rhlayout= {
  \time 9/8
  \repeat volta 2 { s8*9*16 }
  %	\mLineBreak
  \repeat volta 2 { s8*9*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \repeat volta 2 { s8*9*16 }
  \repeat volta 2 { s8*9*16 }
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
      \new Voice {\voiceOne \global \clef treble \rha}
      \new Voice {\voiceTwo \global \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 24. Canone all'Ottava. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
