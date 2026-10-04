sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'" \repeat volta 2 { d'4
  g' a' b' e''
  d''4. c''8 b'4 \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r e'' d''4. c''8
  b'4 b' a'2
  g'4 }
  \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 r1
  r4 d'' e'' e''
  a' a' d'' d''
  g' b' a' g'
  fis' fis' e'2
  d'4 \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  r1
  r4 d'' e'' d''
  c'' b' a'2
  g'4 \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 \fine
}

altoMusic = {
  s2. \repeat volta 2 { b4
  e'4. fis'8 g'4 c'
  d'16 [e' d' e'] fis'8 [a'] g'4 r
  r g'8 [a'] b' g'4 fis'8
  g'4 g' g' fis'
  g' }
  r4 r2 r1
  r4 g' g' g'
  fis' fis' f' f'
  e' d'8 [g'] g' [fis'] fis' [e']
  e'16 [g' fis' e'] d'8 [d'] d'4 cis'
  d' r r2
  r1
  r4 a' b'4. fis'8
  g'4. d'8 e'4 d'
  d' r r2 \fine
}

tenorMusic = {
  s2. \repeat volta 2 { g8 [a]
  b4 a g g
  g8 [d] d'4 d' r
  r g g8 [b] e' [a]
  g [a] b [c'16 d'] e'4 d'8 [a]
  b4 }
  r r2 r1
  r4 d' c' b8 [a]
  a4 d' g8 [a] b [c'16 d']
  c'4 b e'8 [d'] d' [a]
  a4 a a2
  a4 r r2
  r1
  r4 fis' b8 [c'] d'4
  g8 [a] b4 c'8. b16 a4
  b r r2 \fine
}

bassMusic = {
  s2. \repeat volta 2 { g8 [fis]
  e [d] c [d] g4 r8 c'
  b16 [c' b c'] d'8 [d] g4 r
  r e8 [fis] g4 c8 [d]
  e4. d8 c4 d
  g, }
  r4 r2 r1
  r4 g c8 [d] e [cis]
  d4 d8 [c] b, [c] d [b,]
  c4 g8 [e] cis [d] b, [cis]
  d [a] fis [d] a,2
  d4 r r2
  r1
  r4 d g8 [a] b4
  e8 [fis] g4 c d
  g, r r2 \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan,
  da -- bei will ich ver -- blei -- ben.
  so wird Gott mich ganz vä -- ter -- lich in sei -- nen Ar -- men hal -- ten;
  drum lass ich ihn nur wal -- ten.
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  Es mag mich auf die rau -- he Bahn
  Not, Tod und E -- lend trei -- ben,
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan,
  da -- bei __ _ will ich ver -- blei -- _ ben.
  so wird Gott mich ganz vä -- ter -- lich in sei -- nen Ar -- men hal -- _ ten;
  drum lass ich ihn nur wal -- _ ten.
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  Es mag mich auf die rau -- he Bahn
  Not, Tod __ _ und E -- lend trei -- _ ben,
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan,
  da -- bei will ich ver -- blei -- _ ben.
  so wird Gott mich ganz vä -- ter -- lich in sei -- nen Ar -- men hal -- ten;
  drum lass ich ihn nur wal -- _ _ ten.
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  Es mag mich auf die rau -- he Bahn
  Not, Tod und E -- lend trei -- _ ben,
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan,
  da -- bei will ich ver -- blei -- _ ben.
  so wird Gott mich ganz vä -- ter -- lich in sei -- nen Ar -- men hal -- ten;
  drum lass ich ihn nur wal -- _ ten.
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  Es mag mich auf die rau -- he Bahn
  Not, Tod und E -- lend trei -- _ ben,
}
