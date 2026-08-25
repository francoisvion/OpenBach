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
  title = \markup{\concat{"Warum betrübst du dich, mein Herz" \small " (v. 11)"}}
  subtitle = "tiré de la cantate : Wer sich selbst erhöhet, der soll erniedriget werden"
 poet = "Anonyme"
  opus = "BWV 47/5"
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
          g'8 a' bes'4 a' d''8 d''
          c''4 bes' a'\fermata bes'8 [a']
          g'4 d'' c'' d''
          g'8 a' b'4 c''\fermata
          bes'
          a' d'' c'' bes'
          a'2\fermata r4 g'8 [a']
          bes'4 bes' c'' c''
          d'' d'' bes'\fermata
          d''
          c'' bes' a' g'8 [a']
          bes'4 a' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees' d'8 [e'] fis'4 g'
          a' g' fis'\fermata g'
          g' f'8 [g'] a'4 b'
          c'' g' g'\fermata
          g'
          fis' g' a' d'
          d'2\fermata r4 d'
          g' g'8 [f'] ees'4 f'8 [g']
          aes'4 g'8 [f'] g'4\fermata
          g'
          g'8 [fis'] g'4 fis' g'
          g' fis' d'\fermata \fine
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {
      Der zeit -- li -- chen Ehrn will ich gern ent -- behr',
      du wollst mir nur das  Ew -- ge ge -- währn,
      das du er -- wor -- ben hast
      durch dei -- nen her -- ben, bit -- tern Tod;
      Das bitt ich dich, mein Herr und Gott.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          c' bes8 [c'] d'4 d'
          d' d' d'\fermata d'8 [c']
          bes [c'] d' [ees'] f'4 f'
          g' d' ees'\fermata
          d'
          d' d' fis g
          fis2\fermata r4 bes8 [c']
          d'4 des' c'8 [bes] aes [g]
          f4 f' ees'\fermata
          f'
          ees' e' a8 [bes] c'4
          d'8 [e'] a [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b,4
          c g, d bes
          fis g d\fermata g,
          g8 [a] bes4 f d
          ees8 [f] g4 c\fermata
          g
          d8 [c] bes,4 a, g,
          d2\fermata r4 g,
          g8 [f] ees4 aes8 [g] f4
          bes, bes, ees\fermata
          b,
          c cis d ees
          d8 [cis] d4 g,\fermata \fine
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
