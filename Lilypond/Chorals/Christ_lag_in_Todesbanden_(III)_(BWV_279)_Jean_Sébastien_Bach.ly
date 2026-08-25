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
 title = "Christ lag in Todesbanden (III)"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 279"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 b'4
          ais' b'8 [cis''] d''4 e''
          d'' cis'' b'\fermata b'
          g' a' b' a'8 [g']
           fis'2 e'4\fermata } \oneVoice r \voiceOne
          e' g' a' e'
          g' a' b'\fermata b'
          e'' dis'' e'' fis''
          d'' cis'' b'\fermata b'8 [c'']
          d''4 b' d'' a'
          g' fis' e'2\fermata
          b'4 a' g' fis'
          e'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 g'4
          fis' fis'8 [ais'] b'4 cis''
          b' ais' fis'\fermata fis'
          e' d' d' e'
          e' dis' b\fermata } \oneVoice r \voiceTwo
          b e'8 [d'] e'4 c'
          b a g\fermata d'
          g' fis' e' b'
          b' ais' fis'\fermata g'
          a' d' d' c'
          b8 e'4 d'8 d'4 c'\fermata
          b8 [cis'] dis'4 e'8 [c''] dis'4
          b2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Christ lag in To -- des -- ban - den
      für un -- ser Sünd' ge -- ge -- ben,
      Dess wir sol -- len fröh -- lich sein,
      Gott lo -- ben und ihm dank -- bar sein,
      Und sin -- gen Hal -- le -- lu - ja,
      Hal -- le -- lu - ja!
    }
    
    \new Lyrics \lyricsto "soprano" {
      der ist wie -- der er -- stan - den
      Und hat uns bracht das Le -- ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 e'8 [d']
          cis'4 d'8 [e'] fis'4 fis'
          fis' fis'8 [e'] dis'4\fermata b
          b a g8 [a] b4
          c' b8 [a] g4\fermata } \oneVoice r \voiceOne
          g g c' a
          g d' d'\fermata b
          b a b b
          fis' fis'8 [e'] d'4\fermata b
          a g g fis
          g a a2\fermata
          fis g8 [e] b [a]
          gis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 e4
          fis8 [e] d [cis] b,4 ais,
          b, fis b,\fermata dis
          e fis g e
           a, b, e\fermata } \oneVoice r \voiceTwo
          e8 [d] c [b,] a, [b,] c [d]
          e4 fis g\fermata g
          e fis g d8 [e]
          fis4 fis, b,\fermata e
          fis g b,8 [c] d4
          e fis8. [gis16] a2\fermata
          dis4 b, e8 [a,] b,4
          e2.\fermata \fine
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
