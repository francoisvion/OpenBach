\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Christus, der uns selig macht"
  opus = "BWV 245/15"
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
          e''4 e'' e'' e''
          d'' c'' b'2\fermata
          c''4 d'' e'' e''
          d'' c'' b'2\fermata
          a'4 b' c'' a'
          a'8 [g'] f'4 e'2\fermata
          f'4 g' a' a'
          g' f' e'2\fermata
          a'4 gis' a' b'
          c'' b' a'2\fermata
          c''4 d'' e'' e''
          d'' c'' b'2\fermata
          a'4 b' c'' a'
          a'8 [g'] f'4 e'2\fermata
          f'4 g' a' a'
          g' f' e'2~
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          gis'4 gis' a' b'
          a' a' gis'2\fermata
          e'8 [fis'] g'4 g' f'8 [e']
          f'4 e' e'2\fermata
          e'4 e' e' f'
          e' d' cis'2\fermata
          d'4 e' ees' d'
          d'2 cis'\fermata
          d'4 e' e' fis'8 [gis']
          a'4 g' fis'2\fermata
          g'4 g' g' f'
          f' e'8 [fis'] g'2\fermata
          a'4 e' e' e'
          a d' cis'2\fermata
          d'4 e' f' f'
          e' d'2 c'4
          b1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Chris -- tus, der uns se -- lig macht, kein Bös hat be -- gan -- gen, der ward vor uns in der Nacht als ein Dieb ge -- fan -- gen, ge -- führt vor gott -- lo -- se Leut und fälsch -- lich ver -- kla -- get, ver -- lacht, ver -- höhnt und ver -- speit, wie denn die Schrift sa -- get.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          b4 b c' b8 [c']
          d' [e'] f'4 b2\fermata
          a4 bes bes a
          a2 gis\fermata
          c'4 b a8 [b] c' [d']
          e'4 a a2\fermata
          a4 c' c' c'
          bes8 [c'] d'4 a2\fermata
          a4 b c' d'
          e' d' d'2\fermata
          c'4 bes a a
          a8 [b] c'4 d'2\fermata
          d'8 [c'] b4 a8 [b] c' [d']
          e'4 a a2\fermata
          a4 c' c' c'
          c'8 [b] a4 gis a
          gis1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          e4 e a g
          f e8 [d] e2\fermata
          a4 g cis cis
          d a, e2\fermata
          a4 gis a f
          cis d a,2\fermata
          d4 c f, fis,
          g, gis, a,2\fermata
          f4 e8 [d] c4 b,
          a, b,8 [c] d2\fermata
          ees4 d cis d8 [e]
          f [g] a4 g2\fermata
          fis4 gis a a,8 [b,]
          cis4 d a,2\fermata
          d4 c f,8 [g,] a, [b,]
          c4 d e2~
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
