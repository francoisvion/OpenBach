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
 title = "Herr Jesu Christ, du hast bereit'"
 poet = "Auteur : Samuel Kinner (v.1604-1668)"
  opus = "BWV 333"
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
          \repeat volta 2 {
          \partial 4  g'4
          g'8 [a'] bes'4 a'8 [g'] f'4
          bes' a' bes'\fermata bes'
          a' g' c'' bes'
          a'2 g'4\fermata }
          \partial 4  d''
          bes' c'' d'' c''
          bes' bes' a'\fermata bes'
          bes' a' bes' a'
          g' g' fis'\fermata
          \partial 4  bes'
          a' g' c'' bes'
          a'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          ees' f'8 [g'] f'4 c'
          f' f' f'\fermata g'~
          g'8 [fis'] g'4. a'4 g'8
          g' [fis'16 e'] fis'4 d'\fermata }
          \partial 4  a'
          a'8 g'4 f'8 f'4 f'8. [ees'16]
          d'8 [e'16 fis'] g'4 fis'\fermata g'
          f'4. ees'8 d' g'4 fis'8
          g' [fis'] g' [g] d'4\fermata
          \partial 4 g8 [g']~
          g' [fis' g' f'] ees'4 d'
          ees'8 [c'] a [d'16 c'] b4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr Je -- su Christ, du hast be -- reit't
      für uns -- re mat -- te See -- len
      Wir tra -- gen uns -- re Sün -- den -- last,
      drum kom -- men wir bei dir zu Gast
      und su -- chen Rath und Hül -- fe.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    dein'n Leib und Blut zu ein'r Mahl -- zeit,
    tust uns zu Gäs -- ten wäh -- len;
    }
      
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          bes8 [c'] d'4 c'8 [bes] a4
          bes8 [d'] c'16 [d'] ees'4 d'8\fermata d'4
          ees'8 [d'16 c'] bes8 [b] c' [ees'] d'4
          ees'8 [c'] a [d'16 c'] bes4\fermata }
          \partial 4  d'
          d' c'4. bes4 a8
          bes8. [c'16] d'4 d'\fermata d'
          d' c' bes8 [d'] ees' [d']~
          d'4. c'8 a4\fermata
          \partial 4 d'
          d'8. [c'16] bes8 [a] g a4 g8~
          g [fis16 e] fis4 d\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g8 [f]
          ees4 d8 [ees] f4. ees8
          d [bes,] f4 bes,\fermata g,
          c8 [d] ees [d] ees [c] g, [bes,]
          c [a,] d4 g,\fermata }
          \partial 4  fis
          g a bes f
          g8. [a16] bes8 [g] d4\fermata g
          d8 [ees] f [fis] g [bes,] c [d]
          ees2 d4\fermata
          \partial 4 g,
          d ees~ ees8 [fis,] g, [bes,]
          c [a,] d4 g,\fermata \fine
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
