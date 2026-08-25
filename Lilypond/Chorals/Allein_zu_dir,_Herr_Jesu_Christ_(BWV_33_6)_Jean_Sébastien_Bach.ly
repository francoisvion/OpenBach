\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ehr sei Gott in dem höchsten Thron (v. 4)"
 subtitle = "tiré de la cantate : Allein zu dir, Herr Jesu Christ"
  opus = "BWV 33/6"
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
          \repeat volta 2 {
          \partial 4  c''4
          g' a'8 [b'] c'' [d''] e''4
          d'' c''2 b'4
          c''2\fermata r4 e''
          d'' c'' b'8 [a'] g'4
          a' b'8 [c''] d''4 c''8 [b']
          c''4 b' a'\fermata } e''
          f''8 [e''] d''4 e''8 [d''] c''4
          d'' e'' a'\fermata e''
          f''8 [e''] d''4 e''8 [d''] c''4
          d'' e'' a'\fermata c''
          b' a' g' a'
          f'8 [e'] f'4 e'\fermata a'
          g' c''2 b'4
          c''\fermata g' a' b'
          c''8 [d''] e''4 d'' c''
          b' b' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          e'8 [d'] c' [d'] e' [f'] g'4
          g'4. fis'8 g'2
          g'\fermata r4 g'
          g'8 [f'] e'4 e' e'
          e'8 [fis'] gis' [a'] b'4 a'
          a' gis' e'\fermata } a'
          a' a' gis' e'
          a' g' f'\fermata e'
          a' a'8 [g'] g'4 g'
          a' b' e'\fermata g'
          g'8 [fis'] e'4 e'8 [g'] f' [e']
          d' [cis'] d'4 cis'\fermata c'
          d' g'8 [f'] e'4 d'
          e'\fermata e' fis' gis'
          a' e' a'2~
          a'4 gis' e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ehr sei Gott in dem höch - sten Thron,
      dem Va -- ter al - - - - ler Gü - te, 
      und Gott dem hei -- li -- gen Gei -- ste,
      der uns sein Hilf all -- zeit lei -- ste,
      da -- mit wir ihm ge -- fäl -- lig sein,
      hier in die -- ser Zeit
      und fol -- gends in der E - - wig -- keit.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      und Je -- su Christ, seinm lieb - sten Sohn,
      der uns all -- zeit __ _ _ _ _ be -- hü - te,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [b]
          c' [b] a4 g g8 [a]
          b [a16 b] c'8 [d'] e'4 d'
          e'2\fermata r4 c'
          b4. a8 g [a] b4
          c' d'8 [e'] f' [e'] e'4
          f'8 [d'] b [c'16 d'] c'4\fermata } c'
          c' b8 [a] b4 c'8 [b]
          a4 a d'\fermata b
          c' d' c' c'
          c' b c'\fermata e'
          d' e' b cis'
          a a a\fermata a
          b8 [a] g2 g4
          g\fermata e' d' d'
          e'8 [d'] c' [b] a [b] c' [d'16 e']
          f'4 e'8 [d'] cis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          e f e8 [d] c4
          g a g g,
          c2\fermata r4 c
          g a e4. d8
          c [c'] b [a] gis4 a
          d e a,\fermata } a
          d8 [e] f4 e a8 [g]
          f [e] d [cis] d4\fermata gis,
          a, b, c8 [d] e4
          fis gis a\fermata e8 [fis]
          g4 cis8 [dis] e4 a,
          d8 [f] e [d] a4\fermata f
          f e8 [d] e [f] g4
          c\fermata c~ c8 d c [b,]
          a, [b,] a, [g,] f,4. e,8
          d,4 e, a,\fermata \fine
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
