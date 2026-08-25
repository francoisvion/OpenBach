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
  title = "Durch dein Gefängnis, Gottes Sohn"
  subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Christian Heinrich Postel (1658-1705)"
  opus = "BWV 245/22"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'8 [fis']
          gis'4 a' b' b'
          a' gis' fis'\fermata b'
          cis'' dis'' e'' dis''8 [cis'']
          cis''2 b'4\fermata } b'
          e'' dis'' cis'' b'
          a' gis'8 [fis'] fis'4\fermata b'
          a' gis' fis'8 [gis'] a'4
          gis' fis' e'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          e' e' e' e'
          e'8 [dis'] e'4 dis'\fermata fis'
          fis' ais' b'8 [fis'] fis' [gis']
          gis'4 ais' fis'\fermata } gis'
          cis'' b'4. a'4 gis'8~
          gis' fis' e'4 dis'\fermata d'
          c' b a8 [b] c'4
          b8 e'4 dis'8 b4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Durch dein Ge -- fäng -- nis, Got -- tes Sohn,
      muß uns die Frei -- heit kom -- men;
      denn gingst du nicht die Knecht -- schaft ein,
      müßt un -- sre Knecht -- schaft e -- wig sein.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Dein Ker -- ker ist der Gna -- den -- thron,
      die Frei -- statt al -- ler From -- men;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  gis8 [a]
          b4 cis' d' cis'8 [b]
          cis'4 b b\fermata dis'
          cis' fis' b8 [cis'] dis' [e']
          e' [dis'] cis'4 dis'\fermata } e'
          gis' gis' gis'8 [fis'] fis' [dis']
          e' [b] b4 b\fermata gis8 [fis]
          e4 eis fis fis
          gis8. [a16] b8 [fis] gis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e,4
          e cis gis, cis
          fis, gis,8 [a,] b,4\fermata b
          ais gis8 [fis] gis [ais] b4
          e fis b,\fermata } e8 [dis]
          cis4 gis, a, b,
          cis8 [dis] e4 b,\fermata b,
          c cis d dis
          e b, e,\fermata \fine
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
