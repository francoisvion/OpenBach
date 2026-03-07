%voices
rha = \relative h'' {
  h16 r r8 d16 r r8 g,16 r r8
  a16 r r8 d16 r r8 fis,16 r r8
  g16 r r8 h16 r r8 a16 r r8
  fis16 r r8 cis'16 r r8 d16 r r8
  g,8[ g,,] a[ e''] f[ d]
  e8[ a,,] h[ fis''] s a
  h8[ \clef bass a,,] h[ e,] fis r
  r8 \clef treble c''' h[ a] g[ fis]
  h16 g fis g \oneVoice e h a h g h e g
  a16 fis e fis d a g a fis a d fis
  g16 e dis e h g fis g e g h d
  cis16 g fis g e cis h cis a cis e g
  \voiceOne fis16 r r8 g16 r r8 a16 r r8
  h16 r r8 a16 r r8 g16 r r8
  a16 r r8 h16 r r8 a16 r r8
  \oneVoice fis16 d cis d \clef bass a fis e fis d4
  \clef treble
  fis'16 a g a d fis e fis a fis c a
  h16 d c d g h a h d h f d
  e8[ h] c[ dis,] e[ g,]
  fis8[ e''] dis16 fis e fis a fis dis fis
  \voiceOne
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  r32 g a g a g a g r g a g a g a g r fis g fis g fis g fis
  \oneVoice
  e16 g, fis g h e dis e g32 (f e16 ) f32 ( e d16 )
  e8[ e,] dis[ d] cis[ e']
  d8[ d,] cis[ c] h[ d']
  \voiceOne
  r32 c d c d c d c r c d c d c d c r c d c d c d c
  r32 c d c d c d c r c d c d c d c r c d c d c d c
  h16 r r8 c16 r r8 d16 r r8
  \oneVoice
  e,8[ e'] f[ fis] g[ gis]
  a16-. fis, e fis g h a h c a fis d
  g16 h a h d g fis g h4
}
rhb = \relative c'' {
  s2.*4
  s2 s8 h
  c8 s s4 g'8 cis,
  d8[ \clef bass fis,,] g[ cis,] d[ d,]
  g8[ \clef treble e'''] d[ c] h[ < a c >]
  <h d g>16 s s8 s2
  s2.*3
  r32 d, e d e d e d r d e d e d e d r d e d e d e d
  r32 d e d e d e d r d e d e d e d r d e d e d e d
  r32 d e d e d e d r d e d e d e d r cis d cis d cis d cis
  s4 \clef bass s2 \clef treble
  s2.
  s2.*3
  h'16 r r8 cis16 r r8 dis16 r r8
  e16 r r8 dis16 r r8 e16 r r8
  cis16 r r8 h16 r r8 a16 r r8
  s2.*3
  e16 r r8 d16 r r8 e16 r r8
  fis16 r r8 e16 r r8 fis16 r r8
  r32 g a g a g a g r fis g fis g fis g fis r f g f g f g f
  \staffDown \voiceThree
  r32 c d c d c d c r h c h c h c h r b c b c b c b
  s2.*2
}
lhc = \relative c'' {
  \staffUp \voiceTwo
  r32 d e d e d e d r d e d e d e d r d e d e d e d
  r32 d e d e d e d r d e d e d e d r d e d e d e d
  r32 d e d e d e d r d e d e d e d r cis d cis d cis d cis
  r32 d e d e d e d r d e d e d e d r d e d e d e d
  \staffDown \voiceThree
  \clef treble
  r32 g, a g a g a g r g a g a g a g r g a g a g a g
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  r32 g a g a g a g r g a g a g a g r fis g fis g fis g fis
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  s2.*4
  \clef bass
  r32 fis, g fis g fis g fis r fis g fis g fis g fis r fis g fis g fis g fis
  r32 fis g fis g fis g fis r fis g fis g fis g fis r fis g fis g fis g fis
  r32 fis g fis g fis g fis r fis g fis g fis g fis r e fis e fis e fis e
  s2.
  s2.*4
  r32 e' fis e fis e fis e r e fis e fis e fis e r e fis e fis e fis e
  r32 e fis e fis e fis e r e fis e fis e fis e r e fis e fis e fis e
  r32 e fis e fis e fis e r e fis e fis e fis e r dis e dis e dis e dis
  s2.
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  r32 g a g a g a g r g a g a g a g r g a g a g a g
  s2.*6
}
lhd = \relative c' {
  g8[ h'] a[ fis,] e[ g']
  fis,8[ a'] g[ e,] d[ fis']
  e,8[ g'] fis[ g,] a[ e']
  d,8[ fis'] e[ g,] fis[ c']
  \clef treble
  h16 r r8 c16 r r8 d16 r r8
  c16 r r8 d16 r r8 e16 r r8
  d16 r r8 e16 r r8 a,16 r r8
  h16 r r8 c16 r r8 d16 r r8
  g,16 h a h e g fis g h g e cis
  fis,16 a g a d fis e fis a fis d h
  e,16 g fis g h e dis e g e h g
  a16 e' d e g a g a g e cis a
  \clef bass
  d,16 r r8 h16 r r8 a16 r r8
  g16 r r8 a16 r r8 h16 r r8
  a16 r r8 g16 r r8 a16 r r8
  \oneVoice
  d,16 fis e fis a d cis d fis4
  d'8[ e,] fis[ c'] d,[ fis']
  \clef treble
  g8[ a,] h[ f'] g,[ d'']
  c16 g f g e c h c a c e a
  dis,16 h ais h \clef bass fis dis cis dis h dis fis a
  \clef treble
  \voiceFour
  g16 r r8 a16 r r8 h16 r r8
  c16 r r8 h16 r r8 c16 r r8
  ais16 r r8 h16 r r8 h16 r r8
  e,16 e' dis e h g fis g e g h d
  c16 r r8 h16 r r8 a16 r r8
  h16 r r8 a16 r r8 g16 r r8
  \oneVoice
  a8[ e''] f[ fis] g[ \clef bass fis,,]
  \once \override Beam.positions = #'(-4 . -3)
  d8[ \clef treble fis''] g[ gis] a[ d,,]
  \clef bass
  \voiceFour g,8[ g,] as[ a] b[ h]
  c16 r r8 d16 r r8 e16 r r8
  \oneVoice fis16 d' c d h g fis g d fis a c
  h16 g fis g d h a h g4
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
      \new Voice {\voiceTwo \global \clef treble \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\voiceThree \global \clef bass \lhc}
      \new Voice {\voiceFour \global \clef bass \lhd}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 28. a 2 Clav" }
  \layout {
    system-count = #'16
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
