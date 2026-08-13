\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun danket alle Gott (choral)"
  opus = "BWV 386"
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
          \partial 4  e''4
          e'' e'' fis'' fis''
          e''2\fermata r4 cis''
          d'' cis'' b' cis''8. [d''16]
          b'2 a'4\fermata \bar "|."
          \partial 4  b'
          b' b' cis'' cis''
          b'2\fermata r4 b'
          cis''8 [dis''] e''4 e'' dis''
          e''2\fermata r4
          \partial 4  e''
          fis'' e'' d'' cis''
          d''2\fermata r4 cis''
          b' cis''8. [d''16] b'4. a'8
          a'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          a' a' a' a'
          a'2\fermata r4 a'
          b' a' gis' a'~
          a'8 [fis'] gis'4 e'\fermata \bar "|."
          \partial 4  gis'8 [fis']
          e'4 e' e' e'
          e'2\fermata r4 gis'
          a' gis' fis' fis'
          gis'2\fermata r4
          \partial 4 a'
          a'8 [b'] cis''4. b'4 ais'8
          b'2\fermata r4 a'
          gis' a' a' gis'
          e'2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Nun dan -- ket al -- le Gott mit Her -- zen, Mund und Hän -- den,
      der uns von Mut -- ter -- leib und Kin -- des -- bei -- nen an
      un -- zäh -- lig viel zu gut und noch jetz -- und ge -- tan.
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
          cis' cis' d' d'
          cis'2\fermata r4 fis'
          e' e' e' e'
          e'8 [d'16 cis'] d'4 cis'\fermata \bar "|."
          \partial 4  b8 [a]
          gis [a] b4. a16 [gis] a4
          gis2\fermata r4 e'
          e' e' cis' b
          b2\fermata r4
          \partial 4 cis'
          d' cis' fis' g'8 [fis']
          fis'2\fermata r4 e'
          e' e'8 [fis'] fis' [d' b8. e'16]
          cis'2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a8 [b cis' a] d [e fis d]
          a2\fermata r4 a
          gis a e8 [d cis a,]
          e2 a,4\fermata \bar "|."
          \partial 4  e
          e8 [fis gis e] a, [b, cis a,]
          e,2\fermata r4 e
          a8 [b cis' gis] a [fis b b,]
          e2\fermata r4
          \partial 4 a,
          d8 [cis b, ais,] b, [d e fis]
          b,2\fermata r4 cis8 [d]
          e4 a8 [fis] d [b, e e,]
          a,2.\fermata \bar "|."
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
