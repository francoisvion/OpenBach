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
 title = "Gelobt seist du, Jesu Christ"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 314"
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
          \partial 4  a'4
          a' a' b' a'
          d'' e'' d''2\fermata
          cis''8 [d''] e''4 fis'' e''8 [d'']
          cis''4 b' a'\fermata
          \partial 4  a'
          d'' cis''8 [d''] e''4 b'
          a'8 [gis'] fis'4 e'\fermata e'
          b' b' b' cis''
           d''8 [cis''] b'4 a'8 [b'] cis''4
          b'2\fermata a'4 a'
          a'2 a'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'8 [d']
          e'4 fis' fis'8 [e'] e'4
          a' a'8 [g'] fis'2\fermata
          e'8 [fis'] g'4 a'8 [fis'] b'4
          b'8 [a' a' gis'] e'4\fermata
          \partial 4  fis'
          fis'8 [g'] a'4 a' gis'
          fis'8 [e' e' dis'] b4\fermata cis'
          dis' dis' e' e'
          d'4. e'8 fis'4 e'8 [fis']
          gis'2\fermata fis'4 e'
          e'8 [d'16 e'] fis'4 e'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ge -- lo -- bet seist du, Je -- su Christ, dass du Mensch ge -- bo -- ren bist, von ei -- ner Jung -- frau, das ist wahr, dess freu -- et sich der En - - gel Schar. Al -- le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a d' d' cis'
          d'8 [e'16 fis'] cis'4 a2\fermata
          a4 b cis'8 [d'] e'4
          e' e' cis'\fermata
          \partial 4  d'
          d'8 [e'] fis'4 e' e'8 [b]
          b4 b gis\fermata a8 [gis]
          fis4 b8 [a] gis4 ais
          b8 [a] g4 fis8 [gis] a4
          e'2\fermata cis'8 [d' e' g]
          fis [a] d'4 cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis4
          cis d g4. fis16 [e]
          fis8 [d] a4 d2\fermata
          a4 g fis gis
          a e a,\fermata
          \partial 4  d8 [cis]
          b,4 fis cis8 [d] e4
          dis8 [e] b,4 e\fermata a
          a gis8 [fis] e [d] cis4
          b,4. cis8 d4 cis8 [dis]
          e2\fermata fis4 cis
          d2 a,4\fermata \fine
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
