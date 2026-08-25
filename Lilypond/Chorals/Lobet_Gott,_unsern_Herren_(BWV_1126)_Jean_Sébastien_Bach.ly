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
  title = "Lobet Gott, unsern Herren"
  opus = "BWV 1126"
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
          \partial 4 d'4
          f'4 e'4 f'4 g'4
          a'2 a'4\fermata c''4
          b'4 a'4 a'4 gis'4
          a'2.\fermata } a'4
          b'4 c''4 d''4 b'4
          c''2 a'4\fermata a'4
          g'4 f'4 f'4 e'4
          f'2\fermata r4 a'4
          f'4 g'4 a'4 g'4
          f'2 e'4\fermata f'4
          g'4 f'4 g'4 e'4
          d'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 a4
          d'4 e'4 d'4 d'4
          cis'2 cis'4\fermata e'4 ~
          e'8. [d'16] c'!8 [d'16 e'16] f'4 e'4
          e'2.\fermata } e'4
          f'8 [e'8] e'8 [g'8] a'4 g'!4 ~
          g'8 [f'8] g'8 [e'8] f'4\fermata f'4
          f'8 [e'8] d'4 d'4 c'4
          c'2\fermata s4 e'4 ~
          e'8 [d'8] c'4 ~ c'8 [d'8] e'4
          e'8 [d'16 cis'16] d'4 d'8 [cis'8]\fermata d'4
          e'4 ~ e'8 [d'8] e'8 [cis'16 b16] cis'4
          a2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Lo -- bet Gott, un -- sern Her -- ren,
      in sei -- nem Hei -- lig -- thum,
      Lobt Ihn im Fir -- ma -- men -- te,
      da sei -- ne groß' Ge -- walt
      und sein stark Re -- gi -- men -- te
      zu sehn ist man -- nig -- falt.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2    
      zu Lo -- be sei -- nen Eh -- ren,
      macht her -- rlich sei -- nen Ruhm.
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
          \partial 4 f4
          a4 a4 a4 bes4
          e2 e4\fermata s4
          a8 [gis8] a8 [b16 c'16] d'8. [c'16] b8 [d'8]
          cis'2.\fermata } c'4
          d'4 c'8 [e'8] d'4 d'4
          c'2 c'4\fermata c'4
          c'8. [bes16] a4~a8 [g]~g16 [a16 bes8]
          a2\fermata r4 a4
          a4 c'8 [bes8] a8 [b8] c'8 [bes8]
          a2 a4\fermata a4
          bes4 a4 bes8 [g8] e8 [a16 g16]
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {        
          \partial 4 d4
          d4. cis8 d8 [c8] bes,4
          a,2 a,4\fermata a,4
          e4 f8 [e8] d8 [b,8] e4
          a,2.\fermata  } a4~
          a8 [gis8] a8 [e8] f8 [d8] g8 [f8]
          e8 [d8] e8 [c8] f4\fermata f,4
          c4 d8 [c8] bes,4 c4
          f,2\fermata s4 cis4
          d4 e4 f4 c4
          d8 [e8] f8 [d8] a4\fermata d4 ~
          d8 [cis8] d8 [f,8] g,4 a,4
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
