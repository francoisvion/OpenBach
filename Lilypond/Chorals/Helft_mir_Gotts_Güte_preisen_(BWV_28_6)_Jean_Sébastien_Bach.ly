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
 title = "Helft mir Gotts Güte preisen"
 subtitle = "tiré de la cantate : Gottlob! nun geht das Jahr zu Ende"
 poet = "Auteur : Paul Eber (1511-1569)"
  opus = "BWV 28/6"
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
          a' b' c'' d''
          b'4. c''8 d''4\fermata e''
          c'' a' b' b'
          a'2.\fermata } e''4
          d'' c'' b' a'
          b'2.\fermata b'4
          c'' d'' e'' c''
          d''4. c''8 b'4\fermata b'
          c'' d'' e'' c''
          d''4. c''8 b'4\fermata e''
          c''8 [b'] a'4 b' b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          e' e' e' d'
          d' g'8 [fis'] g'4\fermata e'
          e' a' a' gis'
          e'2.\fermata } a'4
          a'8 [gis'] a'4 a'8 [gis'] a' [a]
          e'2.\fermata gis'4
          a' g' g' a'
          a' g'8 [fis'] g'4\fermata g'
          g' f' e' a'
          a'8 [g'] fis' [e'] d'4\fermata e'
          e' a' a' gis'
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      All solch dein Güt wir prei - sen,
      Va -- ter ins Him -- mels Thron,
      und bit -- ten fer -- ner dich:
      gib uns ein fried -- sam Jah - re,
      vor al -- lem Leid be -- wah - re
      und nähr uns mil -- dig -- lich.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      die du uns tust be -- wei - sen, durch Chri -- stum, dei -- nen Sohn,
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
          \partial 4  c'4
          c' b a a
          g8 [fis] g [a] b4\fermata b
          a8 [b] c'4 f' e'8 [d']
          c'2.\fermata }
          c'4
          d' e' f'8 [e'] e' [d']
          gis2.\fermata e'4
          e' d' c'8 [d'] e'4
          a d' d'\fermata
          d'
          g a8 [b] c' [d'] e'4
          d' a b\fermata b
          a8 [b] c'4 f' e'8 [d']
          cis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          a gis a fis
          g2 g,4\fermata gis
          a8 [g] f [e] d4 e
          a,2.\fermata }
          a,4
          b, c d8 [e] f4
          e2.\fermata e4
          a b c'8 [b] a [g]
          fis [e] d4 g\fermata
          f
          e d c b,8 [a,]
          b, [c] d4 g,\fermata gis
          a8 [g] f [e] d4 e
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
