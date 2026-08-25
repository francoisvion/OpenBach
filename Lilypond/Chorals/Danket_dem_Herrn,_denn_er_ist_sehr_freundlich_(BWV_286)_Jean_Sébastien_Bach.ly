\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Danket dem Herrn, denn er ist sehr freundlich"
 poet = "Auteur : Johann Horn (v.1490-1547)"
  opus = "BWV 286"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          \partial 4  a'4
          c'' b' c'' d''
          e'' e'' d'' c''
          b'2 b'4\fermata
          \partial 4  b'
          e'' d'' d'' c''
          b' c'' d'' c''
          b' b' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          a' b'4. a'4 g'8
          g'4 g' g'8 [f'] e'4
          e'2 e'4\fermata
          \partial 4  e'
          e' fis' gis' a'~
          a'8 [gis'] a'4 a'8 [gis'] a'4
          a'4. gis'8 e'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Dan -- ket dem Her -- ren, denn er ist sehr freund -- lich, und sei -- ne Güt' und Wahr -- heit blei -- bet e -- wig -- lich.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          e' e' e' d'~
          d'8 [c'16 b] c'4 b4. a8~
          a4 gis8 [fis] gis4\fermata
          \partial 4  gis
          a a b c'8 [d']
          e'4 e' d' e'
          f' e'8. [d'16] cis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a4. gis8 a [a,] b,4
          c8 [d e f] g4 a
          e2 e,4\fermata
          \partial 4  e8 [d]
          c4 c b, a,
          e a8 [g] f4 e
          d e a,\fermata \fine
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
