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
 title = \markup{\concat{"Treuer Gott, ich muss dir klagen" \small " (v. 6)"}}
 subtitle = "tiré de la cantate : Höchsterwünschtes Freudenfest"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 194/6"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          bes'4 c'' d'' c''
          bes' a' g' f'\fermata
          bes' c'' d'' ees''
          d'' c'' bes'2\fermata }
          d''4 ees'' f'' g''
          f'' ees'' d''2\fermata
          f''4 f'' g'' f''
          ees'' d'' c''2\fermata
          d''8 [ees''] f''4 ees'' d''
          bes' c'' d''2
          bes'\fermata d''4 f''
          ees'' d'' c'' d''
          c''2 bes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           \repeat volta 2 {
          f'4 f' f'4. e'8
          d'4 c'8 [f'] f' [e'] f'4\fermata
          d' f' f' f'
          f' f' f'2\fermata }
          bes'4 bes' a' g'8 [a']
          bes'4 a' bes'2\fermata
          bes'4 bes' bes' a'
          g' f' f'2\fermata
          f'4 bes'8 [aes'] g'4 f'
          g'8 [fis'] g'4. fis'16 [e'] fis'4
          d'2\fermata g'4 aes'
          g' d'8 [ees'] f'4 f'
          f'2 f'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-5.0 "1. Heil" -- ger Geist ins Him -- mels Thro -- ne,
      Glei -- cher Gott von E -- wig -- keit
      Al -- len Glau -- ben, den ich find,
      hast du in mir an -- ge -- zündt,
      ü -- ber mir in Gna -- den wal -- te,
      fer -- ner dei -- ne Gnad er -- hal -- te.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      mit dem Va -- ter und dem Soh -- ne,
      Der Be -- trüb -- ten Trost und Freud!
    }
    
        \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-4.0 "2. Dei" -- ne Hil -- fe zu mir sen -- de,
      O du e -- dler Her -- zens -- gast!
      Blas in mir das Fünk -- lein auf,
      bis daß nach voll -- brach -- tem Lauf
      ich den Au -- ser -- wähl -- ten glei -- che
      und des Glau -- bens Ziel er -- rei -- che.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2 
      Und das gu -- te Werk vol -- len -- de,
      Das du an -- ge -- fan -- gen hast.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           \repeat volta 2 {
          d'4 bes bes8 [a] g4
          f8 [g] a8. [bes16] c'8 [g] a4\fermata
          bes a bes c'
          c'8 [bes] bes [a] d'2\fermata }
          f'4 g' c'8 [d'] ees'4
          f' f' f'2\fermata
          d'4 d' ees' d'
          bes bes a2\fermata
          bes8 [c'] d'4. c'4 bes8~
          bes a g [a] bes [a16 g] a4
          g2\fermata bes4 bes
          bes bes a bes~
          bes8 a16 [g] a4 d'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           \repeat volta 2 {
          bes4 f bes, c
          d8 [e] f4 c f,\fermata
          g f8 [ees] d [c] bes, [a,]
          bes,4 f, bes,2\fermata }
          bes8 [a] g4 f c
          d8 [ees] f4 bes,2\fermata
          bes,8 [c] d [bes,] ees [d] ees [f]
          g [a] bes4 f2\fermata
          bes4 bes, c d
          ees ees bes,2
          g\fermata g8 [f] ees [d]
          ees [f] g [f] ees [d] c [bes,]
          f4 f, bes,2\fermata \fine
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
