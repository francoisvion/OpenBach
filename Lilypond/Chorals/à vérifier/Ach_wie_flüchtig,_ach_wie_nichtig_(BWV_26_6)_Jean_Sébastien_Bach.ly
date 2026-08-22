\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ach wie flüchtig, ach wie nichtig"
 subtitle = "tiré de la cantate : Ach wie flüchtig, ach wie nichtig"
  opus = "BWV 26/6"
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
          a'4 b' c'' c''\fermata
          c'' d'' e'' e''\fermata
          e'' e'' d'' c''
          b'4. a'8 a'2\fermata
          e''4 e'' f'' f''
          e'' e'' d'' d''\fermata
          d'' d'' e'' e''
          d'' d'' c'' c''\fermata
          c'' d'' e'' d''8 [c'']
          b'4 b' a' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          e'4 e' e' e'\fermata
          e' g' g' g'\fermata
          g' c''4. b'4 a'8
          a'4 gis' e'2\fermata
          a'4 a' a' bes'
          bes' a'8 [g'] g' [e'] fis'4\fermata
          g' g' g' a'
          a' g'8 [f'] f' [d'] e'4\fermata
          f' f' e' e'
          fis' e'8 [d'] d' [b] cis'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ach wie flüch -- tig, ach wie nich -- tig sind der Men -- schen Sa -- chen! Al -- les, Al -- les was wir se -- hen, das muss fal -- len und ver -- ge -- hen. Wer Gott fürcht, bleibt e -- wig ste -- hen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          c'4 b a a\fermata
          a b c' c'\fermata
          c'8 [d'] c' [b] a [b] c' [e']
          f'4 e'8 [d'] cis'2\fermata
          cis'8 [d'] e' [cis'] d'4 d'
          d' cis' d' a\fermata
          b8 [c'] d' [b] c'4 c'
          c' b c' g\fermata
          a a b a
          a gis a e\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          a4 gis a a,\fermata
          a g c' c\fermata
          c'8 [b] a [g] fis [gis] a4
          d e a,2\fermata
          a,8 [b,] cis [a,] d [c] bes, [a,]
          g, [e,] a,4 d d,\fermata
          g,8 [a,] b, [g,] c [b,] a, [g,]
          f, [d,] g,4 c c,\fermata
          f e8 [d] gis, [gis] a4
          dis e a a,\fermata \fine
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
