\version "2.27.1"


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
 title = "Wo Gott zum Haus nicht gibt sein Gunst"
 poet = "Auteur : Johann Kolros (v.1487-1558)"
  opus = "BWV 438"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  f'4
          c'' c''8 [bes'] a'4 g'
          a' b' c''\fermata c''
          a' c'' bes' c''
          a' g' f'\fermata c''
          d'' d'' a' c''
          bes' bes' a'\fermata f''
          e'' d'' c''4. d''8
          bes' [a'] g'4 f'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          f'8 [g'] a' g'4 f' e'8
          f' [e'] d'4 e'\fermata g'~
          g'8 [f'] g' a'4 g'16 [f'] g'4~
          g'8 f'4 e'8 c'4\fermata f'
          f' f' c'4. a'8~
          a' [g'16 fis'] g'4. fis'8\fermata a'4
          a'8 [g'] f' [g'] a' [g'] f'4
          f'4. e'8 c'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wo Gott zum Haus nicht gibt sein' Gunst,
      so ar -- beit' je -- der Mann um -- sonst:
      wo Gott die Stadt nicht selbst be -- wacht,
      da ist um -- sonst der Wä -- chter Macht.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [bes]
          c' [d'] e'4 c' c'
          c' g g\fermata c'
          c'4. e'8 f' [d'] c'4
          c' c'8 [bes] a4\fermata a
          bes f8 [g] a4 f'8 [ees']
          d'4 d' d'\fermata d'
          c' d'8 [e'] f'4 a
          bes4. c'16 [bes] a4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f8 [g]
          a [bes] c'4 f c
          f g c\fermata e
          f e8 [c] d [g] e [c]
          f4 c f,\fermata f
          bes,8 [c] d [e] f [g] a [fis]
          g [a] bes [c'] d'4\fermata d
          a bes f8 [e] d4
          g c f\fermata \fine
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
