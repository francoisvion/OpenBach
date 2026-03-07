%voices
rha = \relative a' {
  r2 r16 a b c d c b a
  g8 d' g, c~ c16 fis, g a b a g fis
  g8 r r g as g as a
  b16 c d c b a g fis es'8 r r c~
  c16 c b a b c d e f8 e f16 g a8~
  a16 g f a g f e d cis8. h16 cis \downprall d e8
  d8 r r d es d es e
  f8 g a g~ g fis16 e d cis d8
  r2 r16 as' g f e f g e
  c8 d16 es f8 b, r16 f' es d c es d f
  es8 f g4~ g16 f g as d, c d f
  b,16 c d b es8 as,~ as g16 f g8 es'~
  es8 d16 c d8 r r16 e, f g f e d c
  c'16 b c8 fis, r r d'16 c b a g f
  es8 r r c'~ c b a b16 c
  d8 f, es c'~ c16 b32 a g a fis16 g4
}
rhb = \relative b {
  r16 b c d es d c b a8 es' a, d~
  d16 g, a b c b a g a8 r r a
  b8 a b h c16 d es d c b a g
  fis'8 r r d~ d16 d c b c d e fis
  g8 fis g16 a b8 b16 a g b a g f e
  d8. \downprall cis16 d e f8 e r r e
  f8 e f fis g a b a~
  a8 g16 f e d e8 d4 r
  r16 b' a g fis g a fis d8 e16 f g8 c,
  r16 g' f es d f es g f8 g as4~
  as16 g as b es, d es g c, d es c f8 \staffDown \voiceThree b,~
  b8 as16 g as8 \staffUp \voiceTwo f'~ f es16 d es8 r
  \staffDown \voiceThree r16 fis, g a g fis e d d' c d8 g, r \staffUp \voiceTwo
  r8 es'16 d c b a g fis8 r r d'~
  d8 c h c16 d es8 \staffDown \voiceThree g, fis d'~
  d16 c32 b a b g16 as g8 fis16 g4 r
}
lhc = \relative g, {
  g4 g' fis f
  e4 es d16 a b c d8 d,
  g16 d' e fis g f es d c8 h c cis
  d8 b c d g4~ g16 fis g a
  b16 c d8 g, g' d4. c8
  b8 a b g a16 e f g a h cis a
  d16 f, g a d, c' b a g b, c d g, g'8 cis,16
  d16 a' d8~ d8. cis16 d b a g fis a fis d
  d8 d'4 c8 h b4 a16 g
  a8 as4 g8 d es f b,
  es8 r r es as4. g16 f
  g4_~ g16 f es d es g, as b es, g a h
  \voiceFour c4 r8 c b4 r8 b \oneVoice
  a16 g a b a g fis e d c' d es d c b a
  \voiceFour g16 f' g as g f es d c h c cis d es d c
  b16 a b h c8 d g,16 d' b d g d b g
}
%general stafflayout
rhlayout= {
  \time 4/4
  \repeat volta 2 { s1*8 }
  %	\mLineBreak
  \repeat volta 2 { s1*8 }
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key b \major
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
      \new Voice {\global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 21. Canone alla Settima." }
  \layout {
    system-count =#'8
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      %	\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
