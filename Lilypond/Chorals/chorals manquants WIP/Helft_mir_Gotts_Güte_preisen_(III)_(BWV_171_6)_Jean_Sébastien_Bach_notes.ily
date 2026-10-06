sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
   \repeat volta 2 { fis''4 fis'' d'' e''
  fis'' g''2 e''4
  e'' e'' d'' d''
  cis'' d''2.
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 r4
  e'' e'' e'' e''
  fis'' d''2 d''4
  d'' cis'' d'' e''
  e'' d''2. }
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 r4
  cis'' cis'' cis'' cis''
  cis'' d''2 d''4
  cis'' cis'' cis'' cis''
  cis'' d''2 d''4
  fis'' \time 3/4 fis'' e'' d''
  e''2 fis''4 g''2.
  fis''2
  fis''4 e''2 e''4
  dis''2 dis''4 e''2.~
  e''2
  fis''4 fis'' e'' d''
  e''2 fis''4 g''2.
  fis''2
  fis''4 e''2 e''4
  dis''2 dis''4 e''2.~
  e''2
  fis''4 \time 4/4 fis'' d'' e''
  fis'' g''2 e''4
  e'' e'' d'' d''
  cis'' d''2.
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 r4 \fine
}

altoMusic = {
   \repeat volta 2 { a'4 a' a' a'
  a' g'8 [a'] b'4 c''
  b' a' a' b'
  a' a'2.
  r4 r2 r4
  a'8 [gis'] a'4 a'8 [gis'] a'4
  a' a' g'8 [fis'] g'4
  a' a'8 [g'] fis'4 b'
  a'8 [g'] fis'2. }
  r4 r2 r4
  a' a' b' a'
  ais' b'2 b'4
  b' b' a' e'
  a' a'2 a'4
  a' \time 3/4 a'2 a'4
  a' b' cis'' d''
  cis'' b' a'2
  d''4 cis'' b' a'
  b' c'' a' g'2
  c''4 b'2
  b'4 cis''2 b'4
  b'2 a'4 b'2
  a'4 a'2
  a'4 g' a' b'
  a' b' c'' b'
  c'' a' gis'2
  b'4 \time 4/4 a' a' a'
  a' b'2 a'4
  a' a' a' a'8 [b']
  a' [g'] fis'2.
  r4 r2 r4 \fine
}

tenorMusic = {
   \repeat volta 2 { d'4 d'8 [e'] fis'4 e'
  d' d' g' g'
  b cis' d' g'8 [fis']
  e'4 fis'2.
  r4 r2 r4
  cis'8 [b] cis' [b] cis' [d'] e'4
  d'8 [c'] c'4 b8 [a] b4
  fis' e' d' d'
  cis' a2. }
  r4 r2 r4
  e' e'8 [fis'] gis'4 fis'
  fis' fis'2 fis'4
  g' g' fis'8 [g'] a'4
  g' g' fis'8 [e'] fis'4
  d' \time 3/4 d' e' fis'
  e'2 a'4 d'2
  e'4 fis'2
  a'4 a' g' fis'
  g' fis'2 e'
  fis'4 g'2
  d'4 cis' fis' fis'
  b cis' d' d'
  cis'8 [b] cis'4 d'2
  b4 b2 e'4
  fis'2 fis'4 b
  e' c' b2
  d'4 \time 4/4 d' d' cis'
  d' d'8 [fis' e' d'] cis'4
  cis' cis' d'8 [e'] fis'4
  e'8 [a] a2.
  r4 r2 r4 \fine
}

