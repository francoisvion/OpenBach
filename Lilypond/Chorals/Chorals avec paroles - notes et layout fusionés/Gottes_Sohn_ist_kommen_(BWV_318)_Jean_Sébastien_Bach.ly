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
 title = "Gottes Sohn ist kommen"
 poet = "Auteur : Johann Horn (v.1490-1547)"
  opus = "BWV 318"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           g'4 g'8 [a'] b'4 c''
          d'' e'' d''2\fermata
          e''4 fis'' g'' d''
          b' cis'' d''2\fermata
          c''4 a' b' c''
          b' a' g'2\fermata
           fis'4 g' a' b'
          a'4. g'8 fis'4 e'
          d'1\fermata
          g'4 g'8 [a'] b'4 c''
          d'' e'' d''2\fermata
          g'4 a' b' c''
          b' a' g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           d'4 e'8 [fis'] g'4 fis'8 [e']
          d' [fis' b' a'] fis'2\fermata
          a'4 a' g' a'
          g'8 [fis'] e'4 fis'2\fermata
          e'4 d' d' c'
          d'4. c'8 b2\fermata
           d'4 cis'8 [b] a4 d'
          e'2~ e'8 d'4 cis'8
          a1\fermata
          d'4 e'8 [fis'] g'4 g'
          f' e'8 [fis'] g'2\fermata
          g'8 [e' d' c'] b [a g fis']
          g'4. fis'8 d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Got -- tes Sohn ist kom - men uns Al -- len zu From - men hier auf die -- se Er - den in ar -- men Ge -- bär - - - den, dass er uns von Sün - de frei -- e und ent -- bin - de.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           b4 c' d' c'
          b16 [c'] d'4 cis'8 d'2\fermata
          c'8 [b c' d'] b4 a
          d' a a2\fermata
          g4 a g8 [fis] g4
          g fis g2\fermata
           a4 g d'8 [cis'] b4
          e a2 g4
          fis1\fermata
          g4 c' d' c'~
          c'8 [b] c'4 b2\fermata
          b4 a d' e'8 [a]
          b [c'] d'4 b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           g4 c g,8 [g] a4
          b8 [a g a] d2\fermata
          a4 d e fis
          g a d2\fermata
          e4 fis g e
          d8 [c] d4 g,2\fermata
           d4 e fis g
          cis a, d a,
          d1\fermata
          b,4 c g e
          d c g2\fermata
          e4 fis g e
          d2 g\fermata \fine
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
