\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Lasst Furcht und Pein"
  opus = "BWV 248/35"
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
          \partial 4  fis'8 [gis']
          a'4 gis' fis'\fermata fis'
          a' gis' fis'\fermata cis''
          b' a' gis'\fermata
          gis'
          a' a' b' b'
          cis'' cis'' b' a'
          gis'2 fis'4\fermata cis''
          b' a'8 [gis'] gis'4\fermata
          cis''
          b' a' gis'\fermata gis'
          a' a' b' b'
          cis'' cis'' b' a'8 [gis']
          gis'2 fis'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'4
          fis' eis' fis'\fermata fis'
          fis' eis' cis'\fermata fis'
          fis'8 [eis'] fis'4 eis'\fermata
          eis'
          fis' fis' fis'8 [gis'16 a'] gis'4
          gis'8 [fis'] eis' [fis'] gis'4. fis'8
          fis'4 eis' cis'\fermata fis'
          fis'8 [eis'] fis'4 eis'\fermata
          fis'8 [e']
          dis' [e'] fis' [dis'] e'4\fermata gis'8 [eis']
          fis'4 a'8 [fis'] d'4 b'8 [gis']
          a' [g'] fis'4. eis'8 fis'4~
          fis'8 eis'16 [dis'] eis'4 cis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wir Chri -- sten -- leut'; Wir Chri -- sten -- leut'; hab'n jetz -- und Freud', weil uns zu Trost ist Chri -- stus Mensch ge -- bo -- ren; hat uns er -- löst, wer sich des tröst't und gläu -- bet fest, soll nicht wer -- den ver -- lo ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [b]
          cis'4 cis'8 [b] a4\fermata b
          cis' cis'8 [b] a4\fermata a
          b cis' cis'\fermata
          cis'
          cis' d' d'8 [e'16 fis'] e'8 [d']
          cis'4 b8 [a] d' [cis'] cis' [d']
          d' [b] gis [cis'] a4\fermata a
          b8 [cis'] dis'4 cis'\fermata
          cis'
          fis b b\fermata cis'
          cis'8 [a] d'4 d'8 [b] e'4
          e'8 [cis'] fis' [e'] d' [cis'] dis'4
          cis'8 [gis] cis' [b] a4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis4
          fis8 [a] cis' [cis] d4\fermata d
          cis8 [b,] cis4 fis\fermata fis
          gis a8 [b] cis'4\fermata
          cis
          fis8 [e] d [cis] d [b,] e4
          a,8 [a] gis fis~ fis eis fis [d]
          b, [gis,] cis4 fis,\fermata fis8 [e]
          d [cis] bis,4 cis\fermata
          a,
          b,8 [cis] dis [b,] e4\fermata eis8 [cis]
          fis4 fis8 [d] g4 gis8 [e]
          a4 ais8 [fis] b4 bis8 [gis]
          cis' [b] cis' [cis] fis4\fermata \fine
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
