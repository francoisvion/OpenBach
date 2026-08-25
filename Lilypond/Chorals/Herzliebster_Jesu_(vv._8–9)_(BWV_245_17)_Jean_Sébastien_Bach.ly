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
 title = \markup{\concat{"Herzliebster Jesu" \small " (v. 8 & 9)"}}
 subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 245/17"
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
          \partial 4  a'4
          a' a' gis' e'
          a' b' c'' c''
          d'' c''16 [b' c''8] b'4\fermata b'
          c'' d''8 [e''16 f''] e''4 c''
          f'' f'' e''8 [d''] c'' [d'']
          d''2 c''4\fermata c''
          b' a' g'8 [fis'] e' [fis']
          g'4 g' a' g'
          f'2 e'4\fermata e''
          d'' c''8 [b'] b'2
          a'2.\fermata }
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'8 [d']
          e'4 e' e' b
          e'8 [fis'] gis'4 a' a'
          a'2 gis'4\fermata gis'
          a' g' g' f'
          a' a' a' e'
          a' g' g'\fermata a'
          a'8 [g'] g' [fis'] e'4 e'
          e'8 [d'] cis' [d'] e'4 e'
          e' d' cis'\fermata a'
          a'8 [b'] e' [d'] f'4 e'8 [d']
          cis'2.\fermata }
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-4 "8. Ach," gro -- ßer Kö -- nig, groß zu al -- len Zei - ten,
      wie kann ich gnug -- sam die -- se Treu aus -- brei -- ten? 
      Keins Men -- schen Her -- ze mag in -- des aus -- den -- ken,
      was dir zu schen -- ken.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      \tweak X-offset #-4 "9. Ich" kann's mit mei -- nen Sin -- nen nicht er -- rei - chen,
      wo -- mit doch dein Er -- bar -- men zu ver -- glei -- chen.
      Wie kann ich dir denn dei -- ne Lie -- bes -- ta -- ten
      im Werk er -- stat -- ten? _
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
          c'4 c' b gis
          a d' e' e'
          f' a e'\fermata e'
          e' b c' a
          d' d' c' c'
          c' b e'\fermata e'
          fis'8 [e'] c'4 b b
          b bes a a
          a2 a4\fermata c'
          c'8 [b] a4 a gis
          e2.\fermata }
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          a,8 [b,] c [d] e [f] e [d]
          c [d] c [b,] a, [e] a [g]
          f [e] f [d] e4\fermata e
          a8 [g] f [g] c [d] e [f]
          d [e] f [g] a [b] a [g]
          f [e] f [g] c4\fermata a
          dis8 [e] fis [dis] e [fis] g [fis]
          e [f] e [d] cis [a,] b, [cis]
          d [e] f [g] a4\fermata a8 [g]
          fis [gis] a [f] d [b,] e4
          a,2.\fermata }
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
