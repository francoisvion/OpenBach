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
  title = \markup{\concat{"Nimm von uns, Herr, du treuer Gott" \small " (v. 7)"}}
  subtitle = "tiré de la cantate : Es reisset euch ein schrecklich Ende"
  poet = "Auteur : Martin Moller (1547-1606)"
  opus = "BWV 90/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' f' g' a'
          f' e' d'\fermata a'
          a' g' c'' a'
          f' g' a'\fermata a'
          c'' d'' f'' e''
          d'' cis'' d''\fermata d''
          e'' d'' c'' b'
          a' b' a'\fermata d''
          c'' b' c''8 [bes'] a'4
          a' g' f'\fermata a'
          bes' a' a' g'
          f' e' d'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          e' d' d'8 [cis'] d'4
          d' cis' a\fermata e'
          d'4. e'8 f'4 cis'
          d' d' cis'\fermata e'
          f' a' g' a'8 [g']
          f'4 e' fis' g'
          g'8 [a'] b'4 a' g'
          a'4. gis'8 e'4
          e'
          e'8 [f'] g'4 g' f'
          f'4. e'8 f'4 fis'
          g'8 [f'] e'4 d'8 [cis'] d' [e']
          a [d'] d' [cis'] a4 \fine
        }
      >>
    }
 
    \new Lyrics \lyricsto "soprano" {
      Leit uns mit dei -- ner rech -- ten Hand,
      Und se -- gne un -- ser Stadt und Land,
      gieb uns all -- zeit dein heil -- ges Wort,
      be -- hüt vors Teu -- fels List und Mord;
      ver -- leih ein sel -- ges Stün -- de -- lein,
      auf daß wir e -- wig bei dir sein.
    }
      
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          a a g f8 [g]
          a4 a8 [g] f4\fermata a
          bes8 [c'] d'4 c'8 [d'] e'4
          a bes e\fermata c'8 [bes]
          a4 f'8 [e'] d'4 e'
          a a a b
          c' f' e' d'
          c' f'8 [e'] cis'4
          b
          c' d' c' c'
          d'4. c'8 aes4 ees'
          d'4. cis'8 d'2~
          d'8 a bes [a] fis4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          cis d e d8 [e]
          f [g] a [a,] d4\fermata c
          bes, bes a8 [g] f [e]
          d [c] bes,4 a,\fermata a8 [g]
          f [e] d [c] b,4 cis
          d a, d\fermata g
          c'8 [b] a [gis] a [g] f [e]
          f [e] d [e] a,4\fermata gis,
          a,8 [a] g [f] e4 f8 [e]
          d [c] bes, [c] des4\fermata c
          g, a, bes,8 [a,] b, [cis]
          d [f] g [a] d4\fermata \fine
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