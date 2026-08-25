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
  title = \markup{\concat{"Du Lebensfürst, Herr Jesu Christ" \small " (v. 1 & 13)"}}
  subtitle = "tiré de la cantate : Gott fähret auf mit Jauchzen"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 43/11"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 3/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          \repeat volta 2 {
            g'4 g a
            b4. c8 d4
            d d cis
            d2 \fermata b4
            c2 b4
            a2.
            g4 fis2
            g2.\fermata
          }
          a4 a b
          c2 c4
          b4. a8 b4
          a2.\fermata
          b4 b b
          c4. d8 e4
          e dis dis
          e2\fermata fis4
          g2 b,4
          c2 b4
          a4 a\fermata d
          e4. d8 c4
          b a2
          g2.\fermata \fine

        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \repeat volta 2 {
            d4 e fis
            g2.
            g4 e e
            fis2\fermata g4
            e2 d4
            d2.
            b4 d2
            d2.\fermata
          }
          d4 d d
          c2 e4
          e2 e4
          e2.\fermata
          e4 gis gis
          a2.
          a4 fis fis
          g2\fermata a4
          b2 g4
          g2 g4
          fis fis\fermata g
          g4. fis8 e4 
          d4 d2
          d2.\fermata \fine

        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-3.5 "1. Du" \tweak X-offset #0 Le -- bens -- fürst, __ _ _ Herr Je -- su Christ,
      der du bist auf -- ge -- nom -- men
      wie soll ich dein -- en gro - ßen Sieg,
      den du durch ei - - nen schwe -- ren Krieg
      er -- wor -- ben hast recht prei -- sen,
      und dir gnug Ehr er -- wei -- sen?
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Gen Him -- mel, da __ _ _  dein Va -- ter ist,
      und die Ge -- mein der From -- men,
    }

    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-6 "13. Zieh" \tweak X-offset #0 uns dir nach, __ _ _   so lau -- fen wir,
      gieb uns des Glau -- bens Flü -- gel!
      Mein Gott! wann fahr ich doch __ _ da -- hin,
      wo -- selbst ich e - - wig fröh -- lich bin?
      Wann werd ich vor dir ste -- hen,
      dein An -- ge -- sicht zu se -- hen?
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      hilf, daß wir flie - - hen weit von hier,
      auf I -- sra -- e -- lis Hü -- gel.
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \repeat volta 2 {
            b'4 b d
            d4. c8 b4
            b a a
            a2\fermata g4
            g2 g4
            fis2.
            e4 a2
            b2.\fermata            
          }
          fis4 fis gis
          a2 a4
          gis4. a8 gis4
          a2.\fermata
          gis4 b e
          e4. d8 c4
          c b b
          b2\fermata  d4
          d2 d4
          e2 d4
          d d d
          c4. a8 g4
          g g fis 
          g2.\fermata \fine
        }
        
        \new Voice = "bass" 
        \new Voice = "tenor" \relative c {
          \voiceTwo
          \repeat volta 2 {
            g'4 e d
            g4. a8 b4
            g a a,
            d2\fermata g4
            c,2 g4
            d'2.
            e4 d2 g,2.\fermata          
          }
          d'4 d b
          a2 c4
          e2 e4
          a,2.\fermata
          e'4 e e
          a4. b8 c4
          a b b
          e,2\fermata d4
          g2 g4
          c,2 g4
          d' d b
          c4. d8 e4
          g d2
          g,2.\fermata \fine
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
