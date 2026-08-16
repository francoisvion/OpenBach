\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "In allen meinen Taten"
  opus = "BWV 13/6"
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
          f''4 f'' c'' d''
          bes'2 a'4\fermata
          f'
          bes' c'' d'' d''8 [ees'']
          c''2.\fermata d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata
          d''8 [ees'']
          f''4 f'' c'' d''
          bes'2 a'4\fermata f'
          bes' c'' d'' ees''
          d'' c'' bes'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes'4
          g' a' bes' f'
          g' f' f'\fermata f'8 [ees']
          d' [ees'] f' [g'] a'4 a'
          g'2 c'4\fermata
          d'
          d' f' f' f'
          f'2.\fermata a'4
          g' f' f' g'
          g'2 g'4\fermata
          f'
          f'8 [g'] a' [bes'] c'' [bes'] a' [g']
          f'4 g' f'\fermata c'
          f' g'8 [a'] bes'4 a'8 [g']
          f'4 f'8 [ees'] d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Nun ru -- hen al -- le Wäl -- der, Vieh, Men -- schen, Städt' und Fel -- der, es schläft die gan -- ze Welt; ihr a -- ber mei -- ne Sin -- nen, auf, auf! ihr sollt be -- gin -- nen, was eu -- rem Schö -- pfer wohl -- ge -- fällt.
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
          ees' ees' f' c'
          bes c' bes\fermata bes
          bes bes f' f'
          f' e' a\fermata
          a
          bes a bes bes
          a2.\fermata d'4
          d' c' bes8 [c'] d'4
          d' c' b\fermata
          bes
          c'8 [bes] a [g] f [g] a4
          d' c' c'\fermata a
          bes ees f8 [g] a4
          bes a f\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          ees8 [d] c4 bes, a,
          g, a, bes,\fermata bes,8 [c]
          d [c] d [ees] f4 d
          g2 f4\fermata
          d
          g f8 [ees] d [c] bes,4
          f2. fis4
          g a bes b
          c' c g\fermata
          bes
          a8 [g] f [g] a4 f
          d e f\fermata ees
          d c bes, c
          d8 [ees] f4 bes,\fermata \fine
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
