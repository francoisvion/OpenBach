\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "O_Traurigkeit,_o_Herzeleid!_(II)_(pas _de_BWV)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = "O Traurigkeit, o Herzeleid! (II)m"
  subtitle = \markup{"tiré de la Passion selon saint Marc "\small "(parodie musicale)"}
  opus = "pas de BWV"
  poet = "Auteur : Friedrich von Spee (1591-1635)"
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