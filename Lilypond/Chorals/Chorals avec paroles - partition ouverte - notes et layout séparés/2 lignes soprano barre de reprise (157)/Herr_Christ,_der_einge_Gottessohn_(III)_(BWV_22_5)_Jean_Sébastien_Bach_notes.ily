sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'" \repeat volta 2 { bes'4
  bes'8 [c''] d''4 c'' bes'
  a'2 g'4 \bar "'" \once \textLengthOn s4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar ""
  s2.  \bar "'" d''4
  ees'' c'' d'' c''
  bes' \bar "'" \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }  }
  s2. \bar "'" bes'8 [c'']
  d''4 d'' ees'' c''
  f'' ees''8 [d''] c''4 \bar "'" \once \textLengthOn s4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }  \bar""
  s2. \bar "'" f''4
  d'' d'' c'' bes'
  a'2 g'4 \bar "'" \once \textLengthOn s4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }  \bar ""
  s2. \bar "'" d''4
  ees'' c'' d'' c''
  bes' \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \fine
}

altoMusic = {
  s2. \repeat volta 2 { f'4
  g'8 [f'] f' [g'] g' [d'] d' [g']
  g'4 fis' g' s4 s2. g'4
  g' f' f'8 [g'] g' [f']
  f'4 \bar "'" s2. }
  s2. \bar "'" f'4
  bes'8 [a'] g'4 g' f'
  f'8 [ees' f' g'] a'4 s4 \bar""
  s2. \bar "'" f'4
  f'8 [g'16 a'] bes'4 bes'8 [a'] a' [g']
  g'4 fis' g' s4
  s2. g'4
  g' f' f'8 [g'] g' [f']
  f'4 s2. \fine
}

tenorMusic = {
  s2. \repeat volta 2 { d'4
  d'8 [c'] bes4 bes8 [a] g [bes]
  c' [d'16 ees'] a8 [d'] d'4 s s2. b4
  c' c' bes4. a8
  d'4 \bar "'" s2. }
  s2. \bar "'" d'4
  d' d' c' c'
  d' c'8 [bes] f'4 s4 \bar""
  s2. \bar "'" a4
  bes bes c'8 [d'] d' [g]
  c' [d'16 ees'] a4 bes s4
  s2. b4
  c' c' bes4. a8
  d'4 s2. \fine
}

bassMusic = {
  s2. \repeat volta 2 { bes8 [a]
  g [a] bes4 e8 [fis] g4
  c d g, s s2. g4
  c'8 [bes] a4 bes4. ees8
  bes,4 \bar "'" s2. } 
  s2. \bar "'"  bes8 [a]
  g [a] bes [g] c' [bes] a4
  d' d8 [ees] f4 s4 \bar""
  s2. \bar "'" f4
  bes8 [a] g [f] e [fis] g4
  c d g, s4
  s2. g4
  c'8 [bes] a4 bes8 [g] ees [f]
  bes,4 s2. \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Er -- töt uns durch dein Gü -- te,
  Er -- weck uns durch dein Gnad;
  wohl hie auf die -- ser Er -- _ den,
  den Sinn und all Be -- geh -- ren
  und G'dan -- ken hab'n zu dir.
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  den al -- ten Men -- schen krän -- ke,
  dass der neu' le -- ben mag
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Er -- töt uns durch dein Gü -- _ te,
  er -- weck uns durch dein Gnad;
  wohl hie auf die -- ser Er -- den,
  den Sinn und all Be -- geh -- _ ren
  und G'dan -- ken hab'n zu dir.
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  den al -- ten Men -- schen krän -- _ ke,
  dass der neu' le -- ben mag
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Er -- töt uns durch dein Gü -- _ te,
  er -- weck uns durch dein Gnad;
  wohl hie auf die -- ser Er -- _ den,
  den Sinn und all Be -- geh -- _ ren
  und G'dan -- ken hab'n zu dir.
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  den al -- ten Men -- schen krän -- _ ke,
  dass der neu' le -- ben mag
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Er -- töt uns durch dein Gü -- _ te,
  er -- weck uns durch dein Gnad;
  wohl hie auf die -- ser Er -- _ den,
  den Sinn und all Be -- geh -- _ ren
  und G'dan -- ken hab'n zu dir.
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  den al -- ten Men -- schen krän -- _ ke,
  dass der neu' le -- ben mag
}
