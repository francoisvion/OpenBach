\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Erschienen ist der herrlich Tag"
  opus = "BWV 145/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          fis'4 fis' fis'
          cis''2 dis''4
          e'' dis'' cis''
          b'2.\fermata
          cis''4 dis'' eis''
          fis''2 cis''4
          e'' dis''2
          cis''\fermata cis''4
          e'' d'' cis''
          b' a' gis'
          a' fis'2
          e'\fermata
          e'4
          a'2 b'4
          cis''2 b'4
          a' e''2
          cis''\fermata b'4
          a' gis'2
          fis'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          cis'4 cis' dis'
          e' fis' fis'
          gis'8 [ais'] b'4 ais'
          fis'2.\fermata
          fis'4 fis' gis'
          a'8 [b'] a' [gis'] fis'4
          gis' a' gis'
          eis'2\fermata fis'4
          e'2 e'4
          fis'2 e'4
          e'2 dis'4
          b2\fermata
          cis'4
          cis' fis' e'
          e'8 [fis'] gis'2
          fis'4 gis'8 [a'] b'4
          a'2\fermata gis'4
          fis'2 eis'4
          cis'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Er -- schie -- nen ist der herr -- lich' Tag, dran sich Nie -- mand gnug' freuen mag; Christ, un -- ser Herr, heut tri -- um -- phiert, all' sein' Feind er ge -- fan -- gen führt. Al -- le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          a8 [b] cis'4 b
          gis cis' b
          b gis cis'
          dis'2.\fermata
          cis'4 b b
          cis'2 cis'4
          cis'2 bis4
          gis2\fermata a4
          b2 a4
          fis b2
          a8 [b] cis'4 b8 [a]
          gis2\fermata
          gis4
          a d'2
          cis'4 cis'2
          cis'8 [d'] e'2
          e'\fermata d'4
          cis' b8 [a] b4
          ais2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          fis8 [gis] a4 b~
          b ais b
          gis e fis
          b,2.\fermata
          ais4 b gis
          fis8 [eis] fis [gis] a4
          gis fis gis
          cis2\fermata fis4
          gis2 a4
          dis2 e4
          cis a, b,
          e2
          cis4
          fis2 gis4
          a eis2
          fis4 cis' gis
          a2 b4
          cis' cis2
          fis2. \fine
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
