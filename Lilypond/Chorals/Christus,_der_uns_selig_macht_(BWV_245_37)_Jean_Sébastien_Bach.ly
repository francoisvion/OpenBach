\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Christus, der uns selig macht"
  subtitle = "tiré de la Passion selon saint Jean"
  opus = "BWV 245/37"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          f''4 f'' f'' f''
          ees'' des'' c''2\fermata
          des''4 ees'' f'' f''
          ees'' des'' c''2\fermata
          bes'4 c'' des'' bes'
          bes'8 [aes'] ges'4 f'2\fermata
          ges'4 aes' bes' bes'
          aes' ges' f'2\fermata
          bes'4 a' bes' c''
          des'' c''8 [bes'] bes'2\fermata
          des''4 ees'' f'' f''
          ees'' des''8 [c''] c''2\fermata
          bes'4 c'' des''8 [c''] bes'4
          bes'8 [aes'] ges'4 f'2\fermata
          ges'4 aes' bes' bes'
          aes' ges' f'2~
          f'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          a'4 a' bes' c''
          bes' bes' a'2\fermata
          f'4 ges' aes' aes'
          ges' f' f'2\fermata
          f'4 f' f' ges'
          f' ees' d'2\fermata
          ees'4 ees' fes' fes'
          ees'2 d'\fermata
          f'4 ees' f' ges'
          f' f' ges'2\fermata
          aes'4 aes' aes' bes'
          bes'2 a'\fermata
          f'4 f' f' ges'
          f' ees' d'2\fermata
          ees'4 f' ges' ges'
          f' ees'2 des'4
          c'1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O hilf, Chri -- ste, Got -- tes Sohn,
      durch dein bit -- ter Lei - den,
      daß wir der stets un -- ter -- tan
      all Un -- tu -- gend mei - den,
      dei -- nen Tod und sein Ur -- sach
      fruc -- ht -- bar -- lich be -- den -- ken,
      da -- für, wie -- wohl arm und schwach,
      dir Dank -- o -- pfer schen - ken. __
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          c'4 c' des' c'8 [des']
          ees' [f'] ges'4 c'2\fermata
          bes4 bes ces' bes
          bes2 a\fermata
          des'4 c' bes8 [c'] des' [ees']
          f' [bes] bes4 bes2\fermata
          bes4 ces' des' des'
          ces'8 [des'] ees'4 bes2\fermata
          des'4 c' bes bes
          bes8 [aes] des'4 des'2\fermata
          f'4 c' des' des'
          ees'8 [f'] ges'4 f'2\fermata
          bes4 a bes8 [c'] des' [ees']
          f' [bes] bes4 bes2\fermata
          bes4 des' des' des'
          des'8 [ces'] bes4 a bes
          a1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          f4 f bes aes
          ges f8 [ees] f2\fermata
          bes4 ges d d
          ees bes, f2\fermata
          bes4 a bes ges
          d ees bes,2\fermata
          ees4 ces g, g,
          aes, a, bes,2\fermata
          bes,4 c des ees
          f des ges2\fermata
          f4 aes des'8 [c'] bes [aes]
          ges4 f8 [ees] f2\fermata
          des4 f bes8 [aes] ges4
          d ees bes,2\fermata
          ees4 des ges,8 [aes,] bes, [ces]
          des4 ees f2~
          f1\fermata \fine
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
