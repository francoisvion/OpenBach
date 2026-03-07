\version "2.22.0"

scoreCCello = \relative c {
  R1 * 5 | r4 c'_\brack\f d, b' | c,4 a' b, a' | g4 e fis gis |
  a4 bes a g! | f4 e8 d e2 | a,4 d2 c4~ | c4 b8 a b4 e, |
  a2 r | r2 d, | g2 r | r2 b | e,2 r | a4 f' e d |
  c2 b | a2 gis | a4 a' b cis | d4 c! b a | gis2 r4 e |
  a4 c,8 d e4 e, | a4 r r2 | R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuringWithClef "scoreCRhOneHpdI" #UP "treble" {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 e'4 c' b a | g2 fis | e2 dis | e4 r r2 |
  R1 | d2 cis | d4 g2 fis4 | g4 e a a, | d4 r r2 |
  R1 | c8^"pizz."_\brack\p r a' r g r f r | e8 r f r g r g, r |
  c8 r c' r c r b r | a8 r d, r g r fis r |
  g8 r d r g, r r4 | R1 | r4 b8 r e r dis r |
  e8 r b r g r a r | b8 r b r e, r r4 | R1 * 9 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    <<
      {\voiceTwo \once \override MultiMeasureRest.staff-position = #-10 R1 \cueClefUnset}
      \new CueVoice {
        \cueClef "treble" \voiceOne \tupletSpan 4 \relative c'' {c'8 r b r a r gis r}
      }
      \new CueVoice {
        \voiceFour \tupletSpan 4 \relative c'' {\tuplet 3/2 {a8 c e gis, d' f a, c e e, b' d}}
      }
    >>
  }
  \tag #'score {
    R1 |
  }
  \oneVoice r4 f'2\paren\p^"coll'arco" e4~ | e4 d2
  \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_C} e8.
  d16 | c4 a r cis |
  d4 bes g a | d,4 r r2 | r2 r4 a' | d4 r r e | a,4 r r2 |
  R1 * 9 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    <<
      {\voiceTwo \once \override MultiMeasureRest.staff-position = #-12 R1 \cueClefUnset}
      \new CueVoice {
        \cueClef "treble" \voiceOne \tupletSpan 4 \relative c'' {d2~ \tuplet 3/2 {d8 f e d c b}}
      }
      \new CueVoice {
        \voiceFour \tupletSpan 4 \relative c'' {\tuplet 3/2 {b8 b a gis fis e} a2}
      }
    >>
  }
  \tag #'score {
    R1 |
  }
  \oneVoice \mark #11
  <<
    {a4^"Violoncello" f' e d | c4 d g, c | f,4 b e,2~ | e1~ | e4}
    \\
    {a4\paren\mf_\markup {\column {Violone " "}} gis a e | a4 d g,! c | f,4 b e,2 | s1| s4}
  >>
  fis4 g b | e, r r2 | R1 | r2 d4\f r | c4 r e r |
  d4 r e r | fis4 r g r | fis1\p | b4 e, a d, |
  g4 e e'\paren\f r | d4 r fis, r | g4 r gis r | e4\paren\p r a r |
  b4 r c r  | b4 r c r | dis4 r b r | e4 r r2 | R1 |
  <<
    {a,8^\markup {\column {" " Violoncello pizz.}} r f' r e r d r | c8 r b r c r e r}
    \\
    {a,8_\markup {\column {pizz. Violone " "}} r gis r a r e r | a8 r b r c r e r}
  >>
  a8 r d, r c r e r | a,4\mf^"coll'arco" f' b, e | a,4 d gis,2\p |
  a2 g! | f2 fis | g2 gis | a4 r r2 | R1 |
  fis8^"pizz." r r4 g8 r r4 | as8 r r4 a8 r r4 | g8 r r4 r2 |
  R1 | c4\f^"(coll'arco)" a' g f | e2 d | c2 b | c2 d | g,2 r |
  r4 e'' fis, d' | e,4 c' d, c' | b4 g a b | c4 d c bes |
  a4 f g g, | c4 f2 e4~ | e4 d8 c d4 g | c,2 r | r2 a' | d,2 r | r2 b' | e,1~ |
  e4 c' b a | g2 fis | e2 dis | e4 g b d,! | c4 e g bes, |
  a4 d b! g | c4 f g g, | \mark \default c4 r r2 | R1 * 6 |
  r4 g'(\pp f e) | d4 bes'2 a4~ | a4 g2 f8 e | f4 d r fis |
  g4 es c d | g, r r2 | r2 r4 d | g4 r r a | d4 r r2 |
  R1 * 7 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuringWithClef "scoreCRhOneHpdI" #UP "treble" {R1} |
  }
  \tag #'score {
    R1 |
  }
  b8\paren\p r r4 c8 r r4 | des8 r r4 d8 r r4 | c8 r r4 r2 |
  r4 g'8 r e r c r | \mark \default a8 r r4 r c8^"pizz." r | f8 r r4 r a,8 r |
  d8 r r4 r a8 r | bes8 r r4 r cis8 r | d8 r r4 r e8 r |
  f8 r r4 r g8 r | r4 f8 r r4 a8 r |
  r4 d,8 r r4 c8 r | r4 f\paren\mf^"coll'arco" b, e | a,4 d gis, f' |
  e4 d c2~ | c4 r r2 | R1 * 4 | r4 bes'8\p r r4 bes8 r |
  r4 bes,8\pp r r4 bes8 r | r4 b'8\mp r r4 b8 r | r4 b,8\pp r r4 b8 r |
  e,8\paren\mf r r4 r e8 r | a8 r r4 r a8 r | d,8 r r4 r2 |
  r2 gis8\f r r4 | a8 r r4 cis8 r r4 | d8 r r4 dis8 r r4 |
  e8 r r4 r2 | \mark \default a,1~\p | a1~ | a1~ | a1~ | \tieDashed a1~ |
  a4 \tieSolid f'\brack\mf( e d) | c4( b c e) | a,4 r r2 | r4 d g, c |
  f,4 b e,\fermata r |
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
  \tempo "[Tempo I.]" a2\f gis | a4 d e2~ |e4 d2 c8 b | a2 b | e,4 r r2 |
  r4 c'' d, b' | c,4 a' b, a' | g4 e fis gis |
  a4 bes a g! | f4 e8 d e2 | a,4 d2 c4~ | c4 b8 a b4 e, |
  a2 r | r2 d, | g2 r | r2 b | e,2 r | a4 f' e d |
  c2 b | a2 gis | a4 a' b cis | d4 c! b a | gis2 r4 e |
  a4 c,8 d e4 e, | a2 r \bar "|."
}