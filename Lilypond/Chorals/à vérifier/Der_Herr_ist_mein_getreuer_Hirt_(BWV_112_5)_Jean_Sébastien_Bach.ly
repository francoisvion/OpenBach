\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Der Herr ist mein getreuer Hirt"
  opus = "BWV 112/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'8 [a']
          b'4 c'' d'' c''
          b' a' b'\fermata b'
          b' a'8 [b'] c'' [b'] a'4
          g'8. [a'16] a'4 g'\fermata
          g'
          a' b' c'' b'
          a'4. gis'8 a'4\fermata a'
          b' c'' d'' c''
          b' a' b'\fermata b'
          b' a'8 [b'] c'' [b'] a'4
          g'8. [a'16] a'4 g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'8 [fis']
          g'4 g' fis' e'8 [fis']
          g'4 g'8 [fis'] g'4\fermata g'
          g' fis'8 [g'] a' [g'] fis'4
          g'~ g'8 fis' d'4\fermata
          d'
          d' d' e' e'
          e'8 [c'] f' [e'] e'4\fermata fis'
          g' f' e' e'8 [fis']
          g'4. fis'16 [e'] dis'4\fermata e'
          d'8 [e'] fis' [g'] a' g'4 fis'8
          e' [d'] e' [d'] d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      1. Al -- lein Gott in der Höh' sei Ehr' und Dank für sei -- ne Gna -- de, Ein Wohl -- ge -- fall'n Gott an uns hat, nun ist gross Fried ohn' Un -- ter -- lass, all' Fehd' hat nun ein En -- de.
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      da -- rum, dass nun und nim -- mer -- mehr uns rüh -- ren kann kein Scha -- de! zum fri -- schen Was -- ser leit't er mich, mein' Seel' zu la -- ben kräf -- tig -- lich durch's sel' -- ge Wort der Gna -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b8 [c']
          d'4 e' a a
          d' d' d'\fermata e'
          d' d' e'8 [d'] d' [c']
          b4 e'8 [d'16 c'] b4\fermata
          b
          a g g gis
          a d' c'\fermata a
          d' c' b c'8 [d']
          e'4 e fis\fermata g8 [a]
          b [c'] d' [g] fis [g16 fis] e8 [fis]
          g4. fis8 b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g8 [fis] e4 d a,
          b,8 [c] d4 g,\fermata e
          b,8 [c] d4 a,8 [b,] c [d]
          e [d] c [d] g,4\fermata
          g
          fis f e d
          c8 [f] d [e] a,4\fermata d8 [c]
          b,4 a, gis, a,
          e8 [d] c4 b,\fermata e8 [fis]
          g4 fis8 [e] dis [e] cis [dis]
          e [b,] c [d] g,4\fermata \fine
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
