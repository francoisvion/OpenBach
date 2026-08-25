\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Von Gott will ich nicht lassen (I)"
 poet = "Ludwig Helmbold"
  opus = "BWV 417"
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
          \partial 4  fis'4
          b' cis'' d'' e''
          cis''4. b'8 a'4\fermata a'
          b' b' cis''8 [b'] cis''4
          fis'2.\fermata } fis''4
          e'' d'' d'' cis''
          d''2.\fermata cis''4
          d'' e'' fis'' fis''
          e''4. d''8 cis''4\fermata cis''8 [d''16 e'']
          d''4 cis''8. [b'16] b'4 b'8 [cis''16 d'']
          cis''4. b'8 a'4\fermata g'
          fis' b' b'8 [cis''] ais'4
          b'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  cis'4
          fis' e' d'8 [fis'] b' [gis']
          gis' [fis'] eis'16 [dis' eis'8] fis'4\fermata fis'
          fis' e'8 [d'] e'4 e'8 [fis'16 e']
          d'2.\fermata } b'4
          b' b' a' a'
          a'2.\fermata a'4
          a' a' a'4. gis'8
          a' [fis'] gis'4 e'\fermata fis'
          fis' fis' g'8 [fis'] g'4
          gis'8 [fis'] eis'4 fis'\fermata fis'8 [e']
          d' [e'] fis' [g'] fis' [g'16 fis'] e'8 [fis'16 e']
          dis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Von Gott will ich nicht la - ßen,
      denn er läßt nicht von mir,
      Er reicht mir sei -- ne Hand,
      den A -- bend wie den Mor - gen
      tut er mich vohl ver -- sor - gen.
      sei wo ich wolf im Land.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      führt mich auf rech -- ter Stra - ßen,
      da ich sonst ir -- ret' sehr.
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
          \partial 4  ais4
          b4. ais8 b4. b8
          b [a] gis [cis'] cis'4\fermata cis'
          b8 [a] g2 fis4
          fis2.\fermata } d'4
          e'8 [fis'] g'4 fis'8 [e'16 d'] e'8 [fis'16 g']
          fis'2.\fermata e'4
          fis' e' d'8 [a] d'4
          cis' b16 [a b8] a4\fermata cis'
          cis'8 [b] cis' [dis'] e' [dis'] e' [b]
          gis [a16 b] cis'4 cis'\fermata d'8 [a]
          a4 d'8 [cis'] d' [e'16 d'] cis'8 [a]
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  fis8 [e]
          d4 cis b,8 [a,] gis, [e]
          a, [b,] cis4 fis,\fermata fis8 [e]
          d [fis] g4 ais, ais,
          b,2.\fermata } b,8 [a,]
          g, [g] fis [e] a4 a,
          d2.\fermata a8 [g]
          fis [e] d [cis] d [e16 fis] b,4
          cis8 [d] e4 a,\fermata ais,
          b,8 b4 a8 g [a16 b] e4
          eis8 [fis16 gis] cis4 fis\fermata b,8 [cis]
          d [cis] d [e] fis [e] fis4
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
