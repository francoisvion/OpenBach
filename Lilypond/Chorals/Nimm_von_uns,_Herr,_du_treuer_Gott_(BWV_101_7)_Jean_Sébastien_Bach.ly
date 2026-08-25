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
  title = \markup{\concat{"Nimm von uns, Herr, du treuer Gott" \small " (v. 7)"}}
  subtitle = "tiré de la cantate : Nimm von uns, Herr, du treuer Gott"
  poet = "Auteur : Martin Moller (1547-1606)"
  opus = "BWV 101/7"
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
          \partial 4  a'4
          a' f' g' a'
          f' e' d'\fermata a'
          a' g' c'' a'
          f' g' a'\fermata a'
          c'' d''8 [e''] f''4 e''
          d'' cis'' d''\fermata d''
          e'' d'' c'' b'
          a' b' a'\fermata d''
          c'' b' c'' a'
          a' g' f'\fermata a'
          bes' a'8 [g'] f'4 g'
          f' e' d'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          e' d' d' d'
          d' cis' a\fermata f'
          f' g'8 [f'] e'4 f'
          d' d' cis'\fermata d'
          e' g' a' g'
          f'8 [g'] a'4 a'\fermata g'
          g' fis'8 [gis'] a'4 e'
          e'8 [a'] a' [gis'] e'4\fermata d'
          e' f' g' f'
          f' e' c'\fermata d'
          d' cis' d' e'
          cis'8 d'4 cis'8 a4\fermata \fine
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Leit uns mit dei -- ner rech -- ten Hand,
      Und se -- gne un -- ser Stadt und Land;
      Gieb uns all -- zeit dein hei -- lges Wort,
      Be -- hüt vors Teu -- fels List und Mord,
      Ver -- leih ein sel -- ges Stün -- de -- lein,
      Auf daß wir e -- wig bei dir sein.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          a a bes a
          bes e f\fermata d'
          c' c' c' c'
          bes d e\fermata f
          a bes c' bes8 [c']
          d'4 e' f'\fermata b
          c'8 [b] a4 d' d'
          c' d' c'\fermata g
          g d' c' c'
          d' g a\fermata a
          g8 [f] e4 bes2~
          bes8 a g [a] fis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          cis d bes f
          g a d\fermata d8 [e]
          f4 e a f
          bes bes, a,\fermata d
          a g f g8 [a]
          bes4 a d\fermata g
          c d8 [e] fis4 gis
          a e a,\fermata b,
          c d e f
          bes, c f,\fermata fis,
          g, a, bes, a,8 [g,]
          a,4 a, d\fermata \fine
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
