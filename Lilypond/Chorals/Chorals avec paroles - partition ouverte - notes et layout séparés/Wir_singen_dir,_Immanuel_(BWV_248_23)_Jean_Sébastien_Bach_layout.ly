\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Wir_singen_dir,_Immanuel_(BWV_248_23)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Wir singen dir, Immanuel" \small " (v. 2)"}}
  subtitle = "tiré de l'oratorio de Noël, partie n° 2"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 248/23"
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
      \time 12/8
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \major
      \time 12/8
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \major
      \time 12/8
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \major
      \time 12/8
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
