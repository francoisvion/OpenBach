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
 title = "Es stehn vor Gottes Throne"
 poet = "Auteur : Ludwig Helmbold (1532-1598)"
  opus = "BWV 309"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          bes' g' fis' g'
          a'2 bes'4\fermata bes'
          a' bes' c'' a'
          bes'2 a'4\fermata bes'
           a' g' g' fis'
          g'2.\fermata }
          \partial 4 bes'4
          bes' bes' a' bes'
          g'2 fis'4\fermata bes'
          bes' bes' a' bes'
           g'2 fis'4\fermata g'
          a'8 [b'] c''4 c'' b'
          c''\fermata a' bes' a'
          g' fis' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          g' d' d'8 [c'] bes4
          ees' d' d'\fermata g'~
          g'8 [fis'] g'4. e'8 d' [fis']
          d'4 e' fis'\fermata g'~
           g'8 [fis'] e'4 d'2
          d'2.\fermata }
          \partial 4 g'4
          g' g'4. f'8 f'4~
          f'8 [ees'16 d'] c'4 d'\fermata d'
          e'8 [f'] g'4 f' f'~
          f'8 [ees'16 d'] ees'4 d'\fermata g'
          f' g'8 [aes'] g'4 g'
          g'\fermata g' fis'8 [gis'] a'4
          d'8 [ees'] d'4 d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Es steh'n vor Got -- tes Thro -- ne, es steh'n vor Got -- tes Thro -- ne die un -- sre Wäch -- ter sind, 
      dass er auch nicht der Ei -- nes ve -- racht't will han so klei -- nes,
      als je -- mals ist ge -- bor'n, als je -- mals ist ge -- bor'n.
    }
    
     \new Lyrics \lyricsto "soprano" {
      der in sein'm lie -- ben Soh -- ne, der in sein'm lie -- ben Soh -- ne liebt al -- le Men -- schen -- Kind,
    }
 
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          d' bes a g
          g4. fis8 g4\fermata d'
          d' d' e'8 [c' d' c']
          bes [a] g4 d'\fermata d'
           ees'8 [a] bes4. a16 [g] a4
          bes2.\fermata }
          \partial 4 d'4
          d' d' d' d'~
          d'8 [c'16 bes] a8 [g] a4\fermata g8 [a]
          bes [d'] c'4 c' d'
          bes a a\fermata c'
          c'8 [d'] ees'4 d'8 [c'] d'4
          ees'\fermata e' d'4. c'8
          bes4 a8 [c'] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g,8 [a, bes, c] d4 ees8 [d]
          c4 d g,\fermata g
          d g8 [f] e [a fis d]
          g4 cis d\fermata g,
           c cis d d,
          g,2.\fermata }
          \partial 4 g,4
          g,8 [a, bes, c] d4 bes,
          ees2 d4\fermata g~
          g8 [f e c] f [ees d bes,]
          ees [d c a,] d4\fermata e
          f ees8 [f] g4 g,
          c\fermata cis d8 [e] fis4
          g8 [c] d4 g,\fermata \fine
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
