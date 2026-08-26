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
 title = "Gott Vater, sende deinen Geist"
 subtitle = "tiré de la cantate : Wer mich liebet, der wird mein Wort halten (II)"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 74/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' a' e'' d''
          e'' c'' b'\fermata a'8 [b']
          c''4 b' c''8 [d''] e''4
          d'' c'' b'\fermata c''8 [b']
          a'4 a' d''8 [c''] b' [c'']
          a'2 g'4\fermata g'
          c'' b' c''8 [d''] e''4
          d'' c'' b'\fermata a'8 [b']
          c''4 b' c''8 [d''] e''4
          d'' c'' b'\fermata e''
          e'' e'' d''8 [c''] b' [c'']
          b' [gis'] a' [b'] b'2
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'8 [f']
          e'4 e'8 [d'] e'4 f'
          e' e' e'\fermata e'
          a' gis' a' g'8 [a']
          b'4 a' gis'\fermata a'
          d'8 [e'] fis'4 fis' g'
          g' fis' d'\fermata e'8 [f']
          g'4 d' e'8 [f'] g'4
          gis' a' gis'\fermata e'
          d' d' e'8 [f'] g'4
          f'8 [e'] e'4 e'\fermata gis'
          a' g' f'4. e'8
          f'4 e'8 [f'] e' [f'] e' [d']
          cis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Kein Men -- schen -- kind hier auf der Erd
      ist die -- ser ed -- len Ga -- be wert,
      bei uns ist kein Ver -- die -- nen;
      hier gilt gar nichts als Lieb und Gnad,
      die Chri -- stus uns ver -- die -- net hat
      mit Bü -- ßen und Ver -- süh - -  nen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'8 [d']
          c' [b] a4 a8 [c'] b [a]
          b4 a gis\fermata a
          e' e' e' e'
          f' e' e'\fermata e'
          a d' d' e'
          d'8 [c'16 b] c'4 b\fermata c'
          g8 [a] b [a] g4 c'
          d' e' e'\fermata c'8 [b]
          a4 b8 [a] g4 c'
          c'8 [b] b [a] gis4\fermata b
          c' cis' d'4. e'8
          d'4 c'8 [a] gis a4 gis8
          e2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a f c d
          gis, a, e\fermata c8 [b,]
          a,4 e a8 [b] c'4
          gis a e\fermata a8 [g]
          fis [e] d [c] b,4 e8 [c]
          d2 g,4\fermata c8 [d]
          e [f] g [f] e4 d8 [c]
          b,4 a, e\fermata a8 [g]
          fis [d] g [f] e [d] c [b,]
          a, [gis,] a,4 e\fermata e
          a8 [g] f [e] f [e] d [c]
          d [b,] c [d] e [d] e4
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
