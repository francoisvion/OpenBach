\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Es woll uns Gott gnädig sein (I)"
  opus = "BWV 311"
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
          \repeat volta 2 {
          \partial 4  cis''4
          d'' cis'' b' cis''8 [d'']
          e''4 fis'' e'' d''
          cis''2\fermata r4 e''
          d'' cis'' d'' b'
          a' fis'8 [g'] a'4 g'
          fis'2.\fermata }
          \partial 4  a'4
          g' fis' e' fis'
          d' e' fis'\fermata cis''
          d'' cis'' b' cis''8 [d'']
          e''4 d'' cis''\fermata fis''
          e''8 [d''] cis'' [d''] e''4 b'
           a' g' fis'\fermata e'
          a' b' cis''8 [d''] e''4
          d'' cis'' b'\fermata d''
          cis'' b' a'8 [g'] fis' [g']
          a'4 g' fis'2~
          fis'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  fis'4
          fis' fis' g' a'
          g' fis'8 [gis'] ais'4 b'
          ais'2\fermata r4 cis''
          b'8 [a'] g'4 a' g'8 [fis']
          e'4 d'8 [e'] fis'4 e'8 [d']
          cis'2.\fermata }
          \partial 4  cis'4
          d' d' cis' cis'
          d'8 [cis'] b4 cis'\fermata fis'
          fis'8 [gis'] ais'4 b' ais'8 [b']
          cis'' [fis'] fis'4 fis'\fermata a'
          gis' a' e' e'
          e'8 [d' e' cis'] d'4\fermata cis'
          cis'8 [dis'] e'4 e'8 [fis' g' fis']
          fis' [gis'] a'4 gis'\fermata fis'
          e'8 [fis'] g'4 fis'8 [e'] d'4
          e'2. d'4~
          d' cis'8 [b] cis'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es woll' uns Gott ge -- nä - - dig sein und sei -- nen Se -- gen ge - - - ben; dass wir er -- ken -- nen sei -- ne Werk; und, was ihn liebt, auf Er - den, und Je -- sus Chris -- tus Heil und Stärk be -- kannt den Hei -- den wer - den und sie zu Gott be -- keh - ren.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sein Ant -- litz uns mit hel - - lem Schein, er -- leucht zum ew -- gen Le - - - ben, }
    \new Lyrics \lyricsto "alto" {
      \repeat unfold 54 {\skip1} be -- keh - - ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           \repeat volta 2 {
          \partial 4  ais4
          b cis'8 [d'] e'4 a
          b8 [cis'] d'4 e' fis'
          fis'2\fermata r4 fis'
          fis' e' d' d'
          e' a8 [b] c'4 b
          ais2.\fermata }
          \partial 4  a4
          b a a8 [g] fis4
          fis b ais\fermata ais
          b e' fis' e'8 [d']
          cis'4 b ais\fermata b
          b a b8 [a] gis4
          a a a\fermata a
          a gis ais8 [b] cis'4~
          cis'8 [b] e'4 e'\fermata a8 [b]
          cis'4 d' d' a
          a b cis' b~
          b ais8 [gis] ais4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  fis4
          b a g fis
          e d cis b,
          fis2\fermata r4 ais
          b e fis g
          cis d dis e
          fis2.\fermata }
          \partial 4  fis4
          b,8 [cis] d4 a, ais,
          b, g, fis,\fermata fis
          b cis' d' cis'8 [b]
          ais4 b fis\fermata dis
          e fis gis8 [fis e d]
          cis [b, cis a,] d4\fermata a8 [gis]
          fis4 e8 [d] cis [b,] ais,4
          b, cis8 [dis] e4\fermata fis8 [gis]
          a4 b8 [cis'] d'4 d
          c b, ais, b,
          fis,2.\fermata \fine
        }
      >>
    }
  >>

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}

\midi {}

}