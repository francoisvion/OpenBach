\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

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
  title = "Es bringt das rechte Jubeljahr"
  subtitle = "tiré de la cantate : Das neugeborne Kindelein"
 poet = "Auteur : Cyriakus Schneegaß (1546-1597)"
  opus = "BWV 122/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 g' g'
          d''4. c''8 bes'4
          d'' c'' bes'
          a'2.\fermata
          d''4 d'' e''
          f''2 e''4
          d'' cis''2
          d''2.\fermata
          d''4 c'' a'
          bes'4. c''8 d''4
          c'' bes' a'
          bes'2.\fermata
          f''4 g'' f''
          d''4. c''8 bes'4
          a' g' fis'
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          d'4 g'8 [a'] bes'4
          a'2 g'4
          g' fis' g'
          fis'2.\fermata
          g'8 [a'] bes'4 bes'
          a'2 g'4
          f' e'2
          fis'2.\fermata
          g'4 ees' d'
          d' g' f'
          g' f' f'
          f'2.\fermata
          bes'4 bes' a'
          a'2 g'4
          ees' d' d'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Es bringt das rech - - te Ju -- bel -- jahr,
      was trau -- ern wir denn im -- mer -- dar?
      Frisch auf! jetzt ist __ _ _ es Sin -- gens -- zeit,
      das Je -- su -- lein __ _ _ wendt al -- les Leid.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes4 d' d'
          d'2 d'8 [c']
          bes4 c' d'
          d'2.\fermata
          d'4 g' g'
          f' b cis'
          d' a2
          a2.\fermata
          bes4 a a
          g ees' d'
          ees' d' c'
          d'2.\fermata
          d'4 c' c'
          a d' d'
          c' bes a
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g8 [a] bes4 a8 [g]
          fis2 g4
          bes, a, g,
          d2.\fermata
          bes4 a8 [g] cis4
          d2 e4
          f8 [g] a4 a,
          d,2.\fermata
          g,4 g fis
          g4. a8 bes4
          ees f f,
          bes,2.\fermata
          bes4 ees f
          fis2 g4
          c d d,
          g,2.\fermata \fine
        }
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
