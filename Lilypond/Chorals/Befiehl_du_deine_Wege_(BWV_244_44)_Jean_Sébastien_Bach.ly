\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Befiehl du deine Wege"
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/44"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
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
          d''4
          cis''8 [b'] a'4 b' cis''
          d''2 d''4\fermata a'
          b' a' g' g'
          fis'2.\fermata
          d''4
          cis''8 [d''] e''4 d'' cis''
          b'2 cis''4\fermata fis'
          g' fis' e' a'
          fis'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d'8 [e'] e' [d']
          d'4 cis' d'\fermata e'
          d'8 [e'] fis'4 fis'4. e'8
          d'2.\fermata }
          fis'4
          e'8 [g'] fis' [e'] d'4 g'
          g' fis'8 [e'] fis'4\fermata fis'
          g' fis' fis' e'
          dis'2.\fermata
          e'4
          e' e' fis'8 [gis'] a'4
          a' gis' a'\fermata d'8 [cis']
          b [cis'] d'4 d'8 [b] cis'4
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Be -- fiehl du dei -- ne We -- ge
      und was dein Her -- ze kränkt,
      der Wol -- ken, Luft und Win -- den
      gibt We -- ge, Lauf und Bahn,
      der wird auch We -- ge fin -- den,
      da dein Fuß ge -- hen kann.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
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
          \partial 4  a4
          g a b8 [a] a4
          b a a\fermata ais
          b b b ais
          b2.\fermata }
          b8 [a]
          g [b] d' [cis'] b [a] g [a]
          b4 a8 [g] a4\fermata d'
          d' c' b b
          b2.\fermata
          b4
          a b a8 [b] cis' [a]
          fis'4 e' e'\fermata a
          g a a a
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          g fis b,8 [cis] d4
          g, a, d\fermata cis
          b,8 [cis] d [e] fis4 fis,
          b,2.\fermata }
          b,4
          e fis g8 [fis] e4
          d2 d4\fermata d
          g8 [fis] e [dis] e [fis] g [a]
          b2.\fermata
          gis4
          a gis fis e
          dis e a,\fermata d
          e fis8 [g] a4 a,
          d2.\fermata \fine
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
