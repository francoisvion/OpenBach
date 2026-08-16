\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, wahr Mensch und Gott"
  opus = "BWV 127/5"
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
          \partial 4  f''4
          f'' f'' e'' c''
          d'' e'' f''\fermata f''
          e'' d'' c'' bes'
          a' g' a'\fermata
          a'
          g' a'8 [b'] c''4 d''
          c'' b' c''\fermata c''
          d'' e'' f'' e''
          d'' d'' c''\fermata
          c''
          bes' a' d'' c''
          bes' a' g'\fermata g'
          a' b' c'' d''
          c'' b' c''\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          a' a' g' a'8 [g']
          f'4 g' a'\fermata a'
          g'8 [f'] f' [g'] g' [a'] d' [e']
          f'4 e'8 [d'] cis'4\fermata
          d'
          d'8 [c'] c'4 c'8 [f'] f'4
          f'8 [e'] d'4 e'\fermata f'
          f' bes' a'8 [g'] g'4
          fis' gis' a'\fermata
          a'
          a'8 [g'] g' [f'] f' [ees'] ees' [d']
          d' [e'] f'4 e'\fermata e'
          ees'8 [d'] d'4 ees' f'
          f'8 [ees'] d'4 e'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Herr Je -- su Christ, wahr'r Mensch und Gott, der du litt'st Mar -- ter, Angst und Spott, für mich am Kreuz auch end -- lich starbst und mir dein's Va -- ters Huld er -- warbst. Ich bitt' durch bit -- ter Lei -- den dein, du wollst mir Sün -- der gnä -- dig sein!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          c' c'8 [d'] e'4 f'8 [e']
          d' [c'] bes4 c'\fermata d'8 [c']
          bes [c'] d'4 e'8 [d'] d' [cis']
          d' [a] bes4 e\fermata
          f
          g f e8 [a] a [g]
          g4 g g\fermata a
          bes bes c'8 [d'] e'4
          a8 [b16 c'] d'8 [e'] e'4\fermata
          e'
          f'8 [c'] c'4 bes fis
          g c' c'\fermata c'
          c' g g aes8 [g]
          g4 g g\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f8 [g]
          a4 g8 [f] c' [bes] a4
          bes8 [a] g4 f\fermata d
          g8 [a] bes4 e8 [fis] g4
          d8 [c] bes,4 a,\fermata
          d
          e f8 [g] a4 b
          c' g c\fermata f
          bes a8 [g] a [b] c'4
          c'8 [b16 a] b8 [e] a4\fermata
          a,
          d8 [e] f4 bes,8 [c] d4
          g, a,8 [bes,] c4\fermata c'
          fis f ees b,
          c g, c\fermata \fine
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
