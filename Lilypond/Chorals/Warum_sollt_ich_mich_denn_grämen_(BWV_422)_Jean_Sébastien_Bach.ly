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
 title = "Warum sollt ich mich denn grämen"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 422"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 g' a' g'
          a'8 [b'] c''4 c'' b'
          c''2\fermata d''4 e''
          c''2\fermata b'8 [c''] d''4
          a'2\fermata d''4 d''
          c'' b' a' ~ a'8. [g'16]
          g'2\fermata c''4 c''
          b' c'' a' d''
          d'' cis'' d''2\fermata
           d''4 e'' c''2\fermata
          b'8 [c''] d''4 a'2\fermata
          d''4 d'' c'' b'8 [a']
          a'4 ~ a'8. [g'16] g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           e'8 [f'] g' [e']~ e' d'4 g'8
          f'4 g' g'2
          g'\fermata g'8 [f'] e'4
          e'2\fermata e'4 d'
          d'2\fermata d'4 e'
          e'8 d'4 g'8 g'4 fis'
          d'2\fermata g'8 [fis'] g' [a']
          g'4 g'2 f'4
          e'2 fis'\fermata
          g'4 g' f'2\fermata
          d'8 [e'] d' [e'] fis'2\fermata
          fis'4 g'8 [fis'] e' [fis'] g'4
          g' fis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wa -- rum sollt' ich mich denn grä - men?
      Hab' ich doch
      Chri -- stum noch,
      wer will mir den neh -- men?
      Wer will mir den Him -- mel rau - ben,
      den mir schon
      Got -- tes Sohn
      bei -- ge -- legt im Glau -- ben, im Glau -- ben. _
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           c'4 c' c' b8 [c']
          f'4 e' d'8 [e'] f' [g'16 f']
          e'2\fermata b4 b
          a2\fermata g4 g
          fis2\fermata fis4 g~
          g8 [a] b [d'] e'4 a16 [b c'8]
          b2\fermata g4 e'
          d' c' c' a
          bes a a2\fermata
          b4 bes8 [c'16 bes] a2\fermata
          g4 g d'2\fermata
          d'8 [c'] b4 c' d'
          d' a16 [b c'8] b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           c8 [d] e [c] f4. e8
          d4 e8 [f] g2
          c\fermata g4 gis
          a2\fermata e4 b,8 [c]
          d2\fermata b,4 e~
          e8 [fis] g [b,] c [a,] d4
          g,2\fermata e8 [d] e [fis]
          g [f] e [c] f [e] f [d]
          g [e] a [a,] d2\fermata
          g4 c f2\fermata
          f8 [e] b, [c] d2\fermata
          b,4 e a, b,8 [c]
          d2 g,\fermata \fine
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
