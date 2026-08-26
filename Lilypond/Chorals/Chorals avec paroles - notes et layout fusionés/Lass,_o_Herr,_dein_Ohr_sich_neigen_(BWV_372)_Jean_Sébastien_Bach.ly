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
 title = "Lass, o Herr, dein Ohr sich neigen"
 poet = "Auteur : Martin Opitz (1597-1639)"
  opus = "BWV 372"
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
          g'4 g' fis' g'
          a' bes' a'2
          g'\fermata }
          \partial 32 * 16 bes'4 a'
          g' bes' a' g'
          fis'2\fermata f'4 ees'
           d' g' g' fis'
          g'2\fermata bes'4 c''
          d'' d'' c'' bes'
          c''2 bes'\fermata
          bes'4 c'' d'' d''
           c'' bes' c''2
          bes'\fermata bes'4 a'
          g' bes' a' g'
          fis'2\fermata f'4 ees'
          d' g' g' fis'
          g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'4 d' d' d'
          ees'8 [d' d' g'] g'4 fis'
          d'2\fermata }
          \partial 32 * 16 g'4 g'8 [fis']
          g'4 g'8 [f'] ees' [d'] e'4
          d'2\fermata a8 [bes] c'4
           bes8 [c'] d'4 ees' d'
          d'2\fermata g'4 a'
          bes' bes'8 [aes'] g' [f'] f'4
          g' f'8 [ees'] d'2\fermata
          f'4 f' f' f'
          f'8 [ees'] d'4 g' f'8 [ees']
          d'2\fermata d'4 d'8 [c']
          bes4 ees'8 [d'] c' [d'] d'4
          d'2\fermata d'4 d'8 [c'16 bes]
          a4 d' ees' d'
          d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Laß, o Herr, dein Ohr sich nei -- gen,
      und stoß mich nicht von dir hin,
      Weil ich arm und e -- lend bin.
      Hü -- te mei -- ne Seel und Le -- ben,
      die ich hei -- lig dir er -- ge -- ben,
      reiß mich dei -- nen Knecht aus Not,
      der auf dich nur hofft, o Gott!
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dir mein Wort zu Her -- zen stei -- gen,
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
          bes4 bes a bes
          c' bes8 [d'] ees'4 d'8 [c']
          bes2\fermata }
          \partial 32 * 16 d'4 d'8. [c'16]
          bes8 [c'] d'4 c' bes8 [a]
          a2\fermata f4 f
           f bes a~ a16 [bes c'8]
          bes2\fermata d'4 f'
          f' f' ees'8 [c'] d' [bes]~
          bes [a16 g] a4 bes2\fermata
          d'4 c' c'8 [bes16 a] bes4
          a bes bes a
          f2\fermata g4 fis
          g g a bes
          a2\fermata g4 g
          fis g8 [bes] a4. c'8
          b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g,8 [a,] bes, [c] d [c] bes, [g,]
          fis,4 g, c d
          g,2\fermata }
          \partial 32 * 16 g4 d
          ees bes, c cis
          d2\fermata d8 [c] bes, [a,]
          bes, [a,] g, [bes,] c [a,] d4
          g,2\fermata g4 f8 [ees]
          d [c] bes,4. a,8 bes, [d]
          ees [c] f4 bes,2\fermata
          bes,4. a,8 bes, [f] bes4
          f g8 [f] ees4 f
          bes,2\fermata g,4 d
          ees4. e8 f [fis] g [g,]
          d2\fermata b,4 c
          c8 [bes,16 a,] bes,8 [g,] c [a,] d4
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
