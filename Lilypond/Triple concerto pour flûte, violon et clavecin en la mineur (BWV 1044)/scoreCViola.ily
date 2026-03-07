\version "2.22.0"

scoreCViola = \relative c' {
  a4_\brack\f f' e d | c2 b | a2 gis | a2 b | e,2 dis |
  e4 e' fis d! | e4 c b2~ | b4 g a b | c4 e a2~ |
  a8 gis a2 gis4 | a8 g! f2 e4~ | e4 d2 c8 b | c8 d e2 a,4 |
  d4 e d c | b4 g a b | c4 a b2~ | b4 d c b | a2 e'~ |
  e4 d8 c d4 g | a4 f d b | e2 d4 a | d2~ d8 e f4 |
  b,4 e8 f e d c b | c8 d e4 e, d' | c4 r r2 |
  R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuringWithClef "scoreCRhOneHpdI" #UP "treble" {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 g'4 e b'2~ | b4 a2 g4~ | g4 fis8 e fis2 |
  b,4 r r2 | R1 | f'2 e | d2 a' | d,4 bes' a2 |
  a4 r r2 | R1 * 4 | r2 g,8^"pizz."_\brack\p r e' r | d8 r c r b r a r |
  b8 r fis r g r fis r | g8 r dis r e r c' r |
  b8 r b r b r fis r | b8 r dis r e r r4 | R1 * 3 |
  r2 r4 c'4\p^"coll'arco" | d,4 b' c, a' | b,4 gis' a, r |
  r2 r4 c4 | r4 d r e | r4 f r gis, | a4 d c b |
  c4 d g c, | f4 b, e2~ | e4 e2 a,4~ | a4 bes d a' |
  a4 r r2 | R1 | a,4\p f'( e d) | c4 r r2 | R1 * 10 |
  \mark #11
  \tag #'parts {
    <>^\markup \tiny {Violoncello}
    <<
      {\voiceTwo R1 \cueClefUnset}
      \new CueVoice {
        \cueClef "bass" \voiceOne \relative c {a4 f' e d}
      }
    >>
  }
  \tag #'score {
    R1 |
  }
  \oneVoice r4 d2\mf e4 | f2 e | e2 r | e,4 c'( b a) | g4 r r2 | R1 |
  r2 <gis' b, d,>4\f r | <a e a,>4 r <ais e g,> r |
  <b d, b>4 r <g cis, e,> r | <fis b, d,>4 r <e b g> r |
  fis4\p ais,( b cis) | d4 b cis a | b4 cis <fis cis fis,>\f r |
  <fis b, d,>4 r <dis a c,!> r | <e b e,>4 r <d! b d,!> r |
  r4 e\paren\p e c | r4 b r a | r4 dis r e | r4 fis r fis |
  g4 r r2 | R1 * 2 | a,8^"pizz." r f' r e r d r |
  c8 r gis' r a r b r | a2\paren\mf^"coll'arco" g! | f2 b,\paren\p | e2 g | a2 a, |
  e'2 b | a4 r r2 | R1 | a'8^"pizz." r r4 g8 r r4 |
  b,8 r r4 fis8 r r4 | b8 r r4 r2 | R1 |
  e2\f^"(coll'arco)" g~ | g4 c, f b, | e4 a, d g, | c4 g r d'~ |
  d4 g2 fis4 | g4 e2 d4~ | d4 c2 b8 a | b4 e2 d4 |
  c4 g' c2~ | c2 g~ | g4 f8 e d4 e | f2. e8 d |
  c4 d e d | cis4 a a' cis, | d4 e f e | dis4 b b' dis, |
  e4 c' b a | g4 a b2~ | b4 c2 b4~ | b4 a8 g a4 fis |
  g2 r4 f! | e4 c'8 b c4 g | a4 a, g2~ | g4 a b2 | \mark \default g4 r r2 |
  R1 * 4 | d4\paren\pp bes'( a g) | a4( g a) cis | d4( cis d e) |
  a,4 bes c!2 | d4 e a, e' | d4 f
  \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_C} fis8.
  g16 a4 |
  d,4 es g d | d4 r r2 | r1 | d,4 bes'( a g) | f4 r r2 |
  R1 * 7 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuringWithClef "scoreCRhOneHpdI" #UP "treble" {R1} |
  }
  \tag #'score {
    R1 |
  }
  f'8\paren\p r \slurDashed \tuplet 3/2 {\once \undo \omit TupletNumber as,8( g f)} \slurSolid f'8 r r4 |
  bes,8 r r4 b8 r r4 | c8 r e, r g r bes r | e1 |
  \mark \default c8 r r4 r e8^"pizz." r | c8 r r4 r cis8 r | a8 r r4 r g8 r |
  f8 r r4 r a8 r | a8 r r4 r cis8 r | d8 r r4 r cis'8 r |
  r4 d8 r r4 cis8 r | r4 b8 r r4 a8 r |
  r4 c4\paren\mf^"coll'arco" d2 | c2 b4 r | gis,4 r r e' | e4 r r2 | R1 * 4 |
  r4 a8\p r r4 a8 r | r4 a8\pp r r4 a8 r | r4 gis8\mp r r4 gis8 r |
  r4 gis8\pp r r4 gis8 r | r4 gis8\mp r a r gis r |
  e8 r r4 r cis8 r | a8 r r4 r2 | r2 <b' d, gis,>8\f r r4 |
  <c e, a,>8 r r4 <bes e, g,!>8 r r4 | <a f d>8 r r4 <a fis c>8 r r4 |
  <gis b, e,>8 r r4 r2 | \mark \default r4 \slurDashed gis,(\mf a b) \slurSolid | c4( d e f) |
  e4( gis a) gis, | a4 f'( e d) | c4 d( c b) | a4 r r2 |
  a4 \slurDashed f'( e d) \slurSolid | c4 r r2 | r4 d2 e4 | f2 e4\fermata r |
  \shiftTempoLeft \tempo \markup \italic Cadenza R1 * 9 |
  R1^\fermata |
  R1 |
  \tag #'parts {
    <>_\markup \tiny {Cembalo}
    \cueDuringWithClef "scoreCRhOneHpdI" #DOWN "treble" {R1} |
  }
  \tag #'score {
    R1 |
  }
  \tempo "[Tempo I.]" a,4\f f' e d | c2 b | a2 gis |
  a4 c r fis, | e2 dis |
  e4 e' fis d | e4 c b2~ | b4 g a b | c4 e a2~ |
  a8 gis a2 gis4 | a8 g! f2 e4~ | e4 d2 c8 b | c8 d e2 a,4 |
  d4 e d c | b4 g a b | c4 a b2~ | b4 d c b | a2 e'~ |
  e4 d8 c d4 g | a4 f d b | e2 d4 a | d2~ d8 e f4 |
  b,4 e8 f e d c b | c8 d e2 d4 | cis2 r2 \bar "|."
}