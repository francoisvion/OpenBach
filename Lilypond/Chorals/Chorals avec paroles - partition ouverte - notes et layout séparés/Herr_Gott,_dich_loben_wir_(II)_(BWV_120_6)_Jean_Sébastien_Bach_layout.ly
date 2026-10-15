\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Herr_Gott,_dich_loben_wir_(II)_(BWV_120_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Herr Gott, dich loben wir (II)" \small " (Nun hilf uns, Herr)"}}
  subtitle = "tiré de la cantate : Gott, man lobet dich in der Stille"
  poet = "Auteur : Martin Luther (1529), d'après le Te Deum laudamus"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 120/6"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key b \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key b \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key b \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key b \minor
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
