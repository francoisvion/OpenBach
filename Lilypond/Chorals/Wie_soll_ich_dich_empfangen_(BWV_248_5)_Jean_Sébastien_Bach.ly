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
  title = \markup{\concat{"Wie soll ich dich empfangen" \small " (v. 1)"}}
  subtitle = "tiré de l'oratorio de Noël, partie n° 1"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 248/5"
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
          a' g' f' e'
          d'2 e'4\fermata b'
          c'' c'' b'8 [c''16 d''] b'4
          a'2.\fermata } c''4
          b'8 [a'] g'4 a' b'
          c''2 c''4\fermata g'
          a' g' f'8 [e'] f'4
          e'2.\fermata c''4
          b'8 [c''] d''4 c'' b'
          a'2 b'4\fermata e'
          f' e' d' g'8 [f']
          e'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'8 [d']
          c' [d'] d' [e'] e' [d'] d' [c']
          c'4 b8 [a] b4\fermata e'
          e' a' a' gis'
          e'2.\fermata } a'8 [g']
          f'4 e'8 [d'] c'4 f'
          f' e'8 [d'] e'4\fermata e'
          f' bes8 [a] a [g] a [d']
          cis'2.\fermata d'4
          d' g' g'8 [fis'] g'4
          g' fis' g'\fermata g'
          c'8 [d'] c'4 f d'
          d' c' b\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wie soll ich dich em -- pfan -- gen
      und wie be -- gegn ich dir?
      O Je -- su, Je -- su, se -- tze
      mir selbst die Fa -- ckel bei,
      da -- mit, was dich er -- gö -- tze,
      mir kund und wis -- send sei.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      o al -- ler Welt Ver -- lan -- gen,
      o mei -- ner See -- len Zier?
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
          \partial 4  gis4
          a b c'8 [d'] g4
          a8 [gis] a4 gis\fermata gis
          a8 [b] c'4 f' e'8 [d']
          c'2.\fermata } e'4
          d'8 [c'] b4 a8 [g] f [g]
          a4 g8 [f] g4\fermata c'
          c'8 [d'] e'4 d'8 [cis'] d' [gis]
          a2.\fermata a4
          g8 [a] b4 c'8 [d'] e'4
          e' d' d'\fermata c'
          c'8 [b] b [a] a4 g8 [a]
          b4 a gis\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          f g a,8 [b,] c4
          f,2 e,4\fermata e
          a8 [g] f [e] d [b,] e [e,]
          a,2.\fermata } a4
          d e f8 [e] d4
          a,8 [b,] c4 c,\fermata c
          f8 [e] d [cis] d4 d
          a,2.\fermata fis,4
          g, g8 [fis] e4. d8
          c [a,] d4 g,\fermata c8 [b,]
          a, [b,] c4~ c8 b,~ b, a,
          gis,4 a, e,\fermata \fine
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
