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
 title = "Es ist das Heil uns kommen her"
 subtitle = "tiré de la cantate : Wahrlich, wahrlich, ich sage euch"
 poet = "Auteur : Paul Speratus (1489-1551)"
  opus = "BWV 86/6"
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
          \partial 4  b'4
          b' b' b' d''
          cis'' b' a'\fermata b'
          gis' e'8 [fis'] gis'4 ais'
          b' cis'' b'\fermata } b'
          e'' dis'' cis'' dis''
          e''8 [dis''] cis''4 b'\fermata b'
          e'' b' cis'' gis'8 [a']
          b'4 a' gis'\fermata gis'
          fis' a' gis' fis'
          cis' dis' e'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  gis'4
          fis'8 [gis'] a'4 gis' fis'
          e'8 a'4 gis'8 e'4\fermata fis'
          e' e'8 [dis'] e'4 cis'
          fis'8 [e'16 dis'] e'4 dis'\fermata }
          e'8 [fis']
          gis' [ais'] b'4 ais' b'
          b' fis' fis'\fermata gis'
          e'8 [fis'] gis'4 a' e'8 [fis']
          gis'4 fis' eis'\fermata
          e'
          dis' cis' b b
          cis' b b\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Die Hoff -- nung wart' der rech -- ten Zeit,
      was Got -- tes Wort zu -- sa - get,
      Er weiss wohl, wenn's am be -- sten ist,
      und braucht an uns kein ar -- ge List;
      des solln wir ihm ver -- trau - en.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wenn das ge -- sche -- hen soll zur Freud,
      setzt Gott kein g'wis -- se Ta - ge. 
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
          \partial 4  e'4
          fis' e'8 [dis'] e'4 a8 [b]
          cis'16 [d'] e'4 d'8 cis'4\fermata b
          b4. a8 gis4 fis
          fis8 b4 ais8 fis4\fermata } gis
          cis' fis fis' fis'
          b ais dis'\fermata e'
          b e' e' cis'
          d' cis' cis'\fermata b
          b e' e' dis'8 [b]
          fis2 gis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          dis b, e fis8 [gis]
          a4 e a,\fermata dis
          e8 [fis] gis4 cis fis8 [e]
          dis [cis16 b,] fis4 b,\fermata } e
          cis dis8 [e] fis4 b
          gis8 [e] fis4 b,\fermata e
          gis e a8 [b] cis'4
          eis fis cis\fermata e
          b, cis8 [dis] e4 b,
          ais, b, e,\fermata \fine
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
