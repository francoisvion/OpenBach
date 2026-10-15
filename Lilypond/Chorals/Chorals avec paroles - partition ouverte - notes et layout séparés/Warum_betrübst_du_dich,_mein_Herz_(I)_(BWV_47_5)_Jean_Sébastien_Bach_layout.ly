\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Warum_betrübst_du_dich,_mein_Herz_(I)_(BWV_47_5)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Warum betrübst du dich, mein Herz (I)" \small " (v. 11)"}}
  subtitle = "tiré de la cantate : Wer sich selbst erhöhet, der soll erniedriget werden"
  poet = "Anonyme"
  opus = "BWV 47/5"
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
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \minor
      \time 4/4
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
