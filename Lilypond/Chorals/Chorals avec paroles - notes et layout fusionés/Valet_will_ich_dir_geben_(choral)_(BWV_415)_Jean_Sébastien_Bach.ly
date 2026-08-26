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
 title = "Valet will ich dir geben (choral)"
 poet = "Auteur : Valerius Herberger (1562-1627)"
  opus = "BWV 415"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          a' a' b' cis''
          d''2 d''4\fermata fis''
          e'' d'' d'' cis''
          d''2.\fermata } d''8 [e'']
          fis''4 fis'' e''4. d''8
          cis'' [b'] cis''4 a'\fermata cis''
          d'' cis'' b' b'
          a'2.\fermata a'4
          fis'8 [g'] a'4 b' a'
          a' g'8 [fis'] fis'4\fermata a'
          g' fis' e' e'
          d'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          d' d' d' g'~
          g' fis'8 [e'] fis'4\fermata a'8 [b']
          cis''4 b' b' a'
          a'2.\fermata } a'4
          d'' d''8 [cis''] b' [gis'] a' [b']
          e' [fis'] gis'4 fis'\fermata a'~
          a'8 [gis'] a'2 g'4
          e'2.\fermata e'4
          d' d' d'8 [e'] fis'4
          fis' e' dis'\fermata d'
          d' d'2 cis'4
          a2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Va -- let will ich dir ge -- ben,
      du ar -- ge, fal -- sche Welt,
      Im Him -- mel ist gut woh - nen,
      hin -- auf steht mein Be -- gier,
      da wird Gott herr -- lich loh - nen
      dem, der ihm dient all -- hier.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Dein sünd -- lich bö -- ses Le -- ben
      Durch -- aus mir nicht ge -- fällt.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis8 [e]
          fis [g] a [fis] g4 g8 [a]
          b4 a8 [g] a4\fermata a'
          g' fis' f' e'
          fis'2.\fermata } fis'8 [g']
          a'4 d' e'8 [d'] cis' [b]
          a4 gis cis'\fermata fis'8 [e']
          d'4 e' e'8 [fis'] e' [d']
          cis'2.\fermata a4
          a d'8 [c'] b [cis'] d' [c']
          b2 b4\fermata c'
          b b b a8 [g]
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d8 [cis]
          d [e] fis [d] g [fis] e4
          b,8 [cis] d4 d,\fermata d'
          ais b8 [a] gis4 a
          d2.\fermata } d4
          d'8 [cis'] b [a] gis [e] fis [gis]
          a [gis] fis [eis] fis4\fermata fis
          b8 [b,] cis [d] e [d] e [e,]
          a,2.\fermata cis4
          d8 [e] fis [d] g4 fis8 [e]
          dis4 e b,\fermata fis,
          g,8 [a,] b, [a,] g, [e,] a,4
          d,2.\fermata \fine
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
