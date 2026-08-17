\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, du höchstes Gut"
 subtitle = "tiré de la cantate : Tue Rechnung! Donnerwort"
  opus = "BWV 168/6"
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
          \partial 4  b'4
          b' ais' b' cis''
          d'' cis'' b'\fermata b'
          cis'' cis'' fis'' e''
          d''2 cis''4\fermata }
          fis''
          e'' d'' cis'' e''
          d'' cis'' b'\fermata d''
          cis'' b' a'8 [gis'] fis' [gis']
          a'4 b' cis''\fermata
          cis''
          d'' e'' fis''4. e''8
          d''4 e''8 [d''] cis''2
          b'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  fis'4
          e'8 [fis'] g'4 fis' g'
          fis' fis'8 [e'] d'4\fermata e'
          e'8 [fis'] g'4 fis' cis''
          cis''8 [ais'] b'4 ais'\fermata }
          a'
          a'8 [gis'] a' [b'] a'4 g'8 [fis']
          fis'4 fis' fis'\fermata fis'8 [gis']
          a'4 gis' fis' cis'
          fis' gis' a'\fermata
          a'8 [g']
          fis' [b'] a' [g'] fis'2~
          fis'4 e'8 [fis'] g'4 fis'8 [e']
          dis'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Stärk mich mit dei -- nem Freu -- den -- geist, heil mich mit dei -- nen Wun -- den, und nimm mich einst, wenn dirs ge -- fällt, in wah -- rem Glau -- ben von der Welt zu dei -- nen Aus -- er -- wähl -- ten. _ _
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wasch mich mit dei -- nem To -- des -- schweiß in mei -- ner letz -- ten Stun -- den; und nimm mich einst, wenn dirs ge -- fällt, in wah -- rem Glau -- ben von der Welt zu dei -- nen Aus -- er -- wähl -- ten. _ _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          cis'8 [d'] e'4 d'8 [cis'] b [ais]
          b [cis'] ais4 b\fermata gis
          a e' d'8 [e'] fis'4
          fis'4. eis'8 fis'4\fermata }
          fis'
          b fis'8 [e'] e' [d'] cis'4
          cis'8 [b] b [ais] d'4\fermata b
          e' d'8 [cis'] cis' [b] a [gis]
          fis [a] d'4 e'\fermata
          e'
          d'8 [g'] fis' [e'] d'4 cis'~
          cis'8 fis b2 ais4
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          cis' cis d e
          fis8 [e] fis4 b,\fermata e
          a, a d'8 [cis'] b [ais]
          b4 b, fis\fermata }
          d
          e fis8 [gis] a4 ais
          b fis b,\fermata b
          a8 [gis] fis [eis] fis4. e8
          d [cis] b,4 a,\fermata
          a
          b cis' d'8 [cis'] b [ais]
          b [a] g [fis] e4 fis
          b,2.\fermata \fine
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
