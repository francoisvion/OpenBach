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
 title = "Ich dank dir schon durch deinen Sohn"
 poet = "Leipzig 1586"
  opus = "BWV 349"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           f'4 f' f'
          bes'2 g'4
          a'2 b'4
          c''2.\fermata
          a'4 bes' c''
          d''2 bes'4
          c''2.
          bes'\fermata
           c''4 a'8 [bes'] c''4
          d''2 c''4
          c''4. bes'8 a'4
          g'2.\fermata
          c''4 c'' c''
          bes'2 a'4
          a' g'2
          f'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           c'4 c' f'~
          f' e'8 [d'] e'4
          f'2 f'4
          g'2.
          f'4 f' g'8 [a']
          bes'2 bes'4~
          bes'2 a'4
          f'2.
           g'4 f' f'
          f'2 f'4
          g'8 [f'] e'4 f'~
          f' e'2\fermata
          f'4 g'8 [bes'] a'4
          g' f'8 [e'] f'4
          f'2 e'4
          c'2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ich dank' dir schon durch dei -- nen Sohn,
      o Gott, für dei -- ne Gü -- te,
      daß du mich heut in die - ser Nacht so gnä -- dig hast be -- hü - tet.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           a4 a a
          g8 [a] bes4 c'
          c'2 d'4
          e'2.
          c'4 d' ees'
          f'2 f'4
          g'8 [f'] ees' [d'] c' [ees']
          ees' [d'16 c'] d'2\fermata
           c'4 c' c'~
          c' bes a
          g c' c'
          c'2.
          c'4 c' f'8 [e']
          d'4 c' c'
          c' d' c'8 [bes]
          a2. \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           f4 f8 [e] d4
          g g, c
          f e d
          c2.\fermata
          f8 [ees] d4 c
          bes, c d
          ees c f
          bes,2.\fermata
           e4 f a,
          bes,8 [c] d [e] f4
          e c f
          c2.\fermata
          a4 e f
          g c f
          a, bes, c
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
