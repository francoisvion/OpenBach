sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \repeat volta 2 {
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'" d'4
  g' a' b' e''
  d''4. c''8 b'4 \bar "'" s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r e'' d''4. c''8
  b'4 b' a'2
  g'4  \bar "'" \once \textLengthOn s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } s2 }
  s1 \bar"'"
  r4 d'' e'' e''
  a' a' d'' d''
  g' b' a' g'
  fis' fis' e'2
  d'4 \bar "'" \once \textLengthOn s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } s2 \bar "'"
  r4 d'' e'' d''
  c'' b' a'2
  g'4 \bar "'" \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \fine
}

altoMusic = {
  \repeat volta 2 {
  s2. b4
  e'4. fis'8 g'4 c'
  d'16 [e' d' e'] fis'8 [a'] g'4 s
  r g'8 [a'] b' g'4 fis'8
  g'4 g' g' fis'
  g'
  s4 s2 } s1
  r4 g' g' g'
  fis' fis' f' f'
  e' d'8 [g'] g' [fis'] fis' [e']
  e'16 [g' fis' e'] d'4 d' cis'
  d' s s2
  r4 a' b'4. fis'8
  g'4. d'8 e'4 d'
  d' s2. \fine
}

tenorMusic = {
  \repeat volta 2 {
  s2. g8 [a]
  b4 a g g
  g8 [d] d'4 d' s
  r g g8 [b] e' [a]
  g [a] b [c'16 d'] e'4 d'8 [c']
  b4
  s s2 } s1
  r4 d' c' b8 [a]
  a4 d' g8 [a] b [c'16 d']
  c'4 b e'8 [d'] d' [a]
  a4 a a2
  a4 s s2
  r4 fis' b8 [c'] d'4
  g8 [a] b4 c'8. [b16] a4
  b s2. \fine
}

bassMusic = {
  \repeat volta 2 {
  s2. g8 [fis]
  e [d] c [d] g4 r8 c'
  b16 [c' b c'] d'8 [d] g4 s
  r e8 [fis] g4 c8 [d]
  e4. d8 cis4 d
  g, s4 s2 }
  s1
  r4 g c8 [d] e [cis]
  d [e] d [c] b, [c] d [b,]
  c4 g8 [e] cis [d] b, [cis]
  d [a] fis [d] a,2
  d4 s s2
  r4 d g8 [a] b4
  e8 [fis] g4 c d
  g, s2. \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan;
  muss ich den Kelch gleich schme -- cken,
  weil doch zu -- letzt ich werd er -- götzt mit sü -- ßem Trost im Her -- zen;
  da wei -- chen al -- le Schmer -- zen.
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  der bit -- ter ist nach mei -- nem Wahn,
  lass ich mich doch nicht schre -- cken,
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan;
  muss ich __ _ den Kelch gleich schme -- _ cken,
  weil doch zu -- letzt ich werd er -- götzt mit sü -- ßem Trost im Her -- _ zen;
  da wei -- chen al -- le Schmer -- _ zen.
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  der bit -- ter ist nach mei -- nem Wahn,
  lass ich __ _ mich doch nicht schre -- _ cken,
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan;
  muss ich den Kelch gleich schme -- _ cken,
  weil doch zu -- letzt ich werd er -- götzt mit sü -- ßem Trost im Her -- zen;
  da wei -- chen al -- le Schmer -- _ zen.
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  der bit -- ter ist nach mei -- nem Wahn,
  lass ich mich doch nicht schre -- _ cken,
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Was Gott tut, das ist wohl -- ge -- tan;
  muss ich den Kelch gleich schme -- _ cken,
  weil doch zu -- letzt ich werd er -- götzt mit sü -- ßem Trost im Her -- zen;
  da wei -- chen al -- le Schmer -- _ zen.
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  der bit -- ter ist nach mei -- nem Wahn,
  lass ich mich doch nicht schre -- _ cken,
}
