\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Sei Lob und Ehr dem höchsten Gut (vv. 4, 9)"
  opus = "BWV 117/4"
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
          \partial 4  d''4
          d'' d'' d''8 [e''] f''4
          e'' d'' c''\fermata d''
          b'8 [a'] g' [a'] b'4 cis''
          d'' e'' d''\fermata
          d''
          g'' fis'' e'' fis''
          g''8 [fis''] e''4 d''\fermata d''
          g'' d'' e'' b'8 [c'']
          d''4 c'' b'\fermata b'
          a'8 [b'] c''4 b' a'
          e' fis' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          a' g'8 [fis'] g'4 c'8 [d']
          e'8. [f'16] g'4 g'\fermata a'
          g' d' g'8 [fis'] e'4
          a'8 [fis'] g'4 fis'\fermata
          b'
          b' a'8 [b'] cis''4 cis''
          d'' a'8 [g'] fis'4\fermata g'
          g' g' g' g'
          a'8 [b'] e' [a'] gis'4\fermata g'
          a' g'8 [a'] b' [g'] e'4
          e' d' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Sei Lob und Ehr' cem höch -- sten Gut, dem Va -- ter al -- ler Gü -- te,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dem Gott, der al -- le Wun -- der thut, dem Gott, der mein Ge -- mü -- the mit sei -- nem rei -- chen Trost er -- füllt, dem Gott, der al -- len Jam -- mer stillt: gebt un -- serm Gott die Eh -- re!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          a b8 [c'] b4 a
          g8 [c'] c' [b] e'4\fermata d'
          d'8 [c'] b [a] g4 a
          a8 d'4 cis'8 d'4\fermata
          d'
          d'8 [e'] fis' [g'] a' [g'] fis' [e']
          d'4 cis' a\fermata b
          b8 [c'] d'4 c' g8 [e']
          d' [b] c' [e'16 dis'] e'4\fermata d'
          d' e' d' c'8 [b]
          a2 b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis d g, a,8 [b,]
          c4 g, c\fermata fis,
          g,4. fis,8 e, [fis,] g, [a,]
          fis, [d,] a,4 d,\fermata
          g8 [a]
          b [cis'] d'4 a ais
          b8 [g] a4 d\fermata g8 [fis]
          e [d] c [b,] c [d] e4
          fis8 [gis] a4 e\fermata g
          fis e8 [fis] g4 c
          cis d g,\fermata \fine
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
