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
  title = \markup{\concat{"Nun, liebe Seel, nun ist es Zeit" \small " (v. 5)"}}
  subtitle = "tiré de l'oratorio de Noël, partie n° 5"
  poet = "Auteur : Georg Weissel (1590-1635)"
  opus = "BWV 248/46"
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
          a' e'' e'' d''8 [cis'']
          b'4 cis'' d''8 [cis''] b'4
          a'2\fermata r4 a'
          b' cis'' d'' b'
          e'' fis'' e''\fermata cis''
          cis''8 [d''] e''4 d'' cis''8 [b']
          a' [b'] cis''4 b'\fermata cis''
          a' b'8 [cis''] d''4\fermata cis''
          b' cis'' d''\fermata cis''
          b' a' e''4. d''8
          cis''4 d''8 [cis''] b'2
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          e'8 [fis'] gis' [a'] b'4 e'
          dis' e' d'8 [a'] gis'4
          e'2\fermata r4 fis'
          fis' e'8 [cis'] gis' [fis'] e' [dis']
          e'16 [fis' gis'8] a' [fis'] gis'4\fermata a'
          a' ais' b'8 [a'] gis' [fis']
          e' [fis'16 gis'] a'8 [fis'] gis'4\fermata a'8 [gis']
          fis'4. gis'16 [ais'] b'4\fermata ais'
          b'8 [a'] g'4 fis'\fermata e'8 [a']
          a' gis'4 fis'8 gis' [a'] b'4
          b'8 [e'] a'2 gis'4
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Dein Glanz all Fin - - ster -- nis ver -- zehrt,
      Die trü -- be Nacht in Licht ver -- kehrt.
      Leit uns auf dei -- nen We - gen,
      daß dein Ge -- sicht
      und herr -- lichs Licht
      Wir e -- wig schau - - en mö -- gen!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'8 [d']
          e'4 d'8 [cis'] b4 a
          b a8 [g] a4 e'8 [d']
          cis'2\fermata r4 a
          a gis b8 [a] b4
          b8 e'4 dis'8 e'4\fermata e'
          fis' fis' fis' e'
          e'8 [d'] cis' [dis'] e'4\fermata e'
          d'8 [cis'] d' [e'] fis'4\fermata fis'8 [e']
          d'4 e' a\fermata a
          b cis'8 [dis'] e'2
          e'8 [cis'] a [cis'] fis' [d'] b [e']
          cis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis4
          cis' b8 [a] gis4 a~
          a8 g fis [e] fis [d] e4
          a,2\fermata r4 d
          dis8 e4 eis8~ eis fis gis [a]
          gis [e] b [b,] e4\fermata a8 [gis]
          fis [e] d [cis] b,4 e8 [d]
          cis [b,] a,4 e\fermata a,
          d8 [e] d [cis] b,4\fermata fis
          g8 [fis] e4 d\fermata a,
          e2~ e8 fis gis [e]
          a [gis] fis [e] d [b,] e4
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
