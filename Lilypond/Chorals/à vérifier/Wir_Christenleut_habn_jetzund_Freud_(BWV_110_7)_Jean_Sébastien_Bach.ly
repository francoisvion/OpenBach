\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wir Christenleut habn jetzund Freud"
  opus = "BWV 110/7"
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
          \partial 4  b'8 [cis'']
          d''4 cis'' b'\fermata b'8 [cis'']
          d''4 cis'' b'\fermata fis''
          e'' d'' cis''\fermata cis''
          d'' d'' e'' e''
          fis'' fis'' e'' d''
          cis''2 b'4\fermata fis''
          e'' d'' cis''\fermata fis''
          e'' d'' cis''\fermata cis''
          d'' d'' e'' e''
          fis'' fis'' e'' d''
          cis''2 b'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          b' ais' fis'\fermata fis'
          b' ais' fis'\fermata fis'8 [g']
          a'4 fis' fis'\fermata fis'
          fis' fis' b' a'
          a' a'8 [b'] cis''4 fis'
          fis'4. e'8 d'4\fermata b'
          b'8 [ais'] b'4 ais'\fermata b'8 [a']
          gis'4 a'8 [b'] a'4\fermata a'
          a'8 [g'] fis'4 b'8 [a'] gis'4
          cis'' b'8 [ais'] b'4 b'
          b' ais' fis'\fermata \fine
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
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'8 [e']
          fis'4 fis'8 [e'] d'4\fermata d'8 [e']
          fis'4 fis'8 [e'] d'4\fermata a8 [b]
          cis'4 b ais\fermata ais
          b8 [cis'] d'4 d' cis'
          d' d' cis' b
          b ais fis\fermata d'
          e' fis' fis'\fermata fis'
          b fis'8 [e'] e'4\fermata e'
          fis'8 [e'] d' [cis'] b4 e'
          e' d'8 [cis'] b [cis'] d' [e']
          fis'4. e'8 dis'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b,4
          b fis d\fermata b,
          b fis d\fermata d
          a b fis\fermata fis
          b b8 [a] g [e] a [g]
          fis [e] d [cis] b, [ais,] b,4
          fis,2 b,4\fermata b,
          cis d8 [e] fis4\fermata d
          e fis8 [gis] a4\fermata a8 [g]
          fis4 b8 [a] gis4 cis'8 [b]
          ais4 d' gis8 [ais] b4
          fis2 b,4\fermata \fine
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
