\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, wahr' Mensch und Gott"
 poet = "Auteur : Paul Eber (1511-1569)"
  opus = "BWV 336"
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
          \partial 4  a'4
          a' a' fis' b'
          a' a' gis'\fermata cis''
          cis'' cis'' fis'' e''
          e'' dis'' e''\fermata
          \partial 4  cis''
          cis'' cis'' d'' cis''
          b' ais' b'\fermata cis''
          cis'' cis'' b' a'
          a' gis' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'8 [d'] cis' [b] a4 fis'8 [gis']~
          gis' [fis'16 e'] fis'4 e'\fermata e'
          a' a' a' gis'
          gis' fis'8 [a'] a' [gis']\fermata
          \partial 4  gis'4
          fis' e' fis' g'
          fis'8 [g'] fis' [e']~ e' [d']\fermata a'4
          a' a'4. gis'4 fis'8
          e' fis'4 e'8 e'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr Je -- su Christ, wahr'r Mensch und Gott, der du litt'st Mar -- ter, Angst und Spott, für mich am Kreuz auch end -- lich starbst und mir dein's Va -- ters Huld er -- warbst.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'8 [d']
          e'4 e' d' dis'
          e' b b\fermata a
          e' fis' b b
          b b b\fermata
          \partial 4  cis'8 [b]
          a [gis] ais4~ ais8 [b]~ b [ais]
          b [e'] cis'4 b\fermata e'
          e' fis' fis'8 [cis'] cis'4
          cis'8 [b] b [cis'16 d'] cis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,8 [b,]
          cis [b,] a,4 d8 [cis] b,4
          cis dis e\fermata a~
          a8 [gis] fis [e] dis4 e8 [fis]
          gis [a] b4 e\fermata
          \partial 4  eis
          fis g fis e
          d8 [e] fis4 b,\fermata a,
          a8 [gis] fis [e] dis [eis] fis4
          cis8 [d] e4 a,\fermata \fine
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
