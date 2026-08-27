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
  poet = "Auteur : Johann Georg Albinus (1624-1679)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano1" {
          \voiceOne
          r2 r4 d''8 d''
          f''4. f''8 ees''4 c''
          d''2 c''
          r4 bes'8 bes' bes' [a'] bes' [c'']
          d''4 c'' bes'2
          d''4 e''! f'' d''
          c'' bes' a'2
          g'4 d''8 d'' ees''2~
          \once \override NoteColumn.force-hshift = #-1 ees''4 d'' c''4. c''8
          bes'1
          a'4 a' bes' c''
          d''4. d''8 cis''2
          f''4 f'' e'' d''
          e''4. e''8 d''2 \bar "||" \break
          \time 3/1
          \override NoteHead.style = #'baroque
          bes'\breve c''1
          d''\breve f''1
          ees''!\breve ees''1
          d''\breve.
          f''\breve f''1
          f''\breve.
          ees''!1 c''1. c''2
          bes'\breve. \fine
        }
        
        \new Voice = "soprano2" {
          \voiceThree \shiftOff
          r2 r4 \override Flag.transparent = ##t bes'8 bes' \override Flag.transparent = ##f
          d''4 bes' c'' a'
          bes'2 a'
          r4 \override Flag.transparent = ##t g'8 g' \override Flag.transparent = ##f \shiftOn g'4 g' \shiftOff
          f'4. f'8 f'2
          d''4 c'' a' bes'
          a' g' \shiftOn g' \shiftOff fis'
          \shiftOn g'4 \shiftOff \once \override Flag.transparent = ##t bes'8 \once \override Flag.transparent = ##t bes'  bes'2~
          \once \override NoteColumn.force-hshift = #-1 f'4 \shiftOn  bes'2  \shiftOff a'4
          \shiftOn bes'1 \shiftOff
          f'4 f' g' a'
          \shiftOn a' \shiftOff g' a'2
          a'4 a' g' \shiftOn d''
          d''4 cis'' d''2 \shiftOff \bar "||"
          \time 3/1
          \override NoteHead.style = #'baroque
          g'\breve a'1 
          bes'\breve bes'1
          bes'\breve a'1
          bes'\breve.
          d''\breve c''1
          bes'\breve bes'1
          bes'\breve a'1
          \shiftOn bes'\breve. \fine
        }
        
        \new Voice = "alto" {
          \voiceFour \stemDown
          f'4 f' \tieDown f'2~
          f'4 f' g' f'
          f'2 f'4 f'8 f'
          d'2. bes4
          bes c' d'2
          f'4 e'! d' d'
          f' d' d'2
          d' g'4 g'
          f'4. f'8 f'4 f'
          f'1
          f'4 d' d' e'
          d'4. d'8 e'2
          f'4 f' g' f'
          e'4. e'8 fis'2 \bar "||"
          \time 3/1
          \override NoteHead.style = #'baroque
          g'\breve ees'!1
          f'\breve f'1
          g' ees'\breve
          f'\breve.
          f'\breve f'1
          f'\breve.
          g'1 f'1. f'2
          f'\breve. \fine
        }
      >>
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano1" {
      Welt, a -- de! ich bin dein mü -- de,
      ich will nach dem Him -- mel zu,
      da wird sein der rech -- te Frie -- de
      und die ew' -- ge stol -- ze Ruh.
    }

    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano2" {
         \repeat unfold 54 {\skip1}
      und See -- lig -- keit.
    }
    
    \new Lyrics \lyricsto "alto" {
      Welt, a -- de! ich bin dein mü -- de,
      ich will nach dem Him -- mel zu,
      da wird sein der rech -- te Frie -- de
      und die ew' -- ge stol -- ze Ruh.
      Welt, bei dir ist Krieg und Streit,
      nichts, denn lau -- ter Ei -- tel -- keit; 
      in dem Him -- mel al -- le -- zeit Frie -- de,
      Freud' und See -- lig -- keit.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 d' d'2~
          d'4 d' c' c'
          bes2 c'4 a8 [a]
          bes2. bes4
          bes a bes2
          bes4 g f bes
          c' g a2
          bes2. bes8 [bes]
          c'4 bes c'4. c'8
          d'1
          d'4 d' bes a
          d' d a2
          a4 c' c' a
          a4. a8 a2 \bar "||"
          \time 3/1
          \override NoteHead.style = #'baroque
          g\breve c'1
          f\breve f1
          c'\breve c'1
          d'\breve.
          d'\breve f'1
          d'\breve d'1
          c'\breve c'1
          d'\breve. \fine
        }
        
    \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {
      \repeat unfold 52 {\skip1}
      und See -- lig -- keit.
    }
        
        \new Voice = "bass" {
          \voiceTwo
          bes4 bes bes2~
          bes4 d ees f
          bes,2 f,4 f8 [f]
          g2. g4
          bes f bes,2
          bes,4 c d bes,
          f, g, d2
          g,2. g8 [g]
          a4 bes f4. f8
          bes,1
          d4 d d c
          bes,4. bes,8 a,2
          f,4 f, c d
          a,4. a,8 d2 \bar "||"
          \time 3/1
          \override NoteHead.style = #'baroque
          ees!\breve c1
          bes,\breve d1
          c\breve c1
          bes,\breve.
          bes\breve a1
          bes\breve.
          ees!1 f1. f2
          bes,\breve. \fine
        }
        
    \new Lyrics \lyricsto "bass" {
      \repeat unfold 52 {\skip1}
      und See -- lig -- keit.
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
