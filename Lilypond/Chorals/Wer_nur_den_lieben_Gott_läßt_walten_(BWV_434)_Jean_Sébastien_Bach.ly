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
 title = "Wer nur den lieben Gott läßt walten"
 poet = "Auteur : Georg Neumark (1621-1681)"
  opus = "BWV 434"
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
          \repeat volta 2 {
          \partial 4  e'4
          a' b' c'' b'
          a' b' gis'4. fis'8
          e'4\fermata g' g' f'
          e' a' a'8 [b'] gis'4
          a'2.\fermata } b'4
          c'' d'' e'' e''
          d''8 [e''16 f''] d''4 c''\fermata e''
          d'' c'' b' a'8 [b']
          c'' [b'] b'4 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'8 [d']
          e'4 e' e'8 [fis'] gis'4
          a'8 [g'] f'4 e'2
          b4\fermata e' e' d'
          d'8 [cis'] d' [dis'] e' [fis'] e'4
          e'2.\fermata } gis'4
          a' g' g' a'
          a' g'8 [f'] e'4\fermata e'
          fis'8 [gis'] a'4 g'8 [f'] e'4
          fis' e'8 [d'] cis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer nur den lie -- ben Gott läßt wal - ten
      und hof -- fet auf ihn al -- le -- zeit,
      Wer Gott, dem Al -- ler -- höch -- sten, traut,
      der hat auf kei -- nen Sand ge -- baut.

      
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      den wird er wun -- der -- bar er -- hal - ten
      in al -- ler Not und Trau -- rig -- keit.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [b]
          c' [b] a [gis] a4 d
          e8 [e'] d' [c'] b4. a8
          gis4\fermata b c' d'8 [c']
          b [a] a [b] c' b4 c'16 [d']
          c'2.\fermata } e'4
          e' d' c' c'
          c' b g\fermata a
          a8 [e'] e' [ees'] d'4 c'8 [b]
          a4 gis e\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          c e a, b,
          c d e2
          e4\fermata e a b8 [a]
          gis [g] fis [f] e [dis] e4
          a,2.\fermata } e4
          a b c'8 [b] a [g]
          f [d] g4 c\fermata cis
          d8 [e] f [fis] g [gis] a4
          dis e a,\fermata \fine
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
