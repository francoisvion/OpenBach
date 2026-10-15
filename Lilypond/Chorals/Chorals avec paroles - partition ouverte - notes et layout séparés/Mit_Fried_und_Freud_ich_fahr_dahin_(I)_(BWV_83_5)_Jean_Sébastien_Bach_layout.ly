\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Mit_Fried_und_Freud_ich_fahr_dahin_(I)_(BWV_83_5)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Mit Fried und Freud ich fahr dahin (I)" \small " (v. 4)"}}
  subtitle = "tiré de la cantate : Erfreute Zeit im neuen Bunde"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 83/5"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key d \dorian
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key d \dorian
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key d \dorian
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key d \dorian
      \time 4/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyrics
  >>
}

\layout {
  \context {
    \Score
    \numericTimeSignature
  }
}
\midi {}
