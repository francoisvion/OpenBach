\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Haupt voll Blut und Wunden (v. 1 – 2)"
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Paul Gerhardt"
  opus = "BWV 244/54"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  a'4
          d'' c'' bes' a'
          g'2 a'4\fermata e''
          f'' f'' e''8 [d''] e''4
          d''2.\fermata } f''4
          e''8 [d''] c''4 d'' e''
          f''2 f''4\fermata c''
          d'' c'' bes'8 [a'] bes'4
          a'2.\fermata
          f''4
          e''8 [f''] g''4 f'' e''
          d''2 e''4\fermata a'
          bes' a' g' c''
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  f'4
          f'8 [g'] a'4 d'8 [e'] f'4
          f' e' f'\fermata a'
          a' a' a' a'8 [g']
          f'2.\fermata } a'4
          g' g'8 [f'] f'4 bes'
          bes' a'8 [g'] a'4\fermata a'
          a'8 [g'] a'4 g'8 [fis'] g'4
          fis'2.\fermata
          g'4
          g' c'' c'' c''
          c'' b' c''\fermata f'8 [e']
          d' [e'] f'4 f' e'
          f'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-3.0 "1. O" Haupt voll Blut und Wun -- den,
      voll Schmerz und vol -- ler Hohn!
      O Haupt, sonst schön ge -- zie -- ret
      mit höch -- ster Ehr und Zier.
      jetzt ab -- er hoch schim -- pfi -- ret:
      ge -- grü -- sset seist du mir!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      O Haupt, zu Spott ge -- bun -- den
      mit ei -- ner Dor -- nen -- kron! 
    }

    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-3.0 "2. Du" ed -- les An -- ge -- sich -- te,
      Da -- für sonst schrickt und scheut 
      Wie bist du so er -- blei -- chet!
      Wer hat dein Au -- gen -- licht,
      Dem sonst kein Licht nicht glei -- chet,
      So schän -- dlich zu -- ge -- richt'?
    }

    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      das gro -- ße Welt -- ge -- rich -- te,
      wie bist du so be -- speit;
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
          \partial 4  d'4
          d'8 [e'] f'4 g' c'
          d' c' c'\fermata e'
          e' d' d' cis'
          a2.\fermata } d'8 [c']
          bes4 c' c' bes8 [c']
          d'4 c'8 [bes] c'4\fermata f'8 [ees']
          d'4 d' d' d'
          d'2.\fermata
          d'4
          c'8 [d'] e'4 f' g'
          a' g' g'\fermata c'
          bes c' c'8 [bes16 a] g8 [c']
          c'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  d'8 [c']
          bes4 a g f
          bes, c f\fermata cis
          d8 [e] f [g] a4 a,
          d2.\fermata } d4
          g a bes8 [a] g4
          f2 f4\fermata f
          bes fis g g,
          d2.\fermata
          b,4
          c c'8 [b] a4 g
          f g c\fermata f
          g a8 [bes] c'4 c
          f2.\fermata \fine
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
