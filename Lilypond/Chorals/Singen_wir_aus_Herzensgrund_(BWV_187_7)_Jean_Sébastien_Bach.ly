\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Singen wir aus Herzensgrund (v. 4 - 6)"
  subtitle = "tiré de la cantate : Es wartet alles auf dich,"
 poet = "Auteur : Hans Vogel (?-v.1565)"
  opus = "BWV 187/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 g'8 [a'] bes'4
          a'2 g'4
          fis'8 [g'] g'4. fis'16 [g']
          a'2.\fermata
          a'8 [bes'] bes'4. a'16 [bes']
          c''2 d''4
          bes' a'2
          g'2.\fermata
          a'2 bes'4
          c''2 bes'4
          a' g'2
          f'2.\fermata
          c''4 d'' e''
          f'' e''2
          d'' cis''4
          d''2.\fermata
          d''2 d''4
          c''8 [bes'] a' [bes'] c''4
          d'' c'' bes'
          a'2.\fermata
          d''2 d''4
          c'' d'' ees''
          d'' c'' bes'
          a'2.\fermata
          a'8 [bes'] bes'4. a'16 [bes']
          c''2 d''4
          bes' a'2
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 g'8 [fis'] g'4
          g' fis' g'
          c' d' cis'
          d'2.\fermata
          fis'4 g'2
          g'4 a' fis'
          d' ees' d'
          d'2.\fermata
          f'2 f'4
          e' f' g'
          f'2 e'4
          c'2.\fermata
          a'4 g'2
          f'4 bes' a'
          f' bes' a'
          a'2.\fermata
          bes'2 bes'4
          a'8 [g'] f' [g'] a'4
          a' fis' g'
          fis'2.\fermata
          g'4 a' bes'
          a' g' fis'
          g' fis' g'
          fis'2.\fermata
          fis'8 [g'] g'4. fis'16 [g']
          a'8 [g'] fis' [g'] a'4
          g'2 fis'4
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gott hat die Er -- de zu -- ge - richt',
      läßts an Nah - rung man -- geln nicht;
      Berg und Tal, die macht er naß,
      daß __ _ dem Vieh auch wächst sein Gras;
      aus der Er - den Wein __ _ und Brot
      schaf -- fet Gott __ _ und gibts __ _ uns satt,
      daß der __ _ Mensch sein Le -- ben hat.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wir dan -- ken sehr und bit - ten ihn,
      daß er uns geb des Geis -- tes Sinn,
      daß wir sol -- ches recht ver -- stehn,
      stets __ _ in sein' Ge -- bo -- ten gehn,
      Sei -- nen Na - men ma - chen groß
      In Chris -- to __ _ ohn Un - ter -- laß:
      So sing'n __ _ wir das Gra -- ti -- as.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes8 [c'] d'4 d'
          ees' d'8 [c'] bes4
          a g8 [a] bes4
          fis2.\fermata
          d'2 d'4
          c'8 [bes] a [g] a4
          g2 fis4
          bes2.\fermata
          d'2 d'4
          c'8 [bes] a4 g
          a d' c'
          a2.\fermata
          a4 b cis'
          d'2 cis'4
          d' e'2
          fis'2.\fermata
          f'2 f'4
          f'2 ees'4
          d'2 d'4
          d'2.\fermata
          d'4 c' bes
          c'2 c'4
          bes a g
          d'2.\fermata
          d'2 d'4
          c' ees' d'
          d' ees' d'8 [c']
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          g8 [a] bes [a] g4
          c d ees
          a, bes, g,
          d2.\fermata
          d4 g f
          e fis d
          g c d
          g,2.\fermata
          d8 [e] f [e] d4
          a d e
          f bes, c
          f,2.\fermata
          f2 e4
          d g8 [f] g [a]
          bes4 g a
          d2.\fermata
          bes,8 [c] d [c] bes,4
          f2 f4
          fis d g
          d2.\fermata
          bes4 fis g
          a2 a,4
          bes,2 c4
          d2.\fermata
          d'4 c' bes
          a g fis
          g c d
          g,2.\fermata \fine
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
