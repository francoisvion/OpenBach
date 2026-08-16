\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Es ist das Heil uns kommen her"
  opus = "BWV 155/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  c''4
          c'' c'' c''8 [d''] ees''4
          d'' c'' bes'\fermata c''8 [bes']
          a' [g'] f' [g'] a'4 b'
          c''8. [d''16] d''4 c''\fermata
          c''
          f'' e'' d'' e''
          f''8 [e''] d''4 c''\fermata c''
          f'' c'' d'' a'8 [bes']
          c''4 bes' a'\fermata a'
          g'8 [a'] bes'4 a' g'
          d' e' f'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          f' e' f' g'
          f' f'8 [ees'] d'4\fermata c'
          c' c' f'8 [a'] g' [f']
          e'8. [f'16] g'8. [f'16] e'4\fermata
          f'8 [g']
          a'4 g' g'8 [f'] e' [g']
          c' [a'] d' [g'] e'4\fermata f'8 [g']
          a' [bes'] a' [g'] f'4 f'
          e' d'8 [e'] fis'4\fermata f'
          e' d' c'8 [d'] e'4
          d' c'8 [bes] a4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es ist das Heil uns kom -- men her von Gnad und lau -- ter Gü -- te,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      die Werk', die hel -- fen nim -- mer -- mehr, sie mö -- gen nicht be -- hü -- ten. Der Glaub' sieht Je -- sum Chri -- stum an, der hat g'nug für uns all' ge -- than, er ist der Mitt -- ler wor -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [bes]
          c' [d'] c' [bes] a4 g8 [a]
          bes4 a bes\fermata g
          f8 [g] a [bes] c'4 d'
          g8 c'4 b8 c'4\fermata
          a
          a8 [b] c'4 b8 [a] g4
          f8 [c'] b4 c'\fermata a8 [bes]
          c'4 f'8 [e'] d'4 d'
          g8 [a] bes [c'] d'4\fermata c'
          c' f8 [g] a [bes] c'4
          bes8 [a] g4 f\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f4
          a,8 [bes,] c4 f, c
          d8 [ees] f4 g\fermata e
          f f, f8 [e] d4
          c g, c\fermata
          f8 [e]
          d4 e8 [f] g4 c8 [b,]
          a, [g,] g,4 c\fermata f
          f,8 [g,] a,4 bes,8 [c] d4
          e8 [fis] g4 d\fermata a,8 [bes,]
          c4 d8 [e] f4 e8 [f]
          g4 c f,\fermata \fine
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
