\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Fröhlich_soll_mein_Herze_springen_(BWV_248_33)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = "Fröhlich soll mein Herze springen"
  subtitle = "tiré de l'Oratorio de Noël, partie n° 6 : Herr, wenn die stolzen Feinde schnauben"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 248/33"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key g \major
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \major
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
