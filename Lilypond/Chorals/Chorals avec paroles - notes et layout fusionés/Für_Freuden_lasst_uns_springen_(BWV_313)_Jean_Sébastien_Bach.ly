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
 title = "Für Freuden lasst uns springen"
 poet = "Auteur : Kaspar Peltsch"
  opus = "BWV 313"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          \partial 4  d''4
          d'' d'' d'' c''
          bes'2 a'4\fermata d''
          d''8 [ees''] f''4 ees'' d''
          c''2 d''4\fermata }
          \partial 4 d''
           c'' bes' a' g'
          a' bes' a'\fermata d''
          bes' bes' c'' d''
          ees'' d'' c'' c''
          d''4. c''8 b'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'8 [fis']
          g'4 fis'8 [g'] a' g'4 fis'8
          g' [fis'] g'4 fis'\fermata f'
          g' f' c''4. bes'8
          bes'4 a' bes'\fermata }
          \partial 4 bes'8 [a']
           g'4 g'4. fis'8 g'4
          c'8 [a'] d' [e'] fis'4\fermata a'~
          a' g'8 f'4 ees'8 aes' [g']
          g'4 g' a' a'8 [g']
          fis' g'4 fis'8 g'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Für Freu -- den lasst uns sprin -- gen, ihr Chris -- ten all -- zu -- glei -- che!
      von ei -- ner Jung -- frau ist ge -- bor'n,
      wer hat zu -- vor ge -- hört von sol -- chen Din - gen.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
     Mit Mund und Her -- zen sin -- gen, denn Christ vom Him -- mel rei -- che.
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
          \partial 4  bes8 [c']
          d' [c'16 bes] a4. bes8 c' [d']
          d'4 d' d'\fermata d'8 [c']
          bes4 bes4. a16 [g] f8 [f']
          g'4 f' f'\fermata }
          \partial 4 f'
           ees'8 [d'] e'4 a8 [d'16 c'] bes8 [c'16 bes]
          a8 [d'16 c'] bes [a g8] d'4\fermata d'
          d' ees'8 [f'] g'4 f'8 [d']~
          d' [c'] d' [e'] fis' [a] d' [ees']
          d' [c'16 bes] a8 [d'] d'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,8 [a,]
          bes, [c] d [e] fis [g] a [d]
          g [a] bes [c'] d'4\fermata bes8 [a]
          g [f] ees [d] c [f] bes, [d]
          ees [c] f4 bes,\fermata }
          \partial 4 bes,
           c4. cis8 d4 ees8 [e]
          f [fis] g [cis] d4\fermata fis
          g8 [f] ees [d] c4. bes,8
          c c'4 bes8 a [g] fis [g]
          d2 g4\fermata \fine
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
