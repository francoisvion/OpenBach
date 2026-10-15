\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Komm,_Jesu,_komm_(BWV_229_2)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = "Komm, Jesu, komm"
  subtitle = "tiré du motet : Komm, Jesu, komm"
  poet = "Auteur : Paul Thymich (1656-1694)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 229/2"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key g \minor
      \time 3/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \minor
      \time 3/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \minor
      \time 3/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \minor
      \time 3/4
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
