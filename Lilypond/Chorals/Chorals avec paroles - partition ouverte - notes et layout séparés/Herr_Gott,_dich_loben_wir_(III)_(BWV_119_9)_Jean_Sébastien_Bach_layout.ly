\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Herr_Gott,_dich_loben_wir_(III)_(BWV_119_9)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Herr Gott, dich loben wir (III)" \small " (Hilf deinem Volk)"}}
  subtitle = "tiré de la cantate : Preise, Jerusalem, den Herrn"
  poet = "Auteur : Martin Luther (1529), d'après le Te Deum laudamus"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 119/9"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key c \major
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key c \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key c \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key c \major
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
