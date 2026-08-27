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
  title = \markup{\concat{"Schmücke dich, o liebe Seele" \small " (v. 9)"}}
  subtitle = "tiré de la cantate : Schmücke dich, o liebe Seele"
  poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 180/7"
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
          \repeat volta 2 {
          a'4 g' f' g'
          a'8 [bes'] c''4 bes'2
          a'\fermata c''4 a'
          bes' a'8 [g'] f' [g'] a'4
          g'2 f'\fermata }
          c''4 d''8 [e''] f''4 f''
          e''8 [d''] c'' [d''] d''2
          c''\fermata c''4 d''8 [e'']
          f''4 f'' e''8 [d''] c'' [d'']
          d''2 c''\fermata
          g'4 a' bes' bes'
          a'8 [c''] bes' [a'] g'4 g'\fermata
          c'' a' bes' a'8 [g']
          f' [g'] a'4 g'2
          f'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 e' d' c'
          c' f'2 e'4
          f'2\fermata g'4 f'
          f' f'8 [e'] d' [e'] f'4~
          f' e' c'2\fermata }
          a'4 g' f'8 [g'] a'4
          a' e' a' g'8 [f']
          e'2\fermata f'4 f'8 [g']
          a'4 a' g' g'8 [a']
          g' [f'16 e'] f'4 e'2\fermata
          e'4 f' e'8 [f'] g'4
          f'8 [a'] g' [f'] e'4 e'\fermata
          e' f'4. e'8 f' [e']
          d' [e'] f'2 e'4
          c'1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, wah -- res Brot des Le -- bens,
      Hilf, daß ich doch nicht ver -- ge -- bens     
      Laß mich durch dies See -- len -- es -- sen
      dei -- ne Lie -- be recht er -- mes -- sen,
      daß ich auch, wie jetzt auf Er -- den,
      mög ein Gast im Him -- mel wer -- den.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      o -- der mir viel -- leicht zum Scha -- den
      Sei zu dei -- nem Tisch ge -- la -- den.
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
          c'4 c'8 [bes] a4 g
          f8 [g] a4 g8 [f] g4
          f2\fermata c'4 c'
          d' c' d' c'
          c'8 [bes16 a] bes4 a2\fermata }
          f'4 b8 [cis'] d'4 d'
          c'8 [b] c'2 b4
          c'2\fermata a4 bes
          c'8 [b] c' [d'] e' [f'] g' [c']
          c'4 b c'2\fermata
          c'4 c' bes8 [a] g4
          c' d' e'8 [d'] c'4\fermata
          c' c' bes c'
          d' c' c'8 [bes16 a] bes4
          a1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          f4 c d e
          f a,8 [bes,] c2
          f,\fermata e4 f
          d8 [e] f4 bes, a,8 [bes,]
          c2 f,\fermata }
          f4 e d8 [e] f [g]
          a4. g8 f4 g
          c2\fermata f4 bes,
          a,8 [g,] a, [b,] c [d] e [f]
          g4 g, c2\fermata
          c'4 bes8 [a] g4 f8 [e]
          f4 bes, c c\fermata
          a, d g, a,
          bes, a,8 [bes,] c2
          f,1\fermata \fine
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
