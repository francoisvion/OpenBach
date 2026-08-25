\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Wo soll ich fliehen hin (v. 9)"
  subtitle = "tiré de la cantate : Erforsche mich, Gott, und erfahre"
 poet = "Johann Heermann"
  opus = "BWV 136/6"
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
          \partial 4  b'4
          b' cis'' d'' e''
          fis''2.\fermata fis''4
          fis'' e'' d'' e''
          cis''2.\fermata cis''4
          d'' e'' fis'' fis''
          e''2 fis''4 fis''
          d'' e'' fis'' fis''
          e''2 d''4\fermata fis''
          a'' fis'' fis'' fis''
          e''2 e''4\fermata e''
          fis'' e'' d'' e''8 [d'']
          cis''2 b'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          g' fis' fis' g'
          cis'2.\fermata fis'4
          gis' ais' b' cis''
          ais'2.\fermata ais'4
          b' e' d' a'
          a'2 ais'4 fis'
          fis'8 [gis'] a'4 a' a'
          b' a' a'\fermata a'
          a' d'' cis'' b'
          b'2 e'4\fermata b'
          cis'' cis'' fis' g'
          g' fis' fis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Dein Blut, der ed -- le Saft,
      hat sol -- che Stärk und Kraft,
      daß auch ein Tröpf -- lein klei -- ne die gan -- ze Welt könnt rei -- ne,
      ja, gar aus Teu -- fels Ra -- chen
      frei, los und le -- dig ma -- chen.
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          e' e' d' cis'8 [b]
          ais2.\fermata ais4
          b cis' d' g'
          fis'2.\fermata fis4
          fis a a4. b8
          cis'2 cis'4 cis'
          b cis' d' d'
          d' cis' d'\fermata d'
          e' a8 [d'] e' [cis'] d'4
          d'2 cis'4\fermata b
          fis' ais b b
          e'8 [d'] cis'4 dis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b4
          e' ais b8 [a] g4
          fis2.\fermata e4
          d cis b, e
          fis2.\fermata fis4
          b, cis d8 [e] fis [g]
          a [b] a [g] fis [gis] ais [fis]
          b4 a8 [g] fis [e] d [fis]
          g [e] a [a,] d4\fermata d'
          cis' d' ais b8 [a]
          gis [fis] gis [e] a4\fermata g
          fis8 [e] d [cis] b [a] g [fis]
          e [cis] fis [fis,] b,4\fermata \fine
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
