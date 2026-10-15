\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Helft_mir_Gotts_Güte_preisen_(III)_(BWV_171_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Helft mir Gotts Güte preisen (III)" \small " (v. 6)"}}
  subtitle = "tiré de la cantate : Gott, wie dein Name, so ist auch dein Ruhm"
  poet = "Auteur : Paul Eber (1511-1569)"
  opus = "BWV 171/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
      \partial 4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key d \major
      \time 4/4
      \partial 4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key d \major
      \time 4/4
      \partial 4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key d \major
      \time 4/4
      \partial 4
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
