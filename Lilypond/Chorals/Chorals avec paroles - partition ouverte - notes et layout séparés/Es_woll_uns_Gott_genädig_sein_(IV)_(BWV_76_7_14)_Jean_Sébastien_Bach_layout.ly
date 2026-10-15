\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Es_woll_uns_Gott_genädig_sein_(IV)_(BWV_76_7_14)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Es woll uns Gott genädig sein (IV)" \small " (Mvt 7 & 14)"}}
  subtitle = "tiré de la cantate : Die Himmel erzählen die Ehre Gottes"
  poet = "Auteur : Martin Luther (1483-1546), d'après le Psaume 67"
  opus = "BWV 76/7+14"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Lyrics \lyricsto "soprano" \sopranoLyricsThree
    \new Lyrics \lyricsto "soprano" \sopranoLyricsFour
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key c \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Lyrics \lyricsto "alto" \altoLyricsThree
    \new Lyrics \lyricsto "alto" \altoLyricsFour
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key c \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Lyrics \lyricsto "tenor" \tenorLyricsThree
    \new Lyrics \lyricsto "tenor" \tenorLyricsFour
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key c \major
      \time 4/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyricsOne
    \new Lyrics \lyricsto "bass" \bassLyricsTwo
    \new Lyrics \lyricsto "bass" \bassLyricsThree
    \new Lyrics \lyricsto "bass" \bassLyricsFour
  >>
}

\layout {
  \context {
    \Score
    \numericTimeSignature
  }
}
\midi {}
