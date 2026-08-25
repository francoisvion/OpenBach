\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Was Gott tut, das ist wohlgetan" \small " (v. 1)"}}
  subtitle = "tiré de Nimm, was dein ist, und gehe hin"
 poet = "Auteur : Samuel Rodigast (1649-1708)"
  opus = "BWV 144/3"
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
          \partial 4  d'4
          g' a' b' e''
          d''4. c''8 b'4\fermata e''
          d'' c'' b' c''8 [d'']
          a'2 g'4\fermata } d''
          e'' e'' a'\fermata a'
          d'' d'' g'\fermata b'
          a' g' fis' g'8 [fis']
          e'2 d'4\fermata d''
          c'' b' a' b'8 [c'']
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b8 [c']
          d'4 d' d' e'8 [fis']
          g'4 fis' g'\fermata g'
          fis' g'8 [a'] b' [a'] g'4
          g' fis' d'\fermata } g'
          g' g' fis'\fermata fis'8 [g']
          a' [g'] fis'4 e'\fermata e'
          e' d'8 [cis'] d'4 d'
          d' cis' d'\fermata g'8 [fis']
          e'4 d'8 [e'] fis'4 g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Was Gott thut, das ist wohl -- ge -- than,
      es bleibt ge -- recht sein Wil -- le;
      Er ist mein Gott,
      der in der Noth
      mich wohl weiß zu er -- hal -- ten:
      drum laß' ich ihn nur wal -- ten.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wie er fängt mei -- ne Sa -- chen an,
      will ich ihm hal -- ten stil -- le. 
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
          \partial 4  g8 [a]
          b4 a g g8 [a]
          b4 a8 [d'] d'4\fermata c'8 [b]
          a4 e' d' e'
          e' d'8 [c'] b4\fermata } b
          c'8 [b] a4 d'\fermata d'
          a b b\fermata g
          a a a g8 [a]
          b4 a8 [g] fis4\fermata g
          g8 [a] b [c'] d'4 d'
          d'8 [c'16 b] c'8 [a] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g fis g c
          b,8 [c] d4 g,\fermata c
          d e8 [fis] g [fis] e [d]
          c4 d g,\fermata } g
          c cis d\fermata d8 [e]
          fis4 b, e\fermata e8 [d]
          cis [b,] a,4 d8 [cis] b, [a,]
          g,4 a, d\fermata b,
          e8 [fis] g4 d8 [c] b, [g,]
          d2 g,4\fermata \fine
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
