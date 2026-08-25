\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Selig ist die Seele" \small " (v. 9)"}}
  subtitle = "tiré de la cantate : Bisher habt ihr nichts gebeten in meinem Namen"
 poet = "Auteur : Heinrich Müller (1631-1675)"
  opus = "BWV 87/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          a'4 a' g' f'
          e'2 d'\fermata
          a'4 a' b' cis''
          d''2 cis''\fermata
          d''8 [e''] f''4 e'' e''
          d''1\fermata }
          a'4 a' bes' a'
          g'8 [a'16 bes'] g'4 f'2\fermata
          a'4 b' c'' a'
          d'' c''8 [b'] b'2
          a'\fermata a'4 d''
          g' f'8 [e'] e'2
          d'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          f'4 f' e' d'
          d' cis' a2\fermata
          f'4 f' f'8 [d'] g'4
          a' g' a'2\fermata
          a'4 a' bes' a'8 [g']
          f'1\fermata }
          f'8 [g'] a'4 a'8 [g'] f'4
          f' e' c'2\fermata
          f'4 f' g' e'
          a'8 [e'] e' [f'] e' [f'] e' [d']
          cis'2\fermata d'4 d'
          d'8 [cis'] d'4 d'8 [cis'16 b] cis'4
          a1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Muß ich sein be -- trü -- bet,
      So mich Je -- sus lie -- bet
      ist mir al -- ler Schmerz
      Wenn die Pein
      sich stel -- let ein,
      sei -- ne Lie -- be macht zu Freu -- den
      auch das bitt' -- re Lei -- den.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      ü -- ber Ho -- nig sü -- ße,
      tau -- send Zu -- cker -- kü -- ße
      drü -- cket er ans Herz.
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
          d'4 d' d'8 [cis'] d'4
          a8 [bes] a [g] f2\fermata
          d'4 d' d'8 [b] e'4
          d'8 [e'16 f'] e'8 [d'] e'2\fermata
          a4 d' d' cis'
          a1\fermata }
          d'4 d' d' c'
          c'8 [a] bes [g] a2\fermata
          c'4 d' e' cis'
          a8 [b] c' [a] a4 gis
          a2\fermata f8 [g] a [f]
          g4 a8 [bes] a [e] a [g]
          fis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d8 [e] f [d] bes4 a8 [g]
          a4 a, d2\fermata
          d8 [e] f [d] g4 f8 [e]
          f [g16 a] bes4 a2\fermata
          f8 [e] d [f] g [e] a [a,]
          d1\fermata }
          d8 [e] f [d] g4 a8 [bes]
          c'4 c f2\fermata
          f8 [e] d [f] e [f] g [e]
          fis [gis] a [d] e4 e,
          a,2\fermata d8 [e] f [d]
          bes4 a8 [g] a4 a,
          d1\fermata \fine
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
