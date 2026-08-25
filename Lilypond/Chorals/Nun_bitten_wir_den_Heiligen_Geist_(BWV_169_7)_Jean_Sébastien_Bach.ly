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
  title = \markup{\concat{"Nun bitten wir den Heiligen Geist" \small " (v. 3)"}}
  subtitle = "tiré de la cantate : Gott soll allein mein Herze haben"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 169/7"
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
          b' b' a'4. gis'8
          fis'4 e' fis' gis'
          a'2.\fermata cis''8 [d'']
          e''4 fis'' e''4. d''8
          cis'' [b'] a' [gis'] fis'4 gis'
          a'2\fermata cis''4 cis''
          cis'' b' cis''2
          a'4\fermata a' b'8 [cis''] d''4
          cis''8 [b'] cis''4 a'2\fermata
          b'8 [cis''] d''4 cis''8 [b'] a' [gis']
          fis'4 e' a'8 [b'] cis''4
          b'4. a'8 gis'4 fis'
          e'2\fermata fis'4 gis'
          a'2 b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e' e' e' e'
          d' e' d'8 [fis'] e'4
          e'2.\fermata a'4
          a' a' b'8 [a'] gis'4
          a' e' d'8 [cis'] b4
          cis'2\fermata e'8 [fis'] gis'4
          gis'8 [fis'] eis' [fis'] eis' fis'4 eis'8
          fis'4 fis' gis'8 [fis'] e'4
          e'2 d'\fermata
          b'8 [a'] gis'4 a' e'
          d'8 [cis'] b4 a8 [e'] e'4
          fis'2~ fis'8 e'4 dis'8
          b2\fermata d'4. d'8
          cis' [d'] e'4 fis' e'8 [d']
          cis'2.\fermata \fine
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {
      Du sü -- ße Lie -- be, schenk uns dei -- ne Gunst,
      laß uns em -- pfin - den der Lie -- be Brunst,
      daß wir uns von Her -- zen
      ein -- an -- der lie - ben,
      und im Frie -- de auf ei -- nem Sinn blei - - - ben.
      Ky -- rie -- e -- lei -- son.
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
          b8 [a] gis4 a8 [b] cis'4
          a a a8 [d'] cis' [b]
          cis'2.\fermata e'4
          e' d'8 [cis'] b4 e'
          e'8 [d'] cis' [b] a4 e
          e2\fermata a4 gis
          a b b8 [a] gis [cis']
          cis'4 d' d'8 [cis'] b4
          a8 [g] fis [e] fis2\fermata
          e4 b a2~
          a4 gis8 [fis] e [gis] a [gis]
          fis4 b b cis'8 [b]
          gis2\fermata b4 b
          a2. gis4
          e2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          gis8 [fis] e [d] cis [b,] a,4
          d cis b, e
          a,2.\fermata a8 [b]
          cis'4 d' gis e
          a cis d e
          a,2\fermata a4 eis
          fis d cis2
          fis4\fermata d8 [cis] b, [a,] gis,4
          a,2 d\fermata
          gis4 fis8 [e] a4 cis
          d2~ d4 cis
          dis8 [b,] cis [dis] e [gis,] a, [b,]
          e,2\fermata b,4 eis,
          fis, cis d e
          a,2.\fermata \fine
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
