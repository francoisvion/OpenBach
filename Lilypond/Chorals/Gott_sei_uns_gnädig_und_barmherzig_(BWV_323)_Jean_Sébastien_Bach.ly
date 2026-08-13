\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gott sei uns gnädig und barmherzig"
  opus = "BWV 323"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           cis''2 e''
          cis''4 cis'' cis'' cis''
          d''2 cis''
          b'1
          a'\fermata
           cis''2 e''
          b'4 b' b' b'
          gis'2 fis'4 gis'
          a'2 gis'
          fis'1~
          fis'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           fis'2 e'
          e'4 eis' fis' gis'
          fis' e'2 fis'4
          fis'2 e'
          e'1\fermata
           e'
          e'4 gis' fis' a'
          gis'2 fis'
          fis'2. eis'4
          cis'2 d'~
          d' cis'\fermata \bar "|."
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Gott _ sei uns gnä -- dig und barm -- her -- zig und _ geb' uns sei -- nen gött -- li -- chen Se - gen.
    }
    
    \new Lyrics \lyricsto "alto" {
      \repeat unfold 17 {\skip1} gött -- li - chen Se - gen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           a2 b
          cis'4 b a gis
          a b2 a4
          a2 gis
          a1\fermata
           a2 a
          gis4 b a fis'
          e'2 b
          cis' b
          ais b~
          b ais\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           fis2 gis
          a4 gis fis eis
          fis gis a fis
          d b, e2
          a,1\fermata
           a,4 b, cis d
          e2 dis
          e d
          cis1
          fis,4 e d b,
          fis,1\fermata \bar "|."
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
