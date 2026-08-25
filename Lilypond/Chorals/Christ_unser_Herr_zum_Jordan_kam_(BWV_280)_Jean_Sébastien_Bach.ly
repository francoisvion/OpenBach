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
 title = "Christ unser Herr zum Jordan kam"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 280"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<

        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'8 [e']
          f'4 g' a' g'
          c'' b'8 [a'] a'4\fermata g'
          c'' b' a' g'
          f' e' d'\fermata }
          \partial 4  d'
          g' g' e' a'
          a' gis' a'\fermata a'
          d'' d'' e''8 [d''] c''4
          d''8 [c''] b'4 a'\fermata b'
          c'' b' a' g'
           a'8 [g'] f'4 e'\fermata d'8 [e']
          f'4 g' a'8 [g'] f'4
          g'8 [f'] e'4 d'\fermata d''
          d'' d'' e'' d''
          c'' b' a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          d' e' f' e'
          e' e' e'\fermata e'
          e' e' f'8 [e'] d'4
          a8 d'4 cis'8 a4\fermata }
          \partial 4  a
          d' c'8 [b] c' [d'] e'4
          e' e' e'\fermata e'
          a' g' g' a'8 [g']
          f'4 b8 [c'16 d'] c'4\fermata e'
          e' d' c'8 [d'] e'4
          a d' cis'\fermata a
          d' e' e'8 [cis'] d'4
          e'8 [d'] cis'4 a\fermata a'
          g' g' g' a'8 [d']
          e'4. d'8 cis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Christ, un -- ser Herr, zum Jor -- dan kam
      nach sei -- nes Va -- ters Wil - len,
      da wollt er stif -- ten uns ein Bad,
      zu wa -- schen uns von Sün - den,
      er -- säu -- fen auch den bit -- tern Tod
      durch sein selbs Blut und Wun - den;
      es galt ein neu -- es Le - ben.
    }
    
    \new Lyrics \lyricsto "soprano" {
      Von Sankt Jo -- hanns die Tau -- fe nahm,
      sein Werk und Amt zu 'rfül - len;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f8 [g]
          a [b] c'4 c' c'8 [b]
          a4 gis c'\fermata b
          a b8 [cis'] d'4 d8 [e]
          f [g] a4 f\fermata }
          \partial 4  f8 [e]
          d4 g g c'
          b8 [a] b4 c'\fermata c'
          c' b c'8 [b] a4
          b8 [a] gis4 e\fermata gis
          a8 [g f g] a [b cis' d']
          e'4 a a\fermata f8 [e]
          d [f] bes4 a bes~
          bes e8 [f16 g] f4\fermata d
          b8 [c' d' b] c' [b] a4
          a gis e\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          d c f c
          c8 [d] e4 a,\fermata e
          a g f b,8 [cis]
          d4 a, d\fermata }
          \partial 4  d8 [c]
          b, [a,] g,4 c b,8 [a,]
          e4 e, a,\fermata a8 [g]
          fis4 g c f8 [e]
          d4 e a,\fermata e
          a d8 [e] f4 e8 [d]
          cis4 d a,\fermata d8 [c]
          bes, [a,] g,4 f, bes,8 [a,]
          g,4 a, d,\fermata fis
          g8 [a b g] c4 f
          e8 [d] e4 a,\fermata \fine
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
