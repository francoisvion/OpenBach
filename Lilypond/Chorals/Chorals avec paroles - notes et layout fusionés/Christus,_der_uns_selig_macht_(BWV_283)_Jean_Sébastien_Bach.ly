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
 title = "Christus, der uns selig macht"
 poet = "Auteur : Michael Weisse (v.1488-1534)"
  opus = "BWV 283"
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
           e''4 e'' e'' e''
          d'' c'' b'2\fermata
          a'4 gis' a' b'8 [c'']
          d''4 c'' b'2\fermata
           a'4 b' c''8 [b'] a'4
          a'8 [g'] f'4 e'2\fermata
          d'4 cis' d' e'8 [f']
          g'4 f' e'2\fermata
           a'4 a' a' g'
          f' e' d'2\fermata
          g'4 a' b' c''
          d'' e'' d'' c''
           b'2\fermata a'4 b'
          c''8 [b'] a'4 a'8 [g'] f'4
          e'2\fermata d'4 cis'
          d' e'8 [f'] g'4 a'
          g' f' e'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           gis'8 [a' b' gis'] a'4 a'
          a'8 [e'] e'4 e'2
          c'8 [d'] e'4. fis'8 gis' [a']
          b'4. a'8 a'4 gis'\fermata
           a'8 [g'] f'4 g'4. f'8
          e'4. d'8 cis'2
          d'8 [g] a4 a8 [b cis' d']
          e'4. d'8 cis'2
          c'4 f'4. e'16 [d'] e'4~
          e'8 d'4 cis'8 d'2
          b8 e'4 d'8 d'4 e'
          f'8 g'4 a' g'8 g'4
           g'2 e'8 [fis'] g'4
          g' a'8 [g'] f' [e'] d'4
          d' cis'\fermata d'8 [a bes g]
          a [b c' d'] e'4 f'~
          f'8 e'4 d'16 [c'] b2 \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Chris -- tus, der uns se -- lig macht, kein Bös's hat be -- gan - gen, der ward für uns in der Nacht als ein Dieb ge -- fan - gen, ge -- führt vor gott -- lo -- se Leut', und fälsch -- lich ver -- kla - - - get, ver -- lacht, ver -- höhnt und ver -- speit, wie denn die Schrift sa - - - get.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           b4 e'8 [d'] c' [d' e' c']~
          c' b4 a8 a4 gis\fermata
          a b c' d'8 [e']
          f' [e'] e'4 e'2
           c'4 d' c'4. d'8
          a4 a a2
          f8 [d] e4 f g8 [a]
          bes [a] a4 a2
          a8 [bes] c'4 c'4. bes8
          a4. a16 [g] f2
          g8 c'4 d'16 [c'] b8 [d' g c']~
          c' [b c' e'] f'4. e'8
           d'2 c'4 d'
          c'4. cis'8 d'4 a
          a2 a4 g8 [e]
          f4 g c' c'~
          c'8. [bes16] a8 [b16 a] gis2 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           e8 [fis gis e] a [b c' a]
          fis [gis a a,] e2\fermata
          f4 e8 [d] c4 b,8 [a,]~
          a, [gis, a, c] e2\fermata
           f8 [e] d4 e f
          cis d a,2\fermata
          bes,4 a,8 [g,] f,4 e,8 [d,]~
          d, [cis, d, f,] a,2\fermata
          f,8 [g, a, bes,] c4. cis8
          d4 a, d,2\fermata
          e4 fis g8 [f] e4
          d8 [g] c4~ c8 [b, c e]
           g2\fermata a4 g8 [f]
          e4 f8 [e] d [e f g]
          a2\fermata f4 e
          d c~ c8 [bes, a, f,]
          c4 d e2\fermata \fine
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
