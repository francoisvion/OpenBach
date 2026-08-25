\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, der du selbsten wohl"
 poet = "Auteur : Michael Bapzien (1628-1693)"
  opus = "BWV 355"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          cis''4 a' b' b'
          cis'' dis'' e''2\fermata
          b'4 cis'' d'' cis''
          b'2 a'\fermata
           b'4 b' e'' e''
          d'' d'' cis''2\fermata
          b'4 b' a' gis'
          fis'2 e'\fermata
           a'4 a' d'' d''
          cis'' cis'' b'2\fermata
          a'4 a' a' a'
          b'2 e'\fermata
           e''4 d'' cis'' b'
          a' gis' fis'2\fermata
          b'4 a' d'' cis''
          b'2 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          e'4 e' fis' e'
          e' fis' gis'2\fermata
          gis'4 a'4. gis'8 a'4
          a' gis' e'2\fermata
          gis'4 gis' gis' ais'
          fis' fis' fis'2\fermata
          fis'4. e'8 e' [dis'] e'4
          e' dis' b2\fermata
          e'4 e' fis'8 [gis'] a' [b']~
          b' [a'16 gis'] a'4 a' gis'\fermata
          fis' g' fis' fis'
          fis'8 [e'] fis'4 b2\fermata
           cis'8 a'4 gis'8 a'4. gis'8~
          gis' fis'4 eis'8 fis'2\fermata
          fis'8 [gis'] a'4 a'8 [gis'] a'4
          a' gis' e'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, der du sel -- bsten wohl
      hast den Tod ge -- schme -- cket,
      hilf mir, wenn ich ster -- ben soll,
      wenn der Tod mich schre -- cket:
      wenn mich mein Ge -- wis -- sen nagt
      und die Sün -- den pla -- gen,
      wenn der Sa -- tan mich ver -- klagt,
      laß mich nicht ver -- za -- gen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          a4 a a gis
          a a b2\fermata
          e'4 e' d'8 [b] e'4
          fis'8 [d'] b [e'16 d'] cis'2\fermata
           e'4 e' e'8 [d'] cis'4~
          cis' b b ais\fermata
          dis'8 [cis'] b4 cis'8 [a] b4
          cis' b8 [a] gis2\fermata
          a8 [b] cis' [b] a [gis] fis [e]
          e'4 e' e'2\fermata
          cis'8 [d'] e'2 d'8 [cis']
          b [gis] a [b16 a] gis2\fermata
          a8 [cis'] d' [b] e' [fis'] b [e'16 d']
          cis'4~ cis'8. [b16] a2\fermata
          d'4 e' d'8 [b] cis' [e']
          fis' [d'] b [e'16 d'] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          a,4 cis d e
          a8 [gis] fis4 e2\fermata
          e8 [d] cis4 b, a,
          d e a,2\fermata
           e4 e8 [d] cis4 fis
          b,8 [cis] d [e] fis2\fermata
          b8 [a] gis4 fis e
          a, b, e2\fermata
          cis8 [b,] a, [gis,] fis, [e,] fis, [gis,]
          a, [b,] cis [d] e2\fermata
          fis8 [e] d [cis] d [e] fis [e]
          dis e4 dis8 e2\fermata
          a,4 b, cis8 [d] e4
          fis cis d2\fermata
          d8 [e] d [cis] b, [e] a, [cis]
          d [b,] e4 a,2\fermata \fine
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
