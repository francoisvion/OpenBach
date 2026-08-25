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
 title = "Jesu, der du meine Seele"
 subtitle = "tiré de la cantate : Jesu, der du meine Seele"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 78/7"
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
          d''4 d'' a' bes'
          c'' bes'8 [a'] a'4 g'\fermata
          bes' bes' a' g'
          fis' g' a'2\fermata
          d''4 d'' a' bes'
          c'' bes'8 [a'] a'4 g'\fermata
          bes' bes' a' g'
          fis' g' a'2\fermata
          a'4 bes' c'' a'
          bes' a'8 [g'] g'4 f'\fermata
          bes' c'' d'' d''
          ees'' d''8 [c''] c''4 bes'\fermata
          d'' d'' c'' d''
          bes' c'' d''2\fermata
          d''4 d'' c'' bes'
          a' a' g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          g'4 g' a' g'
          g' g' fis' d'\fermata
          d' ees' ees'8 [d'] d' [c']
          c'4 d' d'2\fermata
          d'4 g' fis' g'
          g' g' fis' d'\fermata
          d' ees' ees'8 [d'] d' [c']
          c'4 d' d'2\fermata
          fis'4 g' g' f'
          f' f' e' c'\fermata
          f' g'8 [a'] bes'4 bes'
          bes' bes' a' f'\fermata
          f' f' f'8 [ees'] d'4
          d' g' fis'2\fermata
          g'4 g' a' g'
          g' fis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Herr, ich glau -- be, hilf mir Schwa -- chen,
      laß mich ja ver -- za -- gen nicht;
      du, du kannst mich stär -- ker ma -- chen,
      wenn mich Sünd und Tod an -- flicht.
      Dei -- ner Gü -- te will ich trau -- en,
      bis ich fröh -- lich wer -- de schau -- en
      dich, Herr Je -- su, nach dem Streit
      in der süs -- sen E -- wig -- keit.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes8 [c'] d'4 d' d'
          c'8 [d'] ees'4 d'8 [c'] bes4\fermata
          g g g8 [fis] g4
          a bes fis2\fermata
          bes8 [c'] d'4 d' d'
          c'8 [d'] ees'4 d'8 [c'] bes4\fermata
          g g g8 [fis] g4
          a bes fis2\fermata
          d'4 d' c' c'
          bes8 [c'] d'4 c'8 [bes] a4\fermata
          bes ees' f' f'
          ees'8 [f'] g'4 f'8 [ees'] d'4\fermata
          bes bes a a
          g8 [bes] a [g] a2\fermata
          bes8 [c'] d'4 ees' d'
          ees' d'8 [c'] b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          g8 [a] bes4 fis g
          ees c d g,\fermata
          g8 [f] ees [d] c [d] ees4
          a, g, d2\fermata
          g,8 [a,] bes, [c] d4 g
          ees c d g,\fermata
          g8 [f] ees [d] c [d] ees4
          a, g, d2\fermata
          d4 g8 [f] e4 f8 [ees]
          d4 bes, c f\fermata
          d c bes, bes8 [a]
          g4 ees f bes,\fermata
          bes,8 [c] d [ees] f4 fis
          g8 [f] ees4 d2\fermata
          g8 [a] bes4 fis g
          c d g,2\fermata \fine
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
