\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Meinen Jesum laß ich nicht (v. 6)"
 subtitle = "tiré de la cantate : Mein liebster Jesus ist verloren"
 poet = "Auteur : Christian Keymann (1607-1662)"
  opus = "BWV 154/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          a'4 a' b' b'
          cis'' cis'' d''2\fermata
          e''4 e'' d'' d''
          cis'' b'8 [cis''16 d''] b'2
          a'\fermata a'4 a'
          b' b' a' g'
          fis'2\fermata a'4 a'
          g' g' fis' e'8 [fis'16 g']
          e'2 d'\fermata
          d''4 d'' cis'' cis''
          b' b' a'2\fermata
          a'4 a' g' fis'
          e' e' d'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          fis'8 [g'] a'4~ a' g'
          g'8 [e'] a' [g'] fis'2\fermata
          a'4 a' a' gis'8 [fis']
          e'4 e' fis' e'
          e'2\fermata fis'8 [g'] a'4
          a' g'4. fis'4 e'8
          d'2\fermata cis'4 fis'~
          fis'8 e'16 [d'] e'4. d'8 d'4~
          d' cis' a2\fermata
          fis'4 fis' fis' e'
          fis' e' e'2\fermata
          fis'4 fis'4. e'4 d'8~
          d' cis'16 [b] cis'4 a2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Mei -- nen Je -- sum laß ich nicht,
      geh ihm e -- wig an der Sei -- ten;
      Chri -- stus lässt mich für und für
      zu den Le -- bens -- bäch -- lein lei -- ten.
      Se -- lig, der mit mir so spricht:
      Mei -- nen Je -- sum lass ich nicht.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 d' d' e'
          e' a a2\fermata
          cis'4 cis' cis' b~
          b8 a a4 a gis
          cis'2\fermata d'4 d'
          d' e' e'8 [cis'] d' [a]
          a2\fermata a4 b
          b a a b
          a g fis2\fermata
          b4 b a a
          a gis cis'2\fermata
          cis'4 d' d'8 [a] a [b]
          b [g] e [a] fis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          d8 [e] fis [d] g [fis] g [e]
          a [g] fis [e] d2\fermata
          a,8 [b,] cis [a,] b, [cis] d [b,]
          cis [d] e [cis] d [b,] e [e,]
          a,2\fermata d8 [e] fis [d]
          g [fis] e [d] cis [a,] b, [cis]
          d2\fermata fis8 [e] dis [b,]
          e [d] cis [a,] d [fis] g [e]
          a [g] a [a,] d2\fermata
          b,8 [cis] d [e] fis [gis] a [fis]
          dis [b,] e4 a,2\fermata
          fis8 [e] d [cis] b, [cis] d [b,]
          g, [e,] a,4 d,2\fermata \fine
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
