\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Valet will ich dir geben" \small " (v.3)"}}
  subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Valerius Herberger (1562-1627)"
  opus = "BWV 245/26"
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
          \repeat volta 2 {
          \partial 4  ees'4
          bes' bes' c'' d''
          ees''2 ees''4\fermata g''
          f'' ees'' ees'' d''
          ees''2.\fermata } ees''8 [f'']
          g''4 g'' f'' ees''
          d''8 [c''] d''4 bes'\fermata d''
          ees'' d'' c'' c''
          bes'2.\fermata bes'4
          g'8 [aes'] bes'4 c'' bes'
          bes' aes' g'\fermata bes'
          aes' g' f' f'
          ees'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes4
          ees' g' aes' g'
          g'2 g'4\fermata c''
          c'' aes' g' f'
          g'2.\fermata } g'8 [aes']
          bes'4 c'' c'' a'
          bes'8 [a'] bes'4 f'\fermata bes'
          bes' bes' bes' a'
          f'2.\fermata f'4
          ees'8 [f'] g'4 aes' g'
          g' f' ees'\fermata ees'
          ees' ees' ees' d'
          bes2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      In mei -- nes Her -- zen Grun -- de
      dein Nam und Kreuz al -- lein
      Er -- schein mir in dem Bil - de
      zum Trost in mei -- ner Not,
      wie du, Herr Christ, so mil - de
      dich hast ge -- blut't zu Tod.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Fun -- kelt all Zeit und Stun -- de,
      drauf kann ich fröh -- lich sein.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g4
          bes ees' ees' d'
          c'2 c'4\fermata ees'
          c' c' bes bes
          bes2.\fermata } bes4
          ees' ees' f' f'
          f'8 [ees'] f'4 d'\fermata f'
          ees' f' g' f'8 [ees']
          d'2.\fermata bes4
          bes ees' ees' des'
          c'2 c'4\fermata g
          aes bes c' bes8 [aes]
          g2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  ees4
          g ees aes b,
          c2 c4\fermata c'
          aes f bes bes,
          ees2.\fermata } ees4
          ees'8 [d'] c' [bes] a4 f
          bes2 bes,4\fermata aes
          g f ees f
          bes,2.\fermata d4
          ees des c8 [d] e4
          f2 c4\fermata des
          c bes, a, bes,
          ees,2.\fermata \fine
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
