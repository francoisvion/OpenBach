\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
 title = "Freuet euch, ihr Christen alle"
 subtitle = "tiré de la cantate : Dazu ist erschienen der Sohn Gottes"
 poet = "Auteur : Christian Keymann (1607-1662)"
  opus = "BWV 40/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          c''4 c'' bes' aes'
          g'4. f'8 f'4 f'\fermata
          aes'4. bes'8 c''4 c''
          bes'4. aes'8 aes'2\fermata
          aes'4 bes' bes' aes'
          g'4. f'8 f'2\fermata
          c''4 c'' des'' des''
          bes' bes' c'' c''\fermata
          aes' aes' des'' des''
          c'' c'' bes'2\fermata
          g'4 aes' bes' aes'
          g' g' f'2\fermata
          f''4 f'' ees'' ees''
          d'' d'' c'' c''\fermata
          c'' c'' des'' c''
          bes'4. aes'8 aes'4 aes'\fermata
          ees' aes' des'' des''
          bes' bes' ees'' ees''
          c'' c'' f'' f''
          e'' e'' f'' f''\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          f'4 f' f'8 [e'] f'4
          f'8 [g'] e'4 f' c'\fermata
          f'4. g'8 aes'4 aes'
          aes'8 [f'] g'4 ees'2\fermata
          f'4 g' e' f'
          f' e' c'2\fermata
          f'4 f' f' f'
          g'8 [aes'] bes' [g'] aes'4 aes'\fermata
          f' f' bes' bes'
          bes' a' f'2\fermata
          e'4 f' f'8 [e'] f'4
          f' e' c'2\fermata
          aes'4 aes' g' g'
          g'8 [aes'] g' [f'] e'4 e'\fermata
          f' f' f'8 [g'] aes'4
          aes'8 [f'] g'4 ees' ees'\fermata
          f' f' bes' bes'
          g' g' c'' c''
          aes'8 [g'] aes' [bes'] c''4 bes'8 [aes']
          g'4 g' a' a'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Je -- su, nimm dich dei -- ner Glie -- der
      fer -- ner in Ge -- na -- den an;
      schen -- ke, was man bit -- ten kann,
      zu er -- qui -- cken dei -- ne Brü -- der:
      gib der gan -- zen Chri -- sten -- schar
      Frie -- den und ein sel -- ges Jahr!
      Freu -- de, Freu -- de ü -- ber Freu -- de!
      Chri -- stus weh -- ret al -- lem Lei -- de.
      Won -- ne, Won -- ne ü -- ber Won -- ne! er ist die Ge -- na -- den -- son -- ne.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          aes4 a bes c'
          des' c'8 [bes] aes4 aes\fermata
          c'4. bes8 ees'4 ees'
          f' ees'8 [des'] c'2\fermata
          des'4 des' g f8 [aes]
          des'4 c'8 [bes] aes2\fermata
          a8 [bes] c' [a] bes4 bes
          bes ees' ees' ees'\fermata
          des' des' f' f'
          ges' f'8 [ees'] des'2\fermata
          c'4 c' bes c'
          des' c'8 [bes] aes2\fermata
          c'4 c' c' c'
          c' b c' g\fermata
          a a bes ees
          ees'4. des'8 c'4 c'\fermata
          des' des' f' f'
          ees' ees' g' g'
          f' f' c' f
          c' c' c' c'\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          f4 ees des c
          bes, c f, f,\fermata
          f ees8 [des] c [bes,] aes,4
          des ees aes,2\fermata
          des4 c8 [bes,] c4 des
          bes, c f,2\fermata
          f8 [g] a [f] bes, [c] des [bes,]
          ees [f] g [ees] aes4 aes\fermata
          des8 [ees] f [des] bes, [c] des [bes,]
          ees [c] f4 bes,2\fermata
          bes4 aes g f
          bes, c f,2\fermata
          f,8 [g,] aes, [bes,] c [d] ees [f]
          g4 g, c c\fermata
          f8 [ees] des [c] bes,4 c8 [des]
          ees4 ees aes, aes,\fermata
          des8 [ees] des [c] bes, [c] des [bes,]
          ees [f] ees [des] c [des] ees [c]
          f [e] f [g] aes [g] aes [bes]
          c'4 c f f\fermata \fine
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
