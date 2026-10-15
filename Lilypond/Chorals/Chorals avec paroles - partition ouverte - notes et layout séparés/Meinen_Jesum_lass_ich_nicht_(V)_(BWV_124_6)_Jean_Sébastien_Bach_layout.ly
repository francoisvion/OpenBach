\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Meinen_Jesum_lass_ich_nicht_(V)_(BWV_124_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Meinen Jesum lass ich nicht (V)" \small " (v. 6)"}}
  subtitle = "tiré de la cantate : Meinen Jesum lass ich nicht"
  poet = "Auteur : Christian Keymann (1658)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 124/6"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key e \major
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key e \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key e \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key e \major
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
