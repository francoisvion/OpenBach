sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
\repeat volta 2 {
  \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 b' c'' b'
  a' b'8 [c''] d''4 e''
  d'' c'' b' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'" d''4
  c'' b' c'' a'
  g' f' e'} r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'" g'4
  f' e' d' e'
  c' d' e' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'"  b'4
  c'' b'8 [a'] gis'4 a'8 [b']
  c''4 d'' b' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'" e''4
  d'' b'8 [c''] d''4 a'
  g' f' e' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'" d'
  g' a' b' d''
  \voices soprano, 2
  <<
  {\stemUp b'2  a'4}
  \\
  {\shiftOn b'4 b'  a'}
  >>
  \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2 r4 \bar "'" c''
  b' a'
  g' e' g' f'
  e'2~ e'1~
  e' \fine
}

altoMusic = {
\repeat volta 2 {
  s1
  r4 gis' a' f'8 [e']
  e' [f'] g' [a'] b'4 c''8 [e']
  gis'4 a' dis' r
  r2 r4 gis'4
  e'8 [f'] g'4 g'4. f'8
  e'4. d'16 [c'] b4 } r
  r2 r4 e'4
  a b8 [c'] d'4. c'16 [b]
  a4 b c' r
  r2 r4 e'4
  a' fis' e'8 [f'] e' [d']
  c' [d'16 e'] f'4 e' r
  r2 r4 g'8 [c'']
  a'4 b' g' a'
  cis' d' a r
  r2 r4 fis'
  b e'8 [fis'] d' [e'] a [a']
  a' [g'16 fis'] g'4 fis' r
  r2 r4 a'4
  g'8 [e'] c' [d'] d' g'4 f'8
  e'4 f' b8 b c' d'
  e' e'4 d'8 c' [b] c' [d']
  e'2 e' \fine
}

