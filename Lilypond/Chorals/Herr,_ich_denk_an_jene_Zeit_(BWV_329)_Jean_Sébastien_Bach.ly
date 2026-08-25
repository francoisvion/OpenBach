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
 title = "Herr, ich denk an jene Zeit"
 poet = "Auteur : Georg Mylius (1613-1640)"
  opus = "BWV 329"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
           ees'4 ees' bes' bes'
          c'' d'' ees''2\fermata
          d''4. ees''8 f''4 bes'
          ees'' d'' c''2
          bes'\fermata ees''4 ees''
           bes' bes' aes' aes'
          g'2\fermata bes'4 bes'
          aes' g' f'2
          ees'\fermata f'4 f'
           g'8 [a'] bes'4 bes' a'
          bes'2\fermata c''4 d''
          ees''2\fermata bes'4 bes'
          aes' g' f'2
          ees'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           bes4 bes ees' g'8 [f']
          ees'4 f' g'2\fermata
          f'4 bes'4. aes'8 g'4~
          g'8 [f'] f'4 g' f'8 [ees']
          d'2\fermata g'4 g'
           f' f'8 g'4 c'8 f' [ees'16 d']
          ees'2\fermata f'4 ees'
          f'~ f'8 [ees'] ees'4 d'
          bes2\fermata d'4 d'
          ees' f'8 [g'] f'4 f'
          f'2\fermata f'8 [aes']~ aes' [g']
          g'2\fermata f'8 aes'4 g'8
          f'4. ees'8 ees' [d'16 c'] d'4
          bes1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr, ich denk' an je -- ne Zeit, wenn ich die -- sem kur -- zen Le -- ben we -- gen mei -- ner Sterb -- lich -- keit gu -- te Nacht muß ge -- ben, wenn ich werd' auf dein Ge -- bot durch den Tod Al -- les ü -- ber -- stre -- ben.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           g4 g8 [aes] bes ees'4 des'8
          c' [bes] aes4 bes2\fermata
          bes4 bes bes bes~
          bes8 [a] bes2 a4
          f2\fermata bes4 bes8 [c']
           d'4. c'8 c'4 bes
          bes2\fermata d'8 [c'] bes4
          bes bes c'8 [f] bes [aes]
          g2\fermata bes4~ bes8 [aes]
          bes [c'] d'4 c'8 [d'] ees'4
          d'2\fermata c'8 [f'] d'4
          c'2\fermata f'4~ f'8 [ees']~
          ees' [d'16 c'] bes4 c' bes8 [aes]
          g1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           ees4. f8 g4 ees
          aes8 [g] f4 ees2\fermata
          bes8 [aes] g4 d ees8 [d]
          c [f] bes, [d] ees [c] f4
          bes,2\fermata ees,8 [f,] g, [aes,]
           bes, [c] d [ees] f [ees] d [bes,]
          ees2\fermata bes8 [aes] g [f]
          ees [d] ees4 aes, bes,
          ees,2\fermata bes8 [aes] g [f]
          ees4 d8 [ees] f2
          bes,\fermata aes4 b,
          c2\fermata d4 ees
          f g aes bes8 [bes,]
          ees1\fermata \fine
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
