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
  title = \markup{\column{\concat{"Wenn einer alle Ding verstünd" \small " (v. 8)"} \concat{"O Gottes Sohn, Herr Jesu Christ" \small " (v. 8)"} \vspace #0.5 }}
  subtitle = "tiré de la cantate : Du sollt Gott, deinen Herren, lieben"
  poet = "Auteur : David Denicke (1603-1680)"
  opus = "BWV 77/6"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          \partial 4  a'4
          bes' a' g' d''
          d''8 [c''] bes'4 a'2\fermata
          r4 c'' bes' a'
          g' a'8 [bes'16 c''] bes'4 a'
          g'2.\fermata } g'4
          a' f' e' d'8 [e']
          f'4 g' a'2\fermata
          r4 a' g' bes'
          a' bes' g' fis'
          g'2.\fermata
          g'4
          d'' bes' c'' d''
          c'' bes' a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          fis'8 g'4 fis'8 g' [a'] bes'4
          a'4. g'8 fis'2\fermata
          r4 fis' g' f'
          ees'8 [f'] g'4 g' fis'
          d'2.\fermata } d'4
          e' d' cis' d'
          c' d'8 [e'] f'2\fermata
          r4 f' f'8 [ees'] d' [g']
          g' [fis'] g'4 g'8 [c'] d'4
          d'2.\fermata
          d'4
          d' g' f' f'8 [g']
          a'4 g' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-9 \markup{\concat{\small "Texte 1. " "Du"}} stellst, mein Je -- su, sel -- ber dich
      zum Vor -- bild wah -- rer Lie - be:
      daß ich bei al -- lem, wo ich kann,
      stets lieb und hel -- fe je -- der -- mann
      Nach dei -- nem Wort und Wei - se.
    }
 
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      gib mir auch Gnad und Kraft, daß ich
      Gott und den Näch -- sten lie - be:
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-9 \markup{\concat{\small "Texte 2. " "Herr,"}} durch den Glau -- ben wohn in mir,
      Laß ihn sich im -- mer stär - ken,
      daß er sei tä -- tig durch die Lieb,
      mit Freu -- den und Ge -- duld sich üb,
      dem Näch -- sten fort zu die - nen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      daß er sei frucht -- bar für und für
      und reich in gu -- ten Wer - ken;
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
          \partial 4  cis'4
          d' d' d' d'
          d' d' d'2\fermata
          r4 d' d' d'8 [c']
          bes4 ees' d'4. c'8
          bes2.\fermata } bes4
          a a a8 [g] f [g]
          a4 bes c'2\fermata
          r4 c' c' bes8. [c'16]
          d'4 d'8 [c'] bes [a16 g] a4
          bes2.\fermata
          bes4
          a d' c' bes
          ees' e' fis'\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          d d'8 [c'] bes4 a8 [g]
          fis4 g d2\fermata
          r4 a, bes,8 [c] d4
          ees d8 [c] d2
          g,2.\fermata } g4
          cis d a, bes,
          a, g, f,2\fermata
          r4 f, c g,
          d bes, ees d
          g,2.\fermata
          g4
          fis g a bes
          c' cis' d'\fermata \fine
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
