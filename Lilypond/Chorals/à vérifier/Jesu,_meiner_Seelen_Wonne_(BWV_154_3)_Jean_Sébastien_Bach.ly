\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, meiner Seelen Wonne"
  opus = "BWV 154/3"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' d''
          b' b' a'2\fermata
          b'4 cis'' d'' d''
          cis'' cis'' b'2\fermata
          d''4 e'' fis'' fis''
          e'' e'' d''2\fermata
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' d''8 [cis'']
          b'4 b' a' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          a'4 a' gis' a'
          a'8 [gis'] a'4 gis' gis'\fermata
          a' a' b' a'
          a' gis' e'2\fermata
          gis'4 ais' b' b'
          b' ais' fis'2\fermata
          fis'4 a' a' a'
          a'8 [e'] a' [g'] fis'2\fermata
          e'4 a' e'8 [fis'] gis'4
          a' a' gis' gis'\fermata
          a' a' a'8 [gis'] a'4
          a' gis' e' e'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer -- de mun -- ter mein Ge -- mü -- te, und ihr Sin -- ne geht her -- für,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Dass ihr prei -- set Got -- tes Gü -- te, die er hat ge -- tan an mir, da er mich den gan -- zen Tag vor so manch -- er schwe -- ren Plag, hat er -- hal -- ten und be -- schü -- tzet, dass mich Sa -- tan nicht be -- schmi -- tzet.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          e'4 fis' e'8 [d'] cis'4
          d' e' e' e'\fermata
          e' fis' b cis'8 [d']
          e' [b] e' [d'] cis'2\fermata
          e'4 e' fis' fis'
          fis'8 [cis'] fis' [e'] d'2\fermata
          d'4 cis' d' d'
          d' cis' a2\fermata
          a8 [b] cis'4 b e'
          fis' e' e' e'\fermata
          e' fis' e' e'
          e'8 [b] e' [d'] cis'4 cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          a4 fis cis fis
          b, cis8 [d] e4 e\fermata
          a8 [gis] fis4 gis a
          e e a,2\fermata
          e4 d8 [cis] b, [cis] d [e]
          fis4 fis b,2\fermata
          b4 a8 [g] fis [e] d4
          a a, d2\fermata
          a8 [gis] fis4 gis cis'
          fis8 [gis] a4 e e\fermata
          a8 [fis] e [d] cis [b,] a,4
          e e a, a,\fermata \fine
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
