\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Christ, der einge Gottessohn"
 subtitle = "tiré de la cantate : Ihr, die ihr euch von Christo nennet"
 poet = "Elisabeth Creutziger"
  opus = "BWV 164/6"
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
          \repeat volta 2 {
          \partial 4  bes'4
          bes'8 [c''] d''4 c'' bes'
          a'2 g'4\fermata d''
          ees'' c'' d'' c''
          bes'2.\fermata } bes'8 [c'']
          d''4 d'' ees'' ees''
          f'' ees''8 [d''] c''4\fermata f''
          d'' d'' c'' bes'
          a'2 g'4\fermata d''
          ees'' c'' d'' c''
          bes'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f'4
          g'8 [a'] bes'4 a' g'
          g' fis' g'\fermata g'
          g' f' f' f'
          f'2.\fermata } f'4
          bes' bes'8 [a'] g'4 g'
          f'2 f'4\fermata f'
          f' f' f'8 [ees'] d'4
          ees'8 [c'] d'4 d'\fermata g'
          g' f' f'8 [g'] a'4
          f'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Er töt uns durch dein Gü -- te,
      er -- weckt uns durch dein Gnad!
      wohl hier auf die -- ser Er - den,
      den Sinn und all Be -- geh -- ren,
      nur G'dan -- ken habn zu dir.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Den al -- ten Men -- schen krän -- ke,
      daß der neu' le -- ben mag
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          ees' f' f'8 [ees'] d'4
          ees' d'8 [c'] bes4\fermata bes
          bes a bes bes8 [a]
          d'2.\fermata } d'8 [ees']
          f'4 g' g'8 [f'] ees' [d']
          c'4 bes a\fermata c'
          bes bes a a8 [g]
          g4 fis bes\fermata b
          c'8 [d'] ees' [a] bes4 f'8 [ees']
          d'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes4
          ees bes, f g
          c d ees\fermata g
          c f8 [ees] d [ees] f4
          bes,2.\fermata } bes,4
          bes8 [a] g [f] ees [d] c [bes,]
          a,4 bes, f,\fermata a,
          bes,8 [c] d [ees] f [fis] g [bes,]
          c [a,] d4 g,\fermata g
          c'8 [bes] a [f] bes [ees] f [f,]
          bes,2.\fermata \fine
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
