\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Mit_Fried_und_Freud_ich_fahr_dahin_(III)_(BWV_125_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Mit Fried und Freud ich fahr dahin (III)" \small " (v. 4)"}}
  subtitle = "tiré de la cantate : Mit Fried und Freud ich fahr dahin"
  poet = "Auteur : Martin Luther (1524)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 125/6"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key e \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key e \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key e \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key e \minor
      \time 4/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyrics
  >>
}

\paper { }
\layout {
  \context {
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}
