\version "2.27.3"

\include "_mise_en_page_henle.ily"

\include "Durch_Adams_Fall_ist_ganz_verderbt_[de]_(BWV_18_5)_Jean_Sébastien_Bach_notes.ily"

\header {
  title = \markup{\concat{"Durch Adams Fall ist ganz verderbt" \small " (v. 8)"}}
  subtitle = "tiré de la cantate : Gleichwie der Regen und Schnee vom Himmel fällt "
  poet = "Auteur : Lazarus Spengler (1479-1534)"
  opus = "BWV 18/5"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key c \dorian
      \time 4/4
      \new Voice = "soprano" \transpose c bes, { \sopranoMusic }
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key c \dorian
      \time 4/4
      \new Voice = "alto" \transpose c bes, { \altoMusic }
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key c \dorian
      \time 4/4
      \new Voice = "tenor" \transpose c bes, { \tenorMusic }
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key c \dorian
      \time 4/4
      \new Voice = "bass" \transpose c bes, { \bassMusic }
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
