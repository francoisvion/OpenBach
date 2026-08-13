\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Warum betrübst du dich, mein Herz (I)"
  opus = "BWV 420"
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
          \partial 4  a'4
          a'8 [b'] c''4 b' e''
          d'' c'' b'\fermata c''8 [b']
          a'4 e'' d'' e''
           a'8 [b'] cis''4 d''\fermata c''
          b' e'' e''8 [d''] c''4
          b'2.\fermata a'8 [b']
          c''4 c'' d'' d''
           e'' e''8 [d''] c''4\fermata e''
          d'' c'' b' a'8 [b']
          c''4 b' a'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e' e' e'4. fis'8
          gis'4 a' gis'\fermata a'8 [gis']
          a'4 a' a' g'~
           g'8 [f'] e'4 f'\fermata e'
          e' e'8 [b'] c'' b'4 a'8
          gis'2.\fermata e'4
          e' f'8 [g'] a' [f'] g'4
          g' g' a'\fermata g'8 [a']
          b'4 a' gis' a'
          a'8 [fis'] gis'4 e'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wa -- rum be -- trübst du dich, mein Herz, be -- küm -- merst dich und trä -- gest Schmerz nur um das zeit -- lich Gut? Ver -- trau' du dei -- nem Her -- ren Gott, der al -- ler Ding er -- schaf -- fen hat.
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
          c'8 [b] a4 gis a
          b c'8 [d'] e'4\fermata e'8 [d']
          c' [b] cis'4 d'8 [c'] bes [a]
           a4 a a\fermata a
          gis a8 [gis] a [b] c' [d']
          e'2.\fermata c'8 [b]
          a4 a a8 [b16 c'] b4
          c' c' c'\fermata c'
          f'8 [e'] e'4 d' c'8 [f']
          e' [a b d'] cis'4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a8 [gis] a4 e8 [d] c4
          b, a, e\fermata a,
          a~ a8 [g] f [e d cis]
           d4 a, d,\fermata a,
          e8 [d c e] fis [gis] a4
          e2.\fermata a,4
          a8 [g f e] f [e g f]
          e [d] c4 f\fermata c8 [b,]
          a, [gis, a, g,] f, [e, f, d,]
          e,2 a,4\fermata \bar "|."
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
