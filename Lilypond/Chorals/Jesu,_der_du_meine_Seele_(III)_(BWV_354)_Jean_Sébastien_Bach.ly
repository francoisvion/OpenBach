\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, der du meine Seele (III)"
 poet = "Johann Rist"
  opus = "BWV 354"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          f''4 f'' c'' des''
          ees'' des''8 [c''] c''4 bes'\fermata
          des'' des'' c'' bes'
          a' bes' c''2\fermata }
           c''4 des'' ees''8 [des''] c''4
          des'' c''8 [bes'] bes'4 aes'\fermata
          des'' ees'' f''8 [ees''] des''4
          ges'' f'' ees'' des''\fermata
           c'' des'' ees'' f''
          ees'' des'' c''2\fermata
          bes'4 c'' des'' ees''8 [des'']
          c''4. c''8 bes'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          bes'4 f'8 [g'] a'4 f'
          ees'8 [f'] ges'4 f'8 [ees'] des'4\fermata
          f' bes'8 [aes'] ges' [f'] f' [ees']
          ees' [c'] f' [g'] a'2\fermata }
           a'4 bes' bes' aes'
          aes'8 [g'] aes'4 g' ees'\fermata
          bes' aes' aes' bes'8 [aes']
          bes' [c''] des''4 aes'8 [ges'] f'4\fermata
          aes' aes' aes' aes'8 [bes']
          c''4 bes' a'2\fermata
          bes'4 f' f' ees'8 [f']
          ges'4 f'8 [ees'] d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, der du mei -- ne See -- le
      hast durch dei -- nen bit -- tern Tod
      kräf -- tig -- lich her -- aus -- ge -- ris -- sen
      und mich sol -- ches las -- sen wis -- sen
      durch dein an -- ge -- neh -- mes Wort:
      sei doch itzt, o Gott, mein Hort!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      aus des Teu -- fels fin -- strer Höh -- le
      und der schwe -- ren Sün -- der -- noth
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key aes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          des'8 [c'] bes4 f'8 [ees'] des' [c']
          bes4 c' a f\fermata
          bes bes bes8 [a] bes4
          c' bes8 [des'] c'2\fermata }
           f'4 f' ees' ees'
          des'8 [ees'] f'4 ees'8 [des'] c'4\fermata
          f'8 [ges'] f' [ees'] des' [c'] bes4
          ees' aes8 [bes] c'4 des'\fermata
          ees' f' ees' des'
          ges'8 [f'] f' [e'] f'2\fermata
          f'4 f' bes bes
          bes a f2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          bes,8 [c] des [ees] f4 bes8 [aes]
          ges4 f8 [ees] f4 bes,\fermata
          bes8 [aes] ges [f] ees [f] ges4
          c8 [ees] des [bes,] f2\fermata }
           f4 bes8 [aes] g [ees] aes [g]
          f [ees] des4 ees aes,\fermata
          bes, c des ges8 [f]
          ees4 f8 [ges] aes4 des\fermata
          aes8 [ges] f [ees] des [c] des4
          a, bes, f2\fermata
          des'8 [c'] bes [a] bes [aes] ges [f]
          ees4 f bes,2\fermata \fine
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
