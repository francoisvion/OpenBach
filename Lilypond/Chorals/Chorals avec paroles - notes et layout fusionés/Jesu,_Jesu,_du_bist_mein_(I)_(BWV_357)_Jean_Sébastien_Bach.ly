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
 title = "Jesu, Jesu, du bist mein (I)"
 poet = "Anonyme"
  opus = "BWV 357"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           g'4. c''8 b'4 c''
          d'' ees''8 [d''] d''2\fermata
          ees''4 c'' f'' ees''
          d'' d''8. [ees''16] c''4 c''\fermata
           g' g' c'' bes'
          aes' g'8 [f'] f'2\fermata
          bes'4 g' c''8 [d''] ees''4
          g' f'8 [ees'] ees'4 ees'\fermata
           g'4. a'8 b'4 b'
          c'' d'' b' b'\fermata
          c'' d'' ees'' c''
          f'' ees'' d'' d''\fermata
           c'' g' aes' g'
          g'4. f'8 g'2\fermata
          c''4 g' aes'8 [g'] f' [ees'16 d']
          ees'4 d'8 [c'] c'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           ees'4 g' f' g'
          g' g' g'2\fermata
          g'4 g' f'8 [g'] aes'4~
          aes'8 [d'] g' [f'] ees'4 ees'\fermata
           ees'8 [f'] g'4 c'8 [d'] ees'4
          f' ees' d'2\fermata
          f'4. ees'8 ees' [f'] g' [f']
          ees'4 d' bes bes\fermata
          ees' ees' f' g'
          g' aes' g' g'\fermata
          g' g' g' g'
          f' g' g' g'\fermata
           g' g'~ g'8 f'4 ees'8
          ees' [d'] c'4 d'2\fermata
          g'8 [f' g' ees'] f'4 c'
          c' b g2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, Je -- su, du bist mein,
      weil ich muß auf Er -- den Wal -- len;
      laß mich ganz dein ei -- gen sein,
      laß mein Le -- ben dir ge -- fal -- len
      Dir will ich mich ganz er -- ge -- ben,
      und im To -- de an dir kle -- ben,
      dir ver -- trau -- e ich al -- lein,
      Je -- su, Je -- su, du bist mein.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           c'4 c' d' ees'
          d' c' c' b\fermata
          c' ees'8 [d'] c'4 c'
          c' b g g\fermata
           c' d' ees' bes
          bes bes bes2\fermata
          bes4 bes c'8 bes4 c'8
          bes4 bes8. [aes16] g4 g\fermata
          bes c'8 [ees'] d'4 d'
          ees' f' d' d'\fermata
          ees' d' c'8 [d' ees' d']
          c'4 c' c' b\fermata
           c' ees' c' b
          c'8 [b] c'4 b2\fermata
          c'4 c' c' aes
          g g8. [f16] e2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           c4 ees d c
          b, c g,2\fermata
          c4 c'8 [bes] aes4. g8
          f4 g c2\fermata
           c'4 bes aes g8 [f]
          ees [d] ees4 bes,2\fermata
          d8 [bes,] ees4 aes, g,8 [aes,]
          bes, [aes,] bes,4 ees,2\fermata
          ees8 [d] ees [c] d [aes] g [f]
          ees [c] f, [f] g [g,] g [\fermata f]
          ees [d] c [b,] c [g] c' [bes]
          aes4 g8 [f] g4 g,\fermata
           ees c f g
          aes2 g\fermata
          ees8 [d] ees [c] f [g] aes [f]
          g4 g, c2\fermata \fine
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
