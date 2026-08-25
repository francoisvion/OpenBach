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
 title = "Nun bitten wir den Heiligen Geist"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 385"
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
          b' b' a' fis'
          e' fis'8 [gis'] a'4 b'
          a'2.\fermata cis''8 [d'']
          e''4 fis'' e'' cis''
           a' fis'8 [gis'] a'4 b'
          a'2\fermata cis''4 cis''
          cis'' b' cis''2
          a'\fermata r4 a'
          b' b' cis''2
           a'\fermata b'4 b'
          cis''8 [b'] a' [gis'] fis'4 b'
          b' a'8 [gis'] fis'2
          e'\fermata fis'4 gis'
          a' b' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e' e' e' d'8 [cis']
          b4 cis'8 [d'] e'4 e'
          e'2.\fermata a'4
          b'8 [cis''] d'' [cis''] b'4 a'
           a' d' cis' fis'8 [e']
          cis'2\fermata a'4 b'
          a'8 [gis'] fis'4 fis' eis'
          cis'2\fermata r4 fis'
          gis' gis' a'8 [fis'] g'4
          fis'2\fermata fis'4 gis'
          a'8 [gis'] fis' [e'] d'4 d'
          cis'8 [gis'] fis' [e'] e'4 dis'
          b2\fermata d'4 d'
          e' e'8 [d'] cis'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Nun bit -- ten wir den hei - li -- gen Geist
      um __ _ den rech -- ten Glau -- ben al -- ler -- meist,
      daß er uns be -- hü -- te
      an un -- serm En -- de,
      wenn wir heim fahr'n aus die -- sem E -- len -- de.
      Ky -- ri -- e e -- leis'.
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
          b8 [a] gis4 a a
          gis a8 [b] e a4 gis8
          cis'2.\fermata e'4~
          e' a b cis'8 [d']
           e'4 a a4. gis8
          e2\fermata e'4 gis'
          fis' fis8 [gis] a4 gis
          fis2\fermata r4 cis'
          e' e' e'2
          d'\fermata d'8 [cis'] b4
          a8 [cis'] d' [e'] a4 gis8 [fis]
          e4 fis8 [gis] cis'4 b8 [a]
          gis2\fermata a4 b
          e8 a4 gis8 e4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          gis8 [fis] e [d] cis4 d~
          d cis8 [b,] cis [a,] e4
          a,2.\fermata a4
          gis fis gis a
           cis d8 [e] fis [a] d [e]
          a,2\fermata a8 [gis] fis [eis]
          fis [e] d4 cis2
          fis\fermata r4 fis
          e8 [d] cis [b,] a,2
          d\fermata b,4 e
          a, b,8 [cis] d4 b,
          cis dis8 [e] a,4 b,
          e2\fermata d4 cis8 [b,]
          cis [a,] e,4 a,\fermata \fine
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
