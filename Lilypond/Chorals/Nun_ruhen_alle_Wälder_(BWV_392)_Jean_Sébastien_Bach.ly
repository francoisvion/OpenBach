\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun ruhen alle Wälder"
  opus = "BWV 392"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata d''8 [ees'']
          f''4 f'' c'' d''8 [c'']
          bes'2 a'4\fermata
          \partial 4  f'
          bes' c'' d''8 [ees''16 f''] ees''8 [d'']
          c''2.\fermata d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata
          \partial 4  d''8 [ees'']
          f''4 f'' c'' d''
          bes'2 a'4\fermata f'
          bes' c'' d'' c''8 [d''16 ees'']
          d''4 c'' bes'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes'4
          g' a' bes' bes'
          bes' a' bes'\fermata f'
          bes' bes'4. a'8 a'4
          g'2 f'4\fermata
          \partial 4  c'
          f' g'8 [a'] bes'4 bes'
          f'2\fermata r4 a'
          a'8 [g' g' f'] f' [g' aes' g']
          g'4 fis' g'\fermata
          \partial 4 bes'
          c''8 [a'] bes'4 g'8 [f'] a'4~
          a' g' f'\fermata c'
          f' ees' f' g'
          f' f' f'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Nun ru -- hen al -- le Wäl -- der, Vieh, Mensch -- en, Städt' und Fel -- der, es schläft die gan -- ze Welt; ihr a -- ber mei -- ne Sin -- nen, auf, auf! ihr sollt be -- gin -- nen, was eu -- rem Schö -- pfer wohl -- ge -- fällt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f'4
          ees' ees' f' f'
          g' f' f'\fermata bes8 [c']
          d' [ees'] f'4 f' f'8 [ees']
          d'4 c' c'\fermata
          \partial 4  a
          bes8 [d'] ees'4 f'8 [d'] bes4
          a2\fermata r4 d'
          d'8 [ees' ees' f'] d'2
          g4 a b\fermata
          \partial 4 g'
          f'8 [ees'] d'4 e'8 [f'] f'4
          f' e' c'\fermata a
          bes4. a8 bes4 bes
          bes a8 [ees'] d'4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          ees d8 [c] bes,4 d
          c f bes,\fermata bes
          bes,8 [c d ees] f4 d
          g8 [f e c] f4\fermata
          \partial 4  f8 [ees]
          d4 c bes, ees
          f2\fermata r4 fis
          g a bes b
          c' c g\fermata
          \partial 4 g
          a8 [f] bes4~ bes8 [a g f]
          g4 c f\fermata f8 [ees]
          d4 c bes, ees
          f f, bes,\fermata \bar "|."
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
