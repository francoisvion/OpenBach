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
 title = "Ich danke dir, Herr Gott, in deinem Throne"
 poet = "Auteur : Jakob Fabricius (1593-1654)"
  opus = "BWV 350"
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
          g' g' f'8 [ees'] d'4
          f' g' a' g'
          g' fis' g'\fermata bes'
          a' g' f' d'
           f' g' a' g'
          g' fis' g'\fermata d''
          d'' d'' g' c''
          c'' bes' a' g'
          f'2 d'4\fermata
          \partial 4  g'
          g' fis' g' fis'
          g' fis' g' a'
          bes'2 a'4\fermata bes'
          a' g' f' d'8 [ees']
          f'4 f' g' f'
           ees'2 d'4\fermata d''
          c'' bes' a' fis'
          g' a'8 [bes'] c''4 bes'
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          g'8 [f'] ees' [d'] c'4. bes8
          d'4 ees'8 [d'] ees'4 d'
          ees' d' d'\fermata g'
          g'8 [fis'] g' [ees'] c'4 c'8 [bes16 c']
           d'8 [c'] bes4 ees'8 [d'] e'4
          d' d' d'\fermata g'
          g'4. fis'8 g'4 g'
          d' d'4. c'8 bes [d']
          c' [bes] c'4 bes\fermata
          \partial 4 d'
          d'8 [ees'] d' [c'] bes [c'] d'4
          d' c' d' d'
          d'2 d'4\fermata d'
          d'8. [c'16] bes4 c' bes
          a8 [bes16 c'] d' [ees'] f'4 ees' d'8~
           d' [c'16 b] c'4 b\fermata g'~
          g'8 [fis'] g'4. fis'16 [e'] d'4~
          d'8 [e' fis' g'] a'4. g'8
          g' [fis'16 e'] fis'4 d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ich dan -- ke dir, o Gott, in dei -- nem Thro - ne,
      durch Je -- sum Chri -- tum, dei -- nen lie -- ben Soh - ne,
      daß du mich hast in die -- ser Nacht be -- vah -- ret
      vor Scha -- den und vor man -- cher -- lei Ge -- fah -- ren,
      und bit -- te dich, wollst mich an die -- sem Ta -- ge
      be -- hü -- ten auch vor Sün -- den, Schand' und Pla -- ge, Pla -- ge.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes8 [c']
          d'4 bes a8 [g] f4
          bes bes c'4. bes8
          a4~ a16 [bes] c'4 bes8\fermata d'4
          d'8. [c'16] bes4 c'8 [a] f4
           bes8 [a] g4 c' bes
          bes8 [a16 g] a [bes c'8] bes4\fermata bes8 [c']
          d' [c'16 bes] a8 [bes16 c'] bes2
          a4. g4 fis8 g [bes]
          a [g] a4 f\fermata
          \partial 4 bes8 [c']
          d' [c'16 bes] a4 g a
          g a bes a~
          a g fis\fermata g
          g8 [fis] g [ees] c [f] f4
          f8 [g16 a] bes4 bes bes8. [a16]
           g2 g4\fermata bes
          c' d' d' a
          bes c'8 [d'] ees' [d'] d'4
          ees'8 [c'] a [d'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,8 [a,]
          bes,4 g, a, bes,~
          bes,8 [a,] g,4~ g,8 [fis,] g,4
          c d g,\fermata g,
          d ees a,8 [f,] bes,4~
           bes, ees8 [d] c4. cis8
          d2 g,4\fermata g,8 [a,]
          bes, [c] d4 ees e
          fis g d ees
          a, f, bes,\fermata
          \partial 4 g,8 [a,]
          bes, [c] d4 ees d8 [c]
          bes, [c] bes, [a,] g, [a,] g, [fis,]
          g, [a,] bes, [g,] d4\fermata g,
          d ees a, bes,8 [c]
          d4 d ees bes,
           c8 [d] ees [c] g4\fermata g,
          a, bes,8 [c] d4. c8
          bes,4 a,8 [g,] fis,4 g,
          c d g,\fermata \fine
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
