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
 title = "Von Gott will ich nicht lassen (II)"
 poet = "Auteur : Ludwig Helmbold (1532-1598)"
  opus = "BWV 418"
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
          \partial 4  e'4
          a' b' c'' d''
          b'4. a'8 g'4\fermata g'
          a' a' b' b'
          e'2.\fermata e'4
          a' b' c'' d''8 [c'']
          b'4. a'8 g'4\fermata g'
          a' a' b' b'
          e'2.\fermata e''4
          d'' c'' c'' b'
          c''2.\fermata b'4
          c'' d'' e'' e''
          d''4. c''8 b'4\fermata b'
          c'' b' a' a'
          b'4. a'8 g'4\fermata g'8 [f']
          e'4 a' a'8 [b'] gis'4
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'8 [d']
          e'4 e' e' d'
          d'8 [e'] fis'4 e'\fermata e'
          e' d' d'8 [f'] e' [d']
          c'2.\fermata b4
          e' fis'8 [gis'] a'4 a'8 [g']
          f' [e'] d'4 e'\fermata d'
          e' e' d'8 [e'] fis'4
          b2.\fermata c'4
          a' a' g' g'
          g'2.\fermata g'8 [f']
          e'4 d' c' e'
          a'8 [g'] a' [fis'] g'4\fermata g'
          g'8 [f'] g' [e'] c'4 c'
          b8 [cis'] dis'4 e'\fermata d'
          d'8 [c'] c' [d'] e' [f'] e'4
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Von Gott will ich nicht la - ßen,
      denn er läßt nicht von mir,
      führt mich auf rech -- ter Stra - Ben,
      da ich sonst ir -- ret sehr.
      Er reicht mir sei -- ne Hand,
      den A -- bend wie den Mor - gen,
      thut er mich wohl ver -- sor - gen,
      sei wo ich woll' im Land, im Land, im Land.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g8 [a]
          c'4 b a a
          b2 b4\fermata c'
          c'8 [b] a4 g8 [a] b4
          a2.\fermata gis4
          a d' e' a~
          a8 [gis] a4 b\fermata b
          a8 [b] a [g] fis [g] a4
          gis2.\fermata a4
          a d' d'8 [e'] f' [d']
          e'2.\fermata d'4
          c' g' g' c'8 [b]
          a4 d' d'\fermata d'
          g c' c'8 [b] a [g]
          fis [g] a4 b\fermata g
          g a8 [b] c' [d'] b4
          cis'2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a gis a8 [g] fis4
          g dis e\fermata c
          f fis g gis
          a2.\fermata e8 [d]
          c4 b, a,8 [g] f [e]
          d [e] f4 e\fermata b,
          c cis d dis
          e2.\fermata a8 [g]
          f4 fis g g,
          c2.\fermata g4
          a b c'8 [b] a [g]
          fis [e] fis [d] g4\fermata g8 [f]
          e [d] e [c] f [g] f [e]
          dis [e] fis4 e\fermata b,
          c f e8 [d] e [e,]
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
