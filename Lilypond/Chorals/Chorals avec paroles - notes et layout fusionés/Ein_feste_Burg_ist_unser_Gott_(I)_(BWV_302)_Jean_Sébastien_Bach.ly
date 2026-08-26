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
 title = "Ein feste Burg ist unser Gott (I)"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 302"
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
          \partial 4  d''4
          d'' d'' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata d''
          cis'' b' a' b'
          g'8 [fis'] e'4 d'\fermata }
          \partial 4  d'
          a' b' a' gis'
          a'2\fermata d'4 a'
          b' cis'' d''\fermata cis''
          d''8 cis'' b'4 a'\fermata
          \partial 4  b'
          b' a' b'8 [a'] g'4
          fis'\fermata d'' cis'' b'
          a' b'8 [a'] g'4 fis'
          e'2 d'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          d' d'8 [e'] fis'4 g'
          a' gis' e'\fermata b'
          e' d' cis' b
          cis'8 d'4 cis'8 d'4\fermata }
          \partial 4  d'
          cis' d' e'8 [d'] b4
          cis'2\fermata d'8 [e'] fis'4
          g'8 [fis'] e'4 fis'\fermata fis'
          fis'16 [gis'] a'4 gis'8 e'4\fermata
          \partial 4 g'
          g' dis'8 [e'] fis'4 e'
          dis'\fermata fis' fis'8 [e' d' e']
          fis' [e'] d'4 e'8 [a] d'4~
          d' cis' a\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ein' fe -- ste Burg ist un -- ser Gott, ein' gu -- te Wehr und Waf - fen.
      Der _ alt bö -- se Feind, mit Ernst er's jetzt meint,
      groß Macht und viel List sein grau -- sam Rüst -- zeug ist,
      auf Erd ist nicht seins -- Glei - - chen. }
     
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      er hilft uns frei aus al -- ler Not, die uns jetz hat be -- tro - fen. }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          fis' b8 [cis'] d'4 e'
          fis'4. e'16 [d'] cis'4\fermata fis8 [gis]
          ais4 b fis'8 [e'] d'4
          e'8 a4 g8 fis4\fermata }
          \partial 4  fis8 [g]
          a4 gis8 [fis] e [fis] e4
          e2\fermata a4 d'
          d' a a\fermata a
          b8 e' fis' [e'] cis'4\fermata
          \partial 4 e'
          d'8 [e'] fis'4 b b
          b\fermata b a b8 [cis']
          d'4 g8 [fis] e4 fis16 [g a8]
          b4 a8 [g] fis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          b4 a8 [g] fis4 e
          d e a,\fermata b,
          cis d8 [e] fis4 g8 [fis]
          e [d] a,4 d\fermata }
          \partial 4  d8 [e]
          fis4 e8 [d] cis [d] e4
          a,2\fermata fis4 e8 [d]
          g4 a d\fermata fis
          b,8 cis d [e] a,4\fermata
          \partial 4 e8 [fis]
          g4 fis8 [e] dis4 e
          b,\fermata b, fis g
          d8 [cis] b,4 cis d
          g, a, d,\fermata \fine
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
