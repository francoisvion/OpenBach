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
  title = \markup{\concat{"Ach Gott, vom Himmel sieh darein" \small " (v. 6)"}}
  subtitle = "tiré de la cantate : Ach Gott, vom Himmel sieh darein"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 2/6"
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
          \repeat volta 2 {
          \partial 4  a'4
          bes' a' g' d''
          d''8 [c''] bes'4 a'\fermata c''
          bes' a' g' c''
          bes' a' g'\fermata } g'
          a' f' e' d'8 [e']
          f'4 g' a'\fermata f'
          g'8 [a'] bes'4 a' bes'
          g' fis' g'\fermata g'
          d'' bes' c'' d''
          c'' bes' a'2
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  fis'4
          g' fis' g' bes'
          a' g' fis'\fermata aes'
          g' fis' cis' d'
          d'2 d'4\fermata } d'
          e' d' cis' d'
          d' d' e'\fermata d'8 [c']
          bes [c'] d'4 c' d'
          d'8 [ees'] d'4 d'\fermata d'
          d' d' ees' f'
          ees' d' cis'8 d'4 cis'8
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Das wollst du Gott be -- wah -- ren rein
      für die -- sem argn Ge -- schlech - te,
      Der gott -- los Hauf sich um -- her findt,
      wo sol -- che lo -- se Leu -- te sind
      in dei -- nem Volk er -- ha - - ben.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Und laß uns dir be -- foh -- len sein,
      daß sichs in uns nicht flech - te,
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          d' c' d' g'
          d' d' d'\fermata ees'
          e' d'8 [c'] bes4 a
          g fis8 [c'] bes4\fermata } bes
          a a a a
          a d' cis'\fermata a
          g f8 [g] a [g] fis4
          g8 [c'] a4 bes\fermata bes
          a g g g
          g2~ g8 f e4
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          g a bes a8 [g]
          fims4 g d\fermata c
          cis d e fis
          g d g,\fermata } g
          cis d a8 [g] f [e]
          d [c] bes,4 a,\fermata d
          ees d8 [e] f [ees] d [c]
          bes, [c] d4 g,\fermata g
          fis g8 [f] ees [d] c [b,]
          c4 g, a,2
          d2.\fermata \fine
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
