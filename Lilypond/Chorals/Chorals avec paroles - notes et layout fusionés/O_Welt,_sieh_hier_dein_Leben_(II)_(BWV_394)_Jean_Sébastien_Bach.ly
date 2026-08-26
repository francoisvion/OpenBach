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
 title = "O Welt, sieh hier dein Leben (II)"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 394"
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
          \partial 4  cis''8 [b']
          a'4 b' cis''8 [d''] e''4
          d''2 cis''4\fermata cis''8 [d'']
          e''4 e'' b' cis''8 [b']
          a'2 gis'4\fermata e'
          a' b' cis''8 [b'] cis'' [d'']
          b'2\fermata r4 cis''8 [b']
          a'4 b' cis''8 [d''] e''4
          d''2 cis''4\fermata cis''8 [d'']
          e''4 e'' b' cis''8 [b']
          a'2 gis'4\fermata e'
          a' b' cis''8 [d''] e'' [d'']
          cis''4 b' a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'8 [gis']
          fis'4. gis'8 a'4. e'8
          fis'4 e' e'\fermata a'
          a'8 [gis' a' b'] gis' [fis'] e'4
          e' dis' e'\fermata b
          e'8 [fis'] gis'4 a'8 [gis'] a' [b']
          gis'2\fermata r4 gis'
          fis' e' e'8 [d'] cis'4
          cis'8 [b16 a] b4 a\fermata a'
          b'8 [cis''] b' [a'] gis' [fis'] gis'4
          gis'8 [fis'16 e'] fis'4 e'\fermata e'8 [d']
          cis' [d' cis' b] a4 a'
          e'8 [fis' b e'] cis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O Welt, sieh' hier dein Le -- ben
      am Stamm des Kreu -- zes schwe -- ben,
      dein Heil sinkt in den Tod,
      der gro -- ße Fürst der Eh -- ren
      läßt wil -- lig sich be -- schwe -- ren mit Schlä -- gen, Hohn und gro -- ßem Spott.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  e'4
          fis'8 [e'] d'4 e' a
          a gis a\fermata e'
          e' e' e'8 [d'] cis'4
          cis' b b\fermata
          \partial 4  gis
          a d' e'8 [d'] e' [fis']
          e'2\fermata r4 eis'
          cis'8 [d'] cis' [b] a4 a
          a8 fis'4 e'8 e'4\fermata
          \partial 4 fis'
          e' b b8 [a] gis [fis]
          e cis'4 b8 b4\fermata cis'8 [b]
          a4 gis8 [fis] e4. fis8
          gis a4 gis8 e4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          d'8 [cis'] b4 a cis
          b, e a,\fermata a8 [b]
          cis'4 cis8 [d] e4 a8 [gis]
          fis4 b, e\fermata
          \partial 4  e8 [d]
          cis [d] cis [b,] a,4 a8 [d]
          e2\fermata r4 cis
          fis gis a8 [b] a [gis]
          fis4 gis a\fermata
          \partial 4 fis
          gis8 [a] gis [fis] e [fis] e [dis]
          cis4 dis e\fermata cis
          fis e8 [d] cis [b,] cis [d]
          e [d] e4 a,\fermata \fine
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
