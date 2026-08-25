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
 title = "Dir, dir, Jehova, will ich singen"
 poet = "Auteur : Bartholomäus Crasselius (1667-1724)"
  opus = "BWV 299"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f'4
          bes' d''8 [c''] d'' [bes']
          g''4 ees''2
          f''4 bes' ees''
          c''2 bes'4\fermata
           c'' ees'' d''
          c'' d''8 [c''] d'' [bes']
          a' [bes'] bes'4. c''8
          c''2\fermata }
          \partial 4  a'4
          bes' c'' d''
          g' g''8 [ees''] d'' [b']
          c'' [d''] d''4. ees''8
          ees''2\fermata
          \partial 4  c''4
          a' bes'8 [a' g' f']
          f''4. bes'8 g''4
          g''8 [f''] d''4 c''8 [bes']
          bes'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          f' bes'8 [a'] bes'4
          bes' g'2
          f'4 g'8 [a'] bes'4
          bes' a' f'\fermata
           f' f'4. g'8
          a'4 bes'8 [a'] bes'4
          ees' f'8 [ees' f' e']
          f'2\fermata }
          \partial 4 f'4
          f'2 f'4
          ees'4. g'8 ees' [d']
          ees'4 aes' g'
          g'2\fermata
          \partial 4  g'4
          f' g' a'
          bes'4. bes'8 bes'4
          bes' bes' a'
          f'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Dir, dir, _ Je -- ho -- va, will _ ich sin -- gen, denn wo ist doch ein sol -- cher Gott wie du?
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
     dir will _ ich mei -- ne Lie - der brin -- gen ach gib mir dei -- nes Geis -- tes Kraft da -- zu,
     dass ich _ es tu im Na -- men Je -- su Christ, so wie es dir durch inn ge -- fäl -- lig ist.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          bes f'8 [ees'] f'4
          ees' bes8 [a bes c']
          d'2 g'4
          f'4. ees'8 d'4\fermata
           c'8 [bes c' a] bes4
          c' f f
          c' bes f8 [g]
          a2\fermata }
          \partial 4 c'4
          f a bes
          bes4. bes8 c'4~
          c'8 [c'] c'4 b
          c'2\fermata
          \partial 4  c'4
          c'2 c'4
          d'4. d'8 ees'4
          bes f' ees'8 [d']
          d'2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes4
          d c bes,
          ees g8 [f g ees]
          bes [a] g4 ees
          f2 bes,4\fermata
           a8 [g a f] bes4
          f ees d
          c d8 [c d bes,]
          f,2\fermata }
          \partial 4 f8 [ees]
          d4 ees8 [d c bes,]
          ees4. ees8 aes4~
          aes8 [g] f4 g
          c2\fermata
          \partial 4  ees4
          f2 ees4
          d g8 [f ees d]
          ees4 f f,
          bes,2\fermata \fine
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
