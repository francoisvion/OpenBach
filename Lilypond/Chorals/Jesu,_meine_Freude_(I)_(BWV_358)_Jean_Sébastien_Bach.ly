\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, meine Freude (I)"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 358"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          a'4 a' g' f'
          e'2 d'\fermata
          a'4 b' c'' a'
          d''2 cis''\fermata
           d''8 [e''] f''4 e'' e''
          d''1\fermata }
          a'4 a' bes' a'
          g' g' f'2\fermata
           a'4 b' c''8 [b'] a'4
          d'' c''8 [b'] b'2
          a'\fermata a'4 a'
          g' f' e'2
          d'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
           d'4 d' e' d'
          d' cis' a2\fermata
          d'4 g g'8 [f'] e'4
          a' b' a'2\fermata
           g'4 a'8 [bes'] g' [bes'] a' [g']
          f'1\fermata }
          f'4 f'8 [ees'] d' [e'] f'4
          f' e' c'2\fermata
          c'4 f' e'8 [d'] c'4
          f' e'8 [f'] e'4. d'8
          cis'2\fermata d'4. cis'8
          d' e'4 d' cis'16 [b] cis'4
          a1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, mei -- ne Freu -- de,
      mei -- nes Her -- zens Wei -- de,
      Je -- su, mei -- ne Zier!
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      au -- ßer dir soll mir auf Er -- den
      nichts sonst lie -- bers wer -- den.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      ach wie lang', ach lan -- ge
      Ist dem Her -- zen ban -- ge,
        }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
           f8 [g] a4 bes8 [a] a4
          bes a8 [g] f2\fermata
          f'8 [e'] d'4 c' cis'
          d'8 [e'] f'4 e'2\fermata
           d'4 d' d' cis'
          a1\fermata }
          d'4 c' bes8 [c'] d'4
          d' c'8 [bes] a2\fermata
          a4 g8 [f] g4 a
          a8 [gis] a2 gis4
          a2\fermata f8 [g] a4
          d8 [a] a4 b8 [e] a [g]
          fis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
           d8 [e] f4 cis d
          g, a, d,2\fermata
          d8 [e] f4 e8 [f] g4
          fis8 [gis] gis4 a2\fermata
           bes4 a8 [g] a4 a,
          d1\fermata }
          d8 [e] f4 g d8 [c]
          bes, [g,] c4 f,2\fermata
          f4 e8 [d] e4 f
          b, c8 [d] e2
          a,\fermata d8 [e] f4
          b,8 [cis] d4 gis, a,
          d,1\fermata \fine
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
