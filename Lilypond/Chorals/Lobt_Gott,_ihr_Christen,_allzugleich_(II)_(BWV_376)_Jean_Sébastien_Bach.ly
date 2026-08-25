\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Lobt Gott, ihr Christen, allzugleich (II)"
 poet = "Auteur : Nikolaus Herman (v.1480-1561)"
  opus = "BWV 376"
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
          \partial 4  a'4
          e'' e'' e'' e''
          fis'' e''8 [d''] cis''4\fermata b'
          cis''8 [dis''] e''4 e''8 [fis''] dis''4
          e''2.\fermata e''4
          e'' e'' e''8 [d''] cis'' [d'']
          e''4 d''8 [cis''] b'4\fermata e''
          d'' cis'' b' b'8 [cis'']
           a' [b'] cis'' [d''] e''4\fermata e''
          d'' cis'' b' b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'8 [fis'] gis'4 a' a'
          a' gis' e'\fermata e'
          e'8 [fis'] gis'4 fis' gis'8 [a']
          gis'2.\fermata gis'4
          a' gis'8 [fis'] e'4 e'8 [d']
          cis' [a] fis'4 gis'\fermata cis''8 [b']
          a'4. gis'8 fis'4 gis'
          fis'8 [gis'] a' [b'] cis''4 fis'
          fis'8 [gis'] a'4 a' gis'
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Lobt Gott, ihr Chris -- ten all -- zu -- gleich,
      in sei -- nem höch -- sten Thron,
      der heut' auf schleußt sein Him -- mel -- reich
      und schenkt uns sei -- nen Sohn, __ _ _
      und schenkt uns sei -- nen Sohn.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'4
          b e'8 [d'] cis' [d'] e'4
          d'8 [cis'] b4 a\fermata gis
          a b b b
          b2.\fermata b4
          cis' b8 [a] b4 a
          a a e'\fermata gis
          a8 [b] cis' [a] d'4. cis'8
          cis'4 fis gis cis'
          d'8 [e'] fis'4 fis' e'8 [d']
          cis'2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          gis e a8 [b] cis' [a]
          d4 e a,\fermata e
          a gis8 [a] b4 b,
          e2.\fermata e8 [d]
          cis [d] e [fis] gis [e] a4
          cis d e\fermata cis
          fis8 [gis] a4. gis8 fis [eis]
          fis4 e8 [d] cis4\fermata ais
          b fis8 [e] d [b,] e4
          a,2.\fermata \fine
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
