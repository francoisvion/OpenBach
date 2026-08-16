\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich armer Mensch, ich armer Sünder"
  opus = "BWV 179/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  e'4
          a' b' c'' b'
          a' b' gis'4. fis'8
          e'4\fermata g' g' f'
          e' a' a' gis'
          a'2.\fermata
          b'4
          c'' d'' e'' e''
          d'' d'' c''\fermata e''
          d'' c'' b' a'
          c'' b' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'16 [d'] f'4 e'16 [d'] c'8 a'4 g'8
          g' [fis'16 e'] fis'8 [fis'] fis' [e'] d' [c']
          b4\fermata e'8 [d'] cis'4 d'
          b8 [c'] d' [e'] fis'4 e'
          e'2.\fermata
          gis'4
          a' b' c''8 [g'] c'' [bes']
          a'4 b' g'\fermata g'
          f' fis' gis' a'
          dis'8 [fis'] f' [e'16 d'] cis'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer nur den lie -- ben Gott lässt wal -- ten und hof -- fet auf ihn al -- le -- zeit,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      den wird er wun -- der -- bar er -- hal -- ten in al -- lem Kreuz und Trau -- rig -- keit. Wer Gott, dem Al -- ler -- höch -- sten, traut, der hat auf kei -- nen Sand ge -- baut.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          c'8 [b16 a] gis8 [e'] e'4 dis'
          e' b b4. a8
          gis4\fermata e a a
          gis8 [a] b [c'] c' [b] b4
          cis'2.\fermata
          e'4
          e'16 [c'] f'4 e'16 [d'] c'8 [d'] e'4
          f'4. e'16 [d'] e'4\fermata c'
          c'8 [b] a [gis16 a] e8 [d'] c' [b]
          a4. gis8 e4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a8 [g]
          f4 e a, b,
          cis dis e2
          e4\fermata cis a, d
          d8 [c] f [e] dis4 e
          a,2.\fermata
          e4
          a g8 [g,] c [b,] a, [g,]
          f, [d,] g,4 c,\fermata c
          d dis e f
          fis8 [dis] e [e,] a,4\fermata \fine
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
