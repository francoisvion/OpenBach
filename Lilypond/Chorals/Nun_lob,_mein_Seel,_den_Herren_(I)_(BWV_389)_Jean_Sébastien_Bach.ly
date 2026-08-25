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
 title = "Nun lob, mein Seel, den Herren (I)"
 poet = "Auteur : Johann Gramann (1487-1541)"
  opus = "BWV 389"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c''4
          c'' b' a' g'
          c'' d'' e''\fermata e''
          e''8 [d''] e''4 e'' d''
          c''8 [d''] d''4 c''\fermata } c''
          c''8 [d''] e''4 d'' e''
          c'' b' a'\fermata a'
          d''8 [c''] b'4 c''8 [b'] a'4
          g'\fermata g' c'' c''
           d'' d'' e''8 [d''] e''4
          c''\fermata c'' f'' f''
          e''8 [d''] e''4 d''\fermata d''
          e'' e'' f'' f''
          g''8 [f''16 e''] f''8 [g''] c''4\fermata e''
           d''8 [c''] b'4 c''8 [b'] a'4
          g'\fermata g' c'' b'
          a' g' d'' e''
          d''\fermata e'' f'' e''
          d'' c''8 [d''] e''4 d''
          c''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          a' g' g'8 [f' e' f']
          g'4 a'8 [g'] g'4\fermata g'
          g'8 [a'] b'4 a'4. g'8
          g' [a'] g' [f'] e'4\fermata } e'
          f' c'' g'8 [f'] e'4
          e'2 e'4\fermata e'
          d' d' g'8 [e'] fis'4
          d'\fermata d' g'8 [f'] e'4
          a'8 [f'] g'4 g'8 [f'] g'4
          f'\fermata g' f'8 [g'] a'4
          bes' e' f'\fermata g'
          g' a' a' bes'
          bes' a'8 [g'] f'4\fermata g'
           a' g' g'8 [e'] fis'4
          d'\fermata d' a' d'8 [e']
          f'4 g' a'4. b'16 [c'']
          g'4\fermata b' a' g'8 [a']
          b'4 c''2 b'4
          g'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun lob', mein' Seel', den Her - ren,
      was in mir ist, den Na -- men sein,
      hat dir dein Sünd ver -- ge - ben
      und heilt dein' Schwach -- heit groß,
      er -- rett' dein ar -- mes Le - ben,
      nimmt dich in sei -- nen Schoß,
      mit rei -- chem Trost be -- schüt - tet,
      ver -- jüngt dem Ad -- ler gleich,
      der Kön'g schafft recht, be -- hü - tet,
      die leid'n in sei - - nem Reich.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sein' Wohl -- that thut er meh - ren,
      Ver -- giss es nicht, o Her -- ze mein,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          e' e'8 [d'] c'4 c'
          c'4. b8 c'4\fermata c'8 [d']
          e' [f'] e' [d'] c'4. b8
          c'4 b g\fermata } g
          a g8 [a] b4 b
          b8 a4 gis8 c'4\fermata c'8 [b]
          a4 g g d'8 [c']
          b4\fermata b8 [a] g4 c'
          c' b c' bes
          a\fermata c' d'8 [e'] f'4
          g' cis' a\fermata b
          c' c' d' d'
          e'8 [d'] c' [bes] a4\fermata c'8 [b]
           a4 d' g d'8 [c']
          b4\fermata b e8 [fis] g4
          d' d'8 [c'] c' [b] c'4
          b\fermata e'8 [d'] c' [d'] e' [f']
          g' [f'] e' [f'] g'4. f'8
          e'2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'8 [b]
          a4 e f c8 [d]
          e4 f8 [g] c4\fermata c
          c' gis a8 [g] f [g]
          e [f] g4 c\fermata } c
          f e8 [f] g4 gis
          a e a,\fermata a8 [g]
          fis4 g8 [fis] e [c] d4
          g,\fermata g8 [f] e4 a8 [g]
          f [d] g4 c4. d16 [e]
          f4\fermata e d d'
          g8 [bes] a4 d\fermata g
          c'8 [b] a [g] f [e] d4
          c d8 [e] f4\fermata c'
           fis g e8 [c] d4
          g,\fermata g, a, b,8 [c]
          d4 e f fis
          g\fermata gis a8 [b] c'4
          f8 [g] a4 g8 [f] g4
          c2.\fermata \fine
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
