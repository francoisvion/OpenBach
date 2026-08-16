\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Befiehl du deine Wege"
  opus = "BWV 153/5"
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
          \partial 4  e'4
          a' g' f' e'
          d'2 e'4\fermata b'
          c'' c'' b' b'
          a'2.\fermata
          c''4
          b' g' a' b'
          c''2 c''4\fermata g'
          a' g' a' f'
          e'2.\fermata
          c''4
          b'8 [c''] d''4 c'' b'
          a'2 b'4\fermata e'
          f' e' d' g'
          e'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  b4
          e' e' d' cis'
          d'2 cis'4\fermata e'
          dis' e' fis' e'8 [d']
          c'2.\fermata
          e'8 [fis']
          g'4 d' e' f'
          g' f' e'\fermata g'
          f' e'8 [d'] e'4 d'
          cis'2.\fermata
          d'4
          d' g'4. fis'8 g'4
          g' fis' g'\fermata g'
          d' c' c' b8 [c']
          d'4\fermata c' b \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Und ob gleich al -- le Teu -- fel dir woll -- ten wi -- der -- stehn, was er ihm vor -- ge -- nom -- men und was er ha -- ben will, das muss doch end -- lich kom -- men zu sei -- nem Zweck und Ziel.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  gis4
          a bes a g
          a8 [g16 f] g8 [d] a4\fermata b
          a a a gis
          a2.\fermata
          a4
          d' b c' d'
          c'8 [bes] a4 g\fermata c'
          c' cis'8 [d'] a4 a
          a2.\fermata
          a4
          g8 [a] b4 c' d'
          e' d' d'\fermata c'8 [b]
          a4 g a g8 [a]
          b4\fermata a gis \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          c cis d e
          f bes, a,\fermata g
          fis e dis e
          a,2.\fermata
          a4
          g f e d
          e f c\fermata e
          f bes cis d
          a,2.\fermata
          fis4
          g g, a, b,
          c d g,\fermata c
          d e fis g
          gis a e\fermata \fine
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
