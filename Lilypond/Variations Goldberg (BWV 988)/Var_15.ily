%voices
rha=\relative d'' {
  s2
  r16 d d e e fis fis g
  g4~ g16 a b c
  d16 a a32 gis a16 d,4~
  d8 es16 ( f ) es ( d ) d ( c )
  b8 r r c
  g'32 a fis16 g a b c d c
  b16 \grace a g d8 ( d ) es
  d8 r r16 es d c
  b16 ( c ) c ( d ) d es es d
  d8 r r a'
  b8 d,16 e~ e f8 g16
  a8 b, c a'
  r8 g32 a g16~ g g8 g16~
  g16 f32 g a16 b a f cis8
  r8 g'~ g16 fis32 e fis8
  R1*1/2
  r8 es d c
  g'16 g,8 as16~ as b8 c16
  b8 f' g d
  es16 d c8 r16 b8 c16
  d16 b f d es f g as
  b2 (
  b16 ) c32 d es d c16 d es32 f es f g16
  f8 r r4
  r16 c c ( d ) es e g, e'
  fis4~ fis16 g a b
  c16 b a g fis g fis8~
  fis16 a g8 r c,
  g8. a16 b c d e
  fis16 g a fis g fis e32 d c'16~
  c16 fis, g a b c d8
}
rhb = \relative g' {
  r16 \stemUp g g ( f ) f ( es ) es ( d ) \stemDown
  d4 ( d16 ) \staffDown \voiceThree c b a
  g16 cis cis32 d cis16 \staffUp \voiceTwo g'4 (
  g8 ) fis16 e fis( g) g( a)
  b8 r r a
  d,32 c es16 d c \staffDown \voiceThree b a g a
  b16 d g8^~ g fis^\prallprall
  g8 \staffUp \voiceTwo r r16 fis g a
  b16 ( a ) a ( g ) g ( fis ) fis ( g )
  g8 r r c,
  b8 g'16 f~ f e8 d16
  cis8 b' a cis,
  r8 d32 cis d16~ d d8 d16~
  d16 e32 d cis16 h cis e a8
  r8 d,~ d16 e32 f e d e16
  d4 r
  r8 fis g a
  d,16 d'8 c16~ c b8 a16
  b8 es, d g
  f16 g as8 r16 b8 as16
  g16 b es g f es d c
  \once\override Tie.staff-position = #-5 b2~
  b16 as32 g f g as16 g f32 es f es d16
  es8 r r4
  r16 as as( g) fis f d' f,
  es4~ es16 d c b
  a16 b c d es d es8~
  es16 c d8 r a'
  d8. c16 b a g f
  es16 d c es d e fis32 g \staffDown \voiceThree a,16~
  a16 es' d c b a g fis
  g4 r
}
lhc = \relative g {
  g8 g, r g'~
  g16 fis32 e fis8 r d
  es8 e r es'
  d16 cis d8 r16 c b a
  g32( fis g16) c, g' c ( fis, ) fis ( g )
  g16 fis g a d,8 es
  b8 b'16 c d8 d
  g,8 b,32 c d b g8 r
  r16 fis' g a b8 a
  g16 fis8 e16 fis32 a g8 fis16
  g16 a b a g32 a g16 f32 g f16
  e16 f g e cis d e cis
  f32 e d16 g4 fis8
  b8 e, a cis,
  d8 f16 e f8 a
  d16 c32 b a g a16 d,4
  d16 ( es' ) es ( d ) d ( c) c ( b )
  b16 ( fis ) fis ( g ) g ( d ) d8~
  d16 c32 b c16 f, f' b, es8~
  es16 d32 c d c b16 es g, as b
  c,16 g' c b as g as8~
  as16 as' b as g f es f
  g16 as b8 b,8. as'16
  g16 ( f ) f ( es ) f ( g ) g ( as )
  c,8 h r16 a h g
  c8 c' r c,~
  c16 d' es b a b c g
  g8 ( fis16) g a b32 c d es c16
  b32 d c16 b32 c a16 g32 a f16 es32 f d16
  c16 es32 d es16 fis, g8 r16 \voiceFour c
  d8 r16 es c8 d
  g16 d32 c b c a16 g4
}
%general stafflayout
rhlayout= {
  \time 2/4
  \markUpBegin \mark \markup { "andante" }
  \repeat volta 2 { s2*16 }
  %\mLineBreak
  \repeat volta 2 { s2*16 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lhlayout= {
  \repeat volta 2 { s2*16 }
  \repeat volta 2 { s2*16 }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key b \major
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

  \header { piece = \markup \fontsize #2 \bold "Variatio 15. Canone alla Quinta (in moto contrario). a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
