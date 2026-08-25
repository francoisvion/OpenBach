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
 title = "Herzliebster Jesu"
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 244/46"
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
          \partial 4  b'4
          b' b' ais' fis'
          b' cis'' d'' d''
          e'' d'' cis''\fermata cis''
          d'' e'' fis''8 [e''] d''4
          g'' g'' fis''8 [e''] fis''4
          e''2 d''4\fermata d''
          cis'' b' a'8 [g'] fis' [g']
          a'4 a' b' a'
          g'2 fis'4\fermata fis''
          e'' d'' cis''2
          b'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          g' gis' fis' cis'
          b fis' fis' b'
          cis'' b' ais'\fermata fis'
          fis' a' a' b'8 [a']
          g' [a'] b'4 b' b'
          e'8 [fis'] g'4 fis'\fermata b'
          e' d' e' d'8 [e']
          fis'4 fis' g' fis'
          fis'8 [dis'] e'4 d'\fermata b'
          b'8 [ais'] b'4. gis'8 ais'4
          fis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wie wun -- der -- bar -- lich ist doch die -- se Stra - fe!
      Der gu -- te Hir -- te lei -- det für die Scha -- fe,
      die Schuld be -- zahlt der Her -- re, der Ge -- rech -- te,
      für sei -- ne Knech -- te. _
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis'4
          e' d' cis' ais
          e' e' d'8 [e'] fis'4
          g' fis' fis'\fermata ais
          b cis' d'8 [cis'] b4
          b e' d'8 [cis'] d'4
          d' cis' d'\fermata fis
          gis8 [ais] b4 e a
          d' d' d'8 [e'] fis'4
          b2 b4\fermata d'
          cis' fis fis'4. e'8
          dis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  dis4
          e eis fis fis
          gis ais b b
          ais b fis\fermata fis
          b a d g8 [fis]
          e [fis] g [a] b4 a8 [gis]
          a2 d4\fermata d
          e8 [fis] g4 cis d
          d'8 [c'] b [a] g [fis] e [dis]
          e2 b,4\fermata b,
          cis d8 [e] fis2
          b,2.\fermata \fine
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
