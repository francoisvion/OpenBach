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
 title = "Erschienen ist der herrlich Tag"
 subtitle = "tiré de la cantate : Ich lebe, mein Herze, zu deinem Ergötzen"
 poet = "Auteur : Nikolaus Herman (v.1480-1561)"
  opus = "BWV 145/5"
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
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          fis'4 fis' fis'
          cis''2 dis''4
          e'' dis'' cis''
          b'2.\fermata
          cis''4 dis'' eis''
          fis''2 cis''4
          e'' dis''2
          cis''\fermata cis''4
          e'' d'' cis''
          b' a' gis'
          a' fis'2
          e'\fermata e'4
          a'2 b'4
          cis''2 b'4
          a' e''2
          cis''\fermata b'4
          a' gis'2
          fis'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          cis'4 cis' dis'
          e' fis' fis'
          gis'8 [ais'] b'4 ais'
          fis'2.\fermata
          fis'4 fis' gis'
          a'8 [b'] a' [gis'] fis'4
          gis' a' gis'
          eis'2\fermata fis'4
          e'2 e'4
          fis'2 e'4
          e'2 dis'4
          b2\fermata cis'4
          cis' fis' e'
          e'8 [fis'] gis'2
          fis'4 gis'8 [a'] b'4
          a'2\fermata gis'4
          fis'2 eis'4
          cis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Drum wir auch bil -- lig fröh - lich sein,
      sin -- gen das Hal -- le -- lu -- ja fein
      und lo - ben dich, __ _ Herr Je -- su Christ;
      zu Trost du uns er -- stan -- den bist.
      Hal -- le -- lu -- jah!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          a8 [b] cis'4 b
          gis cis' b
          b gis cis'
          dis'2.\fermata
          cis'4 b b
          cis'2 cis'4
          cis'2 bis4
          gis2\fermata a4
          b2 a4
          fis b2
          a8 [b] cis'4 b8 [a]
          gis2\fermata gis4
          a d'2
          cis'4 cis'2
          cis'8 [d'] e'2
          e'\fermata d'4
          cis' b8 [a] b4
          ais2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          fis8 [gis] a4 \tieUp b~
          b ais b
          gis e fis
          b,2.\fermata
          ais4 b gis
          fis8 [eis] fis [gis] a4
          gis fis gis
          cis2\fermata fis4
          gis2 a4
          dis2 e4
          cis a, b,
          e2\fermata cis4
          fis2 gis4
          a eis2
          fis4 cis' gis
          a2\fermata b4
          cis' cis2
          fis2.\fermata \fine
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
