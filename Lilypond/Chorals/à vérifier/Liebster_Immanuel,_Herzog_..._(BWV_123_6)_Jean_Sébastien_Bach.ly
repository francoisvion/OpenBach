\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Liebster Immanuel, Herzog ..."
  opus = "BWV 123/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 3/2
      <<
        \new Voice = "soprano" {
          \voiceOne
          d''2 d'' d''
          cis''2. b'4 a'2\fermata
          b' g' fis'4 e'
          e'1 d'2\fermata
          a' a' fis'
          b'2. cis''4 d''2
          d'4 e' e'2. fis'4
          fis'1.\fermata
          fis'2 fis' g'
          a' fis'1\fermata
          b'2 ais' b'
          cis'' ais'1\fermata
          d''2 cis'' b'
          ais'2. fis'4 b'2
          cis''4 d'' ais'2. b'4
          b'1.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          fis'2 fis' eis'4 fis'
          gis'2 eis' fis'\fermata
          g' e' d'
          d' cis' a\fermata
          d' e' d'
          d' g' fis'
          fis' e'4 d' cis' b
          cis'1.\fermata
          d'2 d' d'
          e' d'1\fermata
          fis'2 e' fis'
          fis' fis'1\fermata
          fis'2 g' e'
          fis'2. fis'4 fis'2
          g' fis' fis'
          fis'1.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Lieb -- ster Im -- ma -- nu -- el, Her -- zog der From -- men, du mei -- ner See -- len Trost, komm, komm nur bald!
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Du hast mir, höch -- ster Schatz! mein Herz ge -- nom -- men, so ganz vor Lie -- be brennt und nach dir wallt. Nichts kann auf Er -- den mir lie -- ber wer -- den wenn ich, o Je -- su, dich nur stets be -- halt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 3/2
      <<
        \new Voice = "tenor" {
          \voiceOne
          b2 b b4 a
          gis2 cis' cis'\fermata
          d' e'4 a a2
          a2. g4 fis2\fermata
          a a a
          g4 a b2 b
          b b e'
          ais1.\fermata
          b2 b b
          a a1\fermata
          b2 cis' d'
          ais cis'1\fermata
          b2 ais b
          cis'2. cis'4 b2
          e'4 d' cis'2 cis'
          dis'1.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          b,2 b4 a gis fis
          eis2 cis fis\fermata
          b, cis d
          a a, d\fermata
          fis cis d
          g e b,
          g, g, g
          fis1.\fermata
          b,2 d e
          cis d1\fermata
          d2 cis b,
          fis fis1\fermata
          b2 e g
          fis e d
          e fis fis,
          b,1.\fermata \fine
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
