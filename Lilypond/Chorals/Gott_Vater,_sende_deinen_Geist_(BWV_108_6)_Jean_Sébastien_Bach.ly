\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gott Vater, sende deinen Geist"
 subtitle = "tiré de la cantate : Es ist euch gut, dass ich hingehe"
  opus = "BWV 108/6"
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
          \partial 4  b'4
          b' b' fis'' e''
          fis''8 [e''] d''4 cis''\fermata b'8 [cis'']
          d''4 cis'' d''8 [e''] fis''4
          e'' d'' cis''\fermata d''8 [cis'']
          b'4 b' e''4. d''8
          cis'' [d''16 e''] d''8 [cis''] b'2
          a'4\fermata a' d'' cis''
          d''8 [e''] fis''4 e'' d''
          cis''\fermata b'8 [cis''] d''4 cis''
          d''8 [e''] fis''4 e'' d''
          cis''\fermata fis'' fis'' fis''
          e''4. d''8 cis''4 d''8 [e'']
          cis''2 b'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          g' g' fis'8 [gis'] ais' [b']
          cis''4 b' ais'\fermata b'8 [ais']
          b'4 fis' fis' fis'
          b'8 [cis''] fis' [gis'] ais'4\fermata b'
          fis' e'8 [fis'] gis'2
          a'4 a' a' gis'
          e'\fermata fis' b' cis''8 [ais']
          b'4 b' b'8 [cis''] fis'4
          fis'\fermata fis' e' e'
          fis'8 [g'] a'4 g' fis'
          fis'\fermata fis'8 [e'] d' [fis'] b' [a']
          g' [fis'] e'2 d'8 [g']
          g'4 fis'8 [e'] dis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Dein Geist, den Gott vom Him -- mel gibt,
      der lei -- tet al -- les, was ihn licht,
      auf wohl ge -- bähn - - ten We -- ge.
      Er setzt und rich -- tet un -- sern Fuß,
      daß er nicht an -- ders tre -- ten muß,
      als wo man findt __ _ _ den Se -- gen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          e' e' d' g'
          fis' fis' fis'\fermata fis'8 [e']
          fis'4 fis'8 [e'] d' [cis'] b [d']
          d' [cis'] d' [b] cis'4\fermata
          fis'8 [e']
          d' [cis'] b4 b cis'8 [d']
          e'4 a fis' e'8 [d']
          cis'4\fermata d'8 [e'] fis'4 fis'
          fis'8 [e'] d'4 d'8 [cis'] cis' [b]
          ais4\fermata d'8 [cis'] b [g] a4
          a d' d'8 [cis'] cis' [b]
          ais4\fermata cis' cis' b
          b2 a8 [g'] fis' [b]
          b4 ais fis\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b,4
          e8 [fis] g [a] b [d'] cis' [b]
          ais [fis] b [b,] fis4\fermata d8 [cis]
          b, [b] ais [fis] b [cis'] d' [b]
          gis [ais] b [b,] fis4\fermata b,
          b8 [a] gis [fis] e [d] cis [b,]
          a, [cis] fis [e] d [b,] e [e,]
          a,4\fermata d8 [cis] b, [b] ais [fis]
          b [cis'] d' [b] gis [ais] b [b,]
          fis4\fermata b8 [a] gis [e] a [g]
          fis [e] d [cis] b, [ais,] b,4
          fis\fermata ais, b,8 [cis] d [dis]
          e [fis] g [gis] a [ais] b [g]
          e [cis] fis [fis,] b,4\fermata \fine
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
