\version "2.27.1"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm

  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))
}

\header {
  title = "Was Gott tut, das ist wohlgetan"
  subtitle = "tiré de la cantate : Lobe den Herrn, meine Seele (I)"
  opus = "BWV 69a/6"
  poet = "Auteur : Samuel Rodigast (1649-1708)"
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
          g' a' b' c''
          d''4. c''8 b'4\fermata e''
          d'' c'' b' c''
          a'2 g'4\fermata } d''
          e'' e'' a'\fermata a'
          d'' d'' g'\fermata b'
          a' g' fis' g'
          e'2 d'4\fermata
          d''
          c'' b' a' b'
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          d' d' d' g'
          g' fis' d'\fermata c'8 [b]
          a4 e' d' e'
          d'2 d'4\fermata } g'
          g' a'8 [g'] fis'4\fermata fis'
          g'4. f'8 e'4\fermata d'
          cis' b a b
          a2 a4\fermata
          g
          g8 [a] b [c'] d'4 d'
          d'2 d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Was Gott thut, das ist wohl -- ge -- than,
      dar -- bei will ich ver -- blei -- ben.      
      so wird Gott mich
      Ganz vä -- ter -- lich
      in sei -- nen Ar -- men hal -- ten.
      Drum laß ich ihn nur wal -- ten.
      es bleibt ge -- recht sein Wil -- le;
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Es mag mich auf die rau -- he Bahn
      Not, Tod und E -- lend trei -- ben:
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
          \partial 4  g4
          b a g g8 [a]
          b4 a g\fermata g
          fis g8 [a] b [fis] g4
          g fis b\fermata } b
          c'8 [b] a4 d'\fermata d'
          d'8 [c'] b [d'] c'4\fermata b8 [g]
          e4 d d8 [fis] e [d]
          d4 cis fis\fermata
          d
          e d8 [e] fis4 g
          g fis b\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g fis g e
          b, d g,\fermata c
          d e8 [fis] g4 c
          d2 g,4\fermata } g
          c cis d\fermata c
          b, b, c\fermata g,
          a, b,8 [cis] d4 g,
          a,2 d,4\fermata
          b,
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
