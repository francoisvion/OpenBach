\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Wer weiß, wie nahe mir mein Ende (v. 1)"
  subtitle = "tiré de la cantate : Wo gehest du hin?"
 poet = "Auteur : Ämilie Juliane von Schwarzburg–Rudolstadt (1637-1706)"
  opus = "BWV 166/6"
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
          \partial 4  d'4
          g' a' bes' a'
          g' a' fis'2
          d'4\fermata f' f' ees'
          d' g' g' fis'
          g'2.\fermata } a'4
          bes' c'' d'' d''
          c'' c'' bes'\fermata d''
          c'' bes' a' g'8 [a']
          bes'4 a' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes4
          d' d' d' d'
          bes ees' d'2
          a4\fermata d' d' c'
          bes bes8 [c'] d'4 d'
          d'2.\fermata } fis'4
          g' f' f' g'
          g' f' f'\fermata f'
          fis' g' g'8 [fis'] g'4
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer weiss wie na -- he mir mein En -- de!
      hin geht die Zeit, her kommt der Tod.
      Mein Gott, ich bitt' durch Chri -- sti Blut:
      mach's nur mit mei -- nem En -- de gut!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Ach wie ge -- schwin -- de und be -- hen -- de
      kann kom -- men mei -- ne To -- des -- noth.
      
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
          \partial 4  g4
          bes a g fis
          g c' a2
          fis4\fermata a bes f
          f g8 [a] bes4 a
          bes2.\fermata } d'4
          d' c' bes bes
          bes a d'\fermata bes
          c' d' ees'8 [d'16 c'] bes8 [c']
          d'4 d'8 [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g fis g d
          ees c d2
          d,4\fermata d g, a,
          bes, ees d d
          g,2.\fermata } d4
          g a bes g
          ees f bes,\fermata bes
          a g c8 [d] ees4
          d8 [c] d4 g,\fermata \fine
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
