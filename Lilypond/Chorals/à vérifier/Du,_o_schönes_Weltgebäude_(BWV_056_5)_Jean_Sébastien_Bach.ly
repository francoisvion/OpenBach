\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Du, o schönes Weltgebäude"
  opus = "BWV 56/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          r4 c''2 g'4
          c'' c'' bes' bes'8 [a']
          a'2 g'\fermata
          r4 ees'2 g'4
          f' ees'8 [d'] ees'4 d'
          c'1\fermata
          ees'2 f'4 g'
          aes' aes' g' g'
          f'2 ees'\fermata
          g'4 a' bes' g'
          c'' c'' b'2\fermata
          c''4 ees'' d'' c''
          c'' b' c''2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          r4 ees'2 d'4
          fis'8 [g'] a'4 a'8 [g'] g'4
          g' fis' d'2\fermata
          r4 c'2 c'4
          d'8 [b] c'4 c' b
          g1\fermata
          c'2 d'4 ees'
          f' f' f'8 [d'] ees'4
          ees' d' bes2\fermata
          ees'4 ees' f' ees'
          ees' ees'8 [d'] d'2\fermata
          g'4 g' aes'8 g'4 f'8
          g'4 g' g'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Du, o schö -- nes Welt -- ge -- bäu -- de, magst ge -- fal -- len wem du willst, De -- nen, die den Him -- mel has -- sen,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dei -- ne schein bar -- li -- che Freu -- de is mit lau -- ter Angst um -- hüllt. will ich ih -- re Welt -- lust las -- sen; mich ver -- langt nach dir al -- lein, al -- ler -- schön -- ster Je -- su mein.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          r4 g2 bes4
          c' ees'8 [d'] d'4 ees'
          d'4. c'8 b2\fermata
          r4 c'2 g4
          aes a g g8 [f]
          ees1\fermata
          g2 bes
          c'4 bes bes c'
          c' bes8 [aes] g2\fermata
          bes4 c' bes bes
          c'8 [bes] a4 g2\fermata
          g4 c' c'8 [b] c' [d']
          ees'4 d' e'2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          r4 c2 bes,4
          a, fis g c
          d2 g,\fermata
          r4 aes,2 ees4
          f fis g, r
          c1\fermata
          c4 bes, aes, g,
          f, d ees c
          aes, bes, ees,2\fermata
          ees4 c d ees
          aes,8 [g,] fis,4 g,2\fermata
          ees8 [d] c4 f8 [g] aes4
          g g, c,2\fermata \fine
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
