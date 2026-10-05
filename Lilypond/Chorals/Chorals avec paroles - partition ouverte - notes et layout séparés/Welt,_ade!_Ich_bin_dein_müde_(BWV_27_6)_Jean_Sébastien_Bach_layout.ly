\version "2.27.1"


\include "Welt,_ade!_Ich_bin_dein_müde_(BWV_27_6)_Jean_Sébastien_Bach_notes.ily"

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
 title = "Welt, ade! Ich bin dein müde"
 subtitle = "tiré de la cantate : Wer weiß, wie nahe mir mein Ende"
  opus = "BWV 27/6"
  poet = "Auteur : Johann Georg Albinus (1624-1679)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S I" }
    {
      \clef treble
      \key bes \lydian
      \time 4/4
      \new Voice = "soprano1" \sopranoOneMusic
    }
    \new Lyrics \lyricsto "soprano1" \sopranoOneLyrics
    \new Staff \with { \autoBeamOff instrumentName = "S II" }
    {
      \clef treble
      \key bes \lydian
      \time 4/4
      \new Voice = "soprano2" \sopranoTwoMusic
    }
    \new Lyrics \lyricsto "soprano2" \sopranoTwoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key bes \lydian
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyrics
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key bes \lydian
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyrics
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key bes \lydian
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
