\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Freu_dich_sehr,_o_meine_Seele_(II)_(BWV_70_7)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Freu dich sehr, o meine Seele (II)" \small " (v. 10)"}}
  subtitle = "tiré de la cantate : Wachet! betet! betet! Wachet!"
  poet = "Auteur : Anonyme (1620)"
  opus = "BWV 70/7"
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
      \time 3/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \major
      \time 3/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \major
      \time 3/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \major
      \time 3/4
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
