\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Erstanden ist der heilig Christ"
  opus = "BWV 306"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  f'4
          f'4. g'8 [a' bes']
          c''2 g'4
          a'2 b'4
          c''2\fermata bes'4
          a'4. g'8 [a' bes']
          c''2 bes'4
          a'2 g'4
          a'2\fermata
          \partial 4  a'4
          c''2 bes'4
          a'2 g'4
          f'2 e'4
          f'2\fermata f'4
          g'8 [f' g' a'] bes'4
          a'2 g'4
          f'2 e'4
          f'2\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          c' d'8 [e'] f'4~
          f' e'8 [f'] g'4~
          g'8 [e'] f'2~
          f'4 e'\fermata g'~
          g' f'2
          g'8 [f' g'] a'4 g'8~
          g' [f'16 e'] f'4. e'16 [d']
          cis'2\fermata
          \partial 4  d'4
          e'4. f'8 g'4~
          g' f' e'
          e' d' c'8 [bes]
          a2\fermata d'4
          d' e'8 [f' d' e']
          f'2 e'4~
          e' d' c'
          c'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Er -- stan -- den ist der heil' -- ge Christ, al -- le -- lu -- ja, al -- le -- lu -- ja! Der al -- ler Welt ein Trö -- ster ist, al -- le -- lu -- ja, al -- le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a8 [bes a g] f4
          g2 c'4
          c'2 d'4
          g2\fermata c'4
          c'8 [a] d'2
          c'8 [d'] e'4 d'
          d' a d
          e2\fermata
          \partial 4  f4
          a c'2
          c'8 [a d' c'] bes4
          a8 [f bes a] g4
          f2\fermata a4
          g c' d'8 [g]
          a [bes] c'4. bes8
          a4 bes8 [a g bes]
          a2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f,4
          f4. e8 d4
          c4. d8 e [c]
          f4. e8 d4
          c2\fermata e4
          f4. e8 d4
          e4. fis8 g4
          d4. c8 bes,4
          a,2\fermata
          \partial 4  d4
          a8 [a, a g] f [e]
          f [f, f e] d [cis]
          d4 bes, c
          d2\fermata d8 [c]
          bes,4. a,8 g,4
          f,8 [g, a, bes,] c4
          d8 [c] bes,4 c
          f,2\fermata \bar "|."
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
