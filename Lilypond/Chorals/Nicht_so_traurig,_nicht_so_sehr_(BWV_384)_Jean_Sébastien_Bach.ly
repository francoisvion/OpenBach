\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nicht so traurig, nicht so sehr"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 384"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 2  ees''4 d''8 [c'']
          g''4 f''8 [ees''] d''4 ees''8 [f'']
          b'2\fermata c''8 [d''] ees''4
          aes' g' f' bes'
          g'2\fermata } g''4 bes'
          a' bes' ees'' d''8 [c'']
          d''2\fermata d''4 ees''8 [f'']
          b'4 g'' ees'' d''8. [c''16]
          c''2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 2  g'4 f'
          ees'8 [f'] g'4 aes' g'8 [f']
          g'2\fermata g'4 g'
          f' bes bes f'
          ees'2\fermata }
          \partial 32 * 16  ees'4 ees'
          f' f' g' f'
          f'2\fermata f'4 f'
          g' g' g' f'8. [ees'16]
          ees'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nicht so Trau -- rig, nicht so sehr,
      mei -- ne See -- le, sei be -- trübt,
      Nimm für -- lieb mit dei -- nem Gott,
      hast du Gott, so hat's nicht Not.
    }

    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    daß dir Gott Glück, Gut und Ehr'
    nicht so viel, wie Andern gibt;
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 2 c'4 b
          c' c' c' b8 [c']
          d'2\fermata c'4 c'
          c'8 [d'] ees'4 ees' d'
          bes2\fermata }
          \partial 32 * 16  bes4 bes
          c' bes bes a
          bes2\fermata bes4 c'
          d' c' c'4. b8
          g2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 2 c4 d
          ees c f g8 [aes]
          g2\fermata ees8 [d] c4
          f g8 [aes] bes4 bes,
          ees2\fermata }
          \partial 32 * 16  ees4 g
          f8 [ees] d4 c f
          bes,2\fermata bes4 aes
          g8 [f] ees [f] g4 g,
          c2\fermata \fine
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
