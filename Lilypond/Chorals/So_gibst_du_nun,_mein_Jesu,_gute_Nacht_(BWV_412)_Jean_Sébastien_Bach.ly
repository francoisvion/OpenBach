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
 title = "So gibst du nun, mein Jesu, gute Nacht"
 poet = "Auteur : August Pfeiffer (1640-1698)"
  opus = "BWV 412"
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
          \partial 4  bes'4
          d''4. c''8 bes'4\fermata d''
          c'' bes' bes' a'
          bes'2\fermata r4 d''
          f''4. ees''8 d''4\fermata d''8 [c'']
          bes' [a'] g'4 a'4. g'8
           fis'4 d'\fermata r a'
          c''4. bes'8 a'4 bes'
          bes' a' g'4. g'8
          a'2\fermata r4 a'
          bes' c'' d''\fermata d''8 [e''16 f'']
           e''4. d''8 cis''4 d''
          d''4. cis''8 d''4\fermata fis'
          g' a' bes'\fermata g'8 [a'16 bes']
          a'4. g'8 fis'4 g'
          g'4. fis'8 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          a'8 [g'] a'4 g'\fermata g'
          g' f' ees'8 [d'] ees'4
          d'2\fermata r4 f'
          f'4. f'8 f'4\fermata d'
          d' g'8 [f'] g'4 ees'
           d' a\fermata r f'
          g'8 [f'] g'4 f'8 [a'] g' [f']
          e'4 f'2~ f'8 [e']
          f'2\fermata r4 f'
          f' f' f'\fermata f'
          bes'8 [a'] bes'4 a' a'
          a' a' a'\fermata d'
          d' d' d'\fermata g'8 [f']
          ees' [d'] e'4 d' d'
          d' d' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      So gibst du nun,
      mein Je -- su, gu -- te Nacht!
      So stirbst du denn,
      mein al -- ler -- lieb -- stes Le -- ben?
      Ja, du bist hin, dein Lei -- den ist voll -- bracht.
      Mein Gott is tot,
      sein Geist ist auf -- ge -- ge - ben,
      mein Gott ist tot, 
      ein Geist ist auf -- ge -- ge - ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d' d' d'\fermata bes
          c' d' g f8 [ees]
          f2\fermata r4 bes
          c'8 [bes] c'4 bes\fermata a
          g8 [a] bes4 ees'8 [d'] c' [bes]
           a4 fis\fermata r d'
          c' c' c' d'
          g a8 [bes] c'4. c'8
          c'2\fermata r4 c'
          d' c' bes\fermata d'
          g'8 [f'] e'4 e' f'
          e'8 [d'] e'4 fis'\fermata a
          bes a g\fermata bes
          c'8 [bes] a4 a bes
          a8 [g] a4 b\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis4. fis8 g4\fermata g8 [f]
          ees4 d c4. c8
          bes,2\fermata r4 bes
          a4. a8 bes4\fermata fis
          g8 [f] ees [d] c4 c
           d d,\fermata r d
          e4. e8 f4 bes,
          c f c4. c8
          f,2\fermata r4 f8 [ees]
          d [c] bes, [a,] bes,4\fermata bes,8 [a,]
          g,4 gis, a, d
          a,2 d4\fermata d8 [c]
          bes, [a,] g, [fis,] g,4\fermata ees8 [d]
          c4 cis d8 [c] bes, [g,]
          d2 g,4\fermata \fine
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
