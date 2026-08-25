\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gott, der du selber bist das Licht"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 316"
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
          \repeat volta 2 {
          \partial 4  d''4
          g' a'8 [bes'] c''4 bes'
          a' a' g'\fermata c''
          c'' c'' d'' c''
           d'' e'' f''\fermata d''
          c'' bes' a' g'
          a'2 g'4\fermata }
          \partial 4  a'
          bes' c'' d'' ees''
          d'' c'' bes'\fermata d''
          f'' ees'' d'' g'8 [a']
          bes'4 a' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          g' fis'8 [g'] a'4. g'8~
          g' [fis'16 e'] fis'4 d'\fermata g'
          f'8 [e'] f'4 f' f'
           bes'8 d''4 cis''8 d''4\fermata bes'
          a' d'8 [e'] fis'4 g'
          g' fis' d'\fermata }
          \partial 4 f'
          f'8 bes'4 a'8 bes'4 c''~
          c''8 bes'4 a'8 f'4\fermata f'
          f'8 [a' g' f'] f'4 ees'
          d'8 g'4 fis'8 d'4\fermata \fine
        }
      >>
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gott, der du sel -- ber bist das Licht, dess Güt' und Treu -- e stir -- bet nicht, dir sei itzt Lob ge -- sun -- gen: und dei -- ne Gnad und Wun -- der -- tat mich, da ich schlief, er -- hal -- ten hat.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      nach -- dem durch dei -- ne gro -- ße Macht, der hel -- le Tag die fin -- stre Nacht So kräf -- tig hat ver -- drun -- gen,
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
          \partial 4  bes8 [c']
          d'4 c'8 [d'] ees' [d'] d'4
          ees'8 [c'] a [d'16 c'] bes4\fermata c'8 [bes]
          a [bes] c' [a] bes4 c'
           bes8 [a] g4 a\fermata g'
          g'8 [fis'] g'4 d'8 [c'] bes4
          ees'8 [c'] a [d'16 c'] bes4\fermata }
          \partial 4 c'
          d' ees' f' f'
          f' g'8 [f'16 ees'] d'4\fermata d'
          c'8 [d'] bes [c'] d'4 c'8 [fis]
          g [d'] d'8. [c'16] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,8 [a,]
          bes,4 a,8 [g,] fis,4 g,
          c8 [a,] d4 g,\fermata e,
          f,8 [g,] a, [f,] bes, bes4 a8
           g [f] e4 d\fermata g,
          a, bes,8 [c] d4 ees8 [d]
          c4 d g,\fermata }
          \partial 4 f8 [ees]
          d4 c bes,8 bes4 a8
          bes [d] ees [f] bes,4\fermata bes,
          a,8 [f,] g, [a,] bes,4 c
          bes,8 [g,] d4 g,\fermata \fine
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
