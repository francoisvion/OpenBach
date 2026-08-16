\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Du Lebensfürst, Herr Jesu Christ (vv. 1, 13)"
  opus = "BWV 43/11"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 g' a'
          b'4. c''8 d''4
          d'' d'' cis''
          d''2\fermata b'4
          c''2 b'4
          a'2.
          g'4 fis'2
          g'2.\fermata
          a'4 a' b'
          c''2 c''4
          b'4. a'8 b'4
          a'2.\fermata
          b'4 b' b'
          c''4. d''8 e''4
          e'' dis'' dis''
          e''2\fermata
          fis''4
          g''2 b'4
          c''2 b'4
          a' a'\fermata d''
          e''4. d''8 c''4
          b' a'2
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          d'4 e' fis'
          g'2.
          g'4 e' e'
          fis'2\fermata g'4
          e'2 d'4
          d'2.
          b4 d'2
          d'2.\fermata
          d'4 d' d'
          c'2 e'4
          e'2 e'4
          c'2.\fermata
          e'4 gis' gis'
          a'2.
          a'4 fis' fis'
          g'2\fermata
          a'4
          b'2 g'4
          g'2 g'4
          fis' fis'\fermata g'
          g'4. fis'8 e'4
          d' d'2
          d'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Er -- mun -- tre dich mein schwa -- cher Geist, und tra -- ge gross' Ver -- lan -- gen,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      ein klei -- nes Kind, das Va -- ter heisst, mit Freu -- den zu em -- pfan -- gen: Dies ist die Nacht, da -- rin es kam, und mensch -- lich We -- sen an sich nahm, da -- durch die Welt mit Treu -- en als sei -- ne Bräut zu frei'n.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          b4 b d'
          d'4. c'8 b4
          b a a
          a2\fermata g4
          g2 g4
          fis2.
          e4 a2
          b2.\fermata
          fis4 fis gis
          a2 a4
          gis4. a8 gis4
          a2.\fermata
          gis4 b e'
          e'4. d'8 c'4
          c' b b
          b2\fermata
          d'4
          d'2 d'4
          e'2 d'4
          d' d'\fermata d'
          c'4. a8 g4
          g g fis
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g4 e d
          g4. a8 b4
          g a a,
          d2\fermata g4
          c2 g,4
          d2.
          e4 d2
          g,2.\fermata
          d4 d b,
          a,2 c4
          e2 e4
          a,2.\fermata
          e4 e e
          a4. b8 c'4
          a b b
          e2\fermata
          d4
          g2 g4
          c2 g,4
          d d\fermata b,
          c4. d8 e4
          g d2
          g,2.\fermata \fine
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
