\version "2.22.0"

scoreCRhOneHpdI = \relative c'' {
  \oneVoice R1 | \voiceOne r4 f2 e4~ | e4 d2 d4 | c2~ c4 b8 a | g4 fis8 e fis2\trill |
  \oneVoice e4
  \tiny
  \voiceOne g'4 fis2 | e2 dis | e2 d | c2 cis |
  d4 f e d | <c a>2 <b g> | <a f>2 <gis e~> |
  <a e>4 a b cis | d1~ | d4 <a' f> <g e> <f d> |
  e2. dis4 | e4 f e d | cis 4 d gis,2 | a4 a' g2 |
  f2 b~ | b4 <a f>2 g4 | f1~ | f4 b, e d | c2 b |
  \voiceOne a4 r4 r2 |
  \normalsize r4 <f' d>2 <e c>4~ | <e c>4 <d b>~ <d b> <b gis> |
  c2 b |
  \oneVoice
  s1 * 4 |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber a8 c e gis, d' f a, c e e, b' d |
    a8 b c d e f g,! a b c d e |
    f,8 g a b c d e, gis b d b gis |
    e8 a b c b a dis c! b a g! fis |
  }
  \mark #9 g4
  \voiceOne
  \tiny
  r4 dis'2 | \allowPageTurn e2 d | c2 b4 r4
  \normalsize
  g4 r cis r | <e cis bes>4 r \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber cis!8 bes! a g f e} |
  f4
  \voiceOne \tiny
  bes'4 a g | \allowPageTurn f2 es | d2. cis4 |
  \normalsize
  f,4 r b! r | <d b! as>4 r \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber b8 as! g f e d} |
  \tuplet 3/2 {
    e8 g c f, a c e, g c d, f b |
    e,8 g c a f a g e g f d f |
    e8 f g a b c d, e fis \voiceOne g a b |
    c8 d \tieDashed e~ e \tieSolid d c
  }
  b8 r c r | b8 r a r
  \tuplet 3/2 {
    \once \undo \omit TupletNumber g8 b d fis,! c' e |
    g,8 b d d, a' c d, g b dis, a' c |
    e,8 g b b, fis' a
  }
  \voiceOne g8 r a r | g8 r fis r
  \tuplet 3/2 {
    \once \undo \omit TupletNumber e'8 g b dis, a' c |
    e, g b b, fis' a \oneVoice e fis g a b c |
    d,!8 e fis g a b c, d e fis g a |
    b,8 dis fis a fis dis b e fis g fis e |
    a,8 dis e fis e dis g, b e fis, a d |
    e,8b' c d c b e, a b c b a |
    b8 d, e f e d a' c, d e d c |
    gis'8 b, c d c b c e a d, gis b |
    e,8 a c gis b d a c d e d c |
    f8 e d c b a gis' f! e d c b |
    a'8 f e d c b b' f e d c b |
  }
  \voiceOne c'8 r b r a r gis r |
  a8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber b,8 c d e f g | a, b c d e f}
  e2~ | e1 | d8 r g r f r e r |
  d4 \tieDashed bes'~ \tuplet 3/2 {\once \undo \omit TupletNumber bes8 a gis} \tieSolid a4~ |
  \tuplet 3/2 {a8 g! fis} g4~ g8 r e r |
  f!8 r d r d2~ | d2~ \tuplet 3/2 {\once \undo \omit TupletNumber d8 e d c b a} |
  fis'2~ \tuplet 3/2 {fis8 fis e dis cis b} | e1~ |
  e2~ \tuplet 3/2 {e8 e d cis b a} |
  g'2~ \tuplet 3/2 {g8 a g f e d} |
  e2~ \tuplet 3/2 {e8 f e d c b} |
  c8 r b r \oneVoice e8. a16 d,8. g!16 |
  c,8. f16 b,8. e16 a,8. d16 g,8. c16 |
  f,8. bes16 e,8. a16 \tuplet 3/2 {\once \undo \omit TupletNumber d,8 gis a b a gis} |
  \voiceOne d'1~ | d2~ \tuplet 3/2 {d8 f! e d c b} |
  \mark #11 c4~ c8. b16~ b8. a16~ a8. gis16 | a8 r
  \tuplet 3/2 {
    \change Staff = "left" \once \undo \omit TupletNumber f,8 g! a b c \change Staff = "right" \oneVoice d e f g |
    a8 b c d e f gis, b d b gis e |
    \stemUp c8 e \change Staff = "left" \voiceOne gis, a b c fis, a g fis e dis! |
    e8 g b fis a c e, g b b, fis'! a |
    e8 fis g a b c d,! e fis g a b |
    c,8 d e fis g a b, dis fis a fis dis |
    b8 e fis g fis e gis f e d c b |
    a'8 e d c b a ais' g! fis e d cis |
    b'8 fis e d cis b cis ais' b cis \change Staff = "right" d e |
    \change Staff = "left" d,8 \change Staff = "right" b' cis d e fis \change Staff = "left" e, \change Staff = "right" cis' d e fis g |
    \once \undo \omit TupletNumber b,8 d fis ais, e' g b, d fis fis, cis' e |
    b8 cis d e fis g a, b cis d e fis |
    g,8 a b cis d e fis, ais cis e cis ais |
    fis8 b cis d cis b dis c \change Staff = "left" b a g fis! |
    \change Staff = "right" \oneVoice \once \undo \omit TupletNumber r8 e' fis g fis e d! f e d c b |
    gis'8 f! e d c b c a' b c b a |
    d,8 a' b c b a e a b c b a |
    dis8 a b c b a e' a, b c b a |
    fis'8 a, b c b a dis c! b a g fis |
  }
  g8 r e'8. g,16 fis8 r d'8. f,16 |
  e8 r c'8. e,16 d8. c'16 b8. d,16 |
  c8 r b r c r gis r |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber a8 c e gis, d' f \change Staff = "left" \voiceOne a, c e e, b' d |
    \change Staff = "right" \oneVoice a'8 c e gis, d' f a, c e e, b' d |
    a8 b c d e f g,! a b c d e |
    f,8 g a b c d e, gis b d b gis |
    e8 a b c b a \voiceOne cis bes a g f e |
    d'8 a g f e d dis' c! b! a g fis! |
    \oneVoice e'8 b a g fis e f'! d! c b a gis! |
  }
  \tuplet 3/2 {e'8 d c} a'8 r \tuplet 3/2 {\once \undo \omit TupletNumber d,8 c b} g'8 r |
  \tuplet 3/2 {\once \undo \omit TupletNumber c,8 b a} f'8 r \tuplet 3/2 {\once \undo \omit TupletNumber b,8 a g} e'8 r |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber es8 a, b c b a g c d es d c |
    d8 f, g as g f es a b c b a |
    b8 g a b c d e f! g as f d |
  }
  b'!8. g16 c2 b4 | c4
  \tiny
  \voiceOne r4 d,2 | \allowPageTurn e4 <a f>2 <g e>4~ |
  <g e>4 f2 f4 | e2 d4. c8 | b2 a | b4 b' a2 |
  g2 fis | g2 f | e1~ | e4 a g f | e4 a d, g |
  c,2 b4 <d b> | e4 f g2~ | g4 \oneVoice <bes g> <a f> <g e> |
  \voiceOne f4 g a2~ | a4 \oneVoice <c a> <b g> <a fis> |
  <g b, g>4 <dis c fis,> <e b g> <fis a,> |
  \voiceOne g8 fis e2 dis4 | e4 a2 g4~ | g4 fis8 e fis2~ |
  fis4 e8 dis e4 \oneVoice <b g f> | <c g e>2 r4 <g e> |
  <a c,>4 <a f> \voiceOne d c8 b | c4. d8 b4 r |
  \normalsize
  \oneVoice
  \mark \default c'16 b32 a g f e d
  \tuplet 3/2 {
    \once \undo \omit TupletNumber c8 e g a f d b d f | g e c a c e f d b g b d |
  }
  \voiceOne e8 r d r e r b r | \oneVoice c8 r b r c r gis r |
  a8 r gis r a r e r | f8. d'16 \stemUp g,!8. e'16 \stemNeutral f,8. d'16 e,8. cis'16 |
  \tuplet 3/2 {\once \undo \omit TupletNumber d8 f a cis, g' bes d, f a a, e' g}
  \voiceOne f8 r e r d r cis r |
  d8 r r4
  \tuplet 3/2 {
    \once \undo \omit TupletNumber e8 f g a bes c | d, e f g a bes
  }
  a2~ | a8 r a,2. | \oneVoice g8 r \voiceOne a' r g r fis r |
  g8 r es4~ \tuplet 3/2 {\once \undo \omit TupletNumber es8 d cis} d4~ |
  \tuplet 3/2 {d8 c! b!} c4~ c8 r a r |
  bes8 r d r e2~ | \tuplet 3/2 {\once \undo \omit TupletNumber e8 e d cis b! a} d2~ |
  d1~ | \tuplet 3/2 {d8 e d c b a} es'2~ |
  \tuplet 3/2 {es8 es d c bes a} d2~ | d1 |
  cis4 d2.~ | d8 r cis r
  \tuplet 3/2 {
    \oneVoice \once \undo \omit TupletNumber a'8 bes a g f e | f8 g f e d c d es d c bes a |
    bes8 c bes a c f g, c d e! f g |
    as8 d, e f e d c f g as g f |
    g8 bes, c des c bes as d e f e d |
    e8 g, as bes as g des' bes g e g16 f e d! |
    c8 e c s4. * 3 |
    \mark \default f8 a c e, bes' d f, a c c, g' bes |
  }
  a8 r g r a r e r | \voiceOne d'8 r e r d r cis r |
  \tuplet 3/2 {
    \oneVoice \once \undo \omit TupletNumber d,8 f a d g,16 f e d e8 g bes e a,16 g f e |
    f8 a d f16 e d c bes a g8 bes e g16 f e d cis bes |
    a16 cis d e f g a g fis e d c bes8 cis d e f g |
    a,8 b! cis d e f g, a bes cis a g |
    \once \undo \omit TupletNumber f8 g16 f e d
  }
  b'!4~\mordent \tuplet 3/2 {b8 c d e16 d c b a gis} |
  a8 r \voiceOne <a' f>2 <g e>4~ | <g e>4 <f d>~ <f d> \oneVoice r |
  \voiceOne <b e,>4 \oneVoice r
  \tuplet 3/2 {
    \oneVoice \once \undo \omit TupletNumber \once \override TupletBracket.bracket-visibility = ##t r8 d16 c b a gis b a gis fis e |
    a8 b c a b c \voiceOne gis a b g a b |
    fis8 g a f g a b d, e f e d |
    e8 fis gis a gis fis gis b, c d c b |
    c8 dis e fis e dis e gis,! a b c d~ |
  }
  d4 c~ \tuplet 3/2 {c8 b c} f4~ |
  \tuplet 3/2 {
    f8 cis d~ d cis d f cis d~ d cis d |
    f8\p cis d~ d cis d f cis d~ d cis d |
    f8\mp cis d~ d cis d f cis d~ d cis d |
    f8\p cis d~ d cis d f cis d~ d cis d |
    f8 cis d f cis d e b c d a b\f |
  }
  c8 r bes r a r g r | f8 \oneVoice r
  \tuplet 3/2 {
    \once \undo \omit TupletNumber r8 a, d f d f a f a |
    d8 a d f d f b f e d c b |
    c8 a c e c e g bes a g f e |
    f8 d f a f a c b a gis a fis |
    gis8 e gis
  }
  \voiceOne a4~ a8. a16~ a8. gis!16 |
  \mark \default \oneVoice a16 e c d f d b d e c a c d b gis b |
  \voiceOne c8 r d r \oneVoice \stemUp c r b r |
  \oneVoice a16 c e c gis d' f d a c e c e, b' d b |
  c8 r b r c r gis r |
  \voiceOne a16 e d c f d c b e \change Staff = "left" \voiceOne c b a d b a gis! |
  \oneVoice \change Staff = "right" c8 r d16 f e d c e d c b d c b |
  \change Staff = "left" a16 \change Staff = "right" e' c e \change Staff = "left" gis, \change Staff = "right" f' d f \change Staff = "left" a, \change Staff = "right" e' c e \change Staff = "left" e, \change Staff = "right" d' b d |
  c16 a' e a d, b' f b c, a' e a b, gis' d gis |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber c,8 d e f! g! a b c d e f g | a8 b c
  }
  d8 r r2\fermata |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber \tempo \markup {\italic {Cadenza}} r8 gis, b d b gis f! d' b a gis fis |
    e8 gis a c a gis e c' a g fis e |
    dis8 fis a c a fis dis c' a fis e dis |
    d!8 f! gis b gis f d b' gis f e d |
    cis8 e g! bes g e cis bes' g e d cis |
    c!8 dis fis a fis dis c a' fis dis c b |
    gis'8 f! e d! c b f' d c b a gis |
    d'8 b a gis fis  e f d' b gis! f! e |
    d8 b' gis f! e d c a'fis dis c! b |
    a8 fis' dis \stemUp c! \change Staff = "left" b a
  }
  \voiceOne <gis e>4\fermata \change Staff = "right" \oneVoice \tuplet 9/8 {e'32[ fis gis a b c d! c b]} |
  f'!16 e8.~ e16. \tuplet 3/2 {d64 c b} c16. \tuplet 3/2 {b64 a gis} \voiceOne \appoggiatura gis8 a2~ |
  a32 gis a c b a gis fis d'16 b8 fis16 a4 gis8.\turn a16 |
  \tempo "[Tempo I.]" a4 f! e d | c <f' d>2 <e c>8 <d b> | <c a>4 <d b> r d |
  c2 b~ | b4
  \tiny
  \voiceOne <c a>4 <b~ a>2 | \allowPageTurn b4 g'4 fis2 | e2 dis | e2 d | c2 cis |
  d4 f e d | <c a>2 <b g> | <a f>2 <gis e~> |
  <a e>4 a b cis | d1~ | d4 <a' f> <g e> <f d> |
  e2. dis4 | e4 f e d | cis 4 d gis,2 | a4 a' g2 |
  f2 b~ | b4 <a f>2 g4 | f1~ | f4 b, e d | c2 b |
  \oneVoice <a e cis>2 r2 |
  \normalsize
  \bar "|."
}
