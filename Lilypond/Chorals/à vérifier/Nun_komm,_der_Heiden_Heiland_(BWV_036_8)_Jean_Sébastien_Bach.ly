\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun komm, der Heiden Heiland"
  opus = "BWV 36/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          b'4 b' a' d''
          cis''8 [b'] cis''4 b'2\fermata
          b'8 [cis''] d''4 e'' d''
          e'' fis'' d''2\fermata
          d''4 e'' fis''8 [e''] d''4
          e''8 [d''] cis''4 b'2\fermata
          b'4 b' a' d''
          cis''8 [b'] cis''4 b'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          fis'4 e' fis' fis'8 [g'16 a']
          g'8 [fis'] e'4 d'2\fermata
          fis'4. gis'8 a'4. b'8
          cis''4 d''8 [fis'] g'2\fermata
          a'4 a' a'8 [ais'] b'4
          cis''8 [b'] ais'4 fis'2\fermata
          fis'4 eis' fis'8 [gis'] a' [b']
          fis' b'4 ais'8 fis'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Nun komm, der Hei -- den Hei -- land, der Jung -- frau -- en Kind er -- kannt, des sich wun -- dert al -- le Welt, Gott solch' Ge -- burt ihm be -- stellt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 cis'8 [b] cis'4 b
          b4. ais8 fis2\fermata
          d'8 [cis'] b4 cis' d'
          g a8 [b16 c'] b2\fermata
          a4 e' d'8 [cis'] b4
          g' cis'8 [fis'] d'2\fermata
          d'4 cis'8 [b] cis'4 fis'
          e'8 [d'] cis'16 [d' e'8] dis'2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          b8 [a] g4 fis8 [e] d [b,]
          e [d] e [fis] b,2\fermata
          b,4 b a8 [g] fis4
          e d g2\fermata
          fis8 [e] d [cis] d4 g8 [fis]
          e4 fis b,2\fermata
          b8 [a] gis4 fis8 [e] fis [gis]
          ais [b] fis4 b,2\fermata \fine
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
