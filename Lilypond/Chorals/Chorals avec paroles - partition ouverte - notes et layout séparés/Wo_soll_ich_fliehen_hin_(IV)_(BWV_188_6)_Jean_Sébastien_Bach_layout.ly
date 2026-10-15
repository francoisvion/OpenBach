\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Wo_soll_ich_fliehen_hin_(IV)_(BWV_188_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Wo soll ich fliehen hin (IV)" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Ich habe meine Zuversicht"
  poet = "Auteur : anonyme (avant 1603, hymnaire de Lübeck)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 188/6"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key a \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key a \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key a \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key a \minor
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
