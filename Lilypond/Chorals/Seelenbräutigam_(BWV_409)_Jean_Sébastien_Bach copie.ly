\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Seelenbräutigam"
  opus = "BWV 409"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    \relative c' {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          a'4 a gis a
          b2\fermata a4 b
          cis b a2\fermata
          cis4 d e d
          cis b cis2
          b\fermata a4 b
          cis b a gis
          a4. gis8 gis2\fermata
          a4 a gis a
          b2\fermata a4 b
          cis b8 [a] a2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          e4 e e e8 [fis]
          gis2\fermata fis4 e
          e e e2\fermata
          a4 a a a8 [b]
          b [a] gis [b] b [a16 gis] a4
          gis2\fermata fis4. e8
          e [a] fis [gis] gis fis4 eis8
          fis [eis] fis2 eis4\fermata
          fis4 e! e e 
          e2\fermata cis8 [fis] e4
          e8 [a] gis4 e2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      See -- len -- bräu -- ti -- gam,
      Je -- su, Got -- tes Lamm,
      Ha -- be Dank für dei -- ne Lie -- be,
      die mich zieht aus rei -- nem Trie - be
      von der Sün -- den Schlamm,
      Je -- su, Got -- tes Lamm.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    \relative c {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          cis'4 cis b cis 
          e2\fermata cis8 [d] cis [b]~
          b a4 gis8 cis2\fermata
          e4 fis e fis8 [e]
          e4 e e2
          e\fermata cis4 b
          a4. gis8 cis8 [bis16 cis] dis8 [cis]
          cis2 cis\fermata
          cis4 cis b! a
          a gis\fermata a8 [d!] cis [b]
          a [e'] e8. [d16] cis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          a,8 [b] cis [d] e4 a,
          e'2\fermata fis4 gis
          a e a,2\fermata
          a'8 [gis] fis4 cis fis8 [gis]
          a4 e8 [gis] a4 a,
          e'2\fermata fis4 gis
          a8 [fis] dis [e] fis [dis] bis [cis]
          fis, [gis] a [b!] cis2\fermata
          fis4 cis8 [d] e4 cis8 [a]
          e'2\fermata fis4 gis
          a e a,2\fermata \fine
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
