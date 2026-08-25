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
  title = \markup{\concat{"Wir Christenleut habn jetzund Freud" \small " (v. 5)"}}
  subtitle = "tiré de la cantate : Unser Mund sei voll Lachens"
  poet = "Auteur : Kaspar Füger (1521-1592)"
  opus = "BWV 110/7"
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
          \partial 4  b'8 [cis'']
          d''4 cis'' b'\fermata b'8 [cis'']
          d''4 cis'' b'\fermata fis''
          e'' d'' cis''\fermata cis''
          d'' d'' e'' e''
          fis'' fis'' e'' d''
          cis''2 b'4\fermata fis''
          e'' d'' cis''\fermata fis''
          e'' d'' cis''\fermata cis''
          d'' d'' e'' e''
          fis'' fis'' e'' d''
          cis''2 b'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          b' ais' fis'\fermata fis'
          b' ais' fis'\fermata fis'8 [g']
          a'4 fis' fis'\fermata fis'
          fis' fis' b' a'
          a' a'8 [b'] cis''4 fis'
          fis'4. e'8 d'4\fermata b'
          b'8 [ais'] b'4 ais'\fermata b'8 [a']
          gis'4 a'8 [b'] a'4\fermata a'
          a'8 [g'] fis'4 b'8 [a'] gis'4
          cis'' b'8 [ais'] b'4 b'
          b' ais' fis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Al -- le -- lu -- ja!
      Al -- le -- lu -- ja!
      Ge -- lobt sei Gott,
      sin -- gen wir all aus un -- sers Her -- zens Grun -- de.
      Denn Gott hat heut
      ge -- macht solch Freud,
      die wir ver -- ges -- sen solln zu kei -- ner Stun -- de.

    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'8 [e']
          fis'4 fis'8 [e'] d'4\fermata d'8 [e']
          fis'4 fis'8 [e'] d'4\fermata a8 [b]
          cis'4 b ais\fermata ais
          b8 [cis'] d'4 d' cis'
          d' d' cis' b
          b ais fis\fermata d'
          e' fis' fis'\fermata fis'
          b fis'8 [e'] e'4\fermata e'
          fis'8 [e'] d' [cis'] b4 e'
          e' d'8 [cis'] b [cis'] d' [e']
          fis'4. e'8 dis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b,4
          b fis d\fermata b,
          b fis d\fermata d
          a b fis\fermata fis
          b b8 [a] g [e] a [g]
          fis [e] d [cis] b, [ais,] b,4
          fis,2 b,4\fermata b,
          cis d8 [e] fis4\fermata d
          e fis8 [gis] a4\fermata a8 [g]
          fis4 b8 [a] gis4 cis'8 [b]
          ais4 d' gis8 [ais] b4
          fis2 b,4\fermata \fine
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
