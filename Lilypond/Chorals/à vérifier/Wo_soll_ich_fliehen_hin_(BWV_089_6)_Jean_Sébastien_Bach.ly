\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wo soll ich fliehen hin"
  opus = "BWV 89/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' a' bes' c''
          d''2.\fermata d''4
          d'' c'' bes' c''
          a'2.\fermata a'4
          bes' c'' d'' d''
          c''2 d''4\fermata
          d''
          bes' c'' d'' d''
          c''2 bes'4\fermata d''
          f'' d'' d'' d''
          c''2 c''4\fermata
          c''
          d'' c'' bes' c''8 [bes']
          a'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' d' d' g'
          fis'2.\fermata fis'4
          g' g'8 [fis'] g'4 a'
          fis'2.\fermata fis'4
          g' a' bes' bes'
          bes' a' bes'\fermata
          a'
          g' a'8 [g'] f'4 f'
          g' f' f'\fermata bes'
          c'' bes' a' g'
          g' f'8 [e'] f'4\fermata
          g'
          fis' fis' g' g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wo soll ich flie -- hen hin, weil ich be -- schwe -- ret bin, mit vie -- len, gro -- ssen Sün -- den? Wo kann ich Ret -- tung fin -- den? Wann al -- le Welt her -- kä -- me, mein Angst sie nicht weg -- neh -- me.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          bes a g8 [bes] ees'4
          a2.\fermata a4
          bes c' d' ees'
          d'2.\fermata d'4
          d' f' f' g'
          g' f' f'\fermata
          d'
          d' f' bes bes
          bes a d'\fermata f'
          f' f'8 [g'] a' [a] bes4
          bes a8 [g] a4\fermata
          g
          a d' d' c'8 [d']
          ees'4 d'8 [c'] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g fis g ees
          d2.\fermata c4
          bes, a, g, c
          d2.\fermata d4
          g f bes8 [a] g [f]
          ees4 f bes,\fermata
          fis,
          g,8 [g] f [ees] d [c] bes, [f]
          ees [c] f4 bes,\fermata bes
          a bes fis g
          e c f\fermata
          ees
          d8 [c] bes, [a,] g, [f] ees [d]
          c4 d g,\fermata \fine
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
