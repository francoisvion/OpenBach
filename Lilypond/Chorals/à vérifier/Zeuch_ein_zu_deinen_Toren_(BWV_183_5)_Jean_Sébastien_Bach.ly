\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Zeuch ein zu deinen Toren"
  opus = "BWV 183/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' b' c'' d''
          b'8 c''~ c'' b'16 [c''] d''4\fermata e''
          d''8 [c''] b' [a'] b'4 b'8 [a']
          a'2.\fermata
          e''4
          d'' c'' b' a'
          b'2.\fermata b'4
          c'' d'' e'' e''
          d''8 [c''] b' [c''] b'4\fermata
          b'
          c'' d'' e'' e''
          d''8 [c''] b' [c''] b'4\fermata e''
          d''8 [c''] b' [a'] b'4 b'8 [a']
          a'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'8 [d']
          e' [f'] e' [d'] c' [d'] a' [fis']
          d' [g'] e' [a'] gis'4\fermata b'8 [gis']
          e'4. a'8 a' [b'] gis'4
          e'2.\fermata
          a'8 [g']
          fis' [gis'] a'4 a'8 [gis'] a' [d'']
          gis'2.\fermata gis'4
          a' g' g' c''8 [b']
          a' [g'] fis'4 g'\fermata
          b'
          a' g' g' g'
          fis'8 [gis'] a'4 gis'\fermata c''8 [b']
          a'4 gis'8 [a'] a' [fis'] gis'4
          e'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Helft mir Gott's Gü -- te prei -- sen, ihr lie -- Kin -- der -- lein,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      mit G'sang und an -- dern Wei -- sen ihm all -- dank -- bar sein; vor -- nehm -- lich zu der Zeit, da sich das Jahr thut en -- den, die Sonn' sich zu uns wen -- den; das neu' Jahr ist nicht weit.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'8 [b]
          c' [d'] c' [b] a [c'] b [a]
          b [e'] c' [f'] e' [d'\fermata] b4
          a8 [b] c' [d'] e' [f'] b [d']
          c'2.\fermata
          c'4
          c'8 [b] e' [f'] b [e'] e' [a]
          e'2.\fermata e'4
          e' d' c'8 [d'] e'4
          a d' d'\fermata
          e'
          e' b c' b
          a8 [e'] d' [a] e'4\fermata a
          d'8 [e'] f' [d'] e'4 d'8 [cis']
          cis'2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          a gis a fis
          g8 a~ a g16 [a] b4\fermata gis
          a f e8 [d] e4
          a,2.\fermata
          a,4
          b, c8 [d] e4 f
          e2.\fermata e4
          a8 [b] c' [b] c' [b] a [g]
          fis [e] d4 g\fermata
          gis
          a8 [g] f [g] f [e] d [c]
          d [e] f [d] e4\fermata c
          f8 [e] d [f] e [d] e4
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
