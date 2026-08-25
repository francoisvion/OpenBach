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
 title = "Nun lob, mein Seel, den Herren (II)"
 poet = "Auteur : Johann Gramann (1487-1541)"
  opus = "BWV 390"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c''4
          c''2 b'4
          a'2 g'4
          c'' d''2
          e''\fermata e''4
          e''2 e''4
          e''2 d''4
          c''8 [d''] d''4. c''8
          c''2\fermata } c''4
          c'' d'' e''
          d''2 e''4
          c'' b'8 [a'] b'4
          a'2\fermata d''4
          d'' c'' b'
          c'' a'2
          g'\fermata g'4
          c''2 c''4
          d'' e'' f''
          e'' d'' e''
          c''2\fermata c''4
          f''2 f''4
          e'' d'' e''
          d''2\fermata d''4
          e''2 e''4
          f''2 f''4
          g''4. f''8 e'' [d'']
          c''2\fermata e''4
          d'' c'' b'
          c'' a'2
          g'\fermata g'4
          c''2 b'4
          a'2 g'4
          d'' e''4. d''8
          d''2\fermata e''4
          f'' e'' d''
          c''8 [d''] d''4. c''8
          c''2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          a'2 g'4
          c' d' e'8 [f']
          g'4 a' g'
          g'2 g'4
          b' a' gis'
          a' e'8 [f'] g'4
          g' a' g'
          e'2 } e'4
          f'2 e'4
          gis' a' b'
          a'2 gis'4
          a'2 f'8 [e']
          d'2 d'4
          e' d' c'
          b2 e'4
          e'2 a'4
          g'2 g'4
          g' f' e'
          e'2 a'4
          a'2 a'4
          bes' f' g'
          f'2 g'4
          g'2 a'4
          f' a'2
          g'2.
          a'2 g'4
          a'2 g'4
          g'2 fis'4
          d'2 d'4
          e' f' g'
          c' d' e'
          f' e'8 [d'] e' [fis']
          g'2 g'4
          f' g'2
          g'4 a' g'
          e'2 \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun lob', mein' Seel', den Her - ren,
      was in mir ist, den Na -- men __ _ sein,
      hat dir _ dein Sünd ver -- ge - - ben
      und heilt _ dein Schwach -- heit groß,
      er rett' dein ar - mes Le - - ben,
      nimmt dich in sei - nen Schoß,
      mit rei -- chem Trost be -- schüt - - tet,
      ver -- jüngt, _ dem Ad -- ler gleich;
      der Herr schafft Recht, be -- hü - - tet,
      die lei -- den in sei -- nem _ Reich.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sein Wohl -- tat tut er meh - ren,
      ver -- giss es nicht, o Her - ze mein,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          e' f' g'
          f'2 e'4
          c'2 b4
          c'2 c'4
          b c' d'
          c'2 b4
          c'2 b4
          g2 } g4
          a b c'
          d'8 [e'] f'4 e'
          e'2 d'4
          c'2 c'4
          a2 g4
          g fis2
          g b4
          c' d' e'
          d' c' b
          c'2 b4
          c'2 f'4
          a2 d'4
          d'2 cis'4
          a2 b4
          c'2 c'4
          a2 d'4
          d' b c'
          c'2 c'8 [b]
          a2 d'4
          c' e' d'8 [c']
          b2 b4
          g d' e'
          a b c'
          b c' a
          b2 c'4
          c'2 b4
          c'2 b4
          g2 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          a2 e4
          f2 c4
          e f g
          c2\fermata c'4
          gis fis e
          a g f
          e f g
          c2\fermata } c4
          f2 c'4
          b a gis
          a e2
          f\fermata f4
          fis2 g4
          c d2
          g,\fermata e4
          a b c'
          b a g
          c'2 gis4
          a2\fermata f4
          d e f
          g a2
          d\fermata g4
          c b, a,
          d c b,
          e d c
          f2\fermata c'4
          fis2 g4
          e c d
          g,2\fermata g8 [f]
          e4 d c
          f2 e4
          d c2
          g\fermata c'4
          a g f
          e f g
          c2\fermata \fine
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
