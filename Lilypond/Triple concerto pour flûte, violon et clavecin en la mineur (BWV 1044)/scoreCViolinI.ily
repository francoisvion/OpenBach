\version "2.22.0"

scoreCViolinI = \relative c'' {
  \tag #'parts {
    <>_\markup \tiny {Viola}
    \cueDuring "scoreCViola" #DOWN {R1} |
  }
  \tag #'score {
    R1 |
  }
  r4 f_\brack\f g, e' | f,4 d' e, d' | c4 e,2 dis4 | e4 r r2 |
  r4 a2 g4~ | g4 fis8 e fis2 | e4 c'2 b4 | a4 r r2 |
  a4 f' e d | c2 b | a2 gis | a2 g! | f2 fis | g4 f'! e d |
  c8 d e2 dis4 | e4 f e d | cis8 a d2 gis,4 | a4 a' g!2 |
  f2. e8 d | c4 f2 e4~ | e4 a, d c | b1~ | b4 a2 gis4 |
  a4 r r2 | R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 e'2 dis | e4 c2 b4~ | b4 a2 g8 fis | g4 r r2 |
  R1 | R1 | r4 bes' c, a' | bes,4 g' a, g' | f4 r r2 |
  R1 * 5 | r2 r4 e8^"pizz."_\brack\p r | d8 r c r b r dis, r |
  e8 r fis r g r a r | g8 r fis r e r a' r |
  g8 r fis r e r r4 | R1 * 6 | a,4\p^"coll'arco" f' e a~ |
  a4
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \rest_eighth_to_triplet_footnote_C} r8
  }
  \tag #'score {
    \footnote "**)" #'(0 . 1) \markup {"**)" \rest_eighth_to_triplet_footnote_C} r8
  }
  d, c4 b | a4 r r2 | a4 f' e d | c2 b |
  a4 b2 b,4 | e4 a2 g4 | f4 r bes e, | f4 r r2 |
  d4\p bes'( a g) | f4( a gis) b,! | a4 r r2 | R1 * 10 |
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
  \oneVoice r4 a''\paren\mf b, g' | a,4 f' gis, e | e'4 a dis,2 |
  b4 dis b dis | b4 r r2 | R1 | r2 <f' b, d,>4\f r |
  <e c a>4 r <g cis, e,> r | <fis b, d,>4 r <e cis g> r |
  <d fis, b,>4 r <cis e, g,> r | d4\p( e d cis) | b2 a |
  g4 g' <fis cis fis,>\paren\f r | <fis b, d,>4 r <fis! c! a> r |
  <e b g>4 r <d f,! gis,> r | r4 gis\p a a, | r4 a r a |
  r4 a r a | r4 a r dis | e4 r r2 | R1 * 4 |
  r4 a,\mf b c~ | c4 f e2~\p | e1 | a,1 | b1 | c4 r r2 | R1 |
  es8^"pizz." r r4 es8 r r4 | d8 r r4 c8 r r4 | g'8 r r4 r2 |
  R1 |
  c,2\f^"coll'arco" d | e4 f2 e4~ | e4 d8 c d2~ | d4 c8 b a e' d c |
  b2 a | g2 fis | g4 e d2~ | d4 b' c d | g,2 r | r4 c2 b4 |
  c4 a' b, g' | a,4 f' g, b | c4 b8 a g4 d' | e4 g f e |
  d4 cis8 b a4 e' | fis4 a g fis | e4 dis e fis |
  g8 fis e2 dis4 | e4 a2 g4~ | g4 fis8 e fis2~ |
  fis4 e8 dis e4 r | r4 e8 d! e4 r |
  r4 d8 c d4 c8 b | c4. d8 b4.-\bracketify\trill c8 | \mark \default c4 r r2 | R1 * 2 |
  e,4\pp d'( c b) | a4( b a) e | d4 r r2 | R1 | d4 bes'( a g) |
  f4 g2 f4~ | f4 e2 a,4 | d4 d'2 c4 | bes4 r r c |
  bes4 r r2 | g4 es'( d c) | bes4( g cis,) e | a,4 r r2 |
  R1 * 7 |
  \tag #' parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #' score {
    R1 |
  }
  as''8\p r r4 as8 r r4 |
  g8 r \slurDashed \tuplet 3/2 {\once \undo \omit TupletNumber bes,8( as g)} \slurSolid f'8 r r4 |
  e8 r c, r e r g r | bes1 | \mark \default c8 r r4 r bes8^"pizz." r |
  a8 r r4 r g8 r | f8 r r4 r e8 r | d8 r r4 r g8 r |
  f8 r r4 r bes8 r | a8 r r4 r4 bes'8 r | r4 a8 r r4 g8 r |
  r4 e8 r r4 a8 r | r4 a2\mf^"coll'arco" g4~ | g4 f2 r4 | b,4 r r d |
  c4 r r2 | R1 * 4 | r4 f8\paren\p r r4 f8 r | r4 f,8\pp r r4 f8 r |
  r4 f'8\mp r r4 f8 r | r4 f,8\pp r r4 f8 r | r4 f'8\mp r e r d r |
  c8 r r4 r g8 r | f8 r r4 r2 | r2 <b' d, e,>8\paren\f r r4 |
  <a c, e,>8 r r4 <g bes, g>8 r r4 |
  <f a, d,>8 r r4 <fis c a>8 r r4 | <e b gis>8 r r4 r2 |
  \mark \default R1 | a,,4\paren\mf f'( e d) | \slurDashed c4( b c e) \slurSolid | a4( b c) r | r2 a,4 f' |
  \slurDashed e4( d c b) | a4( gis a) \slurSolid e'' | e4 r r2 | r4 a b, g' |
  a,4 f' gis,\fermata r |
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
  r4 f'\f g, e' | f,4 d' e, d' | c4 e,2 dis4 | e4 r r2 |
  r4 a2 g4~ | g4 fis8 e fis2 | e4 c'2 b4 | a4 r r2 |
  a4 f' e d | c2 b | a2 gis | a2 g! | f2 fis | g4 f' e d |
  c8 d e2 dis4 | e4 f e d | cis8 a d2 gis,4 | a4 a' g2 |
  f2. e8 d | c4 f2 e4~ | e4 a, d c | b2 b'~ | b4 a2 gis4 |
  a2 r2 \bar "|."
}
