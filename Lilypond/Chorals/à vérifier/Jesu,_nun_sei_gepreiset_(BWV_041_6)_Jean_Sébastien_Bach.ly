\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, nun sei gepreiset"
  opus = "BWV 41/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  e''4
          e'' c'' d'' e''
          f''2 d''4\fermata d''
          d'' c'' c'' b'
          c''2.\fermata r4
          r2 r4 d''
          d'' d'' d'' e''
          c''2 c''4\fermata c''
          b' c'' d'' d''
          c''2.\fermata r4
          r2.
          b'4
          b' b' b' b'
          c''2 c''4\fermata b'
          b' b' b' b'
          c''2 c''4\fermata
          e''
          e'' d'' c''
          d''2 e''4
          f''2.
          e''2\fermata e''4
          d''2 d''4
          cis''2 cis''4
          d''2.~
          d''2\fermata e''4
          e'' d'' c''
          d''2 e''4
          f''2.
          e''2\fermata e''4
          d''2 d''4
          cis''2 cis''4
          d''2.~
          d''2\fermata
          e''4
          e'' c'' d'' e''
          f''2 d''4\fermata d''
          d'' c'' c'' b'
          c''2.\fermata r4
          r2 r4 \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          g' g' g' g'
          f'8 [g'] a'4 bes'\fermata a'
          g' g' a' g'
          g'2.\fermata r4
          r2 r4 g'8 [fis']
          g'4. fis'8 g'4 g'
          g' f'8 [e'] f'4\fermata g'
          g'8 [f'] e'4 a' g'8 [f']
          e'2.\fermata r4
          r2.
          g'4
          g' a' g' gis'
          a'2 a'4\fermata a'
          a' g' d' g'
          g'2 g'4\fermata
          g'
          g'2 g'4
          g' a' b'
          c'' b' a'
          g'2\fermata c''4
          b' a' g'
          a' bes' g'
          f'2 bes'4
          a'2\fermata a'4
          b'2 a'4
          a'2 g'4
          a'2 g'4
          g'2\fermata g'4
          f' g' a'
          g' a' bes'
          a' bes' g'
          fis'2\fermata
          a'4
          g' g' g' g'
          a'2 g'4\fermata g'
          g' g' g'8 [a'] g' [f']
          e'2.\fermata r4
          r2 r4 \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, nun sei ge -- prei -- set zu die -- sem neu -- en Jahr für dein' Güt', uns be -- wei -- set in al -- ler Noth und G'fahr:
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Dass wir ha -- ben er -- le -- bet die neu' fröh -- li -- che Zeit, die vol -- ler Gna -- den schwe -- bet und ew' -- ger Se -- lig -- keit. Das wir in gu -- ter Stil -- le das alt' Jahr hab'n er -- fül -- let. Wir woll'n uns dir er -- ge -- ben jetz -- und und im -- mer -- dar: be -- hü -- te uns Leib und Le -- ben hin -- fort das gan -- ze Jahr! Be -- hüt' uns Leib und Le -- ben hin -- fort durchs gan -- ze Jahr!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          c'8 [d'] e'4 d' c'
          c' f' f'\fermata a
          b c' f'8 [e'] d'4
          e'2.\fermata r4
          r2 r4 b8 [a]
          b [a] b [c'] d'4 c'8 [bes]
          bes4 a8 [g] a4\fermata e'
          d' c'~ c' b
          g2.\fermata r4
          r2.
          d'4
          d'8 [e'] fis'4 e' e'
          e'2 e'4\fermata f'
          f' e'8 [f'] g'4 f'~
          f' e'8 [d'] e'4\fermata
          c'
          c' d' e'
          d'2 g'4
          c'2 d'4
          e'2\fermata g'4
          g' f' e'
          f' e'2
          d' e'4
          f'2\fermata c'4
          b e'2
          a4 b c'
          c' b8 [a] b4
          c'2\fermata a4
          a2 d'4
          e'2 e'4
          a d' bes
          a2\fermata
          c'4
          c' c' b c'
          c'8 [e'] d' [c'] b4\fermata b
          b c'8 [d'] e'4 d'8 [g]
          g2.\fermata r4
          r2 r4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          c c' b bes
          a g8 [f] bes4\fermata fis
          g8 [f] e4 f g
          c2.\fermata r4
          r2 r4 g,
          g8 [fis] g [a] b [g] c'4
          f2 f4\fermata e8 [f]
          g4 a8 [g] f4 g8 [g,]
          c2.\fermata r4
          r2.
          g,4
          g8 [fis] e [dis] e [d] c [b,]
          a,2 a,4\fermata d
          e8 [f] g [a] g [f] e [d]
          c2 c4\fermata
          c
          c' b a
          b a g
          a2 b4
          c'2\fermata c4
          g a bes
          a g a
          bes a g
          d2\fermata a4
          gis2 a4
          f2 e4
          d2 g4
          c2\fermata cis4
          d e f
          e f g
          fis g g,
          d2\fermata
          a,8 [b,]
          c [d] e [c] f [g] f [e]
          d [e] f [d] g\fermata [a] g [f]
          e [d] e [f] g [f] g [g,]
          c2.\fermata r4
          r2 r4 \fine
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
