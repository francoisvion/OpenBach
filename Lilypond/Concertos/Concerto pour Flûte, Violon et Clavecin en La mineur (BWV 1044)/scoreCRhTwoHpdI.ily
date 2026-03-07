\version "2.22.0"

scoreCRhTwoHpdI = \relative c'' {
  \voiceThree s1 |
  r4 d2 c4~ | c4 b8 a \tieDown b2~ | b4 a8 g fis2 |
  s2 \change Staff = "left" b,2 |
  b4 \tieNeutral \change Staff = "right"
  \tiny s2. | s2. \tieUp b'4~ | b4 c2 b4 | a4 g a2~ |
  a4 a2 gis4 | s1 * 2 | s2 g | r4 c b a | b s2. |
  c2 \tieDown b~ | b2  s | s1 * 2 | s2. \tieUp e4~ | e4 s2. |
  s1 | s2. \voiceTwo gis,4 | e1~ | e4 s4 s2 |
  \normalsize r4 <c' a>4 <b g>2 | <a f>2 <gis e> | <a~ e>2 <a fis>4 <fis dis> |
  \oneVoice
  \tuplet 3/2 {
    \once \undo \omit TupletNumber e8 g b dis, a' c e, g b b, fis' a |
    e8 fis g a b c d, e fis! g a b |
    c,8 d e fis g a b, dis fis a fis dis |
    b8 e fis g fis e gis f e d! c b |
  }
  \change Staff = "left" \voiceOne
  c8 r b r c r gis r | \tuplet 3/2 {\once \undo \omit TupletNumber c8 b a} f'2 e4~ |
  e4 d4~ \tuplet 3/2 {d8 f! d} b4 |
  c8 r a r \tuplet 3/2 {\once \undo \omit TupletNumber fis!8 g! a b cis dis} |
  e4
  \change Staff = "right" \voiceThree
  \tiny s4 b'2~ | b4 s2. | s1 |
  \normalsize \voiceTwo e,4 r <g e> r | <g e>4 r4 s2 |
  \tiny
  s2 <e' a,~>2 | <d a>4 <bes g> <c a>2 | bes2 <a e> |
  \normalsize
  d,4 r <f d> r | <f d> r s2 | s1 * 6 |
  s2 e8 r fis! r | e8 r dis r e8 r fis! r |
  g8 r dis r s2 | s1 * 9 |
  \tuplet 3/2 {
    a'8 c e gis, d' f a, c e e, b' d |
    a8 b c d e f g,! a b c d e |
    f,8 g a b c d e, gis b d b gis |
    e8 a b c b a cis bes a g! f e |
  }
  f8 r e' r d r cis r |
  \tieDashed f4~ \tuplet 3/2 {\once \undo \omit TupletNumber f8 e d} \tieSolid e4~ \tuplet 3/2 {e8 d cis} |
  d4~ \tuplet 3/2 {d8 cis b} cis8 r cis r |
  d8 r a r \tieDashed b2~ |
  \tuplet 3/2 {\once \undo \omit TupletNumber b8 b a gis fis e} \tieSolid a2~ | a1~ |
  \tuplet 3/2 {a8 b a g fis e} bes'2~ |
  \tuplet 3/2 {bes8 bes a g f e} a2~ | a1 |
  gis4 a2.~ | a8 r gis r s2 | s1 * 2 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r8 e fis gis fis e} b'2~ |
  \tuplet 3/2 {b8 b a gis fis e} a2~ |
  a8. a16 d,4 c b | c8 r s2. | s1 * 34 |
  \tiny
  s4 c'2( b4) | c2 b | a2 g~ | g2~ g4 fis |
  d4 g2 fis4 | g4 <e' c>2 <d b>4~ |
  <d b>4 <c a>2 <d~ a>4 | <d b>4 b c d |
  g,2 c~ | c2. b4 | c2 b4 g |f2. g8 f |
  <g e>4 d' c bes | a4 s2. | f'4 e d c |
  b4 s2. | s1 | g4 a b2~ | b4 c2 b4~ |
  b4 a8 g a4 fis | g2 r4 s4 | s1 |s2 d4 g | e4 a d, r |
  \normalsize
  \change Staff = "left" \voiceOne
  s1 | r4 c2 b4 | s1 * 5 |
  \tuplet 3/2 {
    \voiceOne \once \undo \omit TupletNumber d8 \change Staff = right \voiceTwo f a \change Staff = "left" \voiceOne cis, \change Staff = "right" \voiceTwo g' bes \change Staff = "left" \voiceOne d, \change Staff = "right" \voiceTwo f a \change Staff = "left" \voiceOne a, \change Staff = "right" \voiceTwo e' g |
    \change Staff = "left" \voiceOne \once \undo \omit TupletNumber d8 \change Staff = "right" \voiceTwo e f g a bes c,! d e f g a |
    bes,8 c d e f g \change Staff = "left" \voiceOne a, \change Staff = right \voiceTwo cis e g e cis |
    \change Staff = "left" \voiceOne a8 \change Staff = "right" \voiceTwo d e f e d fis es d \change Staff = "left" \voiceOne c bes a |
  }
  bes8 r \change Staff = "right" \voiceTwo c' r bes r a r |
  bes4~ \tuplet 3/2 {\once \undo \omit TupletNumber bes8 a g} a4~ \tuplet 3/2 {a8 g fis} |
  g4~ \tuplet 3/2 {g8 fis e} fis8 r fis r |
  g8 r g r g2~ | g2~ \tuplet 3/2 {\once \undo \omit TupletNumber g8 a g f e d} |
  b'2~ \tuplet 3/2 {b8 b a gis fis e} |
  a1~ | a2~ \tuplet 3/2 {a8 a g fis e! d} |
  c'2~ \tuplet 3/2 {c8 d c bes a g} |
  a2~ \tuplet 3/2 {a8 bes a g f e} |
  f8 r e r s2 | s1 * 8 |
  f8 r g r f r e r | s1 * 5 |
  s4 c'4 d2 | c2 b4 s | <d b>4 s s2 | s2 s4
  \tuplet 3/2 {
    e,8 fis g | a8 b cis d e f gis, b c d c b |
    c8 a b c b a b gis a b a gis |
    a fis gis a gis fis gis e fis gis a b |
    e, fis gis
  }
  a2.~ | a4 a2 a4 | r4 a2 a4 | r4 gis2 gis4 |
  r4 gis2 gis4 | r4 gis a gis |
  \tuplet 3/2 {a8 e f g! d e f cis d e b! cis} |
  d8 s s2. | s1 * 3 | s4 r8 r16 c'16 b16 d8. b16 d8. |
  s1 * 20 | s2. <fis, c>4\arpeggio | e8 r8 r4 e2 |
  <e c>4 s2. | s4 \voiceThree a g!2 | s2 \tieDown b~ | b4 a8 g fis2 |
  g4
  \magnifyMusic 0.7 {
    \voiceTwo fis8 e fis2 | e4 s2. | s2. \voiceThree \tieUp b'4~ | b4 c2 b4 | a4 g a2~ |
    a4 a2 gis4 | s1 * 2 | s2 g | r4 c b a | b s2. |
    c2 \tieDown b~ | b2  s | s1 * 2 | s2. \tieUp e4~ | e4 s2. |
    s1 | s2. \voiceTwo gis,4 | e2. d4 | s1 |
  }
  \bar "|."
}