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
  title = \markup{\concat{"Nun bitten wir den Heiligen Geist" \small " (v. 3)"}}
  subtitle = "tiré de la cantate : Gott ist unsre Zuversicht"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 197/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          b' b' a' gis'8 [fis']
          e'4 fis'8 [gis'] a'4 b'
          a'2.\fermata cis''8 [d'']
          e''4 fis'' e''4. d''8
          cis'' [b'] a' [gis'] fis'4 gis'
          a'2\fermata cis''4 cis''
          cis'' b' cis''2
          a'4\fermata a' b'8 [cis''] d''4
          cis''4. b'8 a'2\fermata
          b'8 [cis''] d''4 cis''8 [b'] a' [gis']
          fis'4 gis'8 [a'] b'4. a'8
          gis'4 fis' e'2\fermata
          fis'4 gis' a'2~
          a'4 gis' a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e' e' e' d'8 [cis']
          b [cis'] a [d'] cis'4 fis'8 [e']
          e'2.\fermata a'4
          b'8 [cis''] d'' [cis''] b' [a'] gis' [fis']
          gis' [eis'] cis'4 d' d'
          cis'2\fermata e'4 e'
          e'8 [fis'] gis' [fis'] eis' fis'4 eis'8
          fis'4\fermata fis' gis'8 [a'] b'4
          b' a'8 [g'] fis'2\fermata
          fis'8 [gis'] a' [b'] a' [gis'] fis' [e']
          dis'4 e'8 [fis'] gis'4. fis'8~
          fis' e'4 dis'8 b2\fermata
          d'4 e' e'8 [cis'] fis'4
          e'2 e'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Du sü -- ße Lieb, schenk __ _ uns dei -- ne Gunst,
      laß uns em -- pfin - den der Lie -- be Brunst,
      daß wir uns von Her -- zen
      ein -- an -- der lie - ben
      und in Fried auf ei -- nem Sin -- ne blei - ben.
      Ky -- ri -- e __ e -- leis!
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'4
          b8 [a] gis4 a b8 [a]
          gis [b] fis [b] e a4 gis8
          cis'2.\fermata e'4
          e' a b8 [cis'] d'4
          gis a a b
          e2\fermata a4 a
          gis8 [a] b4 b8 [a] gis [cis']
          cis'4\fermata cis' b8 a4 gis16 [fis]
          e4 a a2\fermata
          d'8 cis'4 b8 cis' [dis'] e'4
          b b b8 [cis'16 dis'] e'8 [b]
          b4. a8 gis2\fermata
          a4 b8 [d'] cis'4 c'
          b8 [a] b [d'] cis'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          gis8 [fis] e [d] cis [a,] d4
          d8 [cis] d [b,] cis [fis] d [e]
          a,2.\fermata a4
          a8 [gis] fis4 gis8 [a] b4
          eis8 [cis] fis [e] d [cis] b,4
          a,2\fermata a,8 [b,] cis [d]
          e4. d8 cis2
          fis4\fermata fis8 [e] d [cis] b, [e]
          a, [b,] cis4 d2\fermata
          d8 [e] fis [gis] a [b] cis' [a]
          b [a] gis [fis] e [dis] cis [dis]
          e [gis] b [b,] e2\fermata
          d8 [cis] d [b,] cis [fis] e [dis]
          e4 e, a,\fermata \fine
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
