\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich freue mich in dir"
 subtitle = "tiré de la cantate : Ich freue mich in dir"
 poet = "Auteur : Kaspar Ziegler (1621-1690)"
  opus = "BWV 133/6"
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
          \partial 4  fis'8 [g']
          a'4 b' a' g'8 [fis']
          fis'2\fermata r4 a'
          b' cis'' d'' d''8 [cis'']
          cis''2 b'4\fermata } e''8 [d'']
          cis''4 d''8 [cis''] b'4. a'8
          a'2.\fermata a'4
          b' cis'' d''4. d''8
          cis''2.\fermata a'4
          a' b' a' g'8 [fis']
          fis'2\fermata r4 a'
          b'8 [cis''] d''4 d'' cis''
          d''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          d'4 d' d'8 [cis'16 b] cis'4
          d'2\fermata r4 fis'
          gis' ais' b' fis'
          fis'4. e'8 d'4\fermata } e'
          e' fis' fis'8 [d'] e'4
          e'2.\fermata e'4
          e'8 [fis'] gis'4 a' e'
          e'2.\fermata e'4
          fis' g'8 [fis'] e'4 e'
          d'2\fermata r4 d'
          d' e' e'8 [fis'] g'4
          fis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wohl -- an! so will ich mich
      an dich, o Je -- su hal -- ten,
      O Je -- su, dir, nur dir,
      dir leb ich ganz al -- lein;
      auf dich, al -- lein auf dich,
      mein Je -- su, schlaf ich ein.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      und soll -- te gleich die Welt
      in tau -- send Stü -- cken spal -- ten.
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
          a g fis8 [e] a4
          a2\fermata r4 a
          e' e' fis' b
          b ais b\fermata } b
          a a a gis
          cis'2.\fermata cis'4
          b e' d'8 [cis'] b4
          a2.\fermata cis'4
          d' g a8 [b] cis'4
          b2\fermata r4 a
          g8 [a] b4 a a
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d8 [e]
          fis4 g a a,
          d2\fermata r4 d
          d cis b,8 [cis] d [e]
          fis2 b,4\fermata }
          gis
          a8 [gis] fis [e] d [b,] e4
          a,2.\fermata a4
          gis e fis g
          a2.\fermata g4
          fis e8 [d] cis4 a,
          b,2\fermata r4 fis
          g gis a a,
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
