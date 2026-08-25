\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"O Welt, sieh hier dein Leben" \small " (v. 5)"}}
  subtitle = "tiré de la Passion selon saint Matthieu"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/10"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key aes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  c''4
          aes' bes' c''8 [des''] ees''4
          des''2 c''4\fermata c''8 [des'']
          ees''4 ees'' bes' c''
          aes'2 g'4\fermata ees'
          aes' bes' c'' c''
          bes'2.\fermata c''4
          aes' bes' c''8 [des''] ees''4
          des''2 c''4\fermata c''8 [des'']
          ees''4 ees'' bes' c''
          aes'2 g'4\fermata ees'
          aes' bes' c'' des''
          c'' bes' aes'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  aes'4
          f' g' aes'8 [bes'] c''4
          c'' bes' aes'\fermata aes'
          aes'8 [g'] aes' [f'] g' [f'] ees'4
          ees' d' ees'\fermata bes
          ees' des' c'8 [des'] ees'4
          ees'2.\fermata g'4
          f' ees' ees' f'
          f'8 [ees'] f' [g'] a'4\fermata aes'
          bes' aes'8 [g'] f'4 g'
          g' f' e'\fermata ees'
          ees'8 [f'] ees' [des'] c' [ees'] f' [g']
          aes'4 g' ees'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Ich bin's, ich sol -- lte bü -- ßen
      an Hän -- den und an Fü -- ßen,
      ge -- bun -- den in der Höll.
      die Gei -- ßeln und die Ban -- den,
      und was du aus -- ge -- stan -- den,
      das hat ver -- die -- net mei -- ne Seel.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key aes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  ees'4
          des' des' ees'8 [des'] c' [bes]
          aes4 ees' ees'\fermata f'
          ees' ees' ees' g
          aes8 [g] aes4 bes\fermata g8 [f]
          ees4 f8 [g] aes4 aes
          g2.\fermata c'4
          c'8 [des'] c' [bes] aes [bes] c'4
          bes8 [c'] des' [ees'] f'4\fermata f'
          ees'8 [des'] c'4 d' g
          c'2 c'4\fermata c'
          c'8 [des'] c' [bes] aes4 aes
          f' bes8 [c'16 des'] c'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  aes4
          des'8 [c'] bes4 aes4. g8
          f4 g aes\fermata f
          c8 [bes,] c [des] ees [des] c4
          f2 ees4\fermata des
          c bes, aes,8 [bes,] c [des]
          ees2.\fermata e4
          f g aes a
          bes bes, f\fermata f
          g aes aes8 [g] f [e]
          f [g] aes [bes] c'4\fermata c
          f g aes8 [g] f [ees]
          des4 ees aes,\fermata \fine
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
