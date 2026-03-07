soprano = {
  \clef "treble" \time 12/8 \key f \major
  \autoBeamOff
  \compressEmptyMeasures
  R1.*12 | % 1 à 12
  r2. f' | % 13
  c'' a'  | % 14
  f' c'' | % 15
  d'' d''  | % 16
  c''1.~ | % 17
  c''4 r8 r4. r2.  | % 18
  R1.*5 | % 19 à 23
  r2. c'' | % 24
  d'' e''  | % 25
  f'' e'' | % 26
  d'' d''  | % 27
  c''1. ~ | % 28
  c''4 r8 r4. r2. | % 29

  \barNumberCheck #30
  R1.*3 | % 30 à 32
  r2. a'  | % 33
  d'' c'' | % 34
  bes' a' | % 35
  g'1.  | % 36
  f'~ | % 37
  f'4 r8 r4. r2. | % 38
  R1.*11 | % 39 à 49

  \barNumberCheck #50
  r2. f' | % 50
  c'' a'  | % 51
  f' c'' | % 52
  d'' d''  | % 53
  c''1. ~ | % 54
  c''4 r8 r4. r2. | % 55
  R1.*5 | % 56 à 60
  r2. c'' | % 61
  d'' e''  | % 62
  f'' e'' | % 63
  d'' d''  | % 64
  c''1. ~ | % 65
  c''4 r8 r4. r2.  | % 66
  R1.*3 | % 67 à 69

  \barNumberCheck #70
  r2. a' | % 70
  d'' c'' | % 71
  bes' a'  | % 72
  g'1. | % 73
  f'~ | % 74
  f'4 r8 r4. r2.  | % 75
  R1.*7 | % 76 à 83
  c''2. a' | % 84
  R1. | % 85
  c''2. a'  | % 86
  R1.*2 | % 87 à 88
  a'2. a'  | % 89

  \barNumberCheck #90
  g'2. g' | % 90
  a' a' | % 91
  g' a'  | % 92
  bes' a' | % 93
  g'1. | % 94
  f' ~  | % 95
  f'4 r8 r4. r2. | % 96
  R1.*4 | % 97 à 100
  f''2. e''  | % 101
  d'' c'' | % 102
  bes' a'  | % 103
  g'1. | % 104
  f'~ | % 105
  f'4 r8 r4. r2.  | % 106
  R1.*14  \bar "|." | % 107 à 119
}

sopranoparoles = \lyricmode {
  \set includeGraceNotes = ##t
  Wie schön leuch -- tet der Mor -- gen -- stern. __ voll Gnad' und Wahr --
  heit vor dem Herrn, __ die sü -- ße Wur -- zel Jes -- se! __ Du
  Sohn Da -- vids aus Ja -- kobs Stamm, __ mein Kö -- nig und mein Bräu --
  ti -- gam, __ hast mir mein Herz be ses -- sen, __ lieb -- lich,
  freund -- lich, schön und herr -- lich, groß und ehr -- lich, reich von
  Ga -- ben, __ hoch und sehr präch -- tig er -- ha -- ben. __
}

% \score {
%   \new StaffGroup <<
%       \new Staff = "P6" <<
%         \context Staff <<
%          \context Voice = "soprano" {
%             \soprano
%           }
%           \new Lyrics \lyricsto "soprano" {
%             \sopranoparoles
%           }
%         >>
%       >>
%   >>
% }