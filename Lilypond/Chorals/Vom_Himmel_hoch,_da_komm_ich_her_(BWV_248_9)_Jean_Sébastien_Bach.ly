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
 title = "Vom Himmel hoch, da komm ich her"
 subtitle = "tiré de l'oratorio de Noël, partie n° 1"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 248/9"
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
          \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
          \partial 4  d''4
          cis'' b' cis'' a'
          b' cis'' d''\fermata r
          \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
          r4 d'' d'' a'
          a' fis'8 [g'] a'4 g'
          fis'\fermata \bar "||" \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "||"
          \partial 4 fis'4
          b' b' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata r \bar "||"
          \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "||"
          r4 d'' cis'' b'
          a' b'8 [a'] g' [fis'] e'4
          d'\fermata \bar "||"
          \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          a'8 [gis'] fis'4 e' fis'8 [e']
          d'4 e' fis'\fermata r \bar "||"
          s1 \bar "||"
          r4 fis'8 [g'] a' [g'] fis'4
          e' d' d' e'
          d'\fermata s2. \partial 4 d'8 [e']
          fis'4 e' e'8 [gis'] a'4
          a'4. gis'8 e'4\fermata r
          s1
          r4 fis'8 [e'] e' [fis'] fis' [e']
          cis' [d'] b [cis'] d'4~ d'8 cis'
          a4\fermata \bar "||"
          s2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ach, mein herz -- lie -- bes Je -- su -- lein,
      Mach dir ein rein, sanft Bet -- te -- lein,
      Zu ru -- hen in meins Her -- zens Schrein,
      daß ich nim -- mer ver -- ge -- sse dein.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis'4
          e' d' cis' d'8 [cis']
          b [a] g4 a\fermata r
          s1 r4 a4 d' d'
          cis' c'8 [b] a4 a
          a\fermata s2. \partial 4 a4
          a gis a8 [d'] cis' [b]
          a [cis'] fis' [e'] cis'4\fermata r
          s1
          r4 d'8 [b] b [a] a [g]
          a4 g8 [fis] d4 a8 [g]
          fis4\fermata \bar "||"
          s2. \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          a~ a8 gis a [g] fis4
          g8 [fis] e4 d\fermata r
          s1 r4 d8 [e] fis4 fis8 [g]
          a4 a8 [g] fis [e] d [cis]
          d4\fermata s2. \partial 4 d4
          dis e8 [d] cis [b,] a,4
          fis8 [e] d [e] a,4\fermata r
          s1
          r4 b8 [e] a4 d8 [g]
          g [fis] g [a] b [g] a [a,]
          d4\fermata \bar "||"
          s2. \fine
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
