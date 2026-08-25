\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O wie selig seid ihr doch, ihr Frommen (I)"
 poet = "Simon Dach"
  opus = "BWV 405"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
           a'4 d'' c'' bes'8 [a']
          bes'4 a' g' a'8 [bes']
          g'2 f'\fermata
          a'8 [bes'] c''4 b'4. cis''8
          d''4 c''8 [d''] e''4 d''8 [c'']
          b'2 a'\fermata
           r4 a' g' e'
          f'2 e'\fermata
          d'4 e' f' g'
          a' b' cis'' d''
          d'' cis'' d''2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           f'4 g' g' f'~
          f'8 [e'] f'4. e'8 f'4
          f' e' c'2\fermata
          f'4 g'8 [a'] g'4 g'
          a'8 [b'] a'4 a' a'
          a' gis' e'2\fermata
           r4 cis' d' e'
          e' d' cis'2\fermata
          d'4 a d' c'
          c' f' e' d'8 [e']
          f' [e'16 d'] e'4 fis'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O wie se -- lig seid ihr doch, ihr From -- men,
      die ihr durch den Tod zu Gott ge -- kom -- men!
      Ihr seid ent -- gan -- gen
      al -- ler Noth, die uns noch hält ge -- fan - gen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           d'4 d' e' d'
          d'8 [bes] c'4 c' c'
          d'8 [bes] g [c'] a2\fermata
          c'8 [d'] e' [d'] d'4 e'
          d'8 [b] e'4 e' f'
          b8 e'4 d'8 cis'2\fermata
           r4 e d a
          a2 a\fermata
          a4 a a8 [bes] a [g]
          f [a] g [f] g4 a8 [bes]
          a4 a a2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           d4 c8 [bes,] a,4 d
          g, a,8 [bes,] c4 f
          bes, c f,2\fermata
          f4 e8 [fis] g [f] e4
          fis8 [gis] a4 c d
          e e, a,2\fermata
           r4 a, b, cis
          d d, a,2\fermata
          f4 cis d e
          f e8 [d] e4 f8 [g]
          a4 a, d2\fermata \fine
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
