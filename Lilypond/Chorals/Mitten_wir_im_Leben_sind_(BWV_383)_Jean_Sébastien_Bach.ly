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
 title = "Mitten wir im Leben sind"
 poet = "Salzburg 1456"
  opus = "BWV 383"
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
          g'4 g' a' b'
          c'' c'' b'2
          a'\fermata b'4 c''
          d'' a' g' f'
          e'1\fermata }
           r4 d' e' f'
          g'4. f'8 e'4 d'
          c'2\fermata r4 c'
          g' g' a' b'
          c'' c'' b'2
          a'\fermata b'4 c''
          d'' a' g' f'
          e'2\fermata r4 a'
          g' e' f' g'8. [f'16]
          e'2\fermata r4 a'
          g' e' f' g'
          e'2\fermata a'4 g'
          a' b' c'' b'8 [a']
          g'4 f' e'\fermata d'
          a'2 g'4 f'
          e'2\fermata a'4 g'
          a' b' c''8 [b'] a'4
          g'2\fermata c''4 b'
          d'' a' g' f'
          e'2\fermata r4 d'
          a'2 g'4 f'
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          e'4 e' e' e'
          e'8 [fis'16 gis'] a'4 a' gis'
          e'2\fermata g'4 g'
          a'8 [g'] f'4. e'4 d'16 [c']
          b1\fermata }
           r4 b c'8 [b] c'4
          d'8 [e']~ e' [d']~ d' [c']~ c' [b]
          g2\fermata r4 g
          c'~ c'8 [e'] f'4~ f'8 e'
          e' [a'16 gis'] a'4~ a'8 [gis'16 fis'] gis'4
          e'2\fermata gis'4 a'~
          a'8 [g'] f'4 e'~ e'8 [d']
          cis'2\fermata r4 f'8 [e']
          d'4~ d'8 [c'] d'4 d'
          c'2\fermata r4 e'
          d'~ d'8 [c'16 b] a4 d'8 [b]
          c'2\fermata e'4 e'
          e' e' e'8 [f' g' f']~
          f' [e']~ e' [d'16 c'] b4\fermata bes
          c' f'~ f'8 [e']~ e' [d']
          c'2\fermata e'4~ e'8 [d']
          c'4 d' e'8 g'4 fis'8
          g'2\fermata g'4 g'
          a'8 [g'] f' [e'] d' [e'] a [d']
          cis'2\fermata r4 d'
          d' c'8 [d'] e'4. d'16 [c']
          b1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mit -- ten wir im Le -- ben sind __ _
      mit dem Tod um -- fan - gen;
      Das bist du, Herr, al -- lei - ne.
      Uns reu -- et uns' -- re Mis -- se -- that, __ _
      die dich, Herr, er -- zür -- net hat.
      Hei -- li -- ger Her -- re Gott,
      hei -- li -- ger, star -- ker Gott,
      hei -- li -- ger, barm -- herz' -- ger Hei - land,
      du e -- wi -- ger Gott,
      laß uns nicht ver -- sin - ken
      in der bit -- tern To -- des -- noth.
      Ky -- rie e -- lei -- son!
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
       Wen such'n wir, der Hül -- fe thu',  __ _
       daß wir Gnad' er -- lan - gen?    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          b4 b c' b
          a4. e'8 f' [d'] b [e'16 d']
          c'2\fermata d'4 e'
          f'8 [e'] d'4. c'16 [bes] a8 [b16 a]
          gis1\fermata }
           r4 g g c'8 [a]
          b4 c'8 [g] g4~ g8. [f16]
          e2\fermata r4 g
          g c' c'8 [d'] d'4
          c'8 [d'] e'4~ e'8 [b] e' [d']
          c'2\fermata e'4 e'
          d'~ d'8 [c'] bes4 a
          a2\fermata r4 c'~
          c'8 [b] a4 a g8 [b]
          c'2\fermata r4 c'
          b g f8 [e] d [g]
          g2\fermata c'4 b
          c' b a d'
          g8 [c'16 b] a8 [b16 a] gis4\fermata g
          a d'~ d'8 [b] c' [g]
          g2\fermata c'4 c'8 [bes]
          a [g] f4 g8 [e'] a [d'16 c']
          b2\fermata e'4 d'8 [e']
          f' [e'] d' [c'] b [cis'] d' [a]
          a2\fermata r4 a8 [g]
          f [e] f4 e8 [a] a [b16 a]
          gis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          e4 e8 [d] c [b,] a, [gis,]
          a,4. c8 d [b,] e4
          a,2\fermata g8 [f] e4
          d8 [e] f4 b,8 [c] d4
          e1\fermata }
           r4 g8 [f] e4 a
          g8 [g,] a, [b,] c4 g,
          c,2\fermata r4 e8 [f]
          e [d] e [c] f4 gis,
          a,8 [b,] c [d] e2
          a,\fermata e4 a8 [g]
          f [e] d4~ d8 [cis] d [f]
          a2\fermata r4 f,
          g, a, d8 [c] b, [g,]
          a,2\fermata r4 a,
          b, c d b,8 [g,] 
          c2\fermata a,8 [c] e [d]
          c [b,] a, [gis,] a,4 b,
          c d e\fermata g
          f8 [e] d [c] b, [g,] a, [b,]
          c2\fermata c8 [d] e4
          f8 [e] d4 c d
          e2\fermata e8 [f] g4
          d8 [e] f4~ f8 [e] d [f]
          a2\fermata r4 f8 [e]
          d4 a,8 [b,] c [cis] d4
          e1 \fermata \fine
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
