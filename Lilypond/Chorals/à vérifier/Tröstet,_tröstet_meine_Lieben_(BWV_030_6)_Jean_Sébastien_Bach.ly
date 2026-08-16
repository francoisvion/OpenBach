\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Tröstet, tröstet meine Lieben"
  opus = "BWV 30/6"
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
          a'4 b' cis'' b'
          a' gis' fis'2
          e'\fermata a'4 b'
          cis'' d'' cis'' b'
          a'1\fermata
          cis''4 d'' e'' d''
          cis'' b' cis''2\fermata
          e''4 e'' fis'' e''
          d'' cis'' b'2\fermata
          cis''8 [d''] e''4 d'' cis''8 [b']
          a'4 b' cis''2
          a'\fermata cis''8 [d''] e''4
          d'' cis'' b' cis''8. [d''16]
          b'2 a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          e'4 e' a' dis'
          e'8 [fis'] fis' [e'] e'4 dis'
          b2\fermata fis'4 fis'8 [e']
          fis'4 b' b'8 [a'] a' [gis']
          e'1\fermata
          a'4 a'8 [g'] g'4 fis'8 [gis']
          ais'4 b'8 [b] fis'2\fermata
          e'4 a'8 [g'] fis'4 gis'
          a'8 e'4 fis'8 gis'2\fermata
          a'4 b' a' gis'
          gis'8 [fis'] fis' [gis'] a'4 gis'
          fis'2\fermata ais'4 b'8 [fis']
          fis' [gis'] a'4 gis' a'
          a'8 [gis'16 fis'] gis'4 e'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Freu' dich sehr, o mei -- ne Seel -- le, und ver -- giss all Noth und Qual,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      weil dich nun Chris -- tus, dein Her -- re, ruft aus die -- sem Jam -- mer -- thal. Sei -- ne Freud' und Herr -- lich -- keit sollst du sehn' in E -- wig -- keit, mit den Eng -- eln ju -- bi -- lie -- ren, e -- wig, e -- wig tri -- um -- phie -- ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          cis'4 e' e'8 [fis'] fis' [gis']
          cis' [b] b4 cis' b8 [a]
          gis2\fermata cis'4 b
          b8 [a] a [gis] e'4 e'8 [d']
          cis'1\fermata
          e'4 b b8 [ais] b4
          fis8 fis'4 e'8 ais2\fermata
          a8 [b] cis'4 cis'8 [b] b [cis']
          cis' [b] cis' [dis'] e'2\fermata
          e'4 e' a8 [b] cis'4
          cis' d'8 [b] fis'4. eis'8
          cis'2\fermata fis'4 b8 [cis']
          d'4 e' e' e'
          e'4. d'8 cis'2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          a,4 gis, a, b,
          cis8 [dis] e4 a, b,
          e,2\fermata fis,4 gis,
          a, b, cis8 [d] e4
          a,1\fermata
          a,4 b, cis d8 [e]
          fis4 g fis2\fermata
          cis8 [b,] a,4 d e
          fis8 [gis] a4 e2\fermata
          a4 a8 [gis] fis4 eis
          fis8 [e] d4 a,8 [b,] cis4
          fis,2\fermata fis,4 gis,8 [ais,]
          b,4 cis8 [d] e [d] cis [a,]
          e4 e, a,2\fermata \fine
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
