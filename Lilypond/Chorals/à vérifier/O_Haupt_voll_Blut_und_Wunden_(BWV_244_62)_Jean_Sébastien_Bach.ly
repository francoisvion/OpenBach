\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Haupt voll Blut und Wunden"
  opus = "BWV 244/62"
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
          c'' b'8 [c''16 d''] c''4 b'8 [a']
          a'2.\fermata
          c''4
          b'8 [a'] g'4 a' b'
          c''2 c''4\fermata g'
          a' g' f'8 [e'] f'4
          e'2.\fermata
          c''4
          b'8 [c''] d''4 c'' b'
          a'2 b'4\fermata e'
          f' e' d' g'
          e'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          c'8 [d'] e'4 a8 [b] c'4
          c' b c'\fermata e'
          e' f' e' d'8 [c']
          c'2.\fermata
          e'4
          fis' e' f' f'
          g' f' e'\fermata e'
          e'8 [d'] cis' [d'] e'4. d'8
          d'4 cis'2\fermata
          a'4
          g' g' g'8 [a'] b' [g']
          g'4 fis' g'\fermata c'
          d' c' d' e'8 [d']
          d'4 c' b\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      O Haupt voll Blut und Wun -- den, voll Schmerz und vol -- ler Hohn!
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      O Haupt, zu Spott ge -- bun -- den mit ei -- ner Dor -- nen -- kron! O Haupt, sonst schön ge -- zie -- ret mit höch -- ster Ehr und Zier. jetzt ab -- er hoch schim -- pfi -- ret: ge -- grü -- sset seist du mir!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a8 [b] c'4 d' g
          a g g\fermata b
          a a a gis
          e2.\fermata
          a8 [g]
          fis4 b c' d'
          c'8 bes4 aes8 g4\fermata c'8 [bes]
          a4 bes a a
          a2.\fermata
          d'4
          d' d'8 [e'16 f'] e'4 d'
          e' d' d'\fermata g
          g g g8 [a] bes4
          b a gis\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a8 [g]
          f4 e d c
          fis, g, c\fermata gis,
          a, d e e,
          a,2.\fermata
          a4
          dis e ees d
          e f c\fermata c
          f e8 [d] cis4 d
          a,2.\fermata
          fis4
          g8 [a] b4 e8 [fis] g4
          cis d g,\fermata c
          b, c bes,8 [a,] g,4
          gis, a, e,\fermata \fine
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
