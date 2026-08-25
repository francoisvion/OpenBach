\version "2.27.1"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm

  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))
}

\header {
 title = "Welt, ade! Ich bin dein müde"
 subtitle = "tiré de la cantate : Wer weiß, wie nahe mir mein Ende"
  opus = "BWV 27/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
          r2 r4 d''8 [d'']
          f''4. f''8 ees''4 c''
          d''2 c''
          r4 bes'8 [bes'] bes' [a'] bes' [c'']
          d''4 c'' bes'2\fermata
          d''4 e'' f'' d''
          c'' bes' a'2
          g'4 d''8 [d''] ees''2~
          ees''4 d'' c''4. c''8
          bes'1\fermata
          a'4 a' bes' c''
          d''4. d''8 cis''2\fermata
          f''4 f'' e'' d''
          e''4. e''8 d''2\fermata
          bes'1 c''2
          d''1 f''2
          ees''1 ees''2
          d''1.\fermata
          f''1 f''2
          f''1.
          ees''2 c''2. c''4
          bes'1.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          f'4 f' f'2~
          f'4 f' g' f'
          f'2 f'4 f'8 [f']
          d'2. bes4
          bes c' d'2\fermata
          f'4 e' d' d'
          f' d' d'2
          d' g'4 g'
          f'4. f'8 f'4 f'
          f'1\fermata
          f'4 d' d' ees'
          d'4. d'8 e'2\fermata
          f'4 f' g' f'
          e'4. e'8 fis'2\fermata
          g'1 ees'2
          f'1 f'2
          g' ees'1
          f'1.\fermata
          f'1 f'2
          f'1.
          g'2 f'2. f'4
          f'1.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Welt, a -- de! ich bin dein mü -- de, ich will nach dem Him -- mel zu, da wird sein der rech -- te Frie -- de und die ew' -- ge stol -- ze Ruh. Welt, bei dir ist Krieg und Streit, nichts, denn lau -- ter Ei -- tel -- keit; In dem Him -- mel al -- le -- zeit Frie -- de, Freud' und See -- lig -- keit.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 d' d'2~
          d'4 d' c' c'
          bes2 c'4 a8 [a]
          bes2. bes4
          bes a bes2\fermata
          bes4 g f bes
          c' g a2
          bes2. bes8 [bes]
          c'4 bes c'4. c'8
          d'1\fermata
          d'4 d' bes a
          d' d a2\fermata
          a4 c' c' a
          a4. a8 a2\fermata
          g1 c'2
          f1 f2
          c'1 c'2
          d'1.\fermata
          d'1 f'2
          d'1 d'2
          c'1 c'2
          d'1.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          bes4 bes bes2~
          bes4 d ees f
          bes,2 f,4 f8 [f]
          g2. g4
          bes f bes,2\fermata
          bes,4 c d bes,
          f, g, d2
          g,2. g8 [g]
          a4 bes f4. f8
          bes,1\fermata
          d4 d d c
          bes,4. bes,8 a,2\fermata
          f,4 f, c d
          a,4. a,8 d2\fermata
          ees1 c2
          bes,1 d2
          c1 c2
          bes,1.\fermata
          bes1 a2
          bes1.
          ees2 f2. f4
          bes,1.\fermata \fine
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
