\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Ewigkeit, du Donnerwort (choral)"
  opus = "BWV 397"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           f'4. g'8 a'4 bes'
          c'' c'' d'' e''
          f''2\fermata f'4. g'8
          a'4 bes' c'' c''
           bes' a' g'2\fermata
          a' f'4 f'
          bes' a' g'2
          f'1\fermata \bar "|."
           c''2 g'4 a'
          bes' bes' a'4. g'8
          g'2\fermata c''
          d''4 e'' f'' a'
          g'4. g'8 f'2\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           c'4 d'8 [e'] f'4 f'
          f'8 [g'] a'4 a'8 [g' bes' a']
          f'2 d'4. e'8
          f'4 g' fis'8 [g'] a'4
           a'8 [g' g' f'] c'2
          c' d'8 [e'] f'4
          f'8 [e'] f'4 f' e'
          c'1 \bar "|."
          f'2 f'8 [e' ees' d']
          d'4 g' g' fis'
          d'2 f'4. e'8
          d' [f'] bes'4 a'8 [g'] f'4
          f' e' c'2 \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O E -- wig -- keit, du Don -- ner -- wort! O Schwert, das durch die See -- le bohrt! O An -- fang son -- der En -- de! Nimm du mich, wenn es dir ge -- fällt, Herr Je -- su, in dein Freu -- den -- zelt. _ _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           a4 bes c' d'
          c' f' f'8 [g' g' cis']
          d'2 a4 bes
          a d' ees' d'
           d' c'8 [d'] e'2
          f'4 ees' d' d'8 [c']
          bes [c'] d'4 d' c'8 [bes]
          a1 \bar "|."
          a8 [bes] c'2 c'4
          bes bes ees' d'8. [c'16]
          bes2 a8 [c'] f'4~
          f' e' f'8 [e'] d'4
          d' c'8 [bes] a2 \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           f,4 f2 d4
          a, a b cis'8 [a]
          d'2\fermata d
          d'4 c'8 [bes] a [g fis d]
           g4 a8 [bes] c'2\fermata
          f bes8 [c' bes a]
          g4 bes,8 [a,] bes,4 c
          f,1\fermata \bar "|."
          a4. bes8 c'4 fis
          g8 [f ees d] c4 d
          g,2\fermata a,
          bes,8 [bes a g] d' [d d' c']
          bes [g c' c] f2\fermata \bar "|."
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
