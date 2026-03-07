\version "2.22.0"

scoreALhTwoHpdI= \relative c' {
  \voiceOne
  s1 * 10 |
  s8 s16 c16 d8 e \change Staff = "right" \voiceTwo a a \change Staff = "left" \voiceOne d, b | c8\noBeam a g4 f e |
  d4 s4 \mergeDifferentlyDottedOn a8 r r f' | s1 * 20 |
  s4 s8 gis8~ \tuplet 3/2 {\once \undo \omit TupletNumber gis16[ fis e} a8] e4 |
  s1 * 6 |
  s2 r8 a16. b32 \tuplet 3/2 {\once \undo \omit TupletNumber c16 d e d c b} |
  \tuplet 3/2 {c b a c b a b a g fis e' dis} e8[ c!] a[ b] |
  \change Staff = "right" \voiceTwo e8[ \change Staff = "left" \voiceOne
  \once \override Score.FootnoteItem.annotation-line = ##f \footnote "*)" #'(0 . 4.5) \markup{"*)" May be considered as \footnote_markup_dotted_A and played as \footnote_markup_triplet_two_one_A} e,16
  fis16] \tuplet 3/2 {\once \undo \omit TupletNumber g16 a b a g fis} g8 r r \tieDashed <b~ fis!> |
  b8 \tieSolid b cis dis e b \change Staff = "right" \voiceTwo e4~ |
  e8[ \tuplet 3/2 {d16 c d]} \change Staff = "left" \voiceOne a8 \change Staff = "right" \voiceTwo d8 ~ d[ f16. e32]  f8 e8 |
  \change Staff = "left" \voiceOne s1 * 27 | s2 r8 e,16 fis g b a fis |
  \tuplet 3/2 {\once \undo \omit TupletNumber g16 fis e c' b a} b8 \change Staff = "right" \voiceTwo dis e e \change Staff = "left" \voiceOne s4 |
  s1 | r8 <d a>8 <d bes> <a e> a r8 s4 |
  s1 * 4 | s2 r8 d, e fis |
  g r16 c r bes r a g8 s8 s4 |
  s1 * 2 | s2 r8 a b! cis | d8 r16 g, r f r e s2 |
  s1 * 19 | s2 g16 fis g a \change Staff = "right" \voiceTwo b d c a \tuplet 3/2 { \once \undo \omit TupletNumber b16 c d c b a b c d c b a g a b \oneVoice c d! e d c b a g' fis! } |
  \change Staff = "left" \voiceOne s1 * 4 |
  s2 s8 a, g!4 | f e s2 | s1 * 14 |
  <a e c>8 r r4 r8 a16 b c e d b |
  c a c e \stemDown \change Staff = "right" \voiceTwo \tuplet 3/2 {\once \undo \omit TupletNumber a16 b c b a gis} a8 \change Staff = "left" \voiceOne a,16 b \oneVoice c e d b |
  s1 | \voiceOne d8 s s4 s2 | c8 s s4 s2 |
  s1 * 17 \bar "|."
}