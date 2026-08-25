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
 title = "Befiehl du deine Wege (III)"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 272"
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
          \repeat volta 2 {
          \partial 4  d'8 [e']
          f'4 e' f' g'
          a'2 a'4\fermata c''
          b' a' a' gis'
          a'2.\fermata } \break
          \partial 4  a'4
          b' c'' d''8 [c''] b'4
          c''4. bes'8 a'4\fermata a'
          g' f' f' e'
          f'2.\fermata
          \partial 4  a'8 [g']
          f'4 g' a' g'
          f'2 e'4\fermata f'
          g' f' e'4 e'
          d'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          d'4 bes a d'8 [c']
          c'2 c'4\fermata c'
          f' fis' e' e'
          e'2.\fermata }
          \partial 4  e'8 [fis']
          gis'4 a' a' gis'
          g' f'8 [g'] f'4\fermata f'8 [ees']
          d'4 d' c' c'
          c'2.\fermata
          \partial 4 e'4
          f'4. e'8 f'4. e'8~
          e' [d'] d'4 cis'\fermata d'~
          d'8 [cis'] d'4 d' cis'4
          a2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Be -- fiehl du dei -- ne We -- ge,
      und was dein Her -- ze kränkt,
      Der Wol -- ken, Luft und Win - den
      gibt We -- ge, Lauf und Bahn,
      der wird auch We -- ge fin -- den,
      da dein Fuß ge -- hen kann.
    }
    
    \new Lyrics \lyricsto "soprano" {
      der al -- ler -- treu -- sten Pfle -- ge
      des, der den Him -- mel lenkt.
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
          \partial 4  a8 [g]
          a4 g f f8 [e]
          f2 f4\fermata g
          gis c' b8 [c'] d'4
          c'2.\fermata }
          \partial 4  c'4
          d' e' d' d'
          c'8 [e' d' c'] c'4\fermata c'
          bes aes g4. a16 [bes]
          a2.\fermata
          \partial 4 a4
          a d'8 [c'] c'4 d'8 [e']
          a [gis a b] a4\fermata a
          g a a4. g8
          f2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f8 [e]
          d4. cis8 d [c bes, c]
          f,2 f,4\fermata e
          d dis e e,
          a,2.\fermata }
          \partial 4  a4
          a a8 [g] fis4 g8 [f]
          e [c d e] f4\fermata f,
          bes, b, c c,
          f,2.\fermata
          \partial 4 cis4
          d8 [c bes, c] g, [a, b, cis]
          d [bes, a, gis,] a,4\fermata d
          e f8 [g] a4 a,
          d2.\fermata \fine
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
