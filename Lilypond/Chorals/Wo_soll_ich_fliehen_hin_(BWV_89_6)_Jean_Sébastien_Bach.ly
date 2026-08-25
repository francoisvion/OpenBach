\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
  title = \markup{\concat{"Wo soll ich fliehen hin" \small " (v. 7)"}}
  subtitle = "tiré de la cantate : Was soll ich aus dir machen, Ephraim?"
  poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 89/6"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' a' bes' c''
          d''2.\fermata d''4
          d'' c'' bes' c''
          a'2.\fermata a'4
          bes' c'' d'' d''
          c''2 d''4\fermata
          d''
          bes' c'' d'' d''
          c''2 bes'4\fermata d''
          f'' d'' d'' d''
          c''2 c''4\fermata
          c''
          d'' c'' bes' c''8 [bes']
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' d' d' g'
          fis'2.\fermata fis'4
          g' g'8 [fis'] g'4 a'
          fis'2.\fermata fis'4
          g' a' bes' bes'
          bes' a' bes'\fermata
          a'
          g' a'8 [g'] f'4 f'
          g' f' f'\fermata bes'
          c'' bes' a' g'
          g' f'8 [e'] f'4\fermata
          g'
          fis' fis' g' g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mir man -- gelt zwar sehr viel,
      doch, was ich ha -- ben will,
      ist al -- les mir zu gu -- te,
      er -- langt mit dei -- nem Blu -- te,
      da -- mit ich ü -- ber -- win -- de
      Tod, Teu -- fel, Höll und Sün -- de.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          bes a g8 [bes] ees'4
          a2.\fermata a4
          bes c' d' ees'
          d'2.\fermata d'4
          d' f' f' g'
          g' f' f'\fermata
          d'
          d' f' bes bes
          bes a d'\fermata f'
          f' f'8 [g'] a' [a] bes4
          bes a8 [g] a4\fermata
          g
          a d' d' c'8 [d']
          ees'4 d'8 [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g fis g ees
          d2.\fermata c4
          bes, a, g, c
          d2.\fermata d4
          g f bes8 [a] g [f]
          ees4 f bes,\fermata
          fis,
          g,8 [g] f [ees] d [c] bes, [f]
          ees [c] f4 bes,\fermata bes
          a bes fis g
          e c f\fermata
          ees
          d8 [c] bes, [a,] g, [f] ees [d]
          c4 d g,\fermata \fine
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
