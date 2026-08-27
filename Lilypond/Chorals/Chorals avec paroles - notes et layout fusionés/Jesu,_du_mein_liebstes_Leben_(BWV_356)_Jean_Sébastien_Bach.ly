\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

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
 title = "Jesu, du mein liebstes Leben"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 356"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          g'2 a'4
          bes' c'' d''
          c''2 bes'4
          a'2 g'4\fermata
          d'' ees'' f''
           bes' c'' d''
          c''2 c''4
          bes'2.\fermata }
          \repeat volta 2 {
          a'2 g'4
          a' bes' c''
          bes'2 a'4
          g'2 f'4\fermata
           bes'2 a'4
          bes' c'' d''
          d''2 c''4
          d''2.\fermata
          a'2 d''4
          g' a' bes'
          a'2 a'4
          g'2.\fermata }
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'2 a'4~
          a'8 [g'] f' [ees'] d'4
          g' a'4. g'8
          g'4 fis' d'\fermata
          bes' a'8 [g'] f'4
           g' f'8 [ees'] d'4
          g' ees'8 [g'] f' [ees']
          d'2.\fermata }
          \repeat volta 2 {
          f'2 g'4~
          g'8 [f'] e' [d'] c'4
          f' g'4. f'8
          f'4 e' c'\fermata
          f' g' d'~
          d'8 [g'] f' [ees'] d'4
          g'8 [fis'] g' [bes'] a' [g']
          fis'2.\fermata
          fis'2 fis'4
          g' d' d'
          ees' c' d'8 [c']
          b2.\fermata }
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, du _ mein lieb -- stes Le -- ben,
      mei - ner See - len Bräu -- ti -- gam,
      Je -- su, mei - ne Freud und Won -- ne,
      du mein Hoff - nung, Schatz und Theil,
      mein' Er -- lö - sung, Schmuck und Heil,
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      der du bist _ für mich ge -- ge -- ben
      an _ des bit - tern Kreu -- zes -- stamm.
      Hirt und Kö - nig, Licht und Son -- ne,
      ach, wie soll _ ich wür -- dig -- lich,
      mein Herr Je - su, prei -- sen dich?
   }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          bes2 d'4
          d' c' bes~
          bes a bes8 [d']
          ees' [a] d' [c'] bes4\fermata
          f' ees' d'~
           d' c' bes~
          bes a8 [g] a4
          bes2.\fermata }
          \repeat volta 2 {
          c'2 c'4
          c' bes a~
          a g a8 [c']
          d' [g] c' [bes] a4\fermata
          d' c'2
          bes8 [ees'] d' [c'] bes4~
          bes8 [a] bes4 ees'
          a2.\fermata
          d'2 d'4
          d' a g
          g2 fis4
          d2.\fermata }
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g,4 g fis
          g a bes
          e fis g
          c d g,\fermata
          bes, c d
           g, a, bes,
          ees c f
          bes,2.\fermata }
          \repeat volta 2 {
          f,4 f e
          f g a
          d e f
          bes, c f,\fermata
          d e fis
          g a bes
          ees2.
          d\fermata
          d8 [d,] d [c] bes, [a,]
          bes, [a,] g, [fis,] g,4
          c a, d
          g,2.\fermata }
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
