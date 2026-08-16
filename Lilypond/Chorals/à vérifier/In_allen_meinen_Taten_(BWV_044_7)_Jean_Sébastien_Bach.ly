\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "In allen meinen Taten"
  opus = "BWV 44/7"
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
          bes' c'' d'' d''8 [c'']
          c''2.\fermata d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata
          d''
          f'' f'' c'' d''
          bes'2 a'4\fermata f'
          bes' c'' d'' ees''
          d''8 [c''] c''4 bes'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          ees' ees' d'8 [c'] bes4
          bes' f' f'\fermata g'
          f'8 [ees'] f' [g'] a'4 a'
          g'2 c'4\fermata
          c'
          f' g'8 [a'] bes'4 f'
          f'2.\fermata a'4
          g' f' f' g'
          g' fis' g'\fermata
          g'
          f' f' f' f'
          f' e' f'\fermata a'
          g' f' f' bes'8 [a']
          bes'4 a' f'\fermata \fine
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
          \partial 4  bes4
          g a bes8 [c'] d'4
          d' c' bes\fermata bes
          bes bes f' f'
          f' e' f'\fermata
          a
          bes ees' f'8 [a] bes4
          a2.\fermata d'4
          d' c' bes8 [c'] d'4
          c'8 [b] a4 b\fermata
          bes
          a8 [g] a [bes] c'4 bes8 [c']
          d'4 c' c'\fermata d'
          d' c' bes bes8 [c']
          d' [bes] f' [ees'] d'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          ees8 [d] c4 bes, bes8 [a]
          g4 a bes\fermata g
          d8 [c] d [ees] f4 d
          g2 f4\fermata
          ees
          d c bes,8 [c] d [ees]
          f2.\fermata fis4
          g a bes b
          c' c g\fermata
          g
          d' c'8 [bes] a4 bes8 [a]
          g4 c' f\fermata d
          g a bes8 [a] g4
          f8 [ees] f4 bes,\fermata \fine
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
