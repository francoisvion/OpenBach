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
 title = "An Wasserflüssen Babylon"
 poet = "Auteur : Wolfgang Dachstein (v.1487-1553)"
  opus = "BWV 267"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''4
          e'' d''8 [c''] b' [c''] d''4
          c''8 [b'] c''4 b'\fermata a'
          b' c'' d'' c''8 [b']
          a' [g'] a'4 g'\fermata }
          \partial 4  g'
          a' b' c''8 [b'] a'4
          b' a' g'\fermata g'8 [a']
          b'4 c'' d'' e''
          b' cis'' d''\fermata
          \partial 4  b'8 [c'']
          d''4 e'' d''8 [c''] b'4
          c''2 b'4\fermata e''
          e'' e'' a' d''
          c'' b' a'\fermata c''
          b' a' g' a'8 [g']
          f'4 e' d'\fermata d'
          g' a' b'4. c''8
          d''4 c''8 [b'] a'4 b'8 [c'']
          a'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          g' fis' g' fis'
          e'8 g'4 fis'8 g'4\fermata a'
          g' g' g' g'
          g' fis' d'\fermata }
          \partial 4  d'
          d'8 [e'] fis'4 e'~ e'8 [d']
          d'4 c' b\fermata e'
          d' e' f' e'8 [fis']
          g' [fis' g' a'] fis'4\fermata
          \partial 4 d'
          g' g' a' b'
          b'8 [gis'] a'4 gis'\fermata b'
          a' e'8 [c'] d' [e'] f'4
          e' d' c'\fermata a'
          d'8 [e'] f'4 e'8 [d'] e'4~
          e'8 d'4 cis'8 d'4\fermata d'8 [c']
          b [a g fis] g4 g'
          fis' g' g' g'~
          g' fis' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      An Was -- ser -- flüs -- sen Ba -- by -- lon, 
      da sa -- ßen wir mit Schmer - zen, 
      Wir hing -- en auf mit schwe -- rem Muth
      die Har -- fen und die Or -- geln gut
      an ih -- re Bäum' der Wei -- den,
      die drin -- nen sind in ih -- rem Land,
      da muß -- ten wir viel Schmach und Schand'
      täg -- lich von ih - - nen lei - - den.
    }
    
        \new Lyrics \lyricsto "soprano" {
      als wir ge -- dach -- ten an Zi -- on, 
      da wein -- ten wir von Her - zen, 
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          c'8 [b] a4 e' a8 [b]
          c' [e'] d'4 d'\fermata d'
          d' g8 [a] b [g] e'4
          a8 [b] c'4 b\fermata }
          \partial 4  b
          a d' g a~
          a8 g4 fis8 g4\fermata g
          g g g g
          g8 [a16 b] a4 a\fermata
          \partial 4 g
          g8 [d' c' b] a4 e'
          e'2 e'4\fermata e'8 [d']
          c' [b] a4~ a8 [gis a b]
          gis a4 gis8 a4\fermata e8 [fis]
          g4 d'8 [c'] bes4 a
          a g fis\fermata fis
          g d' d' e'
          d'2 e'8 [d'] c'4
          d'8 [e' d' c'] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g4
          c d e fis8 [g]
          a4 d g\fermata fis
          g8 [fis] e4 b, c
          d2 g,4\fermata }
          \partial 4  g
          fis e8 [d] e4 fis
          g d g,\fermata c
          g8 [f e d] c [b, c d]
          e4 a, d\fermata
          \partial 4 g8 [a]
          b4 c' fis gis
          a a, e\fermata gis,
          a,8 [b, c a,] f4 e8 [d]
          e4 e, a,\fermata a,
          b,8 [cis] d2 cis4
          d a, d\fermata b,
          e d g8 [fis] e4
          b,8 [a,] g,4 c8 [b,] a,4
          d8 [c] d4 g,\fermata \fine
        }
      >>
    }
  >>
}

\markup {
         \fill-line {
    \column {
      \line {Texte alternatif n° 2}
      \vspace #1
      \line {Ein Lämmlein geht und trägt die Schuld}
      \line {Der Welt und ihrer Kinder;}
      \line {Es geht und büsset in Geduld}
      \line {Die Sünden aller Sünder.}
      \line {Es geht dahin, wird matt und krank,}
    }
    \null
    \column {
      \vspace #2
      \line {Ergibt sich auf die Würgebank,}
      \line {Verzeiht sich aller Freuden;}
      \line {Es nimmet an Schmach, Hohn und Spott,}
      \line {Angst, Wunden, Striemen, Kreuz und Tod,}
      \line {Und spricht: Ich will gern leiden.}
 
    } 
 }
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
