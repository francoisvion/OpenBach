\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "O_Gott,_du_frommer_Gott_(VI)_(BWV_128_5)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"O Gott, du frommer Gott (VI)" \small " (v. 4)"}}
  subtitle = "tiré de la cantate : Auf Christi Himmelfahrt allein"
  poet = "Auteur : Matthäus Avenarius (1673)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 128/5"
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

\paper { }
\layout {
  \context {
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}
