\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Christ lag in Todesbanden"
  opus = "BWV 4/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          gis' a'8 [b'] c''4 d''
          c'' b' a'\fermata a'
          f' g' a' g'8 [f']
          e' [d'] e'4 d'\fermata
          d'8 [e'] f'4 g' d'8 [e']
          f'4 g' a'\fermata a'
          d'' cis'' d'' e''8 [d'']
          c''4 b' a'\fermata
          b'
          c'' a'8 [bes'] c''4 g'
          f' e' d'2\fermata
          a'4 g' f'2
          e' d'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          e' e' e' e'
          e' e'8 [d'] cis'4\fermata e'
          d' c' c'8 [cis'] d'4
          d' cis' a\fermata
          a d' d'4. cis'8
          d'4 c' c'\fermata f'8 [g']
          a'4 g' a' e'
          e' e'8 [d'] c'4\fermata
          d'
          e' c' f' e'~
          e'8 d'4 cis'8 d'2\fermata
          c'8 [d'] e'4. cis'8 d'4~
          d' cis' a2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Christ lag in To -- des -- ban -- den für un -- ser Sünd' ge -- ge -- ben,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      der ist wie -- der er -- stan -- den und hat uns bracht das Le -- ben Dess wir sol -- len fröh -- lich sein, Gott lo -- ben und ihm dank -- bar sein, und sin -- gen Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'8 [c']
          b4 c'8 [gis] a4 b
          a gis e\fermata a
          a8 [bes] a [g] f [g] a4
          bes e8 [g] f4\fermata
          f8 [g] a4 g8 [a] bes4
          a g f\fermata c'
          f' e' d'8 [c'] b4
          a gis e\fermata
          f
          g f f c'8 [bes]
          a4 g f2\fermata
          f4 e8 [a] a4 bes~
          bes a8 [g] fis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          e8 [d] c [b,] a,4 gis,
          a, e, a,\fermata cis
          d e f8 [e] d4
          g,8 [a,16 bes,] a,4 d,\fermata
          d4. c8 bes, [a,] g,4
          d e f\fermata f8 [e]
          d4 e fis gis
          a e a,\fermata
          d
          c f a,8 [bes,] c4
          d a, bes,2\fermata
          f4 cis d bes,
          g, a, d,2\fermata \fine
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
