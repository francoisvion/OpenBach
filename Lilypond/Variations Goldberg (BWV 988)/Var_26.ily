%voices
rha = \relative c' {
  \scaleDurations #'(4 . 6) {
    \oneVoice
    \clef bass
    g16 a g d e fis g fis g a g a h a h c h cis
    \clef treble
    d16 e d a h cis d cis d e d e fis e fis g e fis
    g16 a g h, e fis g fis g a g a h a h cis h cis
    d16 e d a h cis d cis d e d e fis e fis g e fis
    g16 fis g d c d h g fis g h d f e f d h d
    e16 d e c h c g e d e g c e d e c a c
    d16 c d a g a fis d cis d fis a c h c a fis a
    h16 a h g fis g d h a h d g h g fis g h d
  }
  \voiceOne
  g8. fis32 e d4 r8 h'
  a4 a r8 a
  a4 g r8 g
  g8. e16 \appoggiatura h8 a4 r8 g'
  g8. e16 \appoggiatura e8 fis4 r8 a
  h8. fis16 \appoggiatura fis8 g4 r8 g
  g4 cis, r8 a
  a8. e16 fis4 r
  \scaleDurations #'(4 . 6) {
    a'16 g a d c h a h a g a g fis g fis e fis e
    d16 c d g fis e d e d c d c h c h a h a
    g16 fis g h a g fis g fis e fis e dis e dis cis dis cis
    \clef bass
    h16 ais h e dis cis h c h a h a g a g fis g fis
    e16 dis e h' a h g fis g \clef treble h e fis g fis g e dis e
    c16 h c e d e a, gis a c f a c h c a f a
    dis,16 cis dis fis e fis h, ais h dis fis g a g a fis dis fis
    g16 fis g h a h e, dis e g h dis e c h a g fis
  }
  e8 r r r16 g' \grace g8 fis8. e16
  \grace e8 d4~ d8. f16 \grace f8 e8. d16
  \grace d8 c2~ c8. c16
  \scaleDurations #'(4 . 6) {
    \stemDown fis,16 g fis cis d e \stemNeutral fis e fis g fis g a g a h g a
    h16 c h fis g a h a h c h c \stemUp d c d e c d
    e16 f e h c d \stemNeutral e d e fis e fis g fis g a fis g
    a16 h a fis g a h a h d c h a g fis e d c
    h16 a g fis g d h8 \oneVoice r r r4.
  }
}
rhb = \relative c'' {
  \voiceTwo
  s2.*8
  h4 h r8 g'
  g8. e16 fis4\mordent r8 c
  h8. dis16 e4\mordent r8 e
  a,8. cis16 e,4 r8 cis'
  cis4 d r8 d
  d4 e r8 e
  a,8. g32 fis \appoggiatura fis8 e4 r8 a,
  d4 d r
  s2.*8
  r8 r16 gis a8. h16 c4~
  c8. fis,16 g8. a16 h4~
  h8. e,16 fis8. g16 a8. g16
  \stemUp c8 s4. \stemDown fis,8 s
  g8 s4. h8 s
  c8 s4. s4
  s2.*2
}
lhc = \relative h' {
  \voiceThree
  h4 h r8 h
  a4 a r8 d
  d4 cis \prallprall r8 g
  g8. e16 fis4 r8 a
  d,8. e16 f4 r8
  \clef bass g8
  g8. e16 \appoggiatura d8 c4 r8 e
  a,8. h16 c4 r8 d
  d8. h16 g4 r
  s2.*8
  fis'8. e16 \appoggiatura e8 fis4 r8 d
  g8. a16 \appoggiatura a8 h4 r8 g'
  e8. h'16 \appoggiatura h8 a4 r8 a
  a8. fis16 \appoggiatura e8 dis4 r8 fis
  g8. fis16 \appoggiatura fis8 e4 r8 g
  g4 f r8 a
  a8. fis16 \appoggiatura e8 dis4 r8 fis
  fis8. dis16 e4\mordent s
  s2.*8
}
lhd = \relative g' {
  \voiceFour
  g4 d r8 g
  g8. e16 \appoggiatura e8 fis4 r8 a
  h8. g16 e4 r8 a,
  d4 d r8 c
  h8. c16 d4 r8 \clef bass g,
  c4 e, r8 g
  fis8. g16 a4 r8 d,
  g4 g, r
  \oneVoice
  \scaleDurations #'(4 . 6) {
    g16 a g d e fis g fis g a g a h a h c h cis
    d16 e d a h cis d cis d e d e fis e fis g e fis
    g16 a g h, e fis g fis g a g a h a h cis a h
    cis16 d cis e, a h
    \clef treble
    cis16 h cis d cis d e d e fis d e
    fis16 e fis a g a d, cis d fis a h c h c a fis a
    g16 fis g h a h e, dis e g h cis d cis d h g h
    cis16 h cis e d e a, gis a cis e fis g fis g e cis e
    fis16 e fis a g a d, cis d fis a cis d4. \prallmordent
  }
  \voiceFour
  \clef treble
  d,,4 c r8 c
  h8. d16 g4 r8 d'
  cis4 dis r8 e
  dis4 fis, r8 dis'
  e4 h r8 h
  a8. h16 \appoggiatura h8 c4 r8 c
  h4 a r8 a
  a8. fis16 g4
  \oneVoice
  \clef bass
  \scaleDurations #'(4 . 6) {
    \once \override Rest.X-offset = #'1
    r16 e, fis g a h
    c16 h c f e d c d c h c h a h a g a fis
    h16 a h e d c h c h a h a g a g fis g e
    a16 g a d c h a h a g a g fis g fis e fis e
    d16 cis d g fis e d e d c d c h c h a h a
    g16 fis g c h a g a g f g f e f e d e d
    c8. g'16 a h c h c d c d e d c h a g
    fis16 e fis d e fis g fis g a h c d cis d e fis d
    g8 r r r16 a g fis g d g,4.
  }
}

%general stafflayout
rhlayout= {
  \time 3/4
  \repeat volta 2 {
    \set Staff.timeSignatureFraction = #'(18 . 16)
    s2.*8
    \set Staff.timeSignatureFraction = #'(3 . 4)
    s2.*8
  }
  %	\mLineBreak
  \repeat volta 2 {
    \set Staff.timeSignatureFraction = #'(18 . 16)
    s2.*8
    \set Staff.timeSignatureFraction = #'(3 . 4)
    s2.*3
    \set Staff.timeSignatureFraction = #'(18 . 16)
    s2.*5
  }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \time 3/4
  \repeat volta 2 {
    s2.*8
    \set Staff.timeSignatureFraction = #'(18 . 16)
    s2.*8
  }
  \repeat volta 2 {
    \set Staff.timeSignatureFraction = #'(3 . 4)
    s2.*8
    \set Staff.timeSignatureFraction = #'(18 . 16)
    s2.*3
    s2.*5
  }
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
      \new Voice {\global \rha}
      \new Voice {\global \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \lhc}
      \new Voice {\global \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 26. a 2 Clav." }
  \layout {
    \context {
      \Staff
      \override TimeSignature.break-visibility = #end-of-line-invisible
    }
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
