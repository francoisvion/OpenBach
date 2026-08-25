\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Wir Christenleut habn jetzund Freud" \small " (v. 3)"}}
  subtitle = "tiré de la cantate : Dazu ist erschienen der Sohn Gottes"
  poet = "Auteur : Kaspar Füger (1521-1592)"
  opus = "BWV 40/3"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          \partial 4  g'8 [a']
          bes'4 a' g'\fermata g'
          bes' a' g'\fermata d''
          c'' bes' a'\fermata a'
          bes' bes' c'' c''
          d'' d'' c'' bes'
          a'2 g'4\fermata d''
          c'' bes' a'\fermata d''
          c'' bes' a'\fermata a'
          bes' bes' c'' c''
          d'' d'' c'' bes'
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'8 [fis']
          g'4 fis' g'\fermata ees'
          e' fis' d'\fermata d'8 [e']
          f' [ees'] d' [e'] fis'4\fermata fis'
          g' g' g' a'
          bes' bes' a' g'
          g' fis' g'\fermata f'
          f' d' d'\fermata f'
          g' f'8 [e'] f'4\fermata e'
          fis' g' g' a'
          a'8 [c''] bes' [a'] g' [fis'] g'4
          g' fis' d'\fermata \fine
        }
      >>
    }
 
    \new Lyrics \lyricsto "soprano" {
      Die Sünd macht Leid;
      die Sünd macht Leid;
      Chris -- tus bringt Freud,
      weil er zu uns in die -- se Welt ist kom -- men.
      Mit uns ist Gott
      in die -- ser Not:
      Wer ist, der jetzt uns Chris -- ten kann ver -- dam -- men?
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes8 [c']
          d'4 d'8 [c'] bes4\fermata c'
          g d' bes\fermata f8 [g]
          a4 bes8 [c'] d'4\fermata d'
          d' ees' ees'8 [d'] c'4
          f' g' ees' d'
          ees' d'8 [c'] bes4\fermata bes
          a g fis\fermata bes
          bes8 [g] c'4 c'\fermata cis'
          d'8 [c'] bes [a] g [g'] f' [ees']
          d'4 d' g8 [a] bes [g]
          e'4 d'8 [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes8 [a]
          g4 d ees\fermata c
          cis d g,\fermata bes,
          f g d\fermata d
          g8 [f] ees [d] c4 f8 [ees]
          d [c] bes, [a,] g, [fis,] g,4
          c d g,\fermata bes,
          f g d\fermata bes
          e c f\fermata a
          d ees e f
          fis g ees d
          cis d g,\fermata \fine
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
