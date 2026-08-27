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
 title = "Dank sei Gott in der Höhe"
 poet = "Auteur : Johannes Mühlmann (1573-1613)"
  opus = "BWV 287"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c''4
          a' c'' d'' c''
          bes'2 a'4\fermata a'
          g' a' g' g'
          f'2.\fermata }
          \partial 4  g'4
          g' a' bes' c''8 [bes']
          a'2 g'4\fermata g'
          a'8 [b'] c''4 d''8 [c''] b'4
          c''2.\fermata
          \partial 4  c''4
          a' c'' d'' c''
          bes'2 a'4\fermata a'
          g' a' g' g'
          f'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          f'8 [g'] a'4 bes'8 [a'] g' [a']
          bes' [a'] g'4 f'\fermata f'
          e' f' f' e'
          c'2.\fermata }
          \partial 4  c'8 [d']
          e'4 c' d' c'
          c'4. d'8 e'4\fermata e'
          f' g' a' g'
          g'2.\fermata
          \partial 4 e'4
          c' f' f' ees'
          d'4. e'8 fis'4\fermata d'
          e' f' f' e'
          c'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Dank sei Gott in der Hö -- he in die -- ser Mor -- gen -- stund,
      Mich hat -- te zwar ge -- bun -- den mit Fins -- ter -- nis die Nacht,
      ich hab sie ü -- ber -- wun -- den mit Gott, der mich be -- wacht.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      durch den ich auf -- er -- ste -- he, vom Schlaf frisch und ge -- sund.
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
          \partial 4  c'4
          c' ees' f' e'
          f' c' c'\fermata c'
          c' c' c'8 [bes16 a] bes4
          a2.\fermata }
          \partial 4  g4
          c' f bes8 [a] g4
          a8 [g] f4 c'\fermata c'
          c'8 [d'] e'4 d'4. e'16 [f']
          e'2.\fermata
          \partial 4 g4
          a a bes a
          bes8 [c'] d'4 d'\fermata f'
          c' c' c'8 [bes16 a] bes4
          a2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          f8 [ees] d [c] bes,4 c
          d e f\fermata f
          bes8 [a] g [f] c'4 c
          f2.\fermata }
          \partial 4  e8 [d]
          c [c'] bes [a] g [f] e4
          f a,8 [bes,] c4\fermata c
          f8 [e] d [c] f4 g
          c2.\fermata
          \partial 4 c4
          f8 ees4 d16 [c] bes,8 [a] g [fis]
          g [a] bes [c'] d'4\fermata d'8 [c']
          bes [a] g [f] c'4 c
          f2.\fermata \fine
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
