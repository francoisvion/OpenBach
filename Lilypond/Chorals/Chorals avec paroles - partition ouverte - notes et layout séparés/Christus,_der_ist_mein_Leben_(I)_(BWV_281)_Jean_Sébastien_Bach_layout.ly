\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Christus,_der_ist_mein_Leben_(I)_(BWV_281)_Jean_Sébastien_Bach_notes.ily"

\header { 
  title = "Christus, der ist mein Leben (I)"
  poet = "Geneva 1609"
  opus = "BWV 281"
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
    \new Lyrics \lyricsto "soprano" \sopranoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key f \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key f \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key f \major
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
