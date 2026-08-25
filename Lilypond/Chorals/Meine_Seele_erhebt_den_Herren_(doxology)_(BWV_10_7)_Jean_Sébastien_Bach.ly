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
 title = "Meine Seele erhebt den Herren (doxologie)"
 subtitle = "tiré de la cantate : Meine Seel erhebt den Herren"
 poet = "Luc 1, 46 et suivants"
  opus = "BWV 10/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          d''2 f''
          d''4 d'' d'' d''
          ees''2 d''
          c'' c''
          bes'1\fermata
          d''2 f''
          c''4 c'' c'' g'
          bes'2 a'
          g'1\fermata
          d''2 f''
          d''4 d'' d'' d''
          ees''2 d''
          c'' c''
          bes'1\fermata
          d''2 f''
          c''4 c'' c'' c''
          c''2 g'4 a'
          bes'2 a'
          g'1~
          g'~
          g'~
          g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          g'2 f'
          f'4 fis' g' a'
          g' f'2 g'4
          g'2 f'
          f'1\fermata
          f'
          f'4 f' ees' g'
          g'2 fis'
          d'1\fermata
          g'2 a'
          f'2. fis'4
          g' a' bes'2~
          bes'4 bes' bes' a'
          f'1\fermata
          r
          f'4 g' a' bes'
          c''2 c'
          d' d'4 c'
          b d' g' f'
          ees'1
          ees'2 d'4 c'
          d'1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \with {alignAboveContext = "upper"} \lyricsto "soprano" {
      \repeat unfold 6 {\skip1}
      Va -- ter 
      \repeat unfold 14 {\skip1}
      war im An -- fang jetzt und im -- mer -- dar
      und von E -- wig -- keit zu E -- wig -- keit, A - men.
    }
    
     \new Lyrics \lyricsto "alto" {
      Lob und Preis sei Gott dem Va - ter und dem Sohn
      und __ dem hei -- li -- gen Gei - ste,
      wie es war im An -- fang jetzt und im -- mer -- dar
      und von E -- wig -- keit zu E -- wig -- keit, A - - - - - - - men.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes2 c'
          d'4 c' bes a
          bes c'2 bes4
          bes2 a
          d'1\fermata
          bes
          a4 c' g c'
          d'2. c'4
          bes1\fermata
          bes2 c'
          d'4 c' bes a
          bes c' f f'
          g'2 f'4 c'
          d'1\fermata
          r2 f4 g
          a bes c'2~
          c'4 d' e' fis'
          g'2 f'4 ees'
          d' b c' d'~
          d' g c'2~
          c' b4 a
          b1\fermata \fine
        }
        
        \new Lyrics \with {alignAboveContext = "lower"} \lyricsto "tenor" {
          \repeat unfold 22 {\skip1}
          war im An -- fang jetzt __ _ und __ _ im -- mer - dar
          und von E -- wig -- keit zu E -- wig -- keit, A - - - - - - - - - men.
        }
    
        \new Voice = "bass" {
          \voiceTwo
          g2 a
          bes4 a g fis
          g a bes g
          ees c f2
          bes,1\fermata
          bes2 d
          f4 a c' ees
          d c d2
          g,1\fermata
          g2 f
          bes4 c' \tieUp d'2~
          d'4 c' bes d
          ees c f2
          bes,1\fermata
          bes,4 c d ees
          f2. g4
          a bes c'2
          bes,4 c d ees
          f2 ees4 d
          c d ees f
          g1
          g,\fermata \fine
        }
        
        \new Lyrics \lyricsto "bass" {
          \repeat unfold 26 {\skip1}
          war im An -- fang jetzt und im - mer -- dar
          und von E -- wig -- keit zu E -- wig -- keit, A - - - - - - - - - - - men.
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
