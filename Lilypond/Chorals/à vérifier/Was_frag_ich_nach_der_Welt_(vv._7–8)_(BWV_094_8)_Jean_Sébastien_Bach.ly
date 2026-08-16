\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Was frag ich nach der Welt (vv. 7–8)"
  opus = "BWV 94/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          fis' e'8 [d'] a'4 a'
          b'2.\fermata b'4
          e' e' a' g'
          fis' e' d'\fermata a'
          b' b' a' g'
          fis'2.\fermata
          e'4
          fis' gis' a' b'8 [cis''16 d'']
          cis''4 b'8 [a'] a'4\fermata a'
          a' a' d'' c''
          b'2.\fermata
          b'4
          b' b' e'' d''
          cis''2.\fermata a'4
          b' a' b' cis''
          d''2.\fermata a'4
          a' g'8 [fis'] e' [fis'16 g'] e'4
          d'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          d' cis' d' fis'
          g'2.\fermata e'4
          e'8 [d'] cis'4 d' e'
          e'8 d'4 cis'8 a4\fermata d'
          d' g' g'8 [fis'] e'4
          d'2.\fermata
          e'4
          d' d' cis' fis'
          e'2 e'4\fermata e'
          fis'8 [e'] fis' [g'] a'4 fis'
          g'2.\fermata
          a'4
          a' gis' gis'8 [fis'] fis' [e']
          e'2.\fermata d'4
          d' d' g'8 [fis'] g'4
          fis'2.\fermata e'4
          fis'8 [e'] d'4 d' cis'
          a2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Was frag' ich nach der Welt, und al -- len ih -- ren Schä -- tzen, wenn ich mich nur an dir, mein Je -- su, kann er -- gö -- tzen? Dich hab' ich ein -- zig mir zur Wol -- lust vor -- ge -- stellt: Du, du bist mei -- ne Lust: was frag' ich nach der Welt!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a g a d'
          d'2.\fermata d'4
          cis'8 [b] a4 a a
          a2 fis4\fermata a
          g b cis'8 [d'] d' [cis']
          a2.\fermata
          a4
          a b a a
          a gis cis'\fermata cis'
          d' d' a d'
          d'2.\fermata
          fis'4
          e' b b8 [a] a [gis]
          a2.\fermata a4
          g a e'8 [d'] e'4
          d'2.\fermata e'4
          a b b a8 [g]
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  cis4
          d e fis d
          g2.\fermata gis4
          a a8 [g] fis [e] d [cis]
          d4 a, d\fermata fis
          g e a a,
          d2.\fermata
          cis4
          d cis8 [b,] fis4 e8 [d]
          e2 a,4\fermata a
          d' d8 [e] fis4 d
          g2.\fermata
          dis4
          e8 [fis] e [d] cis [d] e4
          a,2.\fermata fis4
          g fis e ais,
          b,2.\fermata cis4
          d8 [cis] b, [a,] g,4 a,
          d2.\fermata \fine
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
