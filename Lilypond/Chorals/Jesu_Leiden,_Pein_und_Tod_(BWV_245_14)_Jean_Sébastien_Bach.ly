\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu Leiden, Pein und Tod"
 subtitle = "tiré de la Passion selon saint Jean"
  opus = "BWV 245/14"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          cis''4 b' a' b'
          cis'' d'' e''2\fermata
          fis''4 e'' d'' cis''8 [b']
          b'2 a'\fermata
          cis''4 e'' d'' cis''
          b' a' gis'2\fermata
          a'4 b' cis'' cis''8 [d''16 e'']
          d''2 cis''\fermata
          cis''8 [b'] cis'' [d''] e''4 d''
          cis'' b' cis''2\fermata
          b'4 b' cis''8 [dis''] e''4
          e'' dis'' e''2\fermata
          e''4 cis'' fis''4. e''8
          d''4 cis''8 [b'] b'2\fermata
          cis''4 cis''8 [d''16 e''] d''4 cis''8 [b']
          b'2 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          a'4 gis' fis' e'
          e' fis' g'2\fermata
          fis'4 gis' a'8 [b'] e' [a']
          a'4 gis' e'2\fermata
          a'4 b' a' a'
          gis' fis' eis'2\fermata
          fis'4 e' e' fis'
          fis'8 [a'] gis' [fis'] gis'2\fermata
          fis'4 fis' cis'8 [gis'] a' [b']
          a'4 gis' a'2\fermata
          fis'4 e' a' b'
          cis'' b'8 [a'] gis'2\fermata
          gis'4 a' a' g'
          g'8 [fis'] e'4 d'2\fermata
          fis'4 e'8 [fis'] gis'4 a'
          a'8 [fis'] gis'4 e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Pe -- trus, der nicht denkt zu -- rück,
      sei -- nen Gott ver -- nei -- net,
      der doch auf ein ern -- sten Blick
      bit -- ter -- li -- chen wei -- net.
      Je -- su, bli -- cke mich auch an,
      wenn ich nicht will bü - ßen;
      wenn ich Bö -- ses hab ge -- tan,
      rüh -- re mein Ge -- wis -- sen!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          fis'4 cis' cis' b
          a a a2\fermata
          d'4 cis' cis'8 [b] cis' [d']
          e'4 d'8 [cis'] cis'2\fermata
          e'4 e' fis' e'
          d' cis' cis'2\fermata
          cis'4 b a8 [b] cis'4
          cis' b8 [a] b2\fermata
          a4 a' gis' fis'
          e' e' e'2\fermata
          dis'4 e' e'8 [fis'] g'4
          fis' b b2\fermata
          cis'4 cis' c' b8 [ais]
          b4 ais b2\fermata
          a4 a b e
          e' d'16 [cis' d'8] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          fis4 eis fis gis
          a fis cis2\fermata
          d4 e fis8 [gis] a4
          e2 a,\fermata
          a4 gis fis8 [gis] a4
          eis fis cis2\fermata
          fis4 gis a ais
          b2 eis\fermata
          fis8 [gis] a [b] cis'4 fis8 [gis]
          a4 e a,2\fermata
          a4 gis g fis8 [e]
          ais,4 b, e,2\fermata
          cis4 fis d g
          e fis b,2\fermata
          fis8 [e] d [cis] b,4 cis8 [d]
          e2 a,\fermata \fine
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
