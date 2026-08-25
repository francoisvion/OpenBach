\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"So wahr ich lebe, spricht dein Gott" \small " (v. 6 & 7)"}}
  subtitle = "tiré de la cantate : Herr, deine Augen sehen nach dem Glauben!"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 102/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g' ees' f' g'8 [f']
          ees'4 d' c'\fermata g'
          g' f' bes' g'8 [f']
          ees'4 f' g'\fermata g'8 [a']
          bes'4 c''8 [d''] ees''4 d''
          c'' b' c''\fermata c''
          d'' c'' bes' a'
          g' a' g'\fermata c''
          bes' a' bes'8 [aes'] g'4
          g' f' ees'\fermata g'
          aes' g'8 [f'] ees'4 f'
          ees' d' c'\fermata }
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  ees'4
          d' c' c'8 [d'] ees' [d']
          c'4 b g\fermata ees'
          ees' d'8 [ees'] f'4 ees'8 [d']
          c' [b] c' [d'] b4\fermata ees'
          d' ees'8 [f'] g'4 f'
          ees'8 [f'] g'4 g'\fermata f'
          f' fis' g' g'8 [fis']
          g'4 fis' d'\fermata f'
          f' ees' d' ees'8 [d']
          c'4 d' bes\fermata c'
          f' ees'8 [d'] c'4 d'8 [c']
          b [c'] c' [b] g4\fermata }
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-5 "6. Heut" lebst du, heut be -- keh -- re dich,
      eh Mor -- gen kommt, kann's än -- dern sich;
      Wer heut ist frisch, ge -- sund und roth,
      ist mor -- gen krank, ja wol gar todt.
      So du nun stir -- best oh -- ne Buß,
      dein Seel und Leib dort lei -- den muß.
    }

   \new Lyrics \lyricsto "soprano" {\set stanza = 2
     \tweak X-offset #-5 "7. Hilf," o Herr Je -- su, hilf du mir,
     daß ich noch heu -- te komm zu dir,
     und Bu -- ße thu den Au -- gen -- blick,
     eh mich der schnel -- le Tod hin -- rück,
     auf daß ich heut und je -- der -- zeit
     zu mei -- ner Heim -- fahrt sey be -- reit!
   }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c'4
          g g c' c'8 [aes]
          g4 g8 [f] ees4\fermata c'
          bes bes bes bes
          c' aes d\fermata c'
          bes aes g a8 [b]
          c'4 d' ees'\fermata a
          bes c' d' ees'8 [d']
          d' [c'] c' [b] b4\fermata a
          bes c' f ees
          ees bes8 [aes] g4\fermata c'
          c' b c'8 [bes] aes4
          g g8 [f] e4\fermata }
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c4
          b, c aes ees8 [f]
          g4 g, c\fermata c'
          g8 [aes] bes4 d ees
          aes aes, g,\fermata c
          g f ees f8 [g]
          aes4 g c\fermata f
          bes a g c8 [d]
          ees4 d g,\fermata f8 [ees]
          d4 c bes, c8 [bes,]
          aes,4 bes, ees\fermata e
          f g aes8 [g] f4
          g g, c\fermata }
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
