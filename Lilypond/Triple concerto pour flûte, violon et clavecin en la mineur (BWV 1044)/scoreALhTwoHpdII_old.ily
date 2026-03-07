\version "2.22.0"

scoreALhTwoHpdII = \relative c' {
  s1 * 8 |
  s1 * 3 |
  \stemUp \tieUp c8[ <c a>] <d g,>[ <c~ g>] <c f,>[ <b~ f>] <b e,>[ <a~ e>] |
  <a d,>8 <b d,> <a e> <e b> <e a,> <g b,> r8 f |
  b,8 s8 s4 s2 |
  s1 * 7 |
  s8 s8 s4 s2 | s1 * 5 | s4 s8 <b' f d> <c g e>4 s8 <b gis f>8 |
  <a e>4 s8 <gis f d>8 <a e>4 s8 <a fis>8 |
  s1 * 4 | s4 s8 gis8~ \tuplet 3/2 {gis16 fis e} a8 e4~ |
  e8 s8 s4 s2 | s1 * 5 |
  s2 s8 a16 b s4 s2 s2 s8 e,16 fis g b a fis
  g8 s s s |
  s8 b[ cis dis] e s s <e g,> |
  <e a,>8 s s <e a,> <e b> s s <e b> |
  s1 * 19 |
  \change Staff = "right" \voiceTwo \tuplet 3/2 {e16 fis g fis16 e dis e d c d c b c d e d c \change Staff = "left" \oneVoice b c b a b a g} |
  \tuplet 3/2 {a16 b c dis, c' b a b c e, c' b a b c fis, c' b a b c g c b} |
  \clef G \tuplet 3/2 {a b dis fis a fis dis fis dis b dis b \clef bass g b g e g e} b'8 b, |
  e,8 s8 s4 s2 | s1 * 4 |

  s2 s8 e'16[ fis] g b a fis \tuplet 3/2 {g16 fis e} c'8 cis dis
  e8 \change Staff = "right" \stemDown e[ a, b] \change Staff = "left" \stemUp e, f[ fis gis]
  a8 s8 s4 |
  s8 a[ b bes] a g a aes | g8 s s4 s2 |
  s1 * 2 | r8 a16 bes c es d a bes4 s8 bes8 |
  a4 s8 a8 a d, e fis | g d e fis g s8 s4 |
  s1 |
  s2 s8 s8 s4 |
  s2 s8 g8 f e | d g f e d s s4 |
  s1 * 4 s2 s1 * 3 s2 | r8 a'16 b c e d b c8 e,[ fis gis] |
  a8 c[ d b] a s s4 | s1 | s1 * 7 | s1
  s4 s8 <fis c>8 <g d> g16[ a] b d c a |
  \tuplet 3/2 {b16 c d c b a b c d c b a g a b c d e d c b a \change Staff = "right" \stemDown g' fis} |
  s1 * 2 | \change Staff = "left" \stemUp s2 r8 g,16 a bes d c g | a4 s r8 a16 b c e d a |
  b4 s <e a,>8[ <d~ a>] <d g,>[ <c~ g>] |
  <c f,>[ <b~ f>] <b e,>[ <a~ e>] <a d,> s s4 |
  s1 * 17 | \tuplet 3/2 {d16 c b a b c b a g d' c b} s2 |
  \tuplet 3/2 {c16 b a gis a b} s4 s2 |
  s1 * 7 | s4 r8 gis8~ \tuplet 3/2 {gis16 fis e} a8 e4 |
}