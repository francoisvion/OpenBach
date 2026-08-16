\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wachet auf, ruft uns die Stimme"
  opus = "BWV 140/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          ees'4 g' bes'4. bes'8
          bes'4 bes' c''2
          bes'\fermata r4 bes'
          ees'' bes' ees''8 [f''] g''4
          f'' ees'' d'' c''
          bes'2\fermata r4 bes'
          ees'' bes' c'' g'
          aes'8 [g'] f'4 ees'\fermata
          bes'
          bes'4. aes'8 g'4 f'
          ees'2\fermata r4 bes'
          bes'4. aes'8 g'4 f'
          ees'2\fermata r4 f'
          g' aes' g'\fermata bes'
          c'' d'' ees''\fermata ees''8 [f'']
          g''4 f'' ees''\fermata bes'
          ees'' bes' c'' g'
          aes'8 [g'] f'4 ees'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          bes4 ees' g' f'
          g' f' g' f'
          f'2\fermata r4 f'
          bes'4. aes'8 g' [aes'] bes'4
          bes' c''4. bes'4 a'8
          f'2\fermata r4 g'
          aes' g' ees' ees'
          ees' d' bes\fermata
          f'
          g'4. f'8 bes [c'] d'4
          c'2\fermata r4 d'8 [ees']
          f'4 f'4. ees'4 d'8
          bes2\fermata r4 d'
          ees'4. d'8 ees'4\fermata g'~
          g'8 f'4 g'8 g'4\fermata g'8 [aes']
          bes'4. aes'8 g'4\fermata g'8 [aes']
          bes' [aes'] bes' [g'] aes'4 ees'
          ees' d' bes2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wa -- chet auf, ruft uns die Stim -- me der Wäch -- ter sehr hoch auf der Zin -- ne: wach' auf, du Stadt Je -- ru -- sa -- lem!
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Mit -- ter -- nacht heisst die -- se Stun -- de; sie ru -- fen uns mit hel -- lem Mun -- de: wo seid ihr klu -- gen Jung -- frau -- en? Wohl -- auf, der Bräut -- gam kommt, steht auf, die Lam -- pen nehmt. Al -- le -- lu -- ja! macht euch be -- reit zu der Hoch -- zeit, ihr müs -- set ihm ent -- ge -- gen gehn.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          g4 bes ees' d'
          ees' bes bes a
          d'2\fermata r4 d'
          ees' ees' bes ees'
          f' f' f'4. c'8
          d'2\fermata r4 ees'
          ees'4. des'8 c'4 c'
          c'8 [bes] aes4 g\fermata
          bes
          ees'8 [d'] c' [d'] ees'4 bes8 [aes]
          g2\fermata r4 bes
          bes8 [c'] d'4 bes8 c'4 bes8
          g2\fermata r4 bes
          bes c'8 [aes] bes4\fermata ees'
          ees' d' c'\fermata ees'
          ees' d' ees'\fermata ees'
          bes ees' ees'4. c'8
          c' [bes] aes4 g2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          ees2~ ees8 g bes [aes]
          g [f] ees [d] ees [c] f4
          bes,2\fermata r4 bes8 [aes]
          g [aes] g [f] ees4 ees'
          d'8 [c'] bes [a] bes4 f
          bes,2\fermata r4 ees8 [des]
          c [d] ees4 aes,8 [bes,] c4
          f, bes, ees,\fermata
          d
          ees f g8 [aes] bes [bes,]
          c2\fermata r4 g
          d8 [c] bes,4 ees8 [c] aes, [bes,]
          ees2\fermata r4 bes8 [aes]
          g4 f ees\fermata ees'
          a b c'\fermata c'
          g8 [aes] bes4 c\fermata ees8 [f]
          g [f] g [ees] aes, [bes,] c4
          f, bes, ees,2\fermata \fine
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
