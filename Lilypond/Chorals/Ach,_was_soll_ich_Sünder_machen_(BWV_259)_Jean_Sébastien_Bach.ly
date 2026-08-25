\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Ach, was soll ich Sünder machen"
 poet = "Johann Flittner"
  opus = "BWV 259"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          e'4 e' g' g'
          a' a' b' b'\fermata
          b' d'' c'' b'
          a'4. a'8 g'2\fermata 
          a'4 a' b' g'
          fis'4. fis'8 e'2\fermata
          e''4 e'' d'' d''
          cis'' cis'' b' b'\fermata
          d'' d'' c'' b'
          a'4. a'8 g'2\fermata
          a'4 a' b' g'
          fis'4. fis'8 e'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          b4 b e' e'
          e' a'8 [fis'] g'4 g'\fermata
          g' g' g'8 [fis'] g'4 
          g' fis' d'2\fermata
          fis'4 e' dis'8 [fis'] b [e'16 dis']
          e'4 dis' b2\fermata
          g'4 g' fis' fis'
          g' fis' fis' fis'\fermata
          fis' g' g'8 a'4 g'8
          g'4 fis' d'2\fermata
          e'4 fis' fis'4. e'8
          e'4 dis' b2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Ach, was soll ich Sün -- der ma --  chen?
      Ach was soll ich fan --  gen an,
      mein Ge -- wis --  sen klagt mich an,
      es be -- gin -- net auf -- zu -- wa -- chen:
      dies is mei -- ne Zu -- ver -- sicht,
      mei -- nen Je -- sum laß' ich nicht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          g4 g b b
          c' d' d' d'\fermata
          d' d'8 [b] c' [ d'] d'4
          e'8 [c'] a [d'16 c'] b2\fermata 
          d'4 a4. g16 [fis16] g8 [c']~
          c' [a] fis [b16 a] g2\fermata
          b4 b b b
          b 4. ais8 d'4 d'\fermata
          d'8 [ c'] b4 e'8 d'4 e'8~
          e' [c'] a [d'16 c'] b2\fermata
          cis'4 d'8 [c'] b4 b8 [c']~
          c'[a] fis [b16 a] gis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          e8 [fis g fis] e [d c b,]
          a, [g, fis, d,]  g,4 g\fermata
          g,8 [a, b, e] a, [ d g, b,]
          c [a,] d4 g,2\fermata
          fis8 [e d c] b, [dis e c]
          a, [fis,] b,4 e,2\fermata
          e,8 [fis, g, a,] b,[cis d b,]
          e [cis] fis4 b,2\fermata
          b8 [a g fis] e [fis g e]
          c [a,] d4 g,2\fermata
          g4 fis8 [e]  dis4 e8 [c]
          a, [fis,] b,4 e,2\fermata \fine
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