tenorMusic = {
\repeat volta 2 {
  s1
  r4 e' e' d'
  c' d'8 [e'] f'4 e'
  e'8 [b] c' [a] fis4 r
  r2 r4 b4
  c' d' c'4. a8
  a2 e'4 } r
  r2 r4 a8 [e]
  f [d'] b [a] a [d'] b [e'~]
  e' d'16 [c'] b8 [d'] g4 r
  r2 r4 e'4
  e'8 [dis'16 e'] fis'8 [b] b [d'] c' [b]
  a [c'] b [a] e'4 r
  r2 r4 c'4
  d' d'8 [c'] b4 cis'8 [d']
  e'4 a8 [d'] cis'4 r
  r2 r4 a
  e'4. d'16 [c'] b8 [g] a4
  b8 [cis'16 d'] e'4 a r
  r2 r4 e'4
  e'4. d'8 g' [b] c' [d']
  e'4 a b8 gis a b
  c' a e'4. e'8 c' [a]
  b2 b \fine
}

bassMusic = {
\repeat volta 2 {
  s1
  r4 e a d8 [e]
  a, [g] f [e] d [g] c4
  b, a, b, r
  r2 r4 b4
  a g8 [f] e4 f
  cis d e } r
  r2 r4 cis4
  d8 [b] gis [a] f4 e
  f8 [e] d4 c r
  r2 r4 gis4
  a dis8 [b,] e4 fis8 [gis]
  a4 d e r
  r2 r4 c'8 [a]
  fis4 g g4. f8
  e4 f8 [g] a4 r
  r2 r4 d
  e8 [d] c [d] g [e] fis [d]
  g [e] cis4 d r
  r2 r4 a4
  e8 [c] f4 b,8 [g,] c4
  cis d~ d8 d' [c' b]
  a4 gis a a,
  e1 \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  \tweak X-offset #-4.0 "7. Es" woll uns Gott ge -- nä -- _ _ dig sein
  und sei -- nen Se -- gen ge -- _ ben;
  dass wir er -- ken -- nen sei -- ne Werk,
  und was ihm lieb auf Er -- _ den,
  und Je -- sus Chris -- tus' Heil und Stärk
  be -- kannt den Hei -- den wer -- den
  und sie zu Gott be -- keh -- _ ren! __
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  sein Ant -- litz uns mit hel -- _ _ lem Schein
  er -- leucht zum ew -- gen Le -- _ ben,
  Uns seg -- ne Va -- ter und der Sohn,
  uns seg -- ne Gott, der heil -- ge Geist,
  dem al -- le Welt die Eh -- re tu,
  vor ihm sich fürch -- te \set associatedVoice = "2" al -- ler  \set associatedVoice = "soprano" meist
  und sprech von Her -- zen: A -- _ men! __
}

sopranoLyricsThree = \lyricmode {\set stanza = 3
  \tweak X-offset #-5.0 "14. Es" dan -- ke, Gott, und lo -- _ _ be dich
  das Volk in gu -- ten Ta -- _ ten;
}

sopranoLyricsFour = \lyricmode {\set stanza = 4
  das Land bringt Frucht und bes -- _ _ sert sich,
  dein Wort ist wohl -- ge -- ra -- _ ten.
}

altoLyricsOne = \lyricmode {\set stanza = 1
  \tweak X-offset #-4.0 "7. Es" woll uns Gott ge -- nä -- _ _ dig sein
  und sei -- nen Se -- gen ge -- _ ben;
  dass wir er -- ken -- nen sei -- ne Werk,
  und was ihm lieb auf Er -- _ den,
  und Je -- sus Chris -- tus' Heil und Stärk
  be -- kannt den Hei -- den wer -- _ den
  und sie zu Gott __ _ be -- keh -- _ ren, und sie zu Gott sie zu Gott be -- keh -- ren!
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  sein Ant -- litz uns mit hel -- _ _ lem Schein
  er -- leucht zum ew -- gen Le -- _ ben,
  Uns seg -- ne Va -- ter und der Sohn,
  uns seg -- ne Gott, der heil -- ge Geist,
  dem al -- le Welt die Eh -- re tu,
  vor ihm sich fürch -- te al -- ler meist
  und sprech von Her -- _ zen: A -- _ men, und sprech von Her -- zen, von Her -- zen: A -- men!
}

altoLyricsThree = \lyricmode {\set stanza = 3
  \tweak X-offset #-5.0 "14. Es" dan -- ke, Gott, und lo -- _ _ be dich
  das Volk in gu -- ten Ta -- _ ten;
}

altoLyricsFour = \lyricmode {\set stanza = 4
  das Land bringt Frucht und bes -- _ _ sert sich,
  dein Wort ist wohl -- ge -- ra -- _ ten.
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  \tweak X-offset #-4.0 "7. Es" woll uns Gott ge -- nä -- _ _ dig sein
  und sei -- nen Se -- gen ge -- ben;
  dass wir er -- ken -- nen sei -- ne Werk,
  und was ihm lieb auf Er -- ge den,
  und Je -- sus Chris -- tus' Heil und Stärk
  be -- kannt den Hei -- den wer -- _ den
  und sie zu Gott be -- keh -- _ ren, und sie zu Gott sie zu Gott be -- keh -- ren!
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  sein Ant -- litz uns mit hel -- _ _ lem Schein
  er -- leucht zum ew -- gen Le -- ben,
  Uns seg -- ne Va -- ter und der Sohn,
  uns seg -- ne Gott, der heil -- ge Geist,
  dem al -- le Welt die Eh -- re tu,
  vor ihm sich fürch -- te al -- ler meist
  und sprech von Her -- zen: A -- _ men, und sprech von Her -- zen, von Her -- zen: A -- men!
}

tenorLyricsThree = \lyricmode {\set stanza = 3
  \tweak X-offset #-5.0 "14. Es" dan -- ke, Gott, und lo -- _ _ be dich
  das Volk in gu -- ten Ta -- ten;
}

tenorLyricsFour = \lyricmode {\set stanza = 4
  das Land bringt Frucht und bes -- _ _ sert sich,
  dein Wort ist wohl -- ge -- ra -- ten.
}

bassLyricsOne = \lyricmode {\set stanza = 1
  \tweak X-offset #-4.0 "7. Es" woll uns Gott ge -- nä -- _ _ dig sein
  und sei -- nen Se -- gen ge -- _ ben;
  dass wir er -- ken -- nen sei -- ne Werk,
  und was ihm lieb auf Er -- _ den,
  und Je -- sus Chris -- tus' Heil und Stärk
  be -- kannt den Hei -- den wer -- _ den
  und sie zu Gott be -- keh -- _ _ _ _ _ _ ren!
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  sein Ant -- litz uns mit hel -- _ _ lem Schein
  er -- leucht zum ew -- gen Le -- _ ben,
  Uns seg -- ne Va -- ter und der Sohn,
  uns seg -- ne Gott, der heil -- ge Geist,
  dem al -- le Welt die Eh -- re tu,
  vor ihm sich fürch -- te al -- ler meist
  und sprech von Her -- zen: A -- _ _ _ _ _ _ men!
}

bassLyricsThree = \lyricmode {\set stanza = 3
  \tweak X-offset #-5.0 "14. Es" dan -- ke, Gott, und lo -- _ _ be dich
  das Volk in gu -- ten Ta -- _ ten;
}

bassLyricsFour = \lyricmode {\set stanza = 4
  das Land bringt Frucht und bes -- _ _ sert sich,
  dein Wort ist wohl -- ge -- ra -- _ ten.
}
