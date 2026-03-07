\version "2.22.0"

scoreCLhOneHpdI = \relative c' {
  \oneVoice a4 f' e d | c2 b | a2 gis | a2 b | \voiceTwo e,2 dis |
  e4 \oneVoice c' d, b' |c,4 b' b, a' | g4 e fis gis |
  a4 bes a g! | \voiceTwo f4 e8 d e2 | a,4 \oneVoice d2 c4~ | c4 b8 a b4 e, |
  a8 b c a e'4 a, | d2 d, | g4 g' a b | c4 a b b, | e4 d c b | a4 f' e d |
  c2 b | a2 gis | a4 a' b cis | d4 c! b a | gis2 r4 e |
  a4 c,8 d e4 e, | \voiceTwo a4 r r2 | s1 * 11 |
  e'4 \oneVoice c'! b a | g2 fis | e2 dis |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber e8 b' a g fis e bes' g f e d cis |
    g'8 e d \voiceTwo cis b! a~
  }
  a4 r4 | d2 \oneVoice cis | d4 g2 fis4 | g4 e a a, |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber d8 a' g f e d as' f e d c b |
    f' d c \voiceTwo b a! g~
  }
  g8 r r4 | s1 * 3 |
  \oneVoice r2 \tuplet 3/2 {\once \undo \omit TupletNumber g'8 b d fis,  c' e | g, b d d, a' c}
  \voiceTwo b8 r a r | b8 r fis r g r fis r | g8 r dis r
  \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber e8 g b dis,! a' c | e, g b b, fis' a}
  \voiceTwo g8 r a r | b8 r b8. fis16 g4~ \tuplet 3/2 {\once \undo \omit TupletNumber g8 fis! e} |
  fis4~ \tuplet 3/2 {fis8 e d} e4~ \tuplet 3/2 {e8 dis cis} |
  \tuplet 3/2 {
    dis8 b dis \oneVoice fis dis fis g b a b a g |
    fis8 a g a g fis e fis g a b a |
  }
  gis4 r a r | d,8 r b r c r a r | b8 r e, r a4 r |
  \tuplet 3/2 {\once \undo \omit TupletNumber a8 c e b d gis} c,8 r r4 |
  d8 r r4 e8r r4 | f8 r r4 gis8 r8 r4 |
  a8 r d r c r b r | c4 f2 e4~ |
  e4 d~ \tuplet 3/2 {\once \undo \omit TupletNumber d8 b gis e gis b} |
  c8 r a r g! r cis, r |
  \tuplet 3/2 {
    \clef G \once \undo \omit TupletNumber d'8 f a cis, g' bes d, f a a, e' g |
    d8 e f g a bes c,! d e f g a |
    b,!8 cis d e f g a, cis e g e cis |
    a8 d e f e d gis f! e d c b |
  }
  \clef bass c1~ |
  \tuplet 3/2 {c8 a g! fis e dis} g2~ |
  g2~ \tuplet 3/2 {g8 bes a g f! e} | cis'1~ |
  \tuplet 3/2 {cis8 e d cis b a} d2~ |
  \tuplet 3/2 {d8 e d c! b a} f'2 |
  \tuplet 3/2 {
    e8 f e d c b c d c b a g |
    a8 b a g f e f g f e d c |
    d8 e d c b! a
  }
  b8. c16 \tuplet 3/2 {\once \undo \omit TupletNumber d8 e f} |
  gis,4 r \tuplet 3/2 {\once \undo \omit TupletNumber gis'8 f! e d c b} |
  a4 r r2 |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber a8 c e gis, d' f a, c e e, b' d |
    a8 b c \voiceTwo d e f g,! a b \oneVoice c d e |
    f,8 g a b c d e, gis b d b gis |
    \voiceTwo e8 a b c b a dis c! b a g! fis |
  }
  g8 r fis r g r dis r |
  \tuplet 3/2 {\once \undo \omit TupletNumber g8 fis e} c'8 r \tuplet 3/2 {\once \undo \omit TupletNumber fis,8 e d} b' r |
  \tuplet 3/2 {\once \undo \omit TupletNumber e,8 d c} a'8 r dis,8. a'16 dis,8. a'16 |
  e8. a16 e8. g16 \tuplet 3/2 {\once \undo \omit TupletNumber d!8 d' c b a gis} |
  c,8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber e8 e' d cis b ais} |
  d,8 r r4 e4 r | fis4 r g r |
  fis8 r fis r fis r fis r | b8 r r4 a8 r r4 |
  g8 r r4 e4 r | d4 r fis r | g4 r gis r | e4 r a r |
  b4 r c r | b4 r c r | dis4 r b r |
  \oneVoice \tuplet 3/2 {
    \once \undo \omit TupletNumber e8 g b cis, g' bes d,! fis a b,! f' as |
    c,8 e g a, c fis b, d f gis, b e |
    a,8 c e gis, d' f a, c e e, b' d |
  }
  \voiceTwo c8 r b r c r e r | a8 r d, r c r e r |
  f4~ \tuplet 3/2 {\once \undo \omit TupletNumber f8 g! a \oneVoice b, c d e f g | a b c d e f}
  gis,8 r8 \tuplet 3/2 {\once \undo \omit TupletNumber e8 gis b} |
  c8 r \tuplet 3/2 {\once \undo \omit TupletNumber a8 g! f \stemDown e \change Staff = "right" g'! f \voiceTwo e d cis} |
  \change Staff = "left" \oneVoice f,8 r r4 \tuplet 3/2 {\stemDown \once \undo \omit TupletNumber fis8 \change Staff = "right" a' g \voiceTwo fis e dis} |
  \change Staff = "left" \oneVoice g,8 r r4
  \tuplet 3/2 {
    \once \undo \omit TupletNumber gis8 b c d e f |
    c8 d e f,g a b c d e, f g |
    a8 b c d, e f g a b c, d e |
  }
  \voiceTwo fis,8 r r4 g8 r r4 | as8 r r4 a8 r r4 |
  g8 r \tuplet 3/2 {\once \undo \omit TupletNumber r8 \oneVoice a b c d e f! g as | g b d fis, c' es}
  \voiceTwo g,2 |
  c4 \oneVoice a g f | e2 d | c2 b | c2 d | g,2 r |
  r4 e'' fis, d' | e,4 c' d, c' | b4 \voiceTwo g a b | \oneVoice c4 d c bes |
  a4 f g g, | c4 f2 e4~ | e4 d8 c d4 g | \voiceTwo c,2 r | r2 a' | d,2 r | r2 b' | e,1~ |
  e4 c' b a | g2 \oneVoice fis | e2 dis | e4 g b d,! | c4 e g bes, |
  a4 d b! g | c4 f g g, | \voiceTwo c1~ | c2 d |
  \tuplet 3/2 {
    \change Staff = "right" \voiceTwo \once \undo \omit TupletNumber c'8 e g b, f' a c, e g \change Staff = "left" \stemUp g, \change Staff = "right" \stemDown d' f |
    \change Staff = "left" \oneVoice a,8 c e gis, d' f a, c e e, b' d |
    f,8 a c e, b' d f, a c cis, g'! bes |
    d,8 f a cis, g' bes d, f a a, e' g |
  }
  f8 r e r f r cis r | \stemDown d8 r g r f r e r |
  f8 r bes r bes r a r | a8 r g r g r r4 |
  f8 r d r c! r \voiceTwo fis r |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber g8 bes! d \oneVoice fis, c' es g, bes d d, a' c |
    g8 a bes c d es f,! g a bes c d |
    e,!8 fis g a bes c d, fis a c a fis |
    d8 g a bes a g cis bes a g f! e |
  }
  f1~ | \tuplet 3/2 {f8 d c b a gis} c2~ |
  c2~ \tuplet 3/2 {c8 es d c bes a} | fis'1~ |
  \tuplet 3/2 {fis8 a g fis e d} g2~ |
  \tuplet 3/2 {g8 a g f! e d} bes'2 |
  \tuplet 3/2 {a8 bes a g f e f g f e d cis} |
  d8. bes'16 c,!8. a'16 bes,8. g'16 a,8. f'16 |
  g,8. e'16 \tuplet 3/2 {\once \undo \omit TupletNumber f,8 f' a c, e f g a bes} |
  \voiceTwo b,!8 r r4 c8 r r4 | des8 r r4 d8 r r4 |
  c8 r r4 \oneVoice r2 | s4 \voiceOne \tuplet 3/2 {g'8 c g e g16 f e d c8 e16 d c bes} |
  \oneVoice a8 r g r a r e r |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber f'8 a c e, bes' d f, a c cis, g' bes |
    d,8 f a cis, g' bes d, f a a, e' g |
    bes,8 d f b, d g c, e g cis, e a |
    d,8 f a d, f bes e, g bes e, g cis |
    f,8 a d fis, a d
  }
  g,8 r r4 | f8 r r4 e8 r a r |
  \tuplet 3/2 {\once \undo \omit TupletNumber d,8 e f gis e d} c8 r c'4~ |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber c8 d e f d c b c d e c b |
    a8 b c d b a gis b d f d b |
    \once \undo \omit TupletNumber gis8 b16 a gis fis e8 gis16 fis e d
  }
  c2~ | \tuplet 3/2 {c8 d e f! g! a b c d} s4 |
  s1 * 3 | \tuplet 3/2 {c8 d e a, b c f,! g! a d,e f}
  bes,4~ \tuplet 3/2 {bes8 f' d} bes4~ \tuplet 3/2 {bes8 f' d} |
  bes4~ \tuplet 3/2 {bes8 f' d} bes4~ \tuplet 3/2 {bes8 f' d} |
  b4~ \tuplet 3/2 {b8 f' d} b4~ \tuplet 3/2 {b8 f' d} |
  b4~ \tuplet 3/2 {b8 f' d} b4~ \tuplet 3/2 {b8 f' d} |
  e,2~ e4 r8 r16 e | a2. r8 r16 a16 |
  \tuplet 3/2 {\once \undo \omit TupletNumber d,8 f a d f d d,8 f a d f d | d,8 f a d f d}
  gis,8 r r4 | \tuplet 3/2 {\once \undo \omit TupletNumber a8 c e a c a} cis,8 r r4 |
  \tuplet 3/2 {\once \undo \omit TupletNumber d8 f a d f d} dis,8 r r4 |
  \tuplet 3/2 {\once \undo \omit TupletNumber e8 e' d! c b a} e'8 r e, r |
  a8 r r4 r2 |
  \change Staff = "right" \voiceTwo a'16 e c e f d b d e \change Staff = "left" c a c d b gis b |
  \oneVoice c8 r b r c r gis r |
  a16 c e c gis d' f d a c e c e, b' d b |
  c8 r d,16 b' a gis c, a' gis fis b, gis' fis e |
  a16 e d c f! d c b e c b a d b a gis |
  \voiceTwo c8 r b r c r gis r |
  \oneVoice a16 e' c e gis, f' d f a, e' c e e, d' b d |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber a8 b c d e f g,! a b c d e |f,8 g a b c d
  }
  e,2~\fermata | \repeat unfold 9 e1~ | e2 \voiceTwo <b' d,!>4\fermata \oneVoice r4 |
  r2 r4 \voiceTwo dis4\arpeggio | e4 r e2 |
  a,2 gis | a4 d \oneVoice e2~ |e4 d8 c d4 e | a,4 a'b b, | e2 dis |
  e4 c' d,! b' |c,4 b' b, a' | g4 e fis gis |
  a4 bes a g! | f4 e8 d e2 | a,4 d2 c4~ | c4 b8 a b4 e, |
  a8 b c a e'4 a, | d2 d, | g4 g' a b | c4 a b b, | e4 d c b | a4 f' e d |
  c2 b | a2 gis | a4 a' b cis | d4 c! b a | gis2 r4 e |
  a4 c,8 d e4 e, | a2 r2 \bar "|."
}