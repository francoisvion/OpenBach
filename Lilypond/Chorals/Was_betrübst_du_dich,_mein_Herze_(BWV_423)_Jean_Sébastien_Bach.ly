\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Was betrübst du dich, mein Herze"
  opus = "BWV 423"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          d''4 c'' bes' a'
          bes' a'8 [g'] fis'4 d'\fermata
          d'' d'' ees'' c''
          d'' c''8 [bes'] a'2\fermata
          d''4 c'' bes' a'
          bes' a'8 [g'] fis'4 d'\fermata
          d'' d'' ees'' c''
          d'' c'' bes'2\fermata
          d''4 ees'' f'' d''
          ees'' d'' d''8 [c''] c''4\fermata
          c'' d'' ees'' d''
          c''4. bes'8 a'4 f'\fermata
          d'' a' bes' a'
          bes' c'' d''2\fermata
          d''4 d'' c'' bes'
          a'4. g'8 g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          g'8 [a'16 bes'] a'4. g'4 fis'8
          d' [g'16 f'] ees'4 d' a\fermata
          bes8 [c'] d'4 g g'
          a'4. g'8 fis'2\fermata
          fis'4 g'8 a'4 g' fis'8
          g' [f'] e'4 d' a\fermata
          bes8 [d'] f'4 g'4. f'8
          f'4 f'8. [ees'16] d'2\fermata
          f'4 g' f' g'8 [f']
          ees' [c'] f'4 f' f'\fermata
          f' f' g'8 [fis'] g'4
          g'8 [fis'] g'4 f' c'\fermata
          a'8 [g'] a'4. g'4 fis'8
          g'4 g' fis'2\fermata
          g'4 g'4. fis'8 g'4~
          g'8 [fis'16 e'] fis'4 d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Was be -- trübst du dich, mein Her -- ze,
      wa -- rum grämst du dich in mir?
      Sa -- ge, was für Noth dich Schmer -- ze,
      wa -- rum ist kein Muth in dir?
      Was für Un -- glück hat dich trof -- fen
      und wo bleibt dein freu -- dig Hof -- fen?
      Wo ist dei -- ne Zu -- ver -- sicht,
      die zu Gott sonst war ge -- richt't?
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes8 [c'16 d'] ees'8 [d'] d'4~ d'8. [c'16]
          bes8 [d'] c' [bes] a4 fis\fermata
          g g'8 [f'] ees'16 [d'] c'4 bes8
          a [d'] d'4 d'2\fermata
          a4 g8 [d'] d'4 d'
          d' e'8 [a] a4 fis\fermata
          f8 [bes d' c'] bes4 c'~
          c'8 bes4 a8 f2\fermata
          d'8 [c'] bes4. a8 bes4~
          bes8 [a] bes4. a8 a4\fermata
          a bes4. a8 bes4
          c' c' c' a\fermata
          a d' d' d'
          d' ees' a2\fermata
          bes4 d' ees'8 [d'] e'4
          a8 [d'] d'8. [c'16] bes2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g4. fis8 g4 d
          g, c d d,\fermata
          g,8 [a, bes, g,] c [d] ees4
          fis, g, d2\fermata
          d4 e8 [fis] g4 d
          g cis d d,\fermata
          bes, bes8 [a] g4 a
          bes f bes,2\fermata
          bes8 [a] g4 d g
          c d8 [ees] f4 f,\fermata
          f8 [ees] d4 c g8 [f]
          ees4 e f f,\fermata
          fis8 [e fis d] g4 d
          g8 [f] ees4 d2\fermata
          g4 bes, c cis
          d d, g,2\fermata \fine
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
