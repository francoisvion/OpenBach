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
  title = "Ach bleib bei uns, Herr Jesu Christ"
 poet = "Auteur : Nikolaus Selnecker (1532-1592)"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 253"   
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial4 cis''4
          cis''8 [d''] e''4  cis''  a' |
          b'  cis''  d'' \fermata  cis'' |
          b' a' a'4. (b'8 |
          cis''4) cis'' b'8 [a'] b'4 |
          a'2.\fermata \break
          \partial4 cis''4
          b' cis'' a' fis' |
          b' a' b'\fermata cis'' |
          a' a' a'4. (b' 8 |
          cis''4) cis'' b' 8 [a'] b' 4 |
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial4 a'4
          a'4 b' a' a' |
          g'8 [fis'8] e'4 fis'\fermata e' |
          e'8 [d'] cis'4 fis'2 |
          e'4 e' e'4. d'8 |
          cis'2.  \fermata
          \partial4 a'4
          gis' gis' fis'8 [e' dis'4] |
          e'4. dis'8 e'4\fermata eis' |
          cis' fis' e' fis'8 [gis'] |
          a'4 e' e'4. d'8 
          cis'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ach bleib bei uns, Herr Je -- su  Christ, 
      weil es nun A -- bend wor -- den__ ist; 
      dein gött --  lich__  Wort, das hel -- le Licht,
      laß ja bei uns __ aus -- lö -- schen nicht!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial4 e'4
          e'4  e' e' e'8 [d']
          d'4 a a\fermata a |
          gis a d'2 |
          cis'8 [b] a4 a gis |
          e2.\fermata
          \partial4 e'4
          e'8 [d'] cis'4 cis' b |
          b a gis\fermata gis 4|
          a d' cis'8 [d'] cis' [b] |
          a4 a a gis |
          e2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial4 a,4 
          a gis a fis |
          g a d\fermata a,
          e 4 fis8 [e]  d [e] fis [gis] |
          a4 cis8 [d] e4 e |
          a,2.\fermata  \bar "|"
          \partial4  a,4 
          e  eis fis b8 [a]
          gis4 fis e\fermata cis
          fis8 [e] fis [gis] a [b] a [gis]
          fis4  cis8 [d] e4 e
          a,2.\fermata \fine
        }
      >>
    }
  >>} 
 
\paper { }
\layout {
  \context {
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
 }
 
