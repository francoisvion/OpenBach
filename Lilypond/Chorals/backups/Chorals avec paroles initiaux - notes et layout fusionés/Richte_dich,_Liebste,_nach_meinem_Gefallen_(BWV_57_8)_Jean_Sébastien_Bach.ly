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
 title = "Richte dich, Liebste, nach meinem Gefallen"
 subtitle = "tiré de la cantate : Selig ist der Mann"
 poet = "Auteur : Ahasverus Fritsch (1629-1701)"
  opus = "BWV 57/8"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          bes'4 bes' f''
          d''4. c''8 bes'4
          a' bes'8 [a'] g' [f']
          bes'4 c'' d''8 [ees'']
          c''2 bes'4\fermata }
          f'' ees''8 [d''] c'' [bes']
          g''2\fermata r4
          d'' ees'' f''
          f'' g''8 [f''] ees'' [d'']
          c''2\fermata r4
          f' g' a'
          bes' c'' d''8 [ees'']
          c''2 bes'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 f' f'
          f'4. f'8 g'4
          c' c' c'
          f' g'8 [a'] bes' [c'']
          a'2 f'4\fermata }
          bes' a' f'
          bes'2\fermata r4
          bes' bes' a'8 [g']
          f'4 bes' g'
          a'2\fermata r4
          f' c' c'
          bes f' f'
          f'4. ees'8 d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Rich -- te dich, Lieb -- ste, nach mei -- nem Ge -- fal -- len und gläu -- be,
      der dich er -- götzt
      und in den Him -- mel ver -- setzt
      aus dem ge -- mar -- ter -- ten Lei -- be.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      daß ich dein See -- len -- freund im -- mer und e -- wig ver -- blei -- be, 
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
          d'4 d' c'
          bes4. c'8 d' [e']
          f'4 f' a
          bes ees f
          f' ees' d'\fermata }
          d' ees' f'
          ees'2\fermata r4
          f' g' c'
          c' bes bes
          f'2\fermata r4
          bes a8 [g] ees'4
          d' c' bes
          bes a f\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          bes4 bes a
          bes4. a8 g4
          f c ees
          d c bes,
          f2 bes,4\fermata }
          bes, c d
          ees2\fermata r4
          bes a8 [g] f [ees]
          d4 d ees
          f2\fermata r4
          d e fis
          g a bes
          f2 bes,4\fermata \fine
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
