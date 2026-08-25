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
  title = \markup{\concat{"Nun komm, der Heiden Heiland" \small " (v. 8)"}}
  subtitle = "tiré de la cantate : Nun komm, der Heiden Heiland"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 62/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          b'4 b a d 
          cis8 [b] cis4 b2\fermata
          b8 [cis] d4 e d
          e4 fis d2\fermata
          d4 e fis8 [e] d4
          e8 [d] cis4 b2\fermata
          b4 b a d 
          cis8 [b] cis4 b2\fermata \fine
        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          fis4 e fis fis
          fis8 [gis] ais4 fis2\fermata
          fis8 [ais] b4 e, a
          g fis8 [g16 a] g2\fermata
          g4 g fis fis
          e8 [b'] ais4 fis2\fermata
          eis8 [fis] gis4 fis fis
          g!8 [d] e4 dis2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Lob sei Gott dem Va -- ter g'tan,
      Lob sei Gott sein'm ein' -- gen Sohn,
      Lob sei Gott dem Heil' -- gen Geist
      Im -- mer und in E -- wig -- keit.
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          d'4  cis8 [b] cis [b] a [b]
          cis [d] e4 d2\fermata
          d8 [e] fis [g] cis, [b] a [b]
          cis4 d8 [a] b2\fermata
          b4 cis8 [d] cis4 b
          b fis'8 [e] d2\fermata
          gis,4 cis cis b
          b4. ais8 fis2\fermata \fine

        }
        
        \new Voice = "bass" 
        \new Voice = "tenor" \relative c {
          \voiceTwo
          b'8 [a] g4 fis fis8 [gis]
          ais [b] fis4 b,2\fermata
          b4 b' a!8 [g] fis4
          e d g2\fermata
          g8 [fis] e4 ais b8 [a]
          g [e] fis4 b,2\fermata
          cis8 [dis] eis [cis] fis [e] d [b]
          e [fis16 g] fis4 b,2\fermata \fine

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
