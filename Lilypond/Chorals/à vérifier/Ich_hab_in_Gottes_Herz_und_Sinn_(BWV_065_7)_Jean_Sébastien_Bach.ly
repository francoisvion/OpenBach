\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich hab in Gottes Herz und Sinn"
 subtitle = "tiré de la cantate : Sie werden aus Saba alle kommen"
  opus = "BWV 65/7"
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
          \repeat volta 2 {
          \partial 4  e'4
          g' a' g' c''
          c'' b' c''\fermata c''
          b' a' d''4. c''8
          b'4 c'' b'2
          a'2.\fermata }
          a'4
          a' a' b'4. a'8
          b'4 g' g' fis'
          g'\fermata g' a' b'
          c'' b' a'2
          b'4\fermata e'8 [fis'] g'4 a'
          g' c'' c'' b'
          c''\fermata c'' b' a'
          d''4. c''8 b'4 c''
          b'2 a'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          e'8 [d'] c' [d'] e' [f'] g'4
          g' g' g'\fermata g'
          g' f'8 [g'] a'2
          gis'4 a'2 gis'4
          e'2.\fermata }
          e'4
          d'8 [e'] fis'4 g'4. a'8
          g'4 e' e' d'
          d'\fermata e' fis' f'
          e'8 [fis'] gis'4 a'4. dis'8
          e'4\fermata b e' fis'
          e' e' a' g'
          g'\fermata a' a'8 [g'] g' [f']
          f'4. e'8 d'4 c'8 [d']
          e'2 e'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ei nun, mein Gott, so fall ich dir ge -- trost in dei -- ne Hän -- de. _ _ wie du wohl weißt, dass mei -- nem Geist da -- durch sein Nutz ent -- ste -- he, und dei -- ne Ehr je mehr und mehr sich in mir selbst er -- hö -- he. _ _
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      nimm mich und mach es so mit mir bis an mein letz -- tes En -- de, _ _ wie du wohl weißt, dass mei -- nem Geist da -- durch sein Nutz ent -- ste -- he, und dei -- ne Ehr je mehr und mehr sich in mir selbst er -- hö -- he. _ _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a4
          b a8 [b] c'4 c'8 [d']
          e' [d'16 c'] d'4 e'\fermata e'
          d' d' a e'
          e' e' e'4. d'8
          c'2.\fermata }
          c'8 [b]
          a4 d' d'4. dis'8
          e'4 b a a
          b\fermata c' a d'
          c'8 [d'] e'4~ e'8 d' c' [fis]
          gis4\fermata g8 [a] b4 c'
          b c' d' d'
          e'\fermata e' f'8 [e'] e' [d']
          d' [c'] b [a] e'2~
          e'8 a gis4 cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          e f c8 [d] e [f]
          g4 g, c\fermata c
          g d8 [e] f [g] a4
          e8 [d] c [a,] e2
          a,2.\fermata }
          a8 [g]
          fis4 e8 [d] g [d] g [fis]
          e [b,] e [d] c [a,] d4
          g,\fermata c c'8 [b] a [gis]
          a4 e8 [d] c [b,] a,4
          e\fermata e e dis
          e a8 [g] fis4 g
          c\fermata a, d8 [e] f4
          b,8 [c] d4 gis,8 [e] c [a,]
          e2 a,4\fermata \fine
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
