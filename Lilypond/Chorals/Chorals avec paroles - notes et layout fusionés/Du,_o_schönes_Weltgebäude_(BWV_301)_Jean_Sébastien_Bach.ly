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
 title = "Du, o schönes Weltgebäude"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 301"
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
           d''4 a' d'' d''
          e'' c'' b'2
          a'\fermata f'4 a'
          g' f' e'4. d'8
          d'1\fermata }
           f'4 g' a' a'
          bes' a' g'2
          f'\fermata f'4 g'
          a' a' bes' a'
          g'2 f'\fermata
           a'4 b' c'' a'
          d'' d'' cis''2\fermata
          d''8 [e''] f''4 e'' d''
          d'' cis'' d''2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
           f'4 a' a' gis'8 [a']
          b' [e'] e'4 f' e'8 [d']
          cis'2\fermata d'4 d'8 [c']
          d' e'4 d'8 d'4 cis'
          a1\fermata }
           d'4 e' f' f'
          f'8 g'4 f'8 f'4 d'
          c'2\fermata d'4. c'8~
          c' [f'] a'4. g'4 f'8~
          f' [e'16 d'] e'4 c'2\fermata
          f'4 f' g'4. f'8
          f'4 f'8 [e'] e'2\fermata
          f'8 [g'] a'4 g' f'
          e' e' fis'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Du, o schö -- nes Welt ge -- bäu -- de, magst ge -- fal -- len wem du willst,
      De -- nen, die den Him -- mel has -- sen, will ich ih -- re Welt -- lust las -- sen, mich ver -- langt nach dir al -- lein, al -- ler -- schön -- ster Je -- su mein. }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    dei -- ne schein -- bar -- li -- che -- Freu -- de, ist mit lau -- ter Angst um -- hüllt.  }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
           a4 f'8 [e'] d' [c'] b4~
          b4. a8 a4 gis
          e2\fermata a4 a
          d8 [a] a4 bes a8. [g16]
          f1\fermata }
           a4 c' c' c'
          d'8 [c'] c'4 d'8 [bes] g [c'16 bes]
          a2\fermata a4 g
          f8 [a] d' [ees'] d'4 c'
          d' c'8 [bes] a2\fermata
          c'4 d' c' c'
          d'8 [c'] b4 a2\fermata
          a4 d'8 [c'] bes4 a
          bes a a2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d4. c8 b,4. a,8
          gis,4 a, d e
          a,2\fermata d8 [e] f4
          b,8 [cis] d4 g, a,
          d1\fermata }
           d4 c8 [bes,] a, [g,] f, [e,]
          d, [e,] f,4 bes, c
          f,2\fermata d4 e
          f fis g a
          bes c' f2\fermata
          f8 [e] d4 e8 [c] f4
          bes8 [a] gis4 a2\fermata
          f8 [e] d4~ d8 [cis] d [f]
          g [e] a4 d2\fermata \fine
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
