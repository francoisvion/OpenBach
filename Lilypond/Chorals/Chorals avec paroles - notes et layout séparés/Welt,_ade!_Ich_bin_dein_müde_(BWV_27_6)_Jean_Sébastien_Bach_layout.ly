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
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano1" \sopranoOneMusic
        
        \new Voice = "soprano2" \sopranoTwoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano1" \sopranoOneLyrics

    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano2" \sopranoTwoLyrics

    \new Lyrics \lyricsto "alto" \altoLyrics
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
    \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" \tenorLyrics

        \new Voice = "bass" \bassMusic
        
    \new Lyrics \lyricsto "bass" \bassLyrics
    
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
