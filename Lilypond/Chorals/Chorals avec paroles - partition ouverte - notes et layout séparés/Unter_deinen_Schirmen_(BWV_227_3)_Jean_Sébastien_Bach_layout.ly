\version "2.27.1"



\include "Unter_deinen_Schirmen_(BWV_227_3)_Jean_Sébastien_Bach_notes.ily"
\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm

  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))
}

\header {
  title = "Unter deinen Schirmen"
  subtitle = "tiré du motet : Jesu, meine Freude"
  poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 227/3"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S I" }
    {
      \clef treble
      \key g \major
      \time 4/4
      \new Voice = "soprano1" \sopranoOneMusic
    }
    \new Lyrics \lyricsto "soprano1" \sopranoOneLyricsOne
    \new Lyrics \lyricsto "soprano1" \sopranoOneLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "S II" }
    {
      \clef treble
      \key g \major
      \time 4/4
      \new Voice = "soprano2" \sopranoTwoMusic
    }
    \new Lyrics \lyricsto "soprano2" \sopranoTwoLyricsOne
    \new Lyrics \lyricsto "soprano2" \sopranoTwoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key g \major
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key g \major
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key g \major
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
