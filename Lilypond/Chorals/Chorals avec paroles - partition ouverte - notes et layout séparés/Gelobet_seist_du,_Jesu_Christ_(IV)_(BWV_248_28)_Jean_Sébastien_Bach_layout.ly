\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Gelobet_seist_du,_Jesu_Christ_(IV)_(BWV_248_28)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Gelobet seist du, Jesu Christ (IV)" \small " (v. 7)"}}
  subtitle = "tiré de l'Oratorio de Noël : Das hat er alles uns getan"
  poet = "Auteur : Martin Luther (1524)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 248/28"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key d \major
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key d \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key d \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key d \major
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
