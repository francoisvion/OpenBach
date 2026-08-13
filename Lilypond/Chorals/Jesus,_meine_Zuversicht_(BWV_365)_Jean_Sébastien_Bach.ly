\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesus, meine Zuversicht"
  opus = "BWV 365"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \repeat volta 2 {
          g'4 e' a' b'
          c'' c'' b'2\fermata
          a'8 [b'] c''4 g' e'
          f' e' d'2
          c'1\fermata }
           e'4 fis' gis' a'
          b' b' a'2\fermata
          b'4 c'' d'' e''
          d''4. c''8 c''2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          e'4 c'8 [d'] e'4 e'
          e' a'2 gis'4\fermata
          a' g'8 [e'] d'4. g8
          c' d'4 c'8 c'4 b
          g1\fermata }
           c'4 d'4. f'8 e' [c']
          f' [d'] b [e'16 d'] c'2\fermata
          g'4 g' g' g'
          a'8 [f'] d' [g'16 f'] e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- sus, mei -- ne Zu -- ver -- sicht
      und mein Hei -- land, ist im Le -- ben:
      was die lan -- ge To -- des -- nacht mir auch für Ge -- dan -- ken macht?
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Die -- ses weiß ich, soll ich nicht
      da -- rum mich zu -- fried -- en ge -- ben?}
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          c'4 g c' b
          a e' e'2\fermata
          c'4. g4 b8 g [e]
          a [g] g4 a g8 [f]
          e1\fermata }
           g4 a b8 [d'] c' [a]
          a4. gis8 a2\fermata
          d'4 e' d' c'
          c' b g2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          c4 c8 [b,] a,4 gis,
          a,8 [b,] c [d] e2\fermata
          f4 e b,8 [g,] c4
          a,8 [b,] c4 f, g,
          c,1\fermata }
           c8 [c,] c4 b, c8 [f]
          d [b,] e4 a,2\fermata
          g8 [f] e [d] c [b,] c [e]
          f [d] g4 c2\fermata \fine
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
