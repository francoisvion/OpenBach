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
 title = "Es spricht der Unweisen Mund wohl"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 308"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes'4
          bes' a'8 [g'] f'4 bes'
          c'' d'' bes'\fermata f'
          bes' c'' d'' ees''
          c''8 [bes'] c''4 bes'\fermata }
          \partial 4  bes'
          g' a' bes'8 [a'] g'4
          f' e' f'\fermata f'
          bes' c'' d'' ees''
           d'' c'' d''\fermata c''
          d'' ees'' f''8 [ees''] d''4
          c''8 [bes'] c''4 bes'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f'4
          f' ees' d' d'
          ees' f' ees'\fermata c'
          f' f' f' g'
          f'2 f'4\fermata }
          \partial 4  f'
          e' f'2 e'8 [d']
          c'4 c' c'\fermata c'
          f'8 [g'] a'4 bes' c''~
          c''8 bes'4 a'8 bes'4\fermata f'
          f' g' a' f'
          f'2 f'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es spricht der Un -- wei -- sen Mund wohl: Den rech -- ten Gott wir mei - nen, Ihr We -- sen ist ver -- der -- bet zwar,
      vor Gott ist es ein Greu -- el gar, es tut Ihr Kei -- ner kein - Gut.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      doch ist ihr Herz Un -- glau -- bens voll, mit Tat sie ihn ver -- nei - nen, }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          d' c'4. bes8 bes4~
          bes8 [a] bes [aes] g4\fermata a
          bes ees' d'8 [c'] bes4~
          bes8 [a16 g] a4 d'\fermata }
          \partial 4  d'
          c' c' d' g8 [a16 bes]
          c'8 [bes16 a] g8 [a16 bes] a4\fermata a
          bes ees' f' g'8 [f']
          f'4 f' f'\fermata f'8 [ees']
          d' [c'] bes4 c'4. bes8~
          bes [a16 g] a4 d'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes,4
          bes, c d g
          f bes, ees\fermata ees
          d a, bes, ees
          f2 bes,4\fermata }
          \partial 4  bes,~
          bes, a, g, c8 [bes,]
          a, [bes,] c4 f,\fermata f8 [ees]
          d [ees] d [c] bes, [bes]~ bes [a]
          bes4 f bes,\fermata a
          bes8 [a] g4 f bes
          f2 bes,4\fermata \fine
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
