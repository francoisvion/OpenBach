\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Welt, sieh hier dein Leben (III)"
  opus = "BWV 395"
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
          \partial 4  cis''4
          a' b' cis''8 [d''] e''4
          d''2 cis''4\fermata cis''8 [d'']
          e''4 e'' b' cis''8 [b']
          a'2 gis'4\fermata
          \partial 4  e'
          a' b' cis''8 [d''16 e''] d''8 [cis'']
          b'2.\fermata cis''4
          a' b' cis''8 [d''] e''4
          d''2 cis''4\fermata
          \partial 4  cis''8 [d'']
          e''4 e'' b' cis''
          a'2 gis'4\fermata e'
          a' b' cis''8 [d'' e'' d'']
          cis''4 b' a'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          fis' gis' a'8 [b'] cis''4
          cis'' b'8 [a'] gis'4\fermata fis'
          e' a' gis' gis'
          gis'8 [fis' e' dis'] e'4\fermata
          \partial 4  b
          e' fis'8 [gis'] a' [b'16 cis''] b'8 [a']
          gis'2.\fermata gis'4
          fis'4. e'8 e'4 fis'
          fis' eis' fis'\fermata
          \partial 4 fis'
          e' a'8 [gis'] fis'4 e'8 [dis'16 cis']
          fis'2 e'4\fermata b
          e' fis'8 [gis'] a'2~
          a'4 gis' e'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Welt, sieh' hier dein Le -- ben am Stamm des Kreu -- zes schwe -- ben, dein Heil sinkt in den Tod, der gro -- sse Fürst der Eh -- ren lässt wil -- lig sich be -- schwe -- ren mit Schlä -- gen, Hohn und gro -- ssem Spott.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  e'4
          d' d' e'8 [d' cis' b]
          a4 b cis'\fermata a
          a e' e' eis'
          cis' b b\fermata
          \partial 4  gis
          a d' e' fis'
          b2.\fermata gis4
          cis' b a8 [b] cis'4
          b gis ais\fermata
          \partial 4 a
          a a a gis
          cis' b b\fermata gis
          a d' e'4. fis'8
          e'4 d' cis'\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          d' cis'8 [b] a4. g8
          fis4 gis8 [fis] eis4\fermata fis
          cis8 [b, cis d] e [d] cis4
          fis b, e\fermata
          \partial 4  d
          cis b, a, d
          e2.\fermata eis4
          fis gis a ais
          b2 fis4\fermata
          \partial 4 fis
          cis8 [b,] cis4 dis e
          e dis e\fermata d
          cis b, a,8 [b, cis d]
          e4 e a,\fermata \bar "|."
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
