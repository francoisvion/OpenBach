sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'" 
  r4 r b'
  b' ais'8 [gis'] ais'4
  b'2 cis''4
  d'' e'' cis''
  b'2 r4 \bar "'" \once  \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r b'
  cis''2 cis''4
  fis''2 e''4
  e'' d''8 [cis''] d''4
  cis''2 r4 \bar "'" \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r b'
  b' ais' ais'
  ais' b' cis''
  d'' e'' cis''
  b'2 r4 \bar "'" \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r b'
  cis''2 cis''4
  fis''2 e''4
  e'' d''8 [cis''] d''4
  cis''2 r4 \bar "'" \once  \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r fis''
  e'' d''8 [cis''] d''4
  cis'' d'' e''
  d'' cis''8 [b'] cis''4
  b'2 r4 \bar "'" \once  \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r d''
  cis'' b'2
  a'4. gis'8 fis' [gis']
  a' [b'] b'4.\trill a'16 [b']
  cis''2 r4 \bar "'" \once  \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4 r cis''
  d'' e''4. fis''16 [g'']
  g''4 fis''8. e''16 [d''8 cis'']
  b' [e''] cis''4. b'8
  b'2.~
  b'~
  b' \fine
}

altoMusic = {
  s2. \bar "'" r4 r fis'4
  fis' e' g'
  g' fis' g'
  fis' g' e'
  d'2 r4
  s2.
  r4 r fis'
  gis' a' ais'
  b' gis' ais'
  ais' b' gis'
  ais'2 r4
  s2.
  r4 r fis'
  fis' e' g'
  g' fis' g'
  fis' g' e'
  d'2 r4
  s2.
  r4 r fis'
  gis' a' ais'
  b' gis' ais'
  ais' b' gis'
  ais'2 r4
  s2.
  r4 r a'!
  b' a' gis'
  a' b' cis''
  b' ais'8 [gis'] ais'4
  b'2  r4
  s2.
  r4 r gis'
  a'2 gis'4
  fis' eis' fis'~
  fis'8 [gis'] gis'4. a'8
  a'2  r4
  s2.
  r4 r ais'
  b' ais' b'
  b' ais' fis'
  g'4. fis'16 [e'] fis'4
  fis'2.
   r2.
  r \fine
}

tenorMusic = {
  s2. \bar "'" r4 r d'
  d' cis' e'
  e' d'8 [cis'] b [ais]
  b2 ais4
  b2 r4
  s2.
  r4 r d'
  cis'2 fis'4
  fis' b cis'
  fis fis' eis'
  fis'2 r4
  s2.
  r4 r d'
  d' cis' e'
  e' d'8 [cis'] b [ais]
  b2 ais4
  b2 r4
  s2.
  r4 r d'
  cis'2 fis'4
  fis' b cis'
  fis fis' eis'
  fis'2  r4
  s2.
  r4 r cis'
  b2 e'4
  e' fis' g'
  fis' e'8 [d'] e'4
  d'2 r4
  s2.
  r4 r b
  e' fis' cis'
  cis' b cis'
  fis' d' e'
  e'2 r4
  s2.
  r4 r fis'
  fis' g' d'
  d' cis' b
  b2 ais4
  fis2.
  r2.
  r \fine
}

bassMusic = {
  s2. \bar "'" r4 r b4
  cis'2 cis4
  d2 e4
  fis e fis
  b,2 r4
  s2.
  r4 r b
  eis fis e
  d d' cis'
  b4. ais8 b4
  fis2 r4
  s2.
  r4 r b
  cis'2 cis4
  d2 e4
  fis e fis
  b,2 r4
  s2.
  r4 r b
  eis fis e
  d d' cis'
  b b,2
  fis r4
  s2.
  r4 r fis
  gis fis e
  a2 ais4
  b fis2
  g r4
  s2.
  r4 r b
  a dis eis
  fis gis a
  d b, e
  a,2 r4
  s2.
  r4 r fis
  b g e
  e fis b
  g e fis
  b,2. r2.
  r \fine
}

sopranoLyrics = \lyricmode {
  Herr Je -- _ su Christ, du höch -- _ stes Gut,
  du Brunn -- quell al -- ler Gna -- _ _ den,
  Sieh doch, __ _ wie ich __ _ in mei -- _ nem Mut
  mit Schmer -- zen bin be -- la -- _ _ den
  und in mir __ _ hab __ _ der Pfei -- _ le viel,
  die im Ge -- wis -- _ sen oh -- ne __ _ Ziel
  mich ar -- men __ _ Sün -- der __ _ drü -- _ _ cken. __
}

altoLyrics = \lyricmode {
  Herr Je -- _ su Christ, __ _ du höch -- _ stes Gut,
  du Brunn -- _ quell al -- _ ler Gna -- _ _ den,
  Sieh doch, __ _ wie ich __ _ in mei -- _ nem Mut
  mit Schmer -- _ zen bin __ _ be -- la -- _ _ den
  und in mir __ _ hab __ _ der Pfei -- _ le viel,
  die im Ge -- wis -- _ sen __ oh -- ne Ziel
  mich ar -- men __ _ Sün -- der __ _ drü -- _ _ cken.
}

tenorLyrics = \lyricmode {
  Herr Je -- _ su Christ, __ _ du höch -- stes Gut,
  du Brunn -- quell al -- _ ler Gna -- _ _ den,
  Sieh doch, __ _ wie ich __ _ in mei -- nem Mut
  mit Schmer -- zen bin __ _ be -- la -- _ _ den
  und in mir hab __ _ der Pfei -- _ le viel,
  die im __ _ Ge -- wis -- _ sen oh -- ne __ _ Ziel 
  mich ar -- men __ _ Sün -- der __ _ drü -- _ cken.
}

bassLyrics = \lyricmode {
  Herr Je -- su Christ, du höch -- _ stes Gut,
  du Brunn -- _ quell al -- _ ler Gna -- _ _ den,
  Sieh doch, wie ich in mei -- _ nem Mut
  mit Schmer -- _ zen bin __ _ be -- la -- _ den
  und in __ _ mir hab der Pfei -- le viel,
  die im __ _ Ge -- wis -- _ sen oh -- ne __ _ Ziel
  mich ar -- men __ _ Sün -- der __ _ drü -- _ _ cken.
}
