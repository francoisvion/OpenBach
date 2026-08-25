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
  title = \markup{\concat{"Was mein Gott will, das g'scheh allzeit" \small " (v. 1)"}}
  subtitle = "tiré de la Passion selon saint Matthieu"
  poet = "Auteur : Markgraf Albrecht von Brandenberg (1490-1568)"
  opus = "BWV 244/25"
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
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'8 [g']
          a'4 b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e'' d''8 [cis'']
          cis''2 b'4\fermata } b'
          b' b' cis''8 [b'] a'4
          a' gis' a'\fermata a'
          b' cis'' d'' cis''
          b'2 cis''4\fermata fis'8 [g']
          a'4 b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e'' d''8 [cis'']
          cis''2 b'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d' d'8 [e']
          fis' [g'] a'4 a'\fermata gis'
          a' g'8 [a'] b'4 b'
          b' ais' fis'\fermata } fis'
          e'8 [fis'] gis'4 gis' fis'
          fis' e' e'\fermata fis'
          fis'8 [e'] e' [d'] d'4 e'
          fis' gis'8 [eis'] fis'4\fermata fis'
          fis' fis'8 [eis'] fis'4 fis'
          e' fis'8 [g'] fis'4\fermata fis'
          e'8 [fis'] gis' [ais'] b'4 b'
          b' ais' fis'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Was mein Gott will, das g'scheh' all -- zeit,
      sein Will' der ist der be -- ste;
      Er hilft aus Noth, der from -- me Gott,
      und züch -- ti -- get mit Ma -- ßen.
      Wer Gott ver -- traut, fest auf ihn baut,
      den will er nicht ver -- la -- ßen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      zu hel -- fen den'n er ist be -- reit,
      die an ihn glau -- ben fe -- ste.      
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          a g fis8 [g] a [b]
          a4 e' fis'\fermata e'8 [d']
          e' [fis'] g'4 g' fis'
          g' fis'8 [e'] d'4\fermata } d'8 [cis']
          b4 e'8 [d'] cis'4 cis'
          b cis'8 [d'] cis'4\fermata d'
          d'8 [cis'] cis' [b] b [ais] ais [gis]
          fis [b] d' [gis] ais4\fermata d'
          cis' d'8 [b] cis'4 d'8 [cis']
          b4 a a\fermata a8 [b]
          cis' [dis'] e'4 b8 [cis'] d'4
          gis cis' dis'\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          fis g d8 [e] fis [g]
          a4 a, d\fermata b,
          a, e8 [fis] g [a] b4
          e fis b,\fermata } b8 [a]
          gis [fis] e4 eis fis8 [e]
          dis4 e a,\fermata d
          gis, ais, b, cis
          d b, fis\fermata b
          a gis fis b8 [a]
          gis4 a d\fermata fis8 [gis]
          a4 gis g fis
          eis fis b,\fermata \fine
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
