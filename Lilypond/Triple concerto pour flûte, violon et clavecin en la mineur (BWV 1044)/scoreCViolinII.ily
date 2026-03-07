\version "2.22.0"

scoreCViolinII = \relative c'' {
  \tag #'parts {
    <>_\markup \tiny {Viola}
    \cueDuring "scoreCViola" #DOWN {R1} |
  }
  \tag #'score {
    R1 |
  }
  r4 d2_\brack\f c4~ | c4 b8 a b2~ | b4 a8 g fis c' b a |
  g4 fis8 e fis2 | e4 c'2 b4~ | b4 a2 g8 fis | g4 r r e~ |
  e4 g f! e | d4 c b8 a b4 | a2 b4 c~ | c4 d8 c b2 |
  a8 b c a e'2 | d4 c' b a |g4 b, c d | e4 fis8 g fis e fis4 |
  e1 | f!2 b, | a4 d'2 c4~ | c4 b8 a b4 e~ | e4 cis d e |
  a,2 gis4 a | b4. a8 gis fis gis4 | e2 e | e4 r r2 |
  R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 r4 a2 g8 fis | e2 fis4 d |g c fis, fis' | e4 r r2 |
  R1 r2 a,~ | a4 g c bes8 a | bes8 a g f e2 | d4 r r2 |
  R1 * 2 | c8^"pizz."_\brack\p r a' r g r f r | e8 r e' r fis, r d' r |
  e,8 r c' r b r c r | b8 r a r g r fis r |
  g8 r a r g r c r | b8 r a r g r fis r |
  e8 r dis r e r fis r | g8 r b r b r r4 | R1 * 5 |
  r2 a,4\p^"(coll'arco)" f' | e4 d c c'~ |
  \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_C} c8.
  b16 a4 gis4 e'~ |
  e4 d~ d8. c16 b4 | a4 gis a b | e,4 a d, g! |
  c,4 f b, b'~ | b4 c cis8. d16 e4 | a,4 e' d cis |
  f4 r r2 | r2 a,,4\p e' | d4( c b) gis | e'4 r r2 |
  R1 * 10 |
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
  \oneVoice r4 f\paren\mf d' e, | c'4 d, b' d, | c2. b4~ |
  b4 fis' e fis | g4 r r2 | R1 | r2 <b f d>4\f r |
  <c e, a,>4 r <cis ais g,> r | <d fis, b,>4 r <cis e, g,> r |
  <b fis d>4 r <b e, cis> r | b,4\p g'( fis e) | d2 cis |
  b4 e <ais fis cis>\paren\f r | <b fis d>4 r <a! fis! dis> r |
  <b e, g,>4 r <b f! d!> r | r4 b\p c e, | r4 d r e |
  r4 fis r a, | r4 dis r b' | b4 r r2 | R1 * 3 |
  a8^"pizz." r f' r e r d r | c8 r d2\paren\mf^"coll'arco" g,4 | a4 b d,2\p | c2 e |
  f2 a | g2 d | a'4 r r2 | R1 | c8^"pizz." r r4 c8 r r4 |
  f,8 r r4 es8 r r4 | d8 r r4 r2 | d4\f^"(coll'arco)" a'( g f) |
  e4 c'2 b4 | c2 d4 g, | a4 d, g2~ | g4 e' d a | b4 r r2 |
  r4 c2 b4~ | b4 a8 g a2 | g4 r r2 | r4 bes a g |
  f4 e d8 c d4 | c2 g' | a4 d2 g,4~ | g4 d' c bes |
  a4 cis, d e | f4 e' d c! | b4 dis, e fis | g4 fis g dis |
  e2. fis4 | g4 e a d, | g4 c, fis b, | b'2 r4 b4 |
  c4 g8 f! e4 c' | c,4 d2 g4 | e4 c g' f | \mark \default e4 r r2 |
  R1 * 2 | a,4\pp f'( e d) | c4( d c) bes | a4 r r2 | R1 |
  r4 e'4( f g) | a4 d, e f~ | f4 bes, e2 | f4 a2 d,4~ |
  d4 c es a, | bes4 r r2 | r2 d4 a' | g4 d a' cis, |
  d4 r r2 | R1 * 7 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #'score {
    R1 |
  }
  d'8\paren\p r r4 c8 r \tuplet 3/2 {\once \undo \omit TupletNumber c,8( bes as)} |
  e'!8 r r4 as8 r r4 | g8 r g, r bes r e r | g1 |
  \mark \default f8 r  r4 r g8^"pizz." r | f8 r r4 r e8 r | d8 r r4 r cis8 r |
  d8 r r4 r e8 r | d8 r r4 r g8 r | f8 r r4 r e'8 r |
  r4 f8 r r4 e8 r | r4 gis,8 r r4 e'8 r | r4 f2\paren\mf^"coll'arco" e4~ |
  e4 d2 r4 |d4 r r b | a4 r r2 | R1 * 4 |
  r4 d8\p r r4 d8 r | r4 d,8\pp r r4 d8 r | r4 d'8\mp r r4 d8 r |
  r4 d,8\pp r r4 d8 r | r4 d'8\mp r c r b r | a8 r r4 r e8 r |
  d8 r r4 r2 | r2 <e' b e,>8\f r r4 | <e c a>8 r r4 <e bes g>8 r r4 |
  <d f, a,>8 r r4 <c fis, a,>8 r r4 | <b gis b,>8 r r4 r2 |
  \mark \default r4 b,(\mf c d) | e4 gis( a b) | c4( d c b) | a4 gis, a r |
  a4 f'( e d) | c4( d e f) | e4( d e gis) | e4 r r2 |
  r4 f d' e, | c'4 d, b'\fermata r |
  \shiftTempoLeft \tempo \markup \italic Cadenza R1 * 9 |
  R1^\fermata |
  R1 |
  \tag #'parts {
    <>_\markup \tiny {Cembalo}
    \cueDuring "scoreCRhOneHpdI" #DOWN {R1} |
  }
  \tag #'score {
    R1 |
  }
  \shiftTempoLeft \tempo "[Tempo I.]" R1 |
  r4 d2\f c4~ | c4 b8 a b2~ | b4 a8 g fis c' b a |
  g4 fis8 e fis2 | e4 c'2 b4~ | b4 a2 g8 fis | g4 r r e~ |
  e4 g f e | d4 c b8 a b4 | a2 b4 c~ | c4 d8 c b2 |
  a8 b c a e'2 | d4 c' b a |g4 b, c d | e4 fis8 g fis e fis4 |
  e1 | f2 b, | a4 d'2 c4~ | c4 b8 a b4 e~ | e4 cis d e |
  a,2 gis4 a | b4. a8 gis fis gis4 | e'2 b | a2 r2 \bar "|."
}