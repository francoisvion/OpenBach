sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  d''4 d'' a' b'
  c'' bes' a'2
  g'4 \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  bes'4 bes' a' g'
  fis' g' a' \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 d''4 d''
  a'4. bes'8 c''4 bes'
  a'2 g'4 \bar "'" r4
  \once r2^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  \bar "'" bes'4 bes'
  a' g' fis' g'
  a' \bar "'" \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  a'4 bes' c'' a'
  bes' a' g'2
  f'4 \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  bes'4 c'' d'' d''
  ees'' d'' c''2
  bes'4 \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  d''4 d'' c'' d''
  bes' c'' d'' \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 d''4 d''
  c'' bes' a' a'
  g' \bar "'" \once r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  r1
  r \fine
}

altoMusic = {
  f'8 [bes'16 a'] bes'8 [c''] d''4 g'
  g' g' a' d'
  d' r r2
  d'4 g' g'8 [d'] g'4
  a' bes'8 [g'] fis'4 r
  r2 bes'8 [c''] d''4
  d' d' g' g'
  g' d' d' r
  r2 g'4 g'
  ees' g' d' g'
  fis' r r2
  fis'4 g' g' f'
  f' f' f' c'
  c' r r2
  g'4 a' f' bes'
  bes' bes' g' c'
  d' r r2
  f'4 f' f' a'
  d' g' a' r
  r2 g'4 g'8 [f']
  e' [d'] d'4 ees'8 [c'] a4
  b r r2
  r1
  r \fine
}

tenorMusic = {
  bes8 [c'] d'4 d' d'
  c' g'8 [f'] ees'4 d'8 [c']
  bes4 r r2
  g4 g a8 [bes] c'4
  c' d'8 [bes] d'4 r
  r2 d'4 d8 [ees]
  f [g] a4 g8 [a] bes [c']
  d'4 a bes r
  r2 d'4 g
  a bes a c'
  a r r2
  d'4 d' e' c'
  d' a8 [f] c'4 g
  a r r2
  d'8 [g'] c'4 bes8 [c'] d'4
  g' f'8 [bes] c'4 f'
  f' r r2
  bes4 f8 [g] a [g] a [fis]
  g [bes] ees'4 fis r
  r2 d'4. bes8
  g [a] bes [g] c' [ees'] fis [d']
  d'4 r r2
  r1
  r \fine
}

bassMusic = {
  bes4 a8 [g] fis4 f
  e ees8 [d] c4 d
  g, r r2
  g8 [f] ees [d] c [d] ees4
  a, g, d r
  r2 g,8 [a,] bes, [c]
  d [ees] f4 e8 [fis] g4
  d' d g r
  r2 g8 [g,] a, [bes,]
  c4 cis d ees
  d r r2
  d4 g8 [f] e4 f8 [e]
  d4 c8 [bes,] c2
  f4 r r2
  g4 f8 [ees] d [c'] bes [a]
  g [f] ees [d] ees4 f
  bes, r r2
  bes,8 [c] d [ees] f [e] fis [d]
  g4 f8 [ees] d4 r
  r2 g8 [a] bes [d]
  e [fis] g [bes,] c [a,] d4
  g, r r2
  r1
  r \fine
}

sopranoLyrics = \lyricmode {
  Nun, ich weiß, du wirst mir stil -- len
  mein Ge -- wis -- sen, das mich plagt.
  Es wird dei -- ne Treu er -- fül -- len,
  was du sel -- ber hast ge -- sagt:
  dass auf die -- ser wei -- ten Er -- den
  Kei -- ner soll ver -- lo -- ren wer -- den,
  son -- dern e -- wig le -- ben soll,
  wenn er nur ist Glau -- bens voll.
}

altoLyrics = \lyricmode {
  Nun, ich weiß, du wirst mir stil -- _ len
  mein Ge -- wis -- sen, das mich plagt.
  Es wird dei -- ne Treu er -- fül -- _ len,
  was du sel -- ber hast ge -- sagt:
  dass auf die -- ser wei -- ten Er -- _ den
  Kei -- ner soll ver -- lo -- ren wer -- _ den,
  son -- dern e -- wig le -- ben soll,
  wenn er nur ist Glau -- bens voll.
}

tenorLyrics = \lyricmode {
  Nun, ich weiß, du wirst mir stil -- _ len
  mein Ge -- wis -- sen, das mich plagt.
  Es wird dei -- ne Treu er -- fül -- _ len,
  was du sel -- ber hast ge -- sagt:
  dass auf die -- ser wei -- ten Er -- _ den
  Kei -- ner soll ver -- lo -- ren wer -- _ den,
  son -- dern e -- wig le -- ben soll,
  wenn er nur ist Glau -- bens voll.
}

bassLyrics = \lyricmode {
  Nun, ich weiß, du wirst mir stil -- _ len
  mein Ge -- wis -- sen, das mich plagt.
  Es wird dei -- ne Treu er -- fül -- _ len,
  was du sel -- ber hast ge -- sagt:
  dass auf die -- ser wei -- ten Er -- den
  Kei -- ner soll ver -- lo -- ren wer -- _ den,
  son -- dern e -- wig le -- ben soll,
  wenn er nur ist Glau -- bens voll.
}
