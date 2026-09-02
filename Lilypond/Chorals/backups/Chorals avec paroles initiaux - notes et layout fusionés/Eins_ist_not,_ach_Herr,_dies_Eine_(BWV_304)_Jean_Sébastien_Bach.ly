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
 title = "Eins ist not, ach Herr, dies Eine"
 poet = "Auteur : Johann Heinrich Schröder (1666-1699)"
  opus = "BWV 304"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          a'4 g'8 [fis'] b'4 b'
          cis'' cis'' d'' d''\fermata
          b'4. a'8 g'4 a'
          g'8 [fis'] e' [fis'] d'2\fermata
          a'4 g'8 [fis'] b'4 b'
          cis'' cis'' d'' d''\fermata
          b'4. a'8 g'4 a'
          g'8 [fis'] e' [fis'] d'2\fermata \bar "||"
          \time 3/4
          \partial 4 d'8 [e']
          fis'4 fis' fis'
          e' e' e'8 [fis']
          g'4 g' g'8 [fis']
          fis'4 fis' fis'
          b'4. a'8 g'4
          a'4. g'8 fis'4
          g' fis' e'
          d' d'\fermata d'8 [e']
          fis'4 fis' fis'
          e' e' e'8 [fis']
          g'4 g' g'
          fis'2 fis'4
          b'4. a'8 g'4
          a'4. g'8 fis'4
          g' fis' e'
          d'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          fis'4 d' d' g'8 [fis']
          e'4 a'8 [g'] fis'4 fis'\fermata
          d' g'8 [fis'] e'4 e'
          d' cis' a2\fermata
          e'4 d' fis' e'8 [d']
          cis'4 fis' fis' fis'\fermata
          g'8 [fis'] e'4 d' e'
          e'8 [d'] d' [cis'] a2\fermata \bar "||"
          \time 3/4
          \partial 4 a4
          d' d' d'
          cis'8 [b] cis' [d'] e'4
          e' e' e'
          d'8 [cis'] d' [e'] fis'4
          g'4. fis'8 e'4
          e'8 [d'] cis'4 d'
          d' d' cis'
          a a\fermata a
          d' d' d'
          d' cis'8 [b] cis' [d']
          e'4 e' e'
          e' d' r
          d' g'8 [fis'] e'4~
          e'8 [g'] fis' [e'] d' [a]
          d'4. e'8 cis'4
          a2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Eins ist noth, ach Herr, dies Ei -- ne leh -- re mich er -- ken -- nen doch: al -- les An -- dre, wie's auch schei -- ne, ist ja nur ein schwe -- res Joch, da -- run -- ter das Her -- ze sich na -- get und pla -- get, und den -- noch kein wah -- res Ver -- gnü -- gen er -- ja -- get; er -- lang ich dies Ei -- ne, das Al -- les er -- setzt, so werd ich mit Ei -- nem in Al -- lem er -- götzt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 a b e'8 [d']
          cis' [b] a4 a a\fermata
          g8 [a] b4 b a
          a a8 [g] fis2\fermata
          a4 a a8 [fis] g [b]~
          b [gis] ais4 b b\fermata
          d' cis' b8 [g] e [a]
          a4 a fis2\fermata \bar "||"
          \time 3/4
          \partial 4 fis8 [g]
          a4 a a8 [b]
          cis' [d'] e' [d'] cis'4
          b b b8 [cis']
          d' [e'] fis' [e'] d' [cis']
          b [a] g [a] b4
          a a a
          g8 [a] b4 e
          fis fis\fermata fis
          b b a
          b a8 [gis] a4
          a b cis'
          a2 a4
          d'8 [cis'] b4. b8
          a4. cis'8 d'4
          d a a8 [g]
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          d4 d g8 [fis] e4
          a8 [g] fis [e] d4 d\fermata
          g8 [fis] e4 e8 [d] cis4
          d a, d2\fermata
          cis4 d dis e
          eis fis b, b,\fermata
          g, a, b, cis
          d a, d2\fermata \bar "||"
          \time 3/4
          \partial 4 d4
          d8 [cis] d [e] fis [g]
          a4 a, a
          e8 [dis] e [fis] g [a]
          b4 b, b8 [a]
          g [fis] e4 e8 [d]
          cis [b,] a,4 d8 [cis]
          b, [a,] g,4 a,
          d d\fermata d8 [cis]
          b,4 b8 [a] g [fis]
          gis4 e a
          cis d8 [cis] b, [a,]
          d2 r4
          b, e e8 [d]
          cis [a,] d4. cis8
          b,4 a,8 [g,] a,4
          d2.\fermata \fine
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
