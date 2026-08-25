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
 title = "In allen meinen Taten"
 subtitle = "tiré de la cantate : Meine Seufzer, meine Tränen"
 poet = "Auteur : Paul Fleming (1609-1640)"
  opus = "BWV 13/6"
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
          \partial 4  d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata d''8 [ees'']
          f''4 f'' c'' d''
          bes'2 a'4\fermata f'
          bes' c'' d'' d''8 [ees'']
          c''2.\fermata d''4
          bes' c'' d''8 [ees''] f''4
          ees''2 d''4\fermata
          d''8 [ees'']
          f''4 f'' c'' d''
          bes'2 a'4\fermata f'
          bes' c'' d'' ees''
          d'' c'' bes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes'4
          g' a' bes' f'
          g' f' f'\fermata f'8 [ees']
          d' [ees'] f' [g'] a'4 a'
          g'2 c'4\fermata d'
          d' f' f' f'
          f'2.\fermata a'4
          g' f' f' g'
          g'2 g'4\fermata
          f'
          f'8 [g'] a' [bes'] c'' [bes'] a' [g']
          f'4 g' f'\fermata c'
          f' g'8 [a'] bes'4 a'8 [g']
          f'4 f'8 [ees'] d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      So sei nun See -- le dei -- ne,
      und trau -- e dem al -- lei -- ne,
      der dich er -- schaf -- fen hat;
      Es ge -- he, wie es ge -- he,
      Dein Va -- ter in der Hö -- he,
      Der weiß zu al -- len Sa -- chen Rat.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f'4
          ees' ees' f' c'
          bes c' bes\fermata bes
          bes bes f' f'
          f' e' a\fermata a
          bes a bes bes
          a2.\fermata d'4
          d' c' bes8 [c'] d'4
          d' c' b\fermata
          bes
          c'8 [bes] a [g] f [g] a4
          d' c' c'\fermata a
          bes ees f8 [g] a4
          bes a f\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          ees8 [d] c4 bes, a,
          g, a, bes,\fermata bes,8 [c]
          d [c] d [ees] f4 d
          g2 f4\fermata
          d
          g f8 [ees] d [c] bes,4
          f2. fis4
          g a bes b
          c' c g\fermata bes
          a8 [g] f [g] a4 f
          d e f\fermata ees
          d c bes, c
          d8 [ees] f4 bes,\fermata \fine
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
