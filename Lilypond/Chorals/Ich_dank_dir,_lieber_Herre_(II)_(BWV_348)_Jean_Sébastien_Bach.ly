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
 title = "Ich dank dir, lieber Herre (II)"
 poet = "Auteur : Johann Kolros (v.1487-1558)"
  opus = "BWV 348"
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
          \partial 4  bes'4
          bes' bes' bes' c''
          aes' g' f'\fermata c''
          d'' c'' bes' a'8 [g']
          a'4 g' f'\fermata bes'
          bes' bes' bes' c''
          aes' g' f'\fermata c''
          d'' c'' bes' a'8 [g']
          a'4 g' f'\fermata f''
          ees'' d'' c'' bes'
          bes'8 [c''] d''4 c''\fermata
          \partial 4  d''
          ees'' d'' c'' b'
          c''2.\fermata f'4
          bes' c'' d'' ees''
          f'' ees''8 [d''] c''4\fermata ees''
          d'' c'' f'' bes'8 [c'']
          d''4 c'' bes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          g' aes' g' g'
          g'8 f'4 e'8 f'4\fermata f'
          f' e' f' c'~
          c'8 f'4 e'8 c'4\fermata f'
          g' f' g' g'
           g'8 f'4 e'8 f'4\fermata f'
          f' e' f' c'~
          c'8 f'4 e'8 c'4\fermata bes'8 [a']
          g'4 f'8 [g'] a'4 bes'8 [aes']
          g'4 f' f'\fermata
          \partial 4 f'
          ees' aes'8 g'4 f'8 g'4
          g'2.\fermata c'4
          f' g'8 [a'] bes'4 a'8 [g']
          f'4 g' a'\fermata bes'
          aes' g' f' f'8 [g']
          f' ees'4 d'8 d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ich dank' dir, lie -- ber Her - re,
      daß du mich hast__ _ _ be -- wahrt
      in die -- ser Nacht Ge -- fäh - re,
      da -- rin ich lag__ _ _ so hart
      mit Fin -- ster -- niss um -- fan - gen,
      da -- zu in gro -- ßer Noth,
      da -- raus ich bin ent -- gan - gen,
      halfst du mir Her - - re Gott!
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
          d'8 [ees'] f'4 ees'8 [d'] c'4
          c' bes a\fermata c'
          bes8 [a] g4 f c'
          c' bes a\fermata bes
          bes8 [c'] d'4 ees'8 [d'] c'4
           c' bes a\fermata c'
          bes8 [a] g4 f c'
          c' bes a\fermata d'8 [c']
          bes [c'] d' [ees'] f'4 f'
          bes2 a4\fermata
          \partial 4 b
          c'4. b8 c'4 d'
          d'2.\fermata a4
          bes ees f8 [f'] ees'4~
          ees'8 [d'] c' [bes] f'4\fermata bes
          bes4. c'8 a4 bes
          bes a f\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes8 [a]
          g4 d ees e
          f c f,\fermata a,
          bes, c d e
          f c f,\fermata d
          ees bes, ees e
           f c f,\fermata a,
          bes, c d e
          f c f,\fermata d
          g bes ees d
          ees bes, f\fermata
          \partial 4 d
          c f8 [g] aes4 g
          c2.\fermata ees4
          d c bes, c
          d ees f\fermata g
          f ees2 d8 [ees]
          f4 f, bes,\fermata \fine
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
