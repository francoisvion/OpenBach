\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Durch dein Gefängnis, Gottes Sohn (1 v.)"
  opus = "BWV 245/22"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  e'8 [fis']
          gis'4 a' b' b'
          a' gis' fis'\fermata b'
          cis'' dis'' e'' dis''8 [cis'']
          cis''2 b'4\fermata
          b'
          e'' dis'' cis'' b'
          a' gis'8 [fis'] fis'4\fermata b'
          a' gis' fis'8 [gis'] a'4
          gis' fis' e'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  b4
          e' e' e' e'
          e'8 [dis'] e'4 dis'\fermata fis'
          fis' ais' b'8 [fis'] fis' [gis']
          gis'4 ais' fis'\fermata
          gis'
          cis'' b'4. a'4 gis'8~
          gis' fis' e'4 dis'\fermata d'
          c' b a8 [b] c'4
          b8 e'4 dis'8 b4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mach's mit mir, Gott, nach dei -- ner Güt', hilf mir in mei -- nem Lei -- den,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      was ich dich bitt', ver -- sag' mir nicht, wenn mei -- ne Seel' will schei -- den: so nimm sie, Herr, in dei -- ne Händ', ist Al -- les gut, wenn gut das End'.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  gis8 [a]
          b4 cis' d' cis'8 [b]
          cis'4 b b\fermata dis'
          cis' fis' b8 [cis'] dis' [e']
          e' [dis'] cis'4 dis'\fermata
          e'
          gis' gis' gis'8 [fis'] fis' [dis']
          e' [b] b4 b\fermata gis8 [fis]
          e4 eis fis fis
          gis8. [a16] b8 [fis] gis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e,4
          e cis gis, cis
          fis, gis,8 [a,] b,4\fermata b
          ais gis8 [fis] gis [ais] b4
          e fis b,\fermata
          e8 [dis]
          cis4 gis, a, b,
          cis8 [dis] e4 b,\fermata b,
          c cis d dis
          e b, e,\fermata \fine
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
