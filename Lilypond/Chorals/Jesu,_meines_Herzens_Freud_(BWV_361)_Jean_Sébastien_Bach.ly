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
 title = "Jesu, meines Herzens Freud"
 poet = "Auteur : Johann Flittner (1618-1678)"
  opus = "BWV 361"
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
           d''4 d''8 [ees''] f'' [ees''] d''4
          c''4. c''8 c''2\fermata
          d''4 ees''8 [d''] c''4. bes'8
          bes'2\fermata a'8 [g'] a' [bes']
           c'' [bes'] a'4 g'4. g'8
          g'2\fermata a'4 bes'8 [a']
          g'4. f'8 f'2\fermata
          d''4 d''8 [ees''] f''4 ees''8 [d'']
           c''4. c''8 c''2\fermata
          d''4 ees''8 [d''] c''4. bes'8
          bes'2\fermata ees''8 [d''] ees'' [f'']
          d'' [c''] d'' [ees''] c''4. bes'8
          bes'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           f'4 g' f' bes'8 [a']
          g'4 f'8 [e'] f'2\fermata
          f'4 ees'8 [f'] g'4 f'16 [ees' d' ees']
          d'2\fermata c'4 f'
           f' f' f'8 [e'] d'4
          e'2\fermata e'4 d'
          d' c' c'2\fermata
          c'4 bes c' f'
          g'8 [f'] g'4 f'2\fermata
          f'4 ees'8 [f'] g'4 a'
          g'2\fermata g'4 f'
          f' bes' bes' a'
          f'1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, mei -- nes Her -- zens Freud',
      sü -- ßer Je - su!
      Mei -- ner See -- len Se -- lig -- keit,
      sü -- ßer Je - su!
      Des Ge -- mü -- thes Si -- cher -- heit,
      sü -- ßer Je - su!
      Je -- su, sü -- ßer Je - su!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           bes4 bes8 [c'] d' [c'] bes4
          bes a8 [g] a2\fermata
          bes4 bes bes a
          f2\fermata f4 c'
           c' c' c' c'8 [b]
          c'2\fermata a8 [g] f4
          f e a2\fermata
          a'4 g' f' bes
          ees'4. ees'8 ees'2\fermata
          d'8 [c'] bes4 bes a8 [d']
          d'2\fermata c'4 c'
          c' bes g' f'8 [ees']
          d'1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           bes8 [a] g4 d g8 [f]
          e [d] c4 f2\fermata
          bes8 [a] g [f] ees4 f
          bes,2\fermata f8 [e] f [g]
           a [g] a [bes] c'4 g
          c2\fermata cis4 d8 [c]
          bes,4 c f2\fermata
          fis4 g a bes
          bes8 [a] bes [g] a2\fermata
          bes8 [a] g [f] e4 fis
          g2\fermata c'8 [bes] a [f]
          bes [a] g [f] ees4 f
          bes,1\fermata \fine
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