bassMusic = {
   \repeat volta 2 { d4 d d' cis'
  c' b a8 [g] c'4
  gis a8 [g] fis4 g
  a d2.
  r4 r2 r4
  a, a8 [gis] a [b] cis' [a]
  d'4 g2 g4
  fis8 [g] a4 b8 [a] g4
  a8 [a,] d2. }
  r4 r2 r4
  a, a8 [gis] fis [eis] fis [e]
  d [cis] b,2 b,4
  e fis8 [g] a [b] a [g]
  fis [e] d2 d4
  d \time 3/4 d' cis' b
  cis' b a b2
  cis'4 d'2
  d4 a b c'
  b a b c'
  b a e2
  b4 ais2 b4
  g2 fis4 e2
  a4 d2
  dis4 e fis g
  fis g a gis
  a a, e2
  b,8 [cis] \time 4/4 d [e] fis [d] g [a]
  g [fis] e [fis g e] a [b]
  a [g] fis [e] fis [g] a [g]
  a4 d2.
  r4 r2 r4 \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Lass uns das Jahr voll -- brin -- gen zu Lob dem Na -- men dein,
  dass wir dem -- sel -- ben sin -- gen in der Chris -- ten Ge -- mein.
  Dein Se -- gen zu uns wen -- de, gib Fried an al -- lem En -- de, gib un -- _ ver -- fälscht im Lan -- de dein se -- lig -- ma -- chend Wort, die Teu -- _ fel mach zu -- schan -- den hier und an al -- lem Ort! Die Teu -- fel mach zu -- schan -- den hier und an al -- lem Ort!
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  Wollst uns das Le -- ben fris -- ten durch dein all -- mäch -- tig Hand,
  er -- halt dein lie -- be Chris -- ten und un -- ser Va -- ter -- land!
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Lass uns das Jahr voll -- brin -- _ gen zu Lob dem Na -- men dein,
  dass wir dem -- sel -- ben sin -- _ gen in der Chris -- ten Ge -- mein.
  Dein Se -- gen zu uns wen -- de, gib Fried an al -- lem En -- de, gib un -- ver -- fälscht __ im Lan -- _ _ de dein se -- _ lig -- ma -- _ chend Wort, __ _ die Teu -- fel mach zu -- schan -- _ den hier und __ an al -- _ lem Ort! __ _ _ Die Teu -- fel mach zu -- schan -- den hier und an al -- lem Ort!
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  Wollst uns das Le -- ben fris -- _ ten durch dein all -- mäch -- tig Hand,
  er -- halt dein lie -- be Chris -- _ ten und un -- ser Va -- ter -- land!
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Lass uns das Jahr voll -- brin -- _ gen zu Lob dem Na -- men dein,
  dass wir dem -- sel -- ben sin -- _ gen in der Chris -- ten Ge -- mein.
  Dein Se -- gen zu uns wen -- de, gib Fried an al -- lem En -- _ de, gib un -- _ ver -- fälscht im Lan -- _ de dein se -- _ lig -- ma -- chend Wort, __ _ die Teu -- _ fel mach __ zu -- schan -- _ _ den hier und an al -- lem Ort! __ _ _ Die Teu -- fel mach zu -- schan -- den hier und an al -- lem Ort!
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  Wollst uns das Le -- ben fris -- _ ten durch dein all -- mäch -- tig Hand,
  er -- halt dein lie -- be Chris -- _ ten und un -- ser Va -- ter -- land!
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Lass uns das Jahr voll -- brin -- _ gen zu Lob dem Na -- men dein,
  dass wir dem -- sel -- ben sin -- gen in der Chris -- ten Ge -- mein.
  Dein Se -- gen zu uns wen -- de, gib Fried an al -- lem En -- de, gib un -- _ ver -- fälscht __ im Lan -- _ de dein se -- _ lig -- ma -- _ chend Wort, __ _ _ die Teu -- fel mach zu -- schan -- _ den hier und __ an al -- _ lem Ort! __ _ _ Die Teu -- fel mach zu -- schan -- den hier und an al -- lem Ort!
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  Wollst uns das Le -- ben fris -- _ ten durch dein all -- mäch -- tig Hand,
  er -- halt dein lie -- be Chris -- ten und un -- ser Va -- ter -- land!
}
