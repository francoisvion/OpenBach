\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O wir armen Sünder"
  opus = "BWV 407"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          a'4 a' a' a'
          b'2 a'\fermata
          g'4 fis' e' e'
          d'1\fermata
          a'4 a' a' a'
          b'2 g'\fermata
          b'4 b' c'' b'
          a'1\fermata
          a'4 a' a' a'
          d''2 a'4\fermata a'
          b' b' a' a'
          g'1\fermata
          a'4 a' a' a'
          a'2 fis'\fermata
          g'4 fis' e'4. d'8
          d'1\fermata
          a'2 b'
          c''1
          a'2 gis'
          a'1\fermata
          d''2. e''4
          a'2 b'
          cis''1
          a'2. gis'4
          a'1
          a'4. g'8 fis'4 g'
          e'2 d'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          fis'4 g' fis'8 [g'] a'4~
          a'8 [g'16 fis'] g'2 fis'4\fermata
          e'4. d'4 cis'16 [b] cis'4
          a1\fermata
          d'4 cis'8 [d'] e' [cis'] d' [e']
          fis' [g'] fis'4 e'2\fermata
          g'4 gis' a'4. gis'8
          e'1\fermata
          fis'4 fis'8 [e'] fis' [g'] a'4~
          a' g' fis'\fermata fis'
          e'8 [dis'] e'4 e' d'8 [c']
          b1\fermata
          e'8 [cis'] d' [e'] fis'4 fis'
          e'8 [g'] fis' [e'] e' [dis'16 cis'] dis'4\fermata
          e'4. d'8 d' [cis'16 b] cis'4
          a1\fermata
          fis'2 f'4 e'
          e' f'8 [g'] a'4 g'
          g' f' e'2
          e'1\fermata
          b'2. a'8 [g']
          fis'2~ fis'8 [gis'] a'4
          gis'2. cis'4~
          cis' d'8 [e'] fis'4 e'8 [d']
          e'1
          cis'8 [d'] e'4. d'8 e'4~
          e'8 [cis'16 b] cis'4 a2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O wir ar -- men Sün -- der!
      uns -- re Mis -- se -- that,
      da -- rin wir em -- pfan -- gen
      und ge -- bo -- ren sind,
      hat ge -- bracht uns al -- le
      in sol che gro -- ße Noth,
      daß wir un -- ter -- wor -- fen
      sind dem ew' -- gen Tod.
      Ky -- rie e -- lei - son!
      Chri - -  ste e -- lei - son!
      Ky - rie e -- lei son!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           d'4 e' e' d'
          d'2 d'~\fermata
          d'8 [cis'16 b] a4 b a8 [g]
          fis1\fermata
           fis4 e a8 [g] fis4~
          fis8 [e] b4 b2\fermata
          e'4 e' e'8 [a] f' [e']
          cis'1\fermata
          d'4 d'8 [cis'] d' [e'] fis' [e']
          d' [c'] d'4 d'\fermata d'8 [c']
          b [a] g4. fis16 [e] fis4
          g1\fermata
           e8 [g] fis [e] d [a] d'4~
          d'8 [cis'] c'4 b2\fermata
          b4 b b8 [g] e [a]
          fis1\fermata
          a4 d'2 c'8 [b]
          a4 g f e
          d d'2 c'8 [b]
          cis'1\fermata
          fis4 e8 [fis] g4 e
          fis8 [gis] a2 fis4
           cis' b8 [a] gis [fis] gis4
          a b8 [cis'] d'2~
          d'4 d' cis' b
          a2~ a16 [b] c'4 b16 [a]
          b8 e4 fis16 [g] fis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           d4. cis8 d [e] fis [d]
          g4 g, d2\fermata
          e4 fis g a8 [a,]
          d1\fermata
           d4 a,8 [b,] cis [a,] d [cis]
          dis e4 dis8 e2\fermata
          e8 [d] c [b,] a, [f,] d, [e,]
          a,1\fermata
          d8 [e] fis [g] fis [e] d [c]
          b, [a,] b, [cis] d4\fermata d
          g8 [fis] e [d] c [cis] d [dis]
          e1\fermata
           cis8 [a,] b, [cis] d [e] fis [g]
          a4 a, b,2\fermata
          e,8 [g,] b, [a,] g, [e,] a,4
          d,1\fermata
          d2 gis,
          a,2. b,8 [c]
          d4 b, e2
          a,1\fermata
          b,2. cis4
          d2 dis
           e eis
          fis b,
          a,1
          fis4 cis d g,
          gis, a, d,2\fermata \fine
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
