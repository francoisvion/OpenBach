\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Jesu,_der_du_meine_Seele_(III)_(BWV_353)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = "Jesu, der du meine Seele (III)"
  poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 353"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key g \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \minor
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
