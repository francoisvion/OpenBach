\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Ich_armer_Mensch,_ich_armer_Sünder_(BWV_179_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Ich armer Mensch, ich armer Sünder" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Siehe zu, dass deine Gottesfurcht nicht Heuchelei sei"
  poet = "Auteur : Christoph Tietze (1641-1703)"
  opus = "BWV 179/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key a \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key a \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key a \minor
      \time 4/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyricsOne
    \new Lyrics \lyricsto "bass" \bassLyricsTwo
  >>
}

\layout {
  \context {
    \Score
    \numericTimeSignature
  }
}
\midi {}
