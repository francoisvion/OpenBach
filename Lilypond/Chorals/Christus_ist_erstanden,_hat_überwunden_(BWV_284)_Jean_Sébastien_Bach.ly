\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

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
 title = "Christus ist erstanden, hat überwunden"
 poet = "Auteur : Michael Weisse (v.1488-1534)"
  opus = "BWV 284"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           c''4 g' a' b'
          c''2 c''4\fermata g'
          c'' bes' a'2
          g'\fermata g'4 a'
          bes' c'' bes' a'
          g'2\fermata
          \partial 32 * 16  g'4 c''
          c'' b' c''2\fermata
          c''4 c'' d'' d''
          c'' bes' a'2\fermata
          g'4 a' bes' a'
          g'2\fermata
          \partial 32 * 16  bes'4 c''
          d'' ees''8 [d''] c''2
          d''\fermata d''4 c''
          d'' c'' bes' g'
          a' b' c''2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           g'4 g'4. fis'8 g'4
          g'4. f'4 e'8\fermata e'4~
          e'8 [fis'] g'4 g' fis'
          d'2\fermata d'8 ees'4 d'8~
          d' [bes' a' g'] fis' g'4 fis'8
          d'2\fermata
          \partial 32 * 16  e'8 [f'] g'4
          g' g' g'2\fermata
          a'4 a'8 [g'] f' [g'] a'4~
          a' bes'8 [g'] f'2\fermata
          e'4 e'8 [fis'] g'4. fis'8
          g'2\fermata
          \partial 32 * 16 d'8 bes'4 a'8
          bes'2 bes'4 a'
          bes'2\fermata bes'4. a'8
          bes'4 a' g' e'
          f'8 [e' d' f'] e'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Chri -- stus ist er -- stan -- den, hat ü -- ber -- wun -- den, Gnad' ist nun vor -- han - den, Wahr -- heit wird fun -- den. Da -- rum, lie -- ben Leu - te, freut euch heu - te, lo -- bet eu -- ren Her -- ren, Je -- sum, den Kö -- nig der Eh - ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           e'4 d' c' d'
          c'8 [bes] a4 g\fermata c'
          c' d' ees' d'8 [c']
          bes2\fermata bes4 c'
          bes8 [g] ees'4 d'~ d'8. [c'16]
          bes2\fermata
          \partial 32 * 16  c'4. d'8
          e' [d'16 c'] d'8 [f']~ f' [e'16 d'] e'4\fermata
          f' f' f'8 [e' d' e']
          f'4. e'8 c'2\fermata
          c'4 c' d' ees'8 [d'16 c']
          bes2\fermata
          \partial 32 * 16 bes8 [d'] f'4
          f' ees'8 [f'] g' [ees' c' f']
          f'2\fermata f'4 f'
          f' ees'8 [d'] d'4 c'
          c' g g2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           c'4 b a g8 [f]
          e4 f c\fermata c'8 [bes]
          a4 g c d
          g,2\fermata g4 fis
          g c d d,
          g,2\fermata
          \partial 32 * 16  c8 [d e f]
          g4 g, c2\fermata
          f8 [g f e] d [e f g]
          a [f g c] f2\fermata
          c'8 [bes] a4 g8 [bes, c d]
          ees2\fermata
          \partial 32 * 16 g4 f
          bes8 [a g f] ees [c] f4
          bes,2\fermata bes4 f
          bes8 [a g fis] g [a bes c']
          f4 g c2\fermata \fine
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
