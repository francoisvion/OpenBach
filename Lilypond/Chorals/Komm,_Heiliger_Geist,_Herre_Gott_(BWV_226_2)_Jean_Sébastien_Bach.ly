\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
 title = "Komm, Heiliger Geist, Herre Gott"
 subtitle = "tiré du motet : Der Geist hilft unser Schwachheit auf"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 226/2"
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
          \partial 4  f''4
          g'' f''8 [ees''] d'' [ees''] f''4
          c''2 d''4 e''
          f''2\fermata r4 f''
          g'' f'' c''8 [d''] ees''4
          d'' c'' bes'\fermata bes'
          c''8 [d''] ees''4 d''8 [ees''] f''4~
          f'' c'' bes'8 [a'] g'4
          f'2\fermata r4 f'
          bes' c'' d''8 [ees''] f''4~
          f'' ees'' d'' c''
          d''2\fermata r4 d''8 [ees'']
          f''4 g'' f'' c''
          d'' e'' f''\fermata f''
          g'' f'' c''8 [d''] ees''4
          d'' c'' bes'\fermata bes'
          c''8 [d''] ees''4 d''8 [ees''] f''4~
          f'' c'' bes'8 [a'] g'4
          f'2\fermata r4 f'
          bes' c'' d''8 [ees''] f''4~
          f'' ees'' d'' c''
          g' a' bes'\fermata c''
          d'' bes' g'2
          f'4\fermata c''8 [d''16 ees''] d''2
          c'' bes'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes'4
          bes' a' bes' f'8 [g']
          a'2 bes'4 bes'
          a'2\fermata r4 bes'
          bes' a'8 [g'] f'4 g'8 [a']
          bes'4 a' f'\fermata f'
          f' g' f'8 [g'] a'4~
          a'8 bes' a' [g'] f' [d'] e'4
          c'2\fermata r4 c'
          f'8 [g'] a'4 bes'4. c''8
          d''4. c''8 bes' [a'] g'4
          fis'2\fermata r4 bes'
          a'8 [b'] c''4 c''8 [bes'] a' [g']
          f'4 g' a'\fermata bes'8 [a']
          g' [a'] bes'4 a' g'
          f'8 [g'] a'4 f'\fermata g'
          g' g'8 [a'] bes'2~
          bes'4 a' bes'8 f'4 e'8
          c'2\fermata r4 f'8 [ees']
          d' [g'] f' [ees'] d'4. ees'16 [f']
          g'4 g' g' g'8 [f']
          ees'2 d'4\fermata f'
          f'2~ f'8 d' ees'4
          d'\fermata f'2 g'4~
          g' f'8 [ees'] d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Du hei - li -- ge Brunst, sü -- ßer Trost,
      nun hilf uns, fröh -- lich und ge -- trost
      in dei -- nem Dienst be -- stän -- dig blei -- ben,
      die Trüb -- sal uns nicht ab -- trei - ben,
      O Herr, duch dein Kraft uns be -- reit
      und stärk des Flei -- sches Blö -- dig -- keit,
      daß wir hier rit -- ter -- lich rin - gen,
      durch Tod und Le -- ben zu dir drin - - gen,
      Hal -- le - lu -- ja! Hal -- le -- lu -- ja! _ _ _ _ _ _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          ees'8 [d'] c'4 bes bes
          f'2 f'4 bes
          c'2\fermata r4 bes
          ees'8 [d'] c' [bes] a [bes] ees4
          f f'8 [ees'] d'4\fermata
          d'
          c' bes8 [c'] d'4 c'8 [bes]
          c'4 f' f' c'8 [bes]
          a2\fermata r4 a
          bes ees' f'8 [ees'] d' [c']
          b [a] g4 fis g
          a2\fermata r4 bes8 [c']
          d'4 e' f'4. ees'8
          d' [c'] bes4 c'\fermata d'
          ees' f' f' bes8 [c']
          d' [bes] f' [ees'] d'4\fermata ees'
          ees'8 [d'] c'4 d'8 [c'] bes [c']
          d' [e'] f'2 c'8 [bes]
          a2\fermata r4 a
          bes8 [ees'] d' [c'] bes4. c'8
          d'4. c'8 bes [a] g4
          c'2 bes4\fermata a
          bes2. bes8 [a]
          bes4\fermata c'2 bes4~
          bes a16 [g a8] f4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes4
          ees f g d8 [ees]
          f2 bes8 [a] g4
          f2\fermata r4 d
          ees f ees8 [d] c4
          d8 [ees] f4 bes,\fermata bes
          a g8 [a] bes4 a8 [g]
          a [g] f [e] d [bes,] c4
          f2\fermata r4 f8 [ees]
          d [ees] d [c] bes,4 bes8 [aes]
          g4 c d ees
          d2\fermata r4 g
          d' c'8 [bes] a [g] f4
          bes8 [a] g4 f\fermata bes
          ees d8 [ees] f4 g8 [a]
          bes [ees] f4 bes,\fermata ees8 [d]
          c4 c' g d8 [ees]
          f [g] a [f] d' [bes] c'4
          f2\fermata r4 d
          g a bes8 [c'] d' [c']
          b [g] c'4 g8 [f] ees [d]
          ees [c] f4 bes,\fermata f
          bes,8 [c] d4 ees2
          bes4\fermata a bes8 [a] g [f]
          ees [c] f4 bes,\fermata \fine
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
