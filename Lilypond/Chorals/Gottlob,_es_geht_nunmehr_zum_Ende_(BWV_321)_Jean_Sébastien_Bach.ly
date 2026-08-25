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
 title = "Gottlob, es geht nunmehr zum Ende"
 poet = "Auteur : Christian Weise (1642-1708)"
  opus = "BWV 321"
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
           d''4 bes' d''
          ees''2 d''4
          c''2 bes'4
          c''2 c''4\fermata
          d'' d'' d''
          g'2 a'4
          bes'2 bes'4
          a'2.\fermata }
           f'4 c'' c''
          c''2 d''4
          ees''2 ees''4
          d''2.\fermata
          f''4 f'' f''
          ees''2.
          d''4 d'' c''
          bes'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 f' bes'~
          bes' a' f'
          g' f'4. e'8
          a'2 a'4\fermata
          bes' f'8 [a'] g' [f']
          e'2 f'4~
          f' e'8 [d'] e'4
          f'2.\fermata }
           c'4 c' e'
          f'2 bes'4~
          bes' a'8 [g'] a'4
          bes'2.\fermata
          f'4 bes'8 [a'] bes'4
          g' c'' a'
          bes' bes'4. a'8
          f'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gott -- lob, es geht nun -- mehr zum En -- de, der mei -- ste Kampf ist nun voll -- bracht; 
      Drum lasst mich gehn, ich rei -- se fort, mein Je -- sus ist mein letz -- tes Wort.   
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    mein Je -- sus reicht mir schon die Hän -- de, mein Je -- sus, der mich se -- lig macht.
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
          bes4 bes f'
          ees' c' bes~
          bes a bes
          f'2 f'4\fermata
          f' bes8 [c'] d'4
          c'2 c'4
          d' bes c'
          c'2.\fermata }
          a4 g g
          a2 f'4
          g' ees' f'
          f'2.\fermata
          d'4 bes8 [c'] d'4
          c'2 f'4
          f'2 f'8. [ees'16]
          d'2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
           bes,4 d bes,
          c f bes
          e f g
          f2 f4\fermata
          bes, d bes,
          c bes, a,
          g,2 c4
          f,2.\fermata }
           f4 e c
          f ees d
          c2 f4
          bes,2.\fermata
          bes,4 d bes,
          c a, f,
          bes, d f
          bes,2.\fermata \fine
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
