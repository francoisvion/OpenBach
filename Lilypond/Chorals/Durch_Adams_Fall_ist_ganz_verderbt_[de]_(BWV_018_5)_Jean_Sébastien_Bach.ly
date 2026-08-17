\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich bitt, o Herr, aus Herzens Grund"
 subtitle = "tiré de la cantate : Gleichwie der Regen und Schnee vom Himmel fällt "
  opus = "BWV 18/5"
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
          \partial 4  a'4
          a' a' g' a'
          f' e' d'\fermata a'8 [b']
          c''4 d'' a' b'
          c'' b' a'\fermata } c''
          c'' c''8 [bes'] a' [g'] f' [g']
          a'4 g' f'\fermata a'
          a' a' g' f'8 [e']
          e'2 d'4\fermata
          a'
          a' g' a' b'
          c''8 [b'] a'4 g'\fermata d''
          e'' d'' a'8 [b'] c''4
          b' a' b'2
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          f' f' f' e'~
          e'8 d'4 cis'8 d'4\fermata f'
          e' d'8 [e'] f'4 f'
          e' d' cis'\fermata } a'
          g'8 [f'] e' [d'] c'4 d'8 [e']
          f'4 e' f'\fermata c'8 [d']
          e'4 d' d' d'
          d' cis' d'\fermata e'
          f'4. e'8 f' [a'] g' [f']
          e' [d'] c'4 b\fermata g'
          g' f'8 [e'] d'4 e'
          e'8 [d'] c'4 f' e'8 [d']
          cis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich bitt, o Herr, aus Her -- zens Grund,
      du wollst nicht von mir neh - men
      mein Sünd und Schuld, denn in dein Huld
      setz ich all mein Ver -- trau -- en.
      Wer sich nur fest da -- rauf ver -- läßt,
      der wird den Tod nicht schau - - en.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dein heil -- ges Wort aus mei -- nem Mund;
      so wird mich nicht be -- schä - men
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
          \partial 4  a4
          d' d' d' a
          a4. g8 f4\fermata d'
          c'8 [b] a4 d' d'
          gis8 a4 gis8 a4\fermata }
          e'
          c' g a a8 [bes]
          c'4. bes8 a4\fermata a
          a8 [g] f4 g8 [a] bes4
          a4. g8 f4\fermata a
          d'8 [c'] bes4 c' d'
          g4. fis8 g4\fermata b
          c'8 [b] a [gis] a4 a
          gis a2 gis4
          a2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  cis4
          d8 [e] f4 b, cis
          d a, d\fermata d
          a8 [g] f [e] d [c] b, [a,]
          e2 a,4\fermata } a
          e8 [d] c4 f8 [e] d4
          a,8 [bes,] c4 f,\fermata f
          cis d8 [c] bes, [a,] g,4
          a,2 d4\fermata cis
          d g f8 [e] d4
          c d g,\fermata g
          c d8 [e] f4 c8 [d]
          e4 f8 [e] d4 e
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
