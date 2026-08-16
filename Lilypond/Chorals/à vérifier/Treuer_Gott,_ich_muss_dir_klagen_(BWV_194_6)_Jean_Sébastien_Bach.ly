\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Treuer Gott, ich muss dir klagen"
  opus = "BWV 194/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          bes'4 c'' d'' c''
          bes' a' g' f'\fermata
          bes' c'' d'' ees''
          d'' c'' bes'2\fermata
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
          f'4 f' f'4. e'8
          d'4 c'8 [f'] f' [e'] f'4\fermata
          d' f' f' f'
          f' f' f'2\fermata
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
      1. Freu' dich sehr, o mei -- ne See -- le und ver -- giss all Noth und Qual, Sei -- ne Freud' und Herr -- lich -- keit sollst du seh'n in E -- wig -- keit, mit den Eng -- eln ju -- bi -- lie -- ren, e -- wig, e -- wig tri -- um -- phie -- ren.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      weil dich nun Chri -- stus, dein Her -- re, ruft aus die -- sem Jam -- mer -- thal. Wenn mir fällt was Ar -- ges ein, lass mich den -- ken dei -- ner Pein, dass ich dei -- ne Angst und Schmer -- zen, wohl er -- wäg' in mei -- nem Her -- zen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 bes bes8 [a] g4
          f8 [g] a8. [bes16] c'8 [g] a4\fermata
          bes a bes c'
          c'8 [bes] bes [a] d'2\fermata
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
          bes4 f bes, c
          d8 [e] f4 c f,\fermata
          g f8 [ees] d [c] bes, [a,]
          bes,4 f, bes,2\fermata
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
