\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzlich lieb hab ich dich, o Herr"
  opus = "BWV 340"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  c''4
          b' a' g' f'8 [e']
          a'4 a' g'\fermata c''
          b' a' g' f'8 [e']
          a'4 a' g'\fermata g'
           a' b' c''8 [d''] e''4
          d''2 c''4\fermata \bar "|."
          \partial 4 c''
          c'' d'' c'' a'8 [b']
          c''4. c''8 b'4\fermata b'
          c'' d'' c''8 [b' a' b']
           c''4. d''8 b'4\fermata
          \partial 4 e''
          f''8 [e''] d''4 e''8 [d''] c''4
          c'' b' c''\fermata b'
          c'' b' a'8 [b'] g'4
          g'8 [a'] fis'4 g'\fermata e''
           d'' c'' b'\fermata
          \partial 4 e''
          f''8 [e''] d''4 e''8 [d'' c'' b']
          a' [d''] b'4 c''\fermata c''
          c'' c'' d'' c''
          c'' b' c''\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          g'8 [f'] e'4 e' e'8 [d']
          c'4 f' e' e'8 [f']
          g'4 f'8 [e'] d'4 c'8 [d']
          e' [dis' e' fis'] fis' [e']\fermata e'4
           d'8 [c'] f'4 e' a'
          a' g'8 [f'] e'4 \bar "|."
          \partial 4 g'
          a' b' a' e'
          e' d' d' g'
          g' g' g' f'
          e'4. fis'8 gis'4
          \partial 4 a'8 [g']
          f'4 g' g'8 [f'] e'4
          a' g' g' g'
          a' a'8 [g'] g' [fis' fis' e']
          e'4 d' d' c'
           d'8 [e' e' dis'] e'4
          \partial 4 e'8 [d']
          c' [e' gis' a'] b'4 e'
          e'8 [d'] e'4 e' c''8 [bes']
          a' [g' f' e'] d'4 e'8 [g']
          g'4. g'8 g'4 \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herz -- lich lieb hab' ich dich, o Herr, ich bitt': woll'st sein von mir nicht fern mit dei -- ner Hilf' und Gna -- den. Die gan -- ze Welt nicht freut mich, nach Him -- mel und Erd nicht frag ich, wenn ich dich nur kann ha -- ben. der mich durch sein Blut hat er -- löst. Herr Je -- su Christ, mein Gott und Herr, mein Gott und Herr: in Schan -- den laß mich nim -- mer mehr.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  e'4
          d' d'8 [c'] b4 c'8 [b]
          a [b] c'4 c' c'8 [d']
          e' [d'] c'4 d' g
          c'8 [b a c'] b4 c'8 [b]
           a4 d' c'8 [b] c'4
          c' b g \bar "|."
          \partial 4 e'
          e'8 [c' f' e'] e'4. d'8
          c' [b] a4 g d'
          e' f' e' a8 [gis]
          a [e] a4 b
          \partial 4 a
          d'8 [c'] b4 b c'
          d' e'8 [f'] e'4 d'
          d' d'8 [e'] e' [d' b c']
          c'4 a8 [b16 c'] b4 g8 [a]
           b4 a8 [fis] gis4
          \partial 4 c'8 [b]
          a [c' d' f'] b4 c'
          c'8 [a b gis] a4 g
          c'8 [bes] a4 a8 [g g e']
          d' [c'] d'4 e' \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          g a e8 [d] c4
          f8 [g a b] c'4\fermata a
          e f b, c8 [b,]
          a, [b, cis dis] e4\fermata c
           f e8 [d] a4. g8
          f [d] g4 c\fermata \bar "|."
          \partial 4 c'8 [b]
          a4. gis8 a [b c' b]
          a [g fis d] g4\fermata g8 [f]
          e [d c b,] c4 d
          a,8 [b, c a,] e4\fermata
          \partial 4 cis
          d g8 [f] e4 a8 [g]
          f [d] g4 c\fermata g
          g8 [fis g e] c [d e c]
          a,4 d g,\fermata c
           g8 [gis] a4 e\fermata
          \partial 4 a,
          a b8 [a] gis4 a8 [g]
          fis4 gis8 [e] a4\fermata e
          f8 [g] a4 b, e8 [c]
          g4 g, c\fermata \bar "|."
        }
      >>
    }
  >>
}

\paper {
  indent = 10
  page-count = 1
}
\layout {}
\midi {}
