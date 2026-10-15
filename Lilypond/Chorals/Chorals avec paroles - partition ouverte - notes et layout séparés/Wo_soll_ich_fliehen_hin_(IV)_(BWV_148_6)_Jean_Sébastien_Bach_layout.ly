\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Wo_soll_ich_fliehen_hin_(IV)_(BWV_148_6)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Wo soll ich fliehen hin (IV)" \small " (v. 11)"}}
  subtitle = "tiré de la cantate : Bringet dem Herrn Ehre seines Namens"
  poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 148/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key fis \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \versoOneLyrics
    \new Lyrics \lyricsto "soprano" \versoTwoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key fis \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key fis \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key fis \minor
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
