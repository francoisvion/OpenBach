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
 title = "Heilig, heilig"
 poet = "Traduction allemande du Sanctus"
  opus = "BWV 325"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           c''4 a' g'2
          f'\fermata c''4 d''
          c''2\fermata f''4 f''
          e'' e'' d''4. c''8
          c''2\fermata c''4 d''
          c'' bes' a'2\fermata
           r4 g' a'8 [b'] c''4
          c'' b' c''2\fermata
          c''4 d'' bes' bes'
          a' bes' a' g'
          f'2\fermata r4
          \partial 4  a'
          g'2 f'4\fermata c''~
          c'' b' c''\fermata f''
          f'' e'' d''4 d''
          c''2\fermata c''4 d''8 [c'']
          bes'4 bes' a' bes'8 [a']
          g'2 f'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           f'4 f'4. e'16 [d'] e'4
          c'2\fermata g'4 g'
          g'2\fermata f'4 g'
          g' e'8 [f'16 g'] a'4. g'16 [f']
          e'2\fermata f'4 f'
          e' d'8 [c'] c'2\fermata
           r4 e'8 [g'] f'4 e'
          a'8 [g'16 f'] g'4 g'2\fermata
          a'4 a'4. g'16 [f'] g'4~
          g'8 [f'16 e'] f'4. e'16 [d'] e'4
          c'2\fermata r4
          \partial 4 f'
          f' e' d'\fermata g'
          a' g'8 [f'] e'4\fermata f'
          g' g' a' g'8 [f']
          e'2\fermata f'4 f'8 [e']
          d'4 c' c'8 [d'16 e'] f'4~
          f'8 [e'16 d'] e'4 c'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Hei -- lig, hei -- lig, hei - lig bist du Herr Gott Ze -- ba -- oth! Al -- le Lan - de sind sei -- ner Eh -- re voll. Ho -- si -- an -- na _ in der Hö -- he. Ge -- lobt seit der da kommt im Na - men des Herrn. Ho -- si -- an -- na in der Hö -- he, in der Hö -- he!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           a8 [bes] c'4. g8 c' [bes]
          a2\fermata c'4. b8
          e'2\fermata a4 d'~
          d'8 [c'16 b] c'4. b16 [a] b4
          g2\fermata a4 bes8 [a]
          g4 f8 [g] a2\fermata
           r4 c' c' c'
          d'4. e'16 [f'] e'2\fermata
          f'4 f' d' c'
          c' bes8 [d'] c'4. bes8
          a2\fermata r4
          \partial 4 c'
          c'4. bes8 a4\fermata g
          d' d' c'\fermata c'
          d' d'8 c'4 b16 [a] b4
          g2\fermata a4 a
          bes8 [a] g4 f8 [a] d'4~
          d'8 [bes] g [c'16 bes] a2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           f,8 [g, a, bes,] c2
          f,\fermata e8 [c g g,]
          c2\fermata d8 [c b, g,]
          c [e a g] f [d g g,]
          c2\fermata f4 bes,
          c d8 [e] f2\fermata
           r4 c8 [e] f [g a g]
          f [d g g,] c2\fermata
          f8 [e d f] g [f e c]
          f [e d bes,] c4 c,
          f,2\fermata r4
          \partial 4 f
          c2 d4\fermata e
          f g a\fermata a
          b c' f g
          c2\fermata f8 [e d f]
          g [f e c] f [e d c]
          bes, [g,] c4 f,2\fermata \fine
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
