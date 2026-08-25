\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Aus tiefer Not schrei ich zu dir (v. 5)"
  subtitle = "tiré de la cantate : Aus tiefer Not schrei ich zu dir"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 38/6"
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
          \repeat volta 2 {
          b'2 e'4 b'
          c'' b'8 [a'] g'4 a'
          b'2\fermata b'
          c''4 d'' c''8 [b'] a'4 g'
          f' e'2\fermata }
          a' g'4 c''
          b' a' d''8 [c''] b'4
          a'2\fermata c''
          b'4 c'' d'' g'
          b' a' g'2\fermata
          g' c''4 b'
          a' e' g' f'
          e'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          e'2 e'4 gis'
          a' g'8 [fis'] e'4 fis'
          gis'2\fermata gis'
          a'4 b' c'' f'
          e' d'8 [c'] b2\fermata }
          e' d'4 e'8 [fis']
          g'4 a' b'8 [a'] gis'4
          e'2\fermata a'
          g'4 g' g'8 [f'] e'4
          d' c' b2\fermata
          e' e'4 e'8 [d']
          c'4 c' d'2~
          d'4 c' b2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ob bei uns ist der Sün -- den viel,
      bei Gott ist viel mehr Gna - de,
      Er ist al -- lein der gu -- te Hirt,
      der Is -- ra -- el er -- lö -- sen wird
      aus sei -- nen Sün -- den al - len.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      sein' Hand zu hel -- fen hat kein Ziel,
      Wie groß auch sei der Scha - de.
    }

    \new Lyrics \lyricsto "alto" {
      \repeat unfold 37 {\skip1}
      al - len.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          gis2 a4 d'
          e' d' e'8 [d'] c'4
          b2\fermata e'
          e'4 f' g' c'
          c'8 [b] a4 gis2\fermata }
          a b4 c'
          d' d'8 [e'] f'4 b
          c'2\fermata e'
          e'4 e' d' c'
          fis8 g4 fis8 g2\fermata
          g a4 gis
          a g g a
          b a gis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d2 c4 b,
          a, b, c8 [b,] a,4
          e2\fermata e
          a4 g8 [f] e4 f
          c d e2\fermata }
          c b,4 a,
          g,8 [g] f [e] d4 e
          a,2\fermata a
          e4 d8 [c] b,4 c
          d d, g,2\fermata
          c a,4 e
          f c bes, a,
          gis, a, e,2\fermata \fine
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
