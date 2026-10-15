\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "O_Haupt_voll_Blut_und_Wunden_(II)_(BWV_244_54)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"O Haupt voll Blut und Wunden (II)" \small " (v. 1 & 2)"}}
  subtitle = "tiré de la Passion selon saint Matthieu"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/54"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key f \major
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
      \key f \major
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
      \key f \major
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
      \key f \major
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
