\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzlich tut mich verlangen"
 subtitle = "tiré de la cantate : Komm, du süße Todesstunde"
 poet = "Auteur : Christoph Knoll (1563-1621)"
  opus = "BWV 161/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          a' g' f' e'
          d'2 e'4 b'
          c'' c'' b' b'
          a'2. } c''4
          b'8 [c''16 d''] g'4 a' b'
          c''2 c''4 g'
          a' g' a' f'
          e'2 r4 c''
          b' d'' c'' b'
          a'2 b'4 e'
          f' e' d' g'
          e'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          e'8 [d'] d'4 d'8 [d'] c' [b]
          a2 b4 e'
          e' f' f' e'8 [d']
          cis'4 d' c' } a'8 [g']
          f'4 e' e'8 [c'] f'4
          g'4. f'8 e'4 c'
          c' c'8 [bes] a4 a
          a2 r4 e'
          e' d' e'8 [fis'] g' [gis']
          a'4 a e' e'8 [cis']
          a [b] c'4 d' d'8 [c']
          b4~ b8 b16 [a] b4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Der Leib zwar in der Er -- den
      von Wür -- mern wird ver -- zehrt,
      wird leuch -- ten als die Son -- ne
      und le -- ben oh -- ne Not
      in himml' -- scher Freud und Won -- ne.
      Was schadt mir denn der Tod?
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      doch auf -- er -- weckt soll~Er wer -- den,
      durch Chri -- stum schön ver -- klärt,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g8 [b]
          a [c'] b4 c'8 [g] g4
          a8 [f] d [d'] gis4 gis
          a4. c'8 d' [d] g [f]
          e4 f8. [g16] a4 } e'
          d' d'8 [c'] c'4 d'
          g a8 [b] c'4 c'
          f g e f8 [g]
          a2 r4 a
          b b b8 [a] e' [d']
          c' [cis'] d'4 g a8 [g]
          f [g] a4 a b
          b8 [gis] e [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          f g a,8 [b,] c4
          f,2 e,4 e
          a8 [g] f [e] d [b,] e4
          a,2. } a4
          d e f d
          c2 c4 e
          f c cis d
          a,2 r4 a,
          e b, c8 [d] e4
          f2 e4 a
          d a,8 [g,] f, [fis,] g,4
          gis, a, e,\fermata \fine
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
