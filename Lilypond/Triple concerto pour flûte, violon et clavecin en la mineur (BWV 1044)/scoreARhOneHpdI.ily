\version "2.22.0"

scoreARhOneHpdI = \relative c'' {
  \tiny
  <a e c a>4 r4 r8 <a e c>4 <gis e b>8 |
  <a e c>4 r r8 <c a e>4 <gis e>8 |
  <a e>8 r r4 r8 \voiceOne a b c | gis8 \oneVoice r r4 r8 \voiceOne a b c |
  gis8 e'4 cis8 d d4 b8 | c8 e~ e4 d2 |
  \oneVoice <c e,>8 <a f>4 <gis f b,>8 <e b gis>4 <a e>8 <gis d> |
  <a e>8 <b a f> <c a e> <b gis d> <a c,> <f d> <c a> <b gis> |
  a8
  \normalsize
  a16[ b] c e d b \tuplet 3/2 {\once \undo \omit TupletNumber c16([ b a)} <a c e>8] <a e' a> <b e gis> |
  a'16 e a b \tuplet 3/2 {\once \undo \omit TupletNumber c16( d e) d( c b) c b a} c16 e \tuplet 3/2 {\once \undo \omit TupletNumber a16 b c b a gis} |
  \tuplet 3/2 {a16 e c a e'16 f g![ a bes]~ bes[ a g] \voiceOne f[ e d] d[ e f] \oneVoice f[ g a~] a[ g f]} |
  \tuplet 3/2 {e16 d c a' g a b, c d g f g a, b c f e f gis, a b e d e} |
  \tuplet 3/2 {fis,16 e' d gis, e' d a e' d b e d c b a f'! g! e} e8([ d16.\mordent) e32] |
  e8 r r4 r8
  \tiny
  \voiceOne a,8 b c |
  \allowPageTurn gis8 \oneVoice r r4 r8 \voiceOne e'4.~ |
  \tuplet 3/2 {\undo \omit TupletNumber e16 \normalsize \oneVoice b'16[ c] \omit TupletNumber d c d e, b' c d c b} c8 r
  \tiny
  <a, g e>4~ |
  \tuplet 3/2 {\once \undo \omit TupletNumber <a fis>16 \normalsize a'16[ b] c b c d, a' b c b a} b8 r r \tuplet 3/2 {d16 c b} |
  c8 r
  \tiny
  \voiceOne e,4 d2 | <c e,>8
  \normalsize
  \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber c'16 b a g fis e dis e fis} b,8.[ cis32 dis] \tuplet 3/2 {\once \undo \omit TupletNumber e16 fis g a b c} |
  \tuplet 3/2 {b16 a g fis g e} b16.[ e32 fis16. dis32] e8 r r4 |
  \mark \default r8 e,16 fis g b a fis \tuplet 3/2 {\once \undo \omit TupletNumber g16[ fis e} <e g b>8] <e b' e> <fis b dis> |
  <e' b e,>16 b e fis \tuplet 3/2 {\once \undo \omit TupletNumber g16( a b) a( g fis) g[ fis e} b'8] b4\trill~ |
  b8.[ \slurDashed \tuplet 3/2 {a32( gis fis)]} \slurSolid gis8.[\trill fis32( gis)] a8.[ \tuplet 3/2 {g32( fis e)]} fis8.[\trill \slurDashed e32( fis)] \slurSolid |
  g8[ \tuplet 3/2 {\once \undo \omit TupletNumber c,16 b c]} a'8[ \tuplet 3/2 {b,16 a b]} g'8[ \tuplet 3/2 {a,16 g a]} fis'8[ \tuplet 3/2 {g,16 fis g]} |
  \tuplet 3/2 {e'16 dis cis fis dis b g' e cis a' fis dis b' a g c b a g fis e dis fis a} |
  % 9
  \tuplet 3/2 {g16 b a g a b e, f g cis, d e a, b cis cis d e e f g bes a g} |
  \tuplet 3/2 {f16 a g f g a d, e f b, c d g, a b b c d d e f a g f} |
  \tuplet 3/2 {e16 g, a b c d e f g f e d e d c d e f e d c d c b} |
  \tuplet 3/2 {c16 d e d c b c b a b c d c b a b a gis a gis fis} d'16. d32 |
  <e, gis b d>8 r r8 <d f! b d>16. <d f b d>32 <e gis b d>8 r r8 <d f! b d>16. <d b' d>32 |
  \tuplet 3/2 {\once \undo \omit TupletNumber <e b' d>16 fis gis gis a b b c d d e f! f e d e gis a e d c d c b} |
  %15
  \tuplet 3/2 {a16 b c b a gis} \voiceOne a4~ a2 |
  \oneVoice \tuplet 3/2 {d,16 e f! gis f e d e f a f e d e f b f e d e f d' f, e} |
  \tuplet 3/2 {d16 f gis b d b gis b d f e d}
  \footnote "*)" #'(0 . 1) \markup {"*)" \long_dotted_rhythm_footnote_A} e8.
  f16 \voiceOne \override ParenthesesItem.font-size = #0 b,8.-\bracketify^\trill a16 |
  \oneVoice a8 r r4
  \tiny
  r8 \voiceOne d, e f | cis8 \oneVoice r r4 r2 |
  \allowPageTurn r4 <a' e>4~ <a fis>8 r <d d,> <c f,>~ |
  <b f>8 r \voiceOne g bes~ bes8 \oneVoice r <c c,> <bes g> |
  <a f>8 r \voiceOne d2 cis8 e | a,8 d c b \oneVoice <gis e>4 <a e>8 <gis d> |
  \mark \default <a e>8 <b a f> <c a e> <b gis d> <a c,>
  \normalsize
  r8 r4 |
  r8 e16. fis32 \tuplet 3/2 {\once \undo \omit TupletNumber g16 a b a g fis g fis e f e d! e d c \once \undo \omit TupletNumber r a' gis} |
  a8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 e fis g e d!} cis8 dis~ |
  \tuplet 3/2 {dis16 e dis e fis g a b c! b c a g fis e fis g a \voiceOne b c d! c d b} |
  \tuplet 3/2 {a16 gis fis gis a b c d e d e c b a gis a b c d e f! e f d} |
  \oneVoice \tuplet 3/2 {c16 d e a g a} b,8 g' \tuplet 3/2 {a,16 b c f e f} g,8 e'8 |
  \tuplet 3/2 {f,16 g a d c d} e,16. g32 fis16. c'32 \tuplet 3/2 {\once \undo \omit TupletNumber d,16 e f b a b e, f g c b c} |
  \tuplet 3/2 {f,16 g a d c d g, a b e d e a, b c f e f b, c d g f g} |
  \voiceOne e8 f e d c[ <f a>] <e g>[ <d f>] |
  \oneVoice {<g e c g>8[ <d b>16. <e c>32] <f d>8 <f d c> <f d b> <e c g> <d c a> <d b d,> } |
  <c g e>8 r r4
  \tiny
  r8 <c g e>4 <b g d>8 | <c g e>8
  \normalsize
  c,16[ d] e g f d \tuplet 3/2 {\once \undo \omit TupletNumber e16([ d c)} <c e g>8] <c g' c> <d g b> |
  g8 e f\turn g\turn a8 r r4 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 g a b c d d e f! f e d c b a f' e f g,! a b e d e} |
  \tuplet 3/2 {f,16 g a d c d e, f g c b c d, e f b a b c, e g bes a g} |
  \tuplet 3/2 {a16 g f d' e c b! a g e' f d c b a f' g e d c b g' a f} |
  e2\trill~ \tuplet 3/2 {e16 e fis g fis g} e16.[ a32 e16. g32] |
  fis2\trill~ \tuplet 3/2 {\once \undo \omit TupletNumber fis16 fis g a g a} fis16.[ b32 fis16. a32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber g16 a b} c16. e,32 d16.[ c'32 b16. d,32] c16. \tuplet 3/2 {b'64 a g} a16. c,32 b16.[ a'32 g16. b,32] |
  a16. \tuplet 3/2 {g'64 f! e} f16. a,32 g16.[ f'32 e16. g,32] fis16.[ e'32 e8]\trill~ e4~ |
  \tuplet 3/2 {\once \undo \omit TupletNumber e16 fis e dis fis b e, d c b c d c b a b a gis a b c b a gis} |
  \tuplet 3/2 {a16 g! fis g a b a g fis g fis e fis g a g fis e fis e dis} c'16. c32 |
  <c a fis dis>4 r8 <a fis c>16. <a fis c>32 <a fis dis c>4 r8 <a' fis c a>16. <a fis c a>32 |
  \tuplet 3/2 {\once \undo \omit TupletNumber <a fis b,>16 cis, dis dis e fis fis g a a b c! c b a g fis e dis e fis b, c a} |
  %37
  \mark \default \tuplet 3/2 {g16 b e~} e4~ \tuplet 3/2 {e16 fis gis a b c b a gis a g fis g fis e} |
  fis8[ a16. g32] fis8\prall e dis[ fis16. e32] \appoggiatura e8 dis8[ e16. fis32] |
  b,2\trill~ \tuplet 3/2 {\once \undo \omit TupletNumber b16 e dis e b c}
  fis,8.^\trill
  e16 |
  e4
  \tiny
  \voiceOne e'4 d2~ | d8 c4 b8~ b b4 a8~ |
  a8 a g fis a dis, e dis | \allowPageTurn e8 fis b fis b gis a b |
  c8 b a g fis2~ | fis8 \oneVoice r r4
  \normalsize
  r2 |
  r8 \voiceOne e16 fis g b a fis \tuplet 3/2 {\once \undo \omit TupletNumber g16[ fis e} c'8] \oneVoice <fis, d a>[ <gis e b>] |
  <a e a,>8 r r4
  \tiny
  r8 <a cis,>4 <gis b,>8 | <a c,>8
  \normalsize
  a'16. g32 \tuplet 3/2 {\once \undo \omit TupletNumber f16 e d e f g f e d} r8 r4 |
  r8 \tuplet 3/2 {\once \undo \omit TupletNumber e16 f g f g a e f g f g a d, e f e f g d e f} |
  \tuplet 3/2 {e16 f g cis, d e d e f cis d e} d8 d,16 e f a g e |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16 e d} r8 r4
  \tiny
  r4 r8 <cis' a e>8 | <d a d,>8 r r <a d,> <bes d,> r r <bes g> |
  <a e>8 r r <e a,> <f a,>
  \normalsize
  \tuplet 3/2 {\once \undo \omit TupletNumber fis16 es' d g, es' d a es' d} |
  \tuplet 3/2 {bes16 es d fis es d g es! d a' es d bes' a g} r8 r4 |
  <d b! g d>8 r r4 <e b gis>8 <e d> <fis c> <gis b,> |
  \voiceOne a8 r16 d, r c r b a8 \oneVoice r8 r4 |
  <e' cis a e>8 r8 r4 \tuplet 3/2 {\once \undo \omit TupletNumber a16 f d cis!16 bes a d bes! a e' bes a | f' e d cis bes' a d, bes' a e bes' a f e d}
  <g e>8 <f d> <e cis> \voiceOne d8[ <bes' g> <a f> <g e>] \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber a16 e f d' e, f bes a g f e d} |
  \tuplet 3/2 {f16 d e c' d, e a g f es d cis es cis d bes' cis, d g f e d cis b!} |
  \tuplet 3/2 {cis16 e f g f g cis, g' f e d cis d a' bes c! bes c fis, c' bes a g fis} |
  g2\trill~ \tuplet 3/2 {g16 bes a g a bes e, g f e f g} |
  a8[ \tuplet 3/2 {bes,16 a bes]} g'8[ \tuplet 3/2 {a,16 g a]}
  f'8[ \tuplet 3/2 {g,16 f g]} e'8[ \tuplet 3/2 {f,16 e f] | d' cis b e cis a f' d b! g' e cis}
  \tuplet 3/2 {a'16 g f e f g}
  \tag #'parts {
    \footnote "*)" #'(0 . 4) \markup {"*)" \long_dotted_rhythm_footnote_A} cis,8.-\bracketify\trill
  }
  \tag #'score {
    \once \override Staff.Script.outside-staff-priority = #400 cis8.-\bracketify\trill^"*)"
  }
  d16 |
  \mark \default d16[ c!32 bes a g f e] f[ a f d f e d cis] \stemUp d[ f d \change Staff = "left" a \change Staff = "right" d \change Staff = "left" a f a] f[ d f e d c! b! a] |
  gis32 b d f b d b gis \stemDown e fis gis a \stemUp b c \change Staff = "right" d e f! d e f \change Staff = "left" \stemDown b, c \change Staff = "right" d e \stemUp fis[ gis a b c d e b] |
  \stemNeutral <c a e>8 r8 r4
  \tiny
  r8 <c a e> <a e c> <gis a b,> | \allowPageTurn <a e c>8 r8 r4
  \normalsize
  r8 a16 b c e d b |
  \stemUp c32[ a g f e d c b] c[ e c \change Staff = "left" a c b a gis] a[ c a e a e c e] c[ a c b a g! fis e] |
  dis32 fis a c fis a fis dis \stemDown b cis dis e \stemUp fis g a b c! a b c \stemDown fis, g a b \change Staff = "right" \stemUp cis[ dis e fis g a b fis] |
  s8 r8 r4 r8 e16 fis \tuplet 3/2 {\once \undo \omit TupletNumber g16 a b a g fis} |
  <gis e b>8 r r4 <b gis e b>8 r r4 |
  r8 \voiceOne <e b>8 <a e> <gis e> \oneVoice <a e c>8 r r4 |
  r8 \voiceOne <fis d>8 <g d> <fis d> \oneVoice <g d g,>8 r r4 |
  \voiceOne r32 b,32 c d e8~ e16 e d8~ d16 d c8~ c16 c b8~ |
  \oneVoice <b e,!>16 s32 cis,32[ e g e d] \stemDown cis[ b cis d e fis g a] \stemUp b e, fis g \stemDown e d e fis g a b cis \stemUp d e fis g \stemDown a32 fis g a d, e fis d a[ d cis b a g fis e] \stemUp d[ e fis cis d] s32 s16 s4 |
  \stemNeutral r8 g16 a b d c a b4 \voiceOne r8 a |
  d,8 fis g fis g8 s8 s4 |
  \oneVoice \tuplet 3/2 {b,16 c d g fis g c, d e a g a d, e fis^\markup{\bracket \concat{\small \natural "?"}} b a b e, fis^\markup{\bracket \concat{\small \natural "?"}} g c b c} |
  \tuplet 3/2 {fis,16 g a c b c fis, a c e d c b a g d' c b f'! e d as' g f} |
  <b f d b>4 r <bes g e c> r | <a g e a,>4 r <b! a f d> r |
  r16 e,, b' c d f e b \tuplet 3/2 {\once \undo \omit TupletNumber c16 d e a g a b, c d g f g} |
  \tuplet 3/2 {a,16 b c f e f gis, a b e d e fis, gis a d c d f, gis b d c d} |
  e,8[ \tuplet 3/2 {gis16 a b]} e8[ \tuplet 3/2 {c16 d e]} a8[ \tuplet 3/2 {fis,16 g a] dis, e fis b, c! d} |
  \mark \default \clef bass \tuplet 3/2 {gis,16[ a b} e,8] \tuplet 3/2 {a16[ b c} fis,8] \tuplet 3/2 {b16[ c d} gis,8] \tuplet 3/2 {c16[ d e} a,8] |
  \clef G \tuplet 3/2 {d16[ e f} b,8] \tuplet 3/2 {b'16[ c d} gis,8] \tuplet 3/2 {d'16[ e f} b,8] \tuplet 3/2 {gis'16 a b} d,16. d32 |
  d1\trill~ | d2~ \tuplet 3/2 {\once \undo \omit TupletNumber d16 \tieNeutral e f b a b c, d e a g! a} |
  \tuplet 3/2 {b,16 c d g f g a, b c f e f g, a bes e d e f, g a d cis d} |
  \stemNeutral \tuplet 3/2 {gis,16 a b! d c! d a b c d c d} s8 d,32 e f! d b'[ gis! f e d] s16. |
  s8 d32 e f d b'[ a gis f e] s16. s8 e32 fis gis e c'[ a g f e32] s16. |
  s8 e32 fis gis e c'[ a g f e] s16. s8 e32 f g e cis' bes g f s8 |
  s8 e32 f g e cis'[ bes g f e] s16. s8 f32 g a f d' a g f s8 |
  s8 f32 g a f d' a g f s8 s8 d32 e f d b' f d c s8 |
  s8 \change Staff = "left" \stemUp b32 c d b \change Staff = "right" gis' f! d c s8 s8 s8 s32 \stemDown d e f \stemUp e \stemDown gis[ a b] |
  \stemUp c32 \stemDown a[ gis a] \stemUp f \stemDown e[ dis e] \stemUp c s16. s8 s2 |
  s4 fis32 e dis cis s8 s2 |
  \mark \default s1 |
  r8 a'16 b \voiceOne c e d b c a c e \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber a16 b c b a gis} |
  <a e a,>8 r r4 \tuplet 3/2 {g,!16 f! e bes' a g cis b a e' d cis} |
  \tuplet 3/2 {f16 e d c! b a} g8 r \tuplet 3/2 {f16 e d as' g f b a g d' c b} |
  \tuplet 3/2 {e16 d c b c d c b a e' d c a' g f e f g f e d c d e} |
  \tuplet 3/2 {d16 e f e d c d c b c d e d c b c b a b c d c b a} |
  \tuplet 3/2 {b16 a gis a b c b a gis a gis fis gis a b a gis fis gis fis e} d'16. d32 |
  <d b gis>4 r8 <d b e,>16. <d b e,>32 <d b gis e>4 r8 <d b f>16. <d b d,>32 |
  <d b e,>8 \tuplet 3/2 {\once \undo \omit TupletNumber b16 a gis d' c b f' e d b' a gis} a16. d,32 c8[ b16.\mordent a32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber a16 g a bes a g} \voiceOne a4~ a2 |
  \oneVoice \tuplet 3/2 {d,16 e f gis f e d e f a f e d e f b f e d e f d' d, e} |
  \tuplet 3/2 {f16 e d gis d e f e d a' d, e f e d b' d, e f e d gis d e} |
  \tuplet 3/2 {f16 d f gis b d b gis b d f gis} a32[ g f e d c b a] gis![ fis e d c b a gis] |
  a4
  \tiny
  r4 r8 <a' e c>4 <gis e b>8 |
  \allowPageTurn <a e c>4 r r8 <c a>4 <gis e>8 |
  <a e>8 r r4 r8 \voiceOne a b c | gis8 \oneVoice r r4 r8 \voiceOne a b c |
  gis8 e'4 cis8 d d4 b8 | c8 e~ e4 d2 |
  \oneVoice <c e,>8 <a f>4 <gis f b,>8 <e b gis>4 <a e>8 <gis d> |
  <a e>8 <b a f> <c a e> <b gis d> <a c,> <f d> <c a> <b gis> |
  a4 r r2
  \normalsize
  \bar "|."
}