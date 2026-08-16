\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Mit Fried und Freud ich fahr dahin"
  opus = "BWV 83/5"
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
          \partial 4  d'4
          a' a' g' d''
          c'' b' a'\fermata c''
          a' c'' b'8 [a'] b'4
          a'2.\fermata
          b'4
          c'' b' c'' a'
          g' f' g' e'
          d'2\fermata a'4. g'8
          f' [e'] d'4 c'2\fermata
          a'4 f' c'' a'
          g'8 [f'] g'4 a'\fermata g'
          f' e'8 [d'] cis'4 f'
          e'8 [d'] e'4 d'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a4
          e' f' e' d'8 [e']
          e' [fis'] gis'4 e'\fermata g'
          f' f' b8 [c'] d'4
          cis'2.\fermata
          d'4
          e' f' g' f'
          e' f'8 [e'] d'4 c'
          b2\fermata e'4. cis'8
          d' [c'] bes4 a2\fermata
          e'4 f' g' f'
          e'8 [d'] cis' [d'] cis'4\fermata cis'
          d'8 [c'] bes4 a d'
          e'8 [f'] cis'4 a\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Mit Fried' und Freud' ich fahr' da -- hin in Got -- tes Wil -- le, ge -- trost ist mir mein Herz und Sinn, sanft und stil -- le. Wie Gott mir ver -- hei -- ssen hat, der Tod ist mein Schlaf wor -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f4
          a d' b a8 [b]
          c' [d'] e' [d'] c'4\fermata c'
          c'8 [b] a4 gis8 a4 gis8
          a2.\fermata
          f4
          g d' c' c'
          bes c' g g
          g2\fermata a4 a
          a8 [g] f4 f2\fermata
          a4 a g c'
          bes8 [a] g4 e\fermata a
          a g8 [f] e4 a
          a4. g8 fis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          cis d e fis8 [gis]
          a4 e a,\fermata e
          f e8 [d] e2
          a,2.\fermata
          d4
          c d e f
          g a b c'
          g2\fermata cis4. a,8
          d4. e8 f2\fermata
          cis4 d e f
          g8 [a] bes4 a\fermata a,
          d g, g8 [f] e [d]
          cis [d] a,4 d\fermata \fine
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
