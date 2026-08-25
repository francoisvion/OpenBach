\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Herzensangst"
 poet = "Auteur : Fr. D. Gerh. Müller von Königsberg"
  opus = "BWV 400"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           bes'4 g' c''
          bes'2\fermata ees'4
          f'2 g'4
          aes'2 bes'4
          g' ees'2\fermata
          f'4 g' a'
          bes'2\fermata d''4
          c'' d'' ees''
           d'' c''2
          bes'2.\fermata
          bes'4 b' b'
          c''2\fermata d''4
          ees''4. ees''8 f''4
          ees'' d''2
          c''\fermata bes'4
          c''4. d''8 ees''4
          ees''2 d''4
          ees''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           ees'4 ees' ees'
          d'2\fermata ees'4
          d'8 [c'] bes2
          f' f'4
          ees' bes2\fermata
          d'4 ees' ees'
          d'2\fermata f'4
          f' f' ees'
           f' g' f'8 [ees']
          d'2.\fermata
          f'4 g' g'8 [f']
          ees'2\fermata g'4
          g' g' f'
          g' aes' g'8 [f']
          ees'2\fermata ees'4
          ees' f' g'~
          g' f'8 [ees'] f' [aes']
          g'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O Her -- zens -- angst,
      o Ban -- gig -- keit und Za -- gen!
      was seh' ich hier
      für ei -- ne Lei -- che tra -- gen!
      wess ist das Grab,
      wie ist der Fels zu nen -- nen?
      Ich soll _ ihn ken - nen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           g4 bes aes8 [g]
          f2\fermata bes4
          aes2 g4
          c' bes bes
          bes g2\fermata
          bes4 bes c'
          f2\fermata bes4
          c' bes bes~
           bes2 a4
          f2.\fermata
          d'4 d' g
          g2\fermata d'4
          c' c' c'
          c'2 b4
          g2\fermata des'4
          c'8 [bes] c'4 bes
          bes2 bes4
          bes2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           ees4 ees aes,
          aes,2\fermata g4
          f8 [ees] d4 ees~
          ees d8 [c] d4
          ees ees,2\fermata
          bes,4 ees8 [d] c4
          bes,2\fermata bes4
          a aes g
           f ees f
          bes,2.\fermata
          bes8 [aes] g [f] ees [d]
          c2\fermata b,4
          c4. bes,8 aes,4
          g, f, g,
          c2\fermata g,4
          aes,2 g,8 [aes,]
          bes,2.
          ees,\fermata \fine
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
