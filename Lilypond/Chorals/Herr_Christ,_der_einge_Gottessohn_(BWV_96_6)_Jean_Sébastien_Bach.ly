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
 title = "Herr Christ, der einge Gottessohn"
 subtitle = "tiré de la cantate : Herr Christ, der einge Gottessohn"
 poet = "Auteur : Elisabeth Creutziger (v.1500-v.1535)"
  opus = "BWV 96/6"
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
          \repeat volta 2 {
          \partial 4  f'4
          f'8 [g'] a'4 g' f'
          e'2 d'4\fermata a'
          bes' g' a' g'
          f'2.\fermata } f'8 [g']
          a'4 a' bes' bes'
          c''2 g'4\fermata c''
          a' a' g' f'
          e'2 d'4\fermata a'
          bes' g' a' g'
          f'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          d'8 [e'] f'4 e' d'
          d' cis' a\fermata fis'
          g'8 [f'] e'4 f' e'
          c'2.\fermata } c'4
          f' fis' g' g'
          g' f' e'\fermata g'
          f' ees' d' d'
          d' cis' d'\fermata fis'
          g'8 [f'] e'4 f' e'
          c'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Er tödt uns durch dein Gü -- te,
      er -- weckt uns durch dein Gnad;
      wohl hier auf die -- ser Er -- den,
      den Sinn und all Be -- gier -- den
      und G'dan -- ken hab'n zu dir.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      den al -- ten Men -- schen krän -- ke,
      daß der neu' Le -- ben hab
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a4
          bes c' c'8 [bes] a4
          bes a8 [g] f4\fermata d'
          d' c' c' c'8 [bes]
          a2.\fermata } a4
          d' d' d' d'
          c'2 c'4\fermata c'
          c' c' bes b
          e8 [f] g4 f\fermata c'
          d' c' c' c'8 [bes]
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f4
          bes, f c d
          g, a, d\fermata d
          g,8 [a,] bes,4 a,8 [f,] c4
          f,2.\fermata } f8 [e]
          d4 c bes,8 [a,] g,4
          a,4. bes,8 c4\fermata e
          f fis g gis
          a a, bes,\fermata a,
          g,8 [a,] bes,4 a,8 [bes,] c4
          f,2.\fermata \fine
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
