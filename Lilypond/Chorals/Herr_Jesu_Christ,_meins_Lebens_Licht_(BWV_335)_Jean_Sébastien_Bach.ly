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
 title = "Herr Jesu Christ, meins Lebens Licht"
 poet = "Auteur : Martin Behm (1557-1622)"
  opus = "BWV 335"
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
          \partial 4  b'4
          b' a' b' g'
          fis'8 [g'16 a'] fis'4 e'\fermata e'8 [fis']
          g'4 a' b' a'
          d'' cis'' b'\fermata
          \partial 4  b'
          e'' fis'' e'' b'
          cis'' b' a'\fermata a'8 [b']
          cis''4 dis'' e'' d''
          cis''8 [d''16 e''] cis''4 b'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  dis'4
          e' e' fis' e'
          e' dis' b\fermata b
          e' d' d' d'8 [e']
          fis'4 fis'8. [e'16] dis'4\fermata
          \partial 4  e'
          e' d' e' eis'
          fis'4. eis'8 fis'4\fermata fis'8 [gis']
          a'4 a' b'8 cis''4 b'8
          b' [ais'16 gis'] ais'4 fis'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr Je -- su Christ, mein's Le -- bens Licht,
      Mein Hort, mein Trost, mein Zu -- ver -- sicht,
      Auf Er -- den bin ich nur ein Gast,
      und drückt mich sehr der Sün -- den Last.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      O Je -- su, du mein Bräu -- ti -- gam,
      der du aus Lieb' am Kreu -- zes -- stamm
      für mich den Tod ge -- lit -- ten hast,
      ge -- nom -- men web der Sün -- den Last.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis4
          g a8 [g] fis4 b
          c' b8 [a] g4\fermata g8 [a]
          b4 a g fis
          b4. ais8 fis4\fermata
          \partial 4  g
          a a8 [b] cis'4 d'
          cis' gis8 [cis'] cis'4\fermata d'
          e' fis' e'8 [cis'] d' [fis']
          g' [cis'] fis' [e'] dis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b,4
          e c' dis e
          a, b, e,\fermata e,
          e fis g d8 [cis]
          b,4 fis b,\fermata
          \partial 4  e8 [d]
          cis4 d a gis
          a8 [b] cis'4 fis\fermata d
          a gis8 [fis] gis [ais] b4
          e fis b,\fermata \fine
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
