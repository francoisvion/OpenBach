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
 title = "Auf, mein Herz, des Herren Tag"
 subtitle = "tiré de la cantate : Ich lebe, mein Herze, zu deinem Ergötzen"
 poet = "Auteur : Kaspar Neumann (1648-1715)"
  opus = "BWV 145a"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
          a'4 g'8 [fis'] b'4 cis''
          d'' d'' cis''2\fermata
          b'8 [cis''] d''4 a'8 [g'] fis'4
          g' fis' e' d'\fermata
          a' g'8 [fis'] b'4 cis''
          d'' d'' cis''2\fermata
          b'8 [cis''] d''4 a'8 [g'] fis'4
          g' fis' e' d'\fermata
          fis' gis' ais' b'8 [cis'']
          d''4 cis'' b'2\fermata
          cis''4 d'' e'' fis''
          e'' e'' d''2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          fis'4 e'8 [d'] d' e'4 fis'8
          fis'4. e'8 e'2
          e'4 d' e' d'
          d' d'~ d'8 cis' a4
          fis' e'8 [d'] d' e'4 fis'8
          fis'4. e'8 e'2
          e'4 d' e' d'
          d' d'~ d'8 cis' a4
          b8 fis'4 e'8 fis'4 fis'8 [e']
          fis'4 fis' fis'2
          g'4 a' a' a'
          b' a'8 [g'] fis'2 \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Auf mein Herz des Her -- ren Tag hat die Nacht der Furcht ver -- trie -- ben: Chri -- stus, der ver -- gra -- ben lag, ist im To -- de nicht ge -- blie -- ben. Nun -- mehr bin ich recht ge -- tröst, Je -- sus hat die Welt er -- löst.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          a4 a~ a8 g4 a16 [g]
          fis8 [b] a [gis] a2
          b4 a a a
          g a8 b~ b a16 [g] fis4
          a a~ a8 g4 a16 [g]
          fis8 [b] a [gis] a2
          b4 a a a
          g a8 b~ b a16 [g] fis4
          b b cis' b
          b ais8 [e'] d'2
          e'4 fis' e' d'
          d' cis' a2 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          d4 d g, a,
          b, e a,2
          g4 fis cis d8 [c]
          b, [bes,] a, [gis,] a,4 d
          d d g, a,
          b, e a,2
          g4 fis cis d8 [c]
          b, [bes,] a, [gis,] a,4 d
          dis e e8 [d] g4
          fis8 [e] fis4 b,2
          e4 d d8 [cis] d4
          g a d2 \fine
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
