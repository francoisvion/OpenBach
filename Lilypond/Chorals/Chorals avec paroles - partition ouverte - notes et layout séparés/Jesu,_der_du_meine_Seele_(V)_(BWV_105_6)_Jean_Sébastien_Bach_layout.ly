\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Jesu,_der_du_meine_Seele_(V)_(BWV_105_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Jesu, der du meine Seele (V)" \small " (v. 11)"}}
  subtitle = "tiré de la cantate : Herr, gehe nicht ins Gericht mit deinem Knecht"
  poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 105/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key bes \major
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key bes \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key bes \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key bes \major
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
