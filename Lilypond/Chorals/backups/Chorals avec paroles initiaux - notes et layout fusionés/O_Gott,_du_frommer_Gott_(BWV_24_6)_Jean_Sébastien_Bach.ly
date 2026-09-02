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
  title = \markup{\concat{"O Gott, du frommer Gott" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Ein ungefärbt Gemüte"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 24/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
          \partial 4  a'4
          a' bes'8 [c''16 d''] c''4 bes'16 [a' bes'8]
          a'4 \bar "'" s2 \bar "'" a'8 [bes']
          c''4 f' g' a' 
          g'2 f'4 \bar "'"
          s4 \bar "'"
          r4 a' 
          a' bes'8 [c''16 d'']
          c''4 bes' a' \bar "'" s4 \bar "'"
          r4 a'8 [bes'] c''4 f' 
          g' a'8 [bes']
          g'2 f'4 \bar "'" s2 \bar "'"   g'4
          g' a' bes' bes'8. [c''16]
          a'4 \bar "'" s2 \bar "'" a'4
          g' c''8 [d''16 ees'']
          d''4 c''8 [b'] 
          c''4 \bar "'" s2 \bar "'" c''4
          c''8 [bes'] a'4 bes' c''8 [d''16 ees'']
          d''4 \bar "'" s2. \bar "'" 
          r4 g' a' a'
          g'8 [a'16 bes'] g'4 f'2~
          f'1~
          f'4 r4 r2 \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'8 [f'16 g']
          f'4 f' f'8 [e'16 d'] e'4
          f' \bar "'" s2 f'8 [d'] 
          g' [e'] f' [d'] e'4 f' 
          d' e' c' \bar "'" 
          s4 \bar "'"
          r4 f' f' f'8 [g']
          e' [f'] f' [e'] f'4 \bar "'" s4 \bar "'"
          r4 f' f'8 [ees'] d'4 
          e' f' f' e' 
          c' \bar "'" s2 \bar "'"  d'4
          e' f'4. e'16 [d'] e'4
          f' \bar "'" s2 \bar "'" ees'4
          d' g'
          f'8 [aes'] g' [f'] 
          e'4 \bar "'" s2 \bar "'" g'4
          f' f' f' f'
          f' \bar "'" s2. \bar "'" 
          r4 e' f' f'
          f'8 [e'16 d'] e'8 e' f'4 r8 f'16 [ees']
          d'4 c' bes4. c'8 
          c'4 r4 r2 \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      O Gott, du from -- mer Gott,
      du Brunn -- quell al -- ler Ga -- ben,
      ohn' den nichts ist, was ist,
      von dem wir al -- les ha -- ben,
      ge -- sun -- den Leib gib mir, 
      und daß in sol -- chem Leib
      ein' un -- ver -- letz -- te Seel' und rein Ge -- wis -- sen bleib. __
    }
    
    \new Lyrics \lyricsto "alto" {\set stanza = 2
      \repeat unfold 53 {\skip1}
      und rein Ge -- wis -- sen bleib.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'4
          d' d'8 [bes] a [g16 f] g4
          c' \bar "'" s2 c'8 [d'] 
          e'4 a8 [f] c'4 c'
          bes g a \bar "'"
          s4 \bar "'"
          r4 c' d' d'8 [bes]
          bes [a] g [c'] c'4 \bar "'" s4 \bar "'" 
          r4 f8. [g16] a8 [g] f4
          c' c' c'8 [bes16 a] bes8 [g]
          a4 \bar "'" s2 \bar "'" d'8 [b]
          c'4 c' d'8 [c'16 bes] c'4
          c' \bar "'" s2 \bar "'" c'4 b c'
          c'8 [f'] d'4 
          c' \bar "'" s2 \bar "'" e'4
          c' c' d' c'
          bes \bar "'" s2. \bar "'" 
          r4 c' c' d'
          d'8 [e'16 f'] e'8 [g] a4 r8 f
          bes4 a4 g4. a8
          a4 r4 r2 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          d8 [c] bes,4 c c
          f, \bar "'" s2 f4
          e d8 [d'] c'8 [bes] a [f] 
          bes [g] c' [c] f4 \bar "'" s4 
          \bar "'"
          r4 f8 [e] d [c] bes,4 
          c c f,4 \bar "'" s4 \bar "'"
          r4 d a, bes, 
          bes8 [a] g [f] c'4 c
          f \bar "'" s2 \bar "'" b,8 [g,]
          c4 bes,8 [a,] g,4 c
          f \bar "'" s2 \bar "'" fis4 f ees8 [f16 g]
          aes8 [g16 f] g8 [g,] 
          c4 \bar "'" s2 \bar "'" c'8 [bes]
          a [g] f [ees] d [c] bes, [a,]
          bes,4 \bar "'" s2. \bar "'" 
          r4 c f8 [e] d [c]
          bes, [g,] c4 f2~
          f1~
          f4 r4 r2 \fine
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
