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
 title = "Kommt, laßt euch den Herren lehren"
 subtitle = "tiré de la cantate : Brich dem Hungrigen dein Brot"
 poet = "Auteur : David Denicke (1603-1680)"
  opus = "BWV 39/7"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          bes'4 c'' d'' c''
          bes' a' g' f'\fermata
          bes' c'' d'' ees''
          d'' c'' bes'2\fermata }
          d''4 ees'' f'' g''
          f'' ees'' d''2\fermata
          f''4 f'' g'' f''
          ees'' d'' c''2\fermata
          d''8 [ees''] f''4 ees'' d''
          bes' c'' d''2
          bes'\fermata d''4 f''
          ees'' d'' c'' d''
          c''2 bes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 f' f' f'
          f'8 [e'] f'4 e' c'\fermata
          g' f' f' ees'
          f' f'8 [ees'] d'2\fermata }
          bes'4 a'8 [g'] f' [g'16 aes'] g'4
          g' g' fis'2\fermata
          f'4 bes' bes' a'
          g' f'8 [g'] a'2\fermata
          bes'4 bes' bes'8 [a'] bes' [a']
          g' [f'] ees'4 d'8 [e'] fis'4
          g'2\fermata g'4 aes'
          g'8 [a'] bes'4 a'8 [g'] f'4
          f'4. ees'8 d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Se -- lig sind, die aus Er -- bar -- men
      sich an -- neh -- men frem -- der Not,
      Die be -- hilf -- lich sind mit Rat,
      auch, wo -- mög -- lich, mit der Tat,
      wer -- den wie -- der Hilf emp -- fan -- gen
      und Barm -- her -- zig -- keit er -- lan -- gen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sind mit -- lei -- dig mit den Ar -- men,
      bit -- ten treu -- lich für sie Gott.
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
          d'4 c' bes a
          bes c' c'8 [bes] a4\fermata
          d' c' bes8 [a] bes4
          bes a f2\fermata }
          f'4 ees' a8 [b] c'4
          bes ees' a2\fermata
          bes8 [c'] d'4 ees'8 [d'] c'4
          bes8 [c'] d' [e'] f'2\fermata
          f'8 [ees'] d'4 c' f
          g a bes a
          g2\fermata bes4 b
          c' g a bes
          bes a f2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          bes4 a bes f
          g a8 [bes] c' [c] f4\fermata
          g a bes g
          f8 [ees] f4 bes,2\fermata }
          bes,4 c d ees8 [f]
          g [f] ees4 d2\fermata
          d4 bes, ees f
          g8 [a] bes4 f2\fermata
          bes4 bes, c d
          ees8 [d] c4 bes,8 [c] d4
          g,2\fermata g4 d
          ees e f8 [ees] d [bes,]
          f2 bes,\fermata \fine
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
