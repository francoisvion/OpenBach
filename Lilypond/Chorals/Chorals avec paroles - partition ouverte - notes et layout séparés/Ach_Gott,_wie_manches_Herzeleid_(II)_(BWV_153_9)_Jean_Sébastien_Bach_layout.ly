\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Ach_Gott,_wie_manches_Herzeleid_(II)_(BWV_153_9)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Ach Gott, wie manches Herzeleid (II)" \small " (v. 16 à 18)"}}
  subtitle = "tiré de la cantate : Schau, lieber Gott, wie meine Feind"
  poet = "Auteur : Martin Moller (1547-1606)"
  opus = "BWV 153/9"
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
      \time 3/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Lyrics \lyricsto "soprano" \sopranoLyricsThree
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key c \major
      \time 3/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Lyrics \lyricsto "alto" \altoLyricsThree
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key c \major
      \time 3/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Lyrics \lyricsto "tenor" \tenorLyricsThree
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key c \major
      \time 3/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyricsOne
    \new Lyrics \lyricsto "bass" \bassLyricsTwo
    \new Lyrics \lyricsto "bass" \bassLyricsThree
  >>
}

\layout {
  \context {
    \Score
    \numericTimeSignature
  }
}
\midi {}
