\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Singt dem Herrn ein neues Lied"
  opus = "BWV 411"
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
           g'4 g' g' d'
          g' a' b'2\fermata
          g'8 [a' b' cis''] d''4 fis''
          e''2 d''\fermata \bar "|."
           e''4 d'' c'' e''
          d'' c'' b'2
          a'\fermata a'4 gis'
          a' b' c'' c''
          b'2\fermata
          \partial 32 * 16  g'4 a'
          b' c'' c'' b'
          c''2\fermata d''4. c''8
          b'4 a' g'8 [a'] b'4
          a'2 g'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           d'8 [c' b c'] d'4 d'
          e'16 [fis'] g'4 fis'8 g'2\fermata
          d'4 d'8 [g'] fis'4 a'
          b'8 [g'] e' [a'16 g'] fis'2\fermata \bar "|."
           g'8 [e'] fis' [gis'] a'4 e'
          a'8 [gis'] a'4 a'8 [gis'16 fis'] gis'4
          e'2\fermata e'4 e'
          e' e' e' e'
          e'2\fermata
          \partial 32 * 16 e'4. d'16 [c']
          d'8 g'4 f'16 [e'] a'4 g'
          g'2\fermata g'4 fis'
          d' d' e'8 [fis'] g'4~
          g'8 [fis'16 e'] fis'4 d'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Singt dem Herrn ein neu -- es Lied: die Ge -- mei -- ne soll ihn lo -- ben,
      weil er ih -- ren Gren -- zen Fried' hat ver -- lie -- hen hoch von o -- ben.
      Is -- rael sich freu -- e des -- sen, wel -- cher ihn ge -- macht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           b8 [c' d' c'] b [c' b a]
          b4 e'8 [d'] d'2\fermata
          b8 [a] g4 a d'~
          d'8 [cis'16 b] cis'4 a2\fermata \bar "|."
           c'4 d' e'8 [d' c' b]
          a [b] c' [d'16 e'] f'8 [d'] b [e'16 d']
          c'2\fermata c'4 b
          c' b4. a16 [gis] a4~
          a gis\fermata
          \partial 32 * 16 b8 [c'16 b] a4
          g8 [b] a16 [b c'8] d'4. f'8
          e'2\fermata d'4 a
          g a b8 [c'] d'4
          e'8 [c'] a [d'16 c'] b2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           g8 [a b a] g [a g fis]
          e [d c d] g,2\fermata
          g8 [fis g e] fis [e d e16 fis]
          g8 [e] a4 d2\fermata \bar "|."
           c'4. b8 a4. g8
          f4. e8 d [b,] e4
          a,2\fermata a,8 [c e d]
          c [b, a, gis,] a, [b,] c [d]
          e2\fermata
          \partial 32 * 16 e8 [c] f4~
          f8 [e a g] f [d] g4
          c2\fermata b,8 [c] d4
          g,8 g4 fis8 e [d c b,]
          c [a,] d4 g,2\fermata \bar "|."
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
