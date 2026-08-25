\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Weg, mein Herz, mit den Gedanken" \small " (v. 12)"}}
  subtitle = "tiré de la cantate : Liebster Jesu, mein Verlangen"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 32/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          \repeat volta 2 {
          g'4 a' b' a'
          g' fis' e' d'\fermata
          g' a' b' c''
          b' a' g'2\fermata }
          b'4 c'' d'' c''
          b' a' b'2\fermata
          d''4 d'' e'' d''
          c'' b' a'2\fermata
          b'4 d'' c'' b'8 [a']
          g'4 a' b'2
          g'\fermata b'8 [c''] d''4
          c'' b' a' b'
          a'2 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'4 d' d' d'
          d'8 [cis'] d'4 cis' a\fermata
          e' d' d' a'
          d' d' d'2\fermata }
          g'4 g' fis' g'
          g'4. fis'8 g'2\fermata
          g'4 g' g'4. fis'8
          e'4 d'8 [e'] fis'2\fermata
          g'4. fis'8 e' [fis'] g' [fis']
          e'4 fis' g'2
          e'\fermata g'4 a'
          g' d'8 [e'] fis'4 g'
          g' fis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mein Gott, öff -- ne mir die Pfor -- ten
      Sol -- cher Gnad und Gü -- tig -- keit,
      Lie -- be mich und treib mich an,
      daß ich dich, so gut ich kann,
      wie -- de -- rum um -- fang und lie -- be
      und ja nun nicht mehr be -- trü -- be.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Laß mich all -- zeit al -- le -- ror -- ten
      Schme -- cken dei -- ne Sü -- ßig -- keit!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          b4 a g4. fis8
          g4 a a8 [g] fis4\fermata
          b a g8 [fis] e [fis]
          g4. fis8 b2\fermata }
          d'4 e' a e'
          d' d' d'2\fermata
          b4 b c'8 [b] a4
          g8 [a] b [cis'] d'2\fermata
          d'8 [c'] b4 c' d'
          e'8 [d'] c'4 d'2
          c'\fermata d'4 d'
          g8 [a] b [c'] d'4 d'
          d'4. c'8 b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g4 fis g d
          e fis8 [g] a4 d\fermata
          e fis g a,
          b,8 [c] d4 g,2\fermata }
          g8 [fis] e4 d e8 [fis]
          g4 d g,2\fermata
          g8 [f] e [d] c4 d
          e8 [fis] g4 d2\fermata
          g4 g, a, b,
          c8 [b,] a,4 g,8 [a,] b, [g,]
          c2\fermata g4 fis
          e8 [fis] g4 c b,8 [c]
          d2 g,\fermata \fine
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
