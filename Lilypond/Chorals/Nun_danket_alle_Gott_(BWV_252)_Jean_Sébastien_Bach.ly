\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun danket alle Gott"
 poet = "Auteur : Martin Rinckart (1586-1649)"
  opus = "BWV 252"
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
          \partial 4  d''4
          d'' d'' e'' e''
          d''2.\fermata b'4
          c'' b' a' b'8 [c'']
          a'2 g'4\fermata } a'
          a' a' b' b'
          a'2.\fermata a'4
          b'8 [cis''8] d''4 d'' cis''
          d''2.\fermata d''4
          e'' d'' c'' b'
          c''2.\fermata b'4
          a' b'8 [c''8] a'4. g'8
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          a' g' g' g'8 [a']
          b'2.\fermata g'4
          a' d' d' d'
          e'16 [fis'] g'4 fis'8 d'4\fermata } fis'8 [g']
          a' [g'] a'8 [fis'] d'4 g'
          fis'2.\fermata fis'4
          d'8 [e'8] fis'4 b' a'8 [g'8]
          fis'2.\fermata g'4
          g'8 [a'] b'4 b'8 [a'8] a'8 [gis']
          a'2.\fermata d'4
          d'4. e'8 d' [g'8] fis'4
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun dan -- ket al -- le Gott
      mit Her -- zen, Mund und Hän -- den,
      der uns von Mut -- ter -- leib
      und Kin -- des -- bei -- nen an
      un -- zäh -- lig viel zu gut,
      und noch jetz -- und ge -- than.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      der gro -- sse Din -- ge thut
      an uns und al -- len En -- den; 
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
          \partial 4  b4
          a8 [d'8] b4 c' c'
          d'2.\fermata d'4
          d'4. g'8 fis'4 g'8 [g]
          e'4 a4 b\fermata } a
          d' c' b8 [c'8] d'4
          d'2.\fermata d'8 [c'8]
          b [a] a [d'] d' [g'] e'16 [d'16 e'8]
          d'2.\fermata b4
          c'4 d'8 [e'16 f'] g'8 [c'] f' [e']
          e'2.\fermata g'4
          fis'8 [d'] b [a] a [b] c' [a]
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g4
          fis g c8 [d] e [c]
          g2.\fermata g4
          g8 [fis] g4 d8 [c] b, [e]
          c [b,16 c] d4 g,\fermata } d8 [e]
          fis [e] fis [d] g, [a,] b, [c]
          d2.\fermata d4
          g4 fis8 [b] g [e] a [a,]
          d2.\fermata g4
          c g8 [f] e [f] d [e]
          a,2.\fermata b,8 [g,]
          d [fis] g [c] d4 d,
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
