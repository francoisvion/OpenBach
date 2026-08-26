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
  title = \markup{\concat{"Wach auf, mein Herz, und singe" \small " (v. 9 & 10)"}}
  subtitle = "tiré de la cantate : Höchsterwünschtes Freudenfest"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 194/12"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes'4
          bes'2 a'4
          g' a' bes'
          c''2.
          bes'2\fermata bes'4
          bes'2 c''4
          a' g' f'
          bes'2.
          a'2\fermata a'4
          bes'2 bes'4
          c''2 d''4
          c''2.
          c''2\fermata d''4
          ees''2 d''4
          c'' d''8 [c''] bes'4~
          bes'8 c'' c''4. bes'8
          bes'2.\fermata }
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f'4
          g'2 f'4
          ees' f' f'
          g' f'2
          f'\fermata f'4
          f'2 g'4
          f'2 f'4
          f' e'8 [d'] e'4
          f'2\fermata fis'4
          g'2 g'4
          ees'2 d'4
          e' f'8 [e'] g' [f']
          f'2\fermata a'4
          bes' c'' f'
          g' a' d'8 [ees']
          f'4 g' f'
          f'2.\fermata }
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-5 "9. Sprich" Ja zu mei - nen Ta -- ten,
      hilf selbst das Bes - te ra -- ten;
      den An -- fang, Mittl und En -- de,
      ach, Herr, zum be - sten wen - - de!  
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      \tweak X-offset #-5 "10. Mit" Se -- gen mich __ _ be -- schüt -- te,
      mein Herz sei dei - ne Hüt -- te,
      dein Wort sei mei -- ne Spei -- se,
      bis ich gen Him - mel rei - - se!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          d'2 d'8 [c']
          bes4 c' bes
          bes2 a4
          d'2\fermata d'4
          d'2 c'4
          c'2 c'4
          d' c' bes
          c'2\fermata d'4
          d'2 ees'4
          a2 bes4
          bes a8 [g] bes [a]
          a2\fermata d'4
          d' c' bes
          bes a bes
          bes2 a4
          d'2.\fermata }
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes4
          g2 d4
          ees2 d4
          ees f2
          bes,\fermata bes4
          d2 e4
          f g a
          g2.
          f2\fermata d4
          g2 ees4
          c2 bes,4
          c2.
          f2\fermata fis4
          g a bes
          e fis g
          d ees f
          bes,2.\fermata }
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
