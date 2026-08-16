\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Sei Lob und Ehr dem höchsten Gut"
  opus = "BWV 251"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          d''4 d''4 [d''8 e''8] f''4
          e''4 d''4 c''4\fermata d''4
          [b'8 a'8] [g'8 a'8] b'4 cis''4
          [d''4 e''4] d''4\fermata
          d''4
          g''4 fis''4 e''4 fis''4
          [g''8 fis''8] e''4 d''4\fermata d''4
          g''4 d''4 e''4 [b'8 c''8]
          d''4 c''4 b'4\fermata b'4
          [a'8 b'8] c''4 b'4 a'4
          [e'16 fis'16 g'4 fis'8] g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  b'4
          a'8 [g'8] fis'4 g'4 c'8 [d'8]
          e'8 [f'8] g'4 c'4\fermata a'4
          d'4 e'8 [fis'8] g'8 [fis'8] e'4
          fis'4 g'4 fis'4\fermata
          b'8 [a'8]
          g'4 d''4 cis''8 [b'8] a'4
          b'8 [d''8] a'4 a'4\fermata g'8 [a'8]
          b'8 [c''8] b'8 [a'8] g'4 g'4
          fis'8 [e'8] e'8 [fis'8] gis'4\fermata g'4
          a'8 [d'8] g'8 [a'8] d'8 g'4 fis'8
          [g'8 b8] e'8 [d'8] d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Sei Lob und Ehr' dem höch -- sten Gut, dem Va -- ter al -- ler Gü -- te,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dem Gott, der al -- le Wun -- der thut, dem Gott, der mein Ge -- mü -- the mit sei -- nem rei -- chen Trost er -- füllt, dem Gott, der al -- len Jam -- mer stillt: gebt un -- serm Gott die Eh -- re!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g'4
          d'4 a4 g8 [b8] a8 [g8]
          c'4 [d'8 e'16 f'16] e'4\fermata d'4
          d'8 [c'8] b4 e'4 a4
          a8 [d'4] cis'8 d'4\fermata
          d'4
          d'8 [e'8] fis'8 [g'8] a'4 d'4
          d'8 [b8] e'4 fis'4\fermata b8 [a8]
          g4 g'8 [fis'8] e'4 e'4
          d'8 [b8] a4 b4\fermata b8 [g8]
          d'4 c'8 [a8] b4 c'8 [a8]
          e'4 a4 b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis8 [e8] d4 g4 a8 [b8]
          c'4 g4 a4\fermata fis4
          g4. fis8 e8 [fis8] g8 [a8]
          fis8 [b8] g8 [a8] d4\fermata
          g8 [a8]
          b8 [cis'8] d'4 a8 [b8] c'4
          b8 [g8] a4 d4\fermata g8 [fis8]
          e4 b,4 c8 [d8] e4
          fis8 [gis8] a4 e4\fermata g4
          fis8 [g8] e8 [fis8] g8 [e8] c8 [d8]
          e4 c8 [d8] g,4\fermata \fine
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
