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
  title = \markup{\concat{"Werde munter, mein Gemüte" \small " (v. 6)"}}
  subtitle = "tiré de la cantate : Ich armer Mensch, ich Sündenknecht"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 55/5"
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
          d''4 ees'' f'' f''
          ees'' d'' c'' c''\fermata
          d'' ees'' f'' ees''8 [d'']
          c''4. bes'8 bes'2\fermata }
          c''4 d'' ees'' ees''
          d'' d'' c''2\fermata
          ees''4 f'' g'' g''
          f'' f'' ees''2\fermata
          d''4 ees'' f'' f''
          ees'' d'' c'' c''\fermata
          d'' ees'' f'' ees''8 [d'']
          c''4. bes'8 bes'4 bes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 g'8 [a'] bes'4 bes'
          bes'8 [a'] bes'4 a' a'\fermata
          bes' a'8 [g'] f'4 g'
          g' f' f'2\fermata }
          f'4 f' ees'8 [f'] g'4
          aes' g'8 [f'] ees'2\fermata
          g'4 bes' bes'8 [aes'] bes' [g']
          c''4 bes'8 [aes'] g'2\fermata
          g'4 g' f'8 [ees'] d'4
          ees' f'8 [g'] a'4 a'\fermata
          bes' a'8 [g'] f'4 g'
          g' f' f' f'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Bin ich gleich von dir ge -- wi -- chen,
      stell ich mich doch wie -- der ein;      
      Ich ver -- leu -- gne nicht die Schuld;
      a -- ber dei -- ne Gnad und Huld
      ist viel grö -- ßer als die Sün -- de,
      die ich stets in mir be -- fin -- de.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      hat uns doch dein Sohn ver -- gli -- chen
      durch sein Angst und To -- des -- pein.
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
          bes4 bes bes8 [c'] d'4
          ees' f' f' f'\fermata
          f' c' c'8 [a] bes4
          bes a d'2\fermata }
          a4 b c' c'
          c' b g2\fermata
          c'4 d' ees' ees'
          ees' d' bes2\fermata
          bes4 bes bes bes
          bes8 [a] bes4 f' f'\fermata
          f' ees' d'8 [c'] bes4
          bes a8 [ees'] d'4 d'\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          bes8 [a] g4 d g
          c d8 [ees] f4 f\fermata
          bes, c d g8 [f]
          ees4 f bes,2\fermata }
          f8 [ees] d4 c8 [d] ees [c]
          f4 g c2\fermata
          c'4 bes8 [aes] g [f] ees4
          aes bes ees2\fermata
          g4 f8 [ees] d4 g
          c d8 [ees] f4 f\fermata
          bes, c d g8 [f]
          ees4 f bes, bes,\fermata \fine
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
