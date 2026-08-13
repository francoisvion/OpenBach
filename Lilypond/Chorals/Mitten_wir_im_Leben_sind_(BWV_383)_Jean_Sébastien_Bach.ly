\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Mitten wir im Leben sind"
  opus = "BWV 383"
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
           g'4 g' a' b'
          c'' c'' b'2
          a'\fermata b'4 c''
          d'' a' g' f'
          e'1\fermata \fine
           r4 d' e' f'
          g'4. f'8 e'4 d'
          c'2\fermata r4 c'
          g' g' a' b'
          c'' c'' b'2
          a'\fermata
          \partial 32 * 16  b'4 c''
          d'' a' g' f'
          e'2\fermata r4 a'
          g' e' f' g'8. [f'16]
          e'2\fermata r4 a'
          g' e' f' g'
          e'2\fermata
          \partial 32 * 16  a'4 g'
          a' b' c'' b'8 [a']
          g'4 f' e'\fermata d'
          a'2 g'4 f'
          e'2\fermata a'4 g'
          a' b' c''8 [b'] a'4
          g'2\fermata
          \partial 32 * 16  c''4 b'
          d'' a' g' f'
          e'2\fermata r4 d'
          a'2 g'4 f'
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           e'4 e' e' e'
          e'8 [fis'16 gis'] a'4 a' gis'
          e'2\fermata g'4 g'
          a'8 [g'] f'4. e'4 d'16 [c']
          b1\fermata \fine
           r4 b c'8 [b] c'4
          d'8 [e']~ e' [d']~ d' [c']~ c' [b]
          g2\fermata r4 g
          c'~ c'8 [e'] f'4~ f'8 e'
          e' [a'16 gis'] a'4~ a'8 [gis'16 fis'] gis'4
          e'2\fermata
          \partial 32 * 16 gis'4 a'~
          a'8 [g'] f'4 e'~ e'8 [d']
          cis'2\fermata r4 f'8 [e']
          d'4~ d'8 [c'] d'4 d'
          c'2\fermata r4 e'
          d'~ d'8 [c'16 b] a4 d'8 [b]
          c'2\fermata
          \partial 32 * 16  e'4 e'
          e' e' e'8 [f' g' f']~
          f' [e']~ e' [d'16 c'] b4\fermata bes
          c' f'~ f'8 [e']~ e' [d']
          c'2\fermata e'4~ e'8 [d']
          c'4 d' e'8 g'4 fis'8
          g'2\fermata
          \partial 32 * 16 g'4 g'
          a'8 [g' f' e'] d' [e' a d']
          cis'2\fermata r4 d'
          d' c'8 [d'] e'4. d'16 [c']
          b1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mit -- ten wir im Le -- ben sind mit dem Tod um -- fan -- gen;
      Wen ist, der uns Hil -- fe bringt, dass wir Gnad er -- lan -- gen?
      Das bist du, Herr, al -- lei -- ne. Uns reu't un -- sre Mis -- se -- tat,
      die dich, Herr, er -- zürnt hat. Heil' -- ger Her -- re Gott,
      heil' -- ger star -- ker Gott, heil' -- ger barm -- herz' -- ger Hei -- land,
      du ew' -- ger Gott: lass uns nicht ver -- sin -- ken
      in des bit -- tern To -- des Not. Ky -- ri -- e -- leis.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           b4 b c' b
          a4. e'8 f' [d'] b [e'16 d']
          c'2\fermata d'4 e'
          f'8 [e'] d'4. c'16 [bes] a8 [b16 a]
          gis1\fermata \fine
           r4 g g c'8 [a]
          b4 c'8 [g] g4~ g8. [f16]
          e2\fermata r4 g
          g c' c'8 [d'] d'4
          c'8 [d'] e'4~ e'8 [b] e' [d']
          c'2\fermata
          \partial 32 * 16 e'4 e'
          d'~ d'8 [c'] bes4 a
          a2\fermata r4 c'~
          c'8 [b] a4 a g8 [b]
          c'2\fermata r4 c'
          b g f8 [e] d [g]
          g2\fermata
          \partial 32 * 16  c'4 b
          c' b a d'
          g8 [c'16 b] a8 [b16 a] gis4\fermata g
          a d'~ d'8 [b c' g]
          g2\fermata c'4 c'8 [bes]
          a [g] f4 g8 [e'] a [d'16 c']
          b2\fermata
          \partial 32 * 16 e'4 d'8 [e']
          f' [e' d' c'] b [cis' d' a]
          a2\fermata r4 a8 [g]
          f [e] f4 e8 [a] a [b16 a]
          gis1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           e4 e8 [d] c [b, a, gis,]
          a,4. c8 d [b,] e4
          a,2\fermata g8 [f] e4
          d8 [e] f4 b,8 [c] d4
          e1\fermata \fine
           r4 g8 [f] e4 a
          g8 [g, a, b,] c4 g,
          c,2\fermata r4 e8 [f]
          e [d e c] f4 gis,
          a,8 [b, c d] e2
          a,\fermata
          \partial 32 * 16 e4 a8 [g]
          f [e] d4~ d8 [cis] d [f]
          a2\fermata r4 f,
          g, a, d8 [c b, g,]
          a,2\fermata r4 a,
          b, c d b,8 [g,]
          c2\fermata
          \partial 32 * 16  a,8 [c] e [d]
          c [b, a, gis,] a,4 b,
          c d e\fermata g
          f8 [e d c] b, [g, a, b,]
          c2\fermata c8 [d] e4
          f8 [e] d4 c d
          e2\fermata
          \partial 32 * 16 e8 [f] g4
          d8 [e] f4~ f8 [e d f]
          a2\fermata r4 f8 [e]
          d4 a,8 [b,] c [cis] d4
          e1\fermata \fine
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
