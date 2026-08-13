\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Befiehl du deine Wege (I)"
  opus = "BWV 270"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          b' a' g' fis'
          e'2 fis'4\fermata cis''
          d'' d'' cis''8 [b'] cis''4
          b'2.\fermata }
          \partial 4  d''4
          cis''8 [b'] a'4 b' cis''
          d''2 d''4\fermata a'
          b' a' g'8 [fis'] g'4
          fis'2.\fermata
          \partial 4  d''4
          cis''8 [d''] e''4 d'' cis''
          b'2 cis''4\fermata fis'
          g' fis' e' a'
          fis'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d'8 [e'] fis'4 b8 [cis'] d'4
          d' cis'8 [b] cis'4 fis'
          fis' fis' fis'4. e'8
          d'2. }
          \partial 4  fis'4
          e' e'8 [d'] d'4 g'
          a' g' fis' fis'
          fis'8 [e' e' dis'] e'4 e'
          dis'2.
          \partial 4 e'4
          e' e' fis'8 e'4 gis'8
          fis'4 e' e' d'
          d' d' e' e'
          e' d' cis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Be -- fiehl du dei -- ne We -- ge,
      und was dein Her -- ze kränkt,
      Der Wol -- ken, Luft und Win -- den
      gibt We -- ge, Lauf und Bahn,
      Der wird auch We -- ge fin -- den,
      Da dein Fuß ge -- hen kann.
    }
    
    \new Lyrics \lyricsto "soprano" {
      Der al -- ler -- treu -- sten Pfle -- ge
      des, der den Him -- mel lenkt.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          b8 [cis'] d'4 d'8 [cis' cis' b]
          b [ais] b4 ais ais
          b b b ais
          fis2. } \break
          \partial 4  b8 [a]
          g4 a g8 [b] e'4
          d'8 [c'] b4 a d'8 [c']
          b4 c'8 [b] b4 b
          b2.
          \partial 4 b4
          a4. gis8 a [b] cis'4
          d'8 [b] gis4 a a
          b a a cis'
          cis'8 [ais b gis] ais4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b8 [a]
          g4 fis e d
          g2 fis4\fermata fis
          b,8 [cis d e] fis4 fis
          b,2.\fermata }
          \partial 4  b4
          e fis g fis8 [e]
          fis4 g d\fermata d
          g fis e8 [g fis e]
          b2.\fermata
          \partial 4 gis4
          a8 [b] cis'4 fis8 [gis] a4
          d e a,\fermata d8 [cis]
          b, [cis] d4~ d8 [cis b, cis]
          d [cis] b,4 fis\fermata \fine
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
