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
 title = \markup{\concat{"Du Lebensfürst, Herr Jesu Christ" \small " (v. 4)"}}
 subtitle = "tiré de l'oratorio de l'Ascension : Lobet Gott in seinen Reichen"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 11/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          d'4 d' e'
          fis'4. gis'8 a'4
          a'2 gis'4
          a'2\fermata fis'4
          g'2 fis'4
          e'2 d'4
          e'2.
          d'\fermata }
          e'4 e' fis'
          g'2 g'4
          fis'4. e'8 fis'4
          e'2.\fermata
          fis'4 fis' fis'
          g'4. a'8 b'4
          b'2 ais'4
          b'2\fermata
          cis''4
          d'' fis'2
          g' fis'4
          e' e'\fermata a'
          b'4. a'8 g'4
          fis'8 [e'] e'4. d'8
          d'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          a4 d' d'8 [cis']
          d'2 cis'8 [a]
          fis'4 e'2
          e'\fermata d'8 [cis']
          b [cis'] d'2~
          d'8 cis'16 [b] cis'4 d'
          d' cis'8 [b] cis'4
          a2.\fermata }
          cis'8 [b] cis'4. dis'8
          e'4 b e'~
          e' dis'8 [cis'] dis'4
          b2.\fermata
          dis'4 b dis'
          e' b b
          g'8 [fis'] e' [d'] e'4
          d'2\fermata
          fis'4
          fis'8 [e'] d'2
          cis'8 [d'] e'4 d'~
          d'8 b cis'4\fermata d'
          d' g'8 [fis'] fis' [e']
          d'4. b8 cis'4
          a2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun lie -- get al - les un -- ter dir,
      dich selbst nur aus -- ge -- nom -- men;
      Die Für -- sten stehn auch auf _ der Bahn,
      und sind dir wil - lig un -- ter -- than;
      Luft, Was -- ser, Feu'r und Er -- den
      muß dir zu Dien -- ste wer - den.
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Die En -- gel mü - ßen für und für dir
      auf -- zu -- war -- ten kom -- men.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          fis4 fis8 [d] a4
          a8 [fis] b4 a
          b b8 [cis'] d'4
          cis'2 a4
          g a8 [g] a4
          a4. g8 fis4
          b a4. g8
          fis2.\fermata
          a8 [gis] a4 a
          b8 [a] g2
          c'4 b4. a8
          g2.\fermata }
          b4 fis8 [g] a [b]
          g [fis] e4 e'8 [d']
          cis'4. b8 cis'4
          b2\fermata
          ais4
          b4. fis8 b [a]
          g [fis] e a4 gis8
          a4 a\fermata a
          g8 [a] b [cis'] d' [a]
          a [b] a4 g
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d8 [cis] b,4 a,
          d4. e8 fis4
          d8 [b,] e4 e,
          a,2\fermata d4
          e fis4. g8
          a [g] fis4 b8 [a]
          g [e] a4 a,
          d,2.\fermata }
          a,4 a8 [g] fis4
          e4. d8 c [b,]
          a, [fis,] b,4 b,
          e,2.\fermata
          b,8 [cis] dis4 b,
          e4. fis8 g [fis]
          e [d] cis4 fis
          b,2\fermata
          fis4
          b4. a8 g [fis]
          e [d] cis4 d
          a, a,\fermata fis,
          g,4. a,8 b, [cis]
          d [g,] a,2
          d,2.\fermata \fine
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
