\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzlich lieb hab ich dich, o Herr"
  opus = "BWV 174/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          cis'' b' a' g'8 [fis']
          b'4 b' a'\fermata d''
          cis'' b' a' g'8 [fis']
          b'4 b' a'\fermata a'
          b' cis'' d''8 [e''] fis''4
          e''8 [d''] e''4 d''\fermata
          d''
          d'' e'' d'' b'8 [cis'']
          d''4 d'' cis''\fermata cis''
          d'' e'' d'' b'8 [cis'']
          d''4 d'' cis''\fermata fis''
          g''8 [fis''] e''4 fis''8 [e''] d''4
          d'' cis'' d''\fermata cis''
          d'' cis'' b' a'
          a' gis' a'\fermata fis''
          e'' d'' cis''\fermata fis''
          g''8 [fis''] e''4 fis''8 [e''] d''4
          d'' cis'' d''\fermata d''
          d'' d'' e'' d''
          d'' cis'' d''\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          e'8 [fis'] g' [fis'] e'4 d'
          d' d' d'\fermata fis'8 [eis']
          fis' [e'] d' [e'] fis' [e'] d' [fis']
          fis'4 eis' fis'\fermata fis'8 [e']
          d' [b'] a' [g'] fis' [g'] a' [b']
          e' [fis'] g'4 fis'\fermata
          a'
          a'8 g'4 fis'8 fis'4 e'
          e' e' e'\fermata e'
          fis' g' fis' e'
          d'8 [e'] fis'4 fis'\fermata fis'
          e' e' a'8 [g'] fis'4
          e' e' fis'\fermata g'
          fis' e'8 [fis'] gis'4 fis'
          fis' e' e'\fermata d''
          ais' b' ais'\fermata cis''
          b' b'8 [a'] a'4 a'
          e' fis' fis'\fermata a'
          a' g'8 [fis'] g'4 fis'
          e'8 [d'] e'4 fis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herz -- lich lieb hab' ich dich, o Herr, ich bitt': woll'st sein von mir nicht fern mit dei -- ner Hilf' und Gna -- den.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Die gan -- ze Welt er -- freut mich nicht, nach Himm'l und Er -- de frag' ich nicht, wenn ich dich nur kann ha -- ben. Herr, wenn mir gleich mein Herz zer -- bricht, so bist du doch mein' Zu -- ver -- sicht, mein Heil und mei -- nes Herz -- ens Trost, der mich durch sein Blut hat er -- löst. Herr Je -- su Christ. mein Gott und Herr, mein Gott und Herr, in Schan -- den lass mich nim -- mer -- mehr.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [b]
          cis'4 d' e'8 [a] a4
          a g fis\fermata fis8 [gis]
          a4 b cis' d'8 [cis']
          b4 cis' cis'\fermata d'8 [cis']
          b [g'] fis' [e'] d'4 d'
          d' cis' a\fermata
          fis'8 [e']
          d'4 cis' b8 [cis'] d'4
          gis8 [a] b4 a\fermata a
          a a a g
          fis b ais\fermata b
          b cis' cis' d'8 [cis']
          b4 a a\fermata e'
          a8 [b] cis'4 d' cis'
          b b cis'\fermata a8 [b]
          cis'4 fis fis'\fermata fis'8 [e']
          d'4 e' d' d'8 [cis']
          b4 cis' b\fermata d'8 [c']
          b4 b b8 [a] a4
          a a a\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          a, b, cis d
          g,8 [a,] b, [cis] d4\fermata b,
          fis g a b8 [a]
          gis4 cis fis\fermata r
          g a b a8 [g]
          a4 a, d\fermata
          d'8 [cis']
          b4 ais b8 [a] gis [fis]
          e [fis] gis [e] a4\fermata a8 [g]
          fis [e] d [cis] d4 e
          b,8 [cis] d [e] fis4\fermata dis
          e a8 [g] fis4 b8 [a]
          gis4 a d\fermata e
          fis8 [gis] a4 eis fis8 [e]
          dis4 e a,\fermata d
          cis b, fis\fermata ais
          b cis' d' fis
          gis ais b\fermata fis
          g8 [a] b4 cis d
          a a, d\fermata \fine
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
