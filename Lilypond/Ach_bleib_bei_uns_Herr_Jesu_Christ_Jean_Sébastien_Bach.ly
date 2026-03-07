\version "2.24.4"

\language "français"

\header {
  title = "Ach bleib bei uns, Herr Jesu Christ"
  opus = ""
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

global = {
  \time 4/4
  \key la \major
}

soprano = \relative do'' {
  \global
  \partial 4 dod4 dod8 [ré] mi4 dod la si dod ré \fermata dod si la la4. (si8 dod4) dod si8 (la) si4
  la2. \fermata dod4 si dod la fad sold la si \fermata dod la la la4. (si8 dod4) dod si8 la si4 la2. \fermata
  \fine
}

alto = \relative do'' {
  \global
  \partial 4 la4 la si la la sol8 fad mi4 fad mi mi8 ré dod4 fad2 (mi4) mi mi4. ré8 dod2.
  la'4 sold sold fad8 mi réd4 mi4. réd8 mi4 mid dod fad mi (fad8 sold la4) mi mi4. ré8 dod2.
  
}

tenor = \relative do' {
  \global
  \partial 4 mi4 mi mi mi mi8 ré ré4 la la la sold la ré2 (dod8 si la4) la sold mi2. mi'4 mi8 ré
  dod4 dod si si la sol sol la ré dod8 (ré dod si la4) la la sold mi2.
  
}

bass = \relative do {
  \global
  \partial 4 la4 la' sold la fad sol la ré, \fermata la mi' fad8 mi ré (mi fad sold la4) dod,8 ré mi4 mi
  la,2. la4 mi' mid fad si8 la sold4 fad mi \fermata dod fad8 mi fad sold la (si la sold fad4) dod8 ré mi4
  mi la,2. \fermata \fine
}

verseOne = \lyricmode {
  Ach bleib _ bei uns, Herr Je -- su Christ,
  weil es nun A -- bend wor -- den ist,
  dein göt -- tlich Wort, das hel -- le Licht,
  laß ja bei uns aus -- lö - schen nicht!
}


\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A}
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B}
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
