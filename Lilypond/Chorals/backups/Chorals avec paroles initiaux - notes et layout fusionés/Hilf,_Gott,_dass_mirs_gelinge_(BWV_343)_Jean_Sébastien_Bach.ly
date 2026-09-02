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
 title = "Hilf, Gott, dass mirs gelinge"
 poet = "Auteur : Heinrich Müller (1631-1675)"
  opus = "BWV 343"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          a'2 g'4
          f'2 d'4
          f'2.
          g'2\fermata a'4
          bes'2 d''4
          c''2 bes'4
          a'2.
          g'2\fermata }
          \partial 4  c''4
          c''2 c''4
          d''2 c''4
          bes' a' g'
          f'2\fermata f'4
          bes'2 a'4
          bes'2 c''4
           d''2 c''4
          bes'4. a'8 g'4
          fis'2\fermata a'4
          bes'2 d''4
          c''2 bes'4
          a'2.
          g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [e']
          f'2~ f'8 [e']
          d'4 a bes
          c'8 [ees'] d' [c'] b4
          e'2\fermata e'8 [fis']
          g' [fis'] g'2~
          g'4. fis'8 g'4
          g'2 fis'4
          d'2\fermata }
          \partial 4  g'4~
          g'8 f'4 e'8 f'4~
          f'8 [e'] f' [g'] a' [g']
          f'2~ f'8 [e']
          c'2\fermata d'4
          g'2 a'4~
          a'8 [d'] g'4 a'
          bes'8 [a'] g'4. fis'8
          g'4 d'4. c'8
          d'2\fermata fis'4
          g'2 f'4
          e'8 [d'] e' [fis'] g'4
          g'2 fis'4
          d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Hilf, Gott, dass mir's ge -- lin -- gen,
      du ed -- ler Schö -- pfer mein, __ _
      daß ich mag fröh -- lich he - ben an,
      von dei -- nem Wort zu sin - - - - gen,
      Herr, du wollst mir bei -- stahn. __ _    }
    
    \new Lyrics \lyricsto "alto" {\set stanza = 1
      \repeat unfold 10 {\skip1 }
      ed - - ler Schö -- pfer mein,
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Die Wort' in Reim' zu brin -- gen,
      Zu Lob dem Na -- men dein, __ _
    }

    \new Lyrics \lyricsto "alto" {\set stanza = 2
      \repeat unfold 10 {\skip1 }
      Lob _ _ dem Na -- men dein,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          c'2 c'8. [bes16]
          a4 f4. g8
          a2 g8 [f]
          c'2\fermata c'4
          d'4. c'8 bes [a]
          g [fis] g [a] d'4
          ees' d'8 [a] d' [c']
          bes2\fermata }
          \partial 4  c'8 [bes]
          a4 bes c'~
          c' bes c'
          d'2 g8 [c']
          a2\fermata bes8 [c']
          d' [bes] ees'4. d'8
          d'2 ees'4
          f' ees'8 [d'] ees' [c']
          d' [ees'] f' [f] g4
          a2\fermata d'4
          d'8 [bes] ees'4 d'8 [bes]
          g4 c'8 [a] bes [d']
          ees' [d'] c' [bes] c' [a]
          b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g4
          f2 c4
          d2 bes,4
          a,2 d4
          c2\fermata a,4
          g,2 bes,4
          ees2 d4
          c d d,
          g,2\fermata }
          \partial 4  e4
          f g a
          bes2 f8 [e]
          d [c] bes,4 c
          f,2\fermata bes,8 [a,]
          g,4 g fis
          g f8 [ees] d [c]
          bes,4 bes a
          g f ees
          d2\fermata d4
          g4. ees8 bes4~
          bes a g
          c a, d
          g,2\fermata \fine
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
