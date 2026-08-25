\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Helft mir Gotts Güte preisen"
 subtitle = "tiré de la cantate : Herr Gott, dich loben wir"
  opus = "BWV 16/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  a'4
          a' b' c'' d''
          b'4. c''8 d''4\fermata e''
          c'' a' b' b'
          a'2.\fermata }
          e''4
          d'' c'' b' a'
          b'2.\fermata b'4
          c'' d'' e'' e''
          d''2 b'4\fermata b'
          c'' d'' e'' e''
          d''4. c''8 b'4\fermata e''
          d''8 [c''] b' [a'] b'4 b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          f' f' g' a'
          g'2 a'4\fermata e'
          e' a' a' gis'
          e'2.\fermata }
          e'8 [fis']
          gis'4 a'8 [g'] f'4 e'8 [fis']
          gis'2.\fermata gis'4
          a' b' c''8 [b'] a' [g']
          a' [g'] fis'4 g'\fermata g'
          g' g'8 [f'] e' [f'] g'4
          f'8 [g'] a'4 gis' b'
          a' e' f' e'8 [d']
          cis'2. \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      All solch dein Güt wir prei - sen,
      Va -- ter ins Him -- mels Thron,
      und bit -- ten fer -- ner dich,
      gib uns ein fried -- lich Jah -- re,
      vor al -- les Leid be -- wah - re
      und nähr uns mil -- dig -- lich. _
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Die du uns tust be -- wei - sen durch Je -- sum dein -- en Sohn,
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
          \partial 4  c'4
          c' d' g d'
          d' e' d'\fermata b
          c'8 [d'] e'4 f' e'8 [d']
          c'2.\fermata }
          g8 [a]
          b4 e'8 [c'] d' [b] c'4
          b2.\fermata e'4
          e' f' g' c'8 [b]
          a4 d' d'\fermatad'
          g a bes a8 [g]
          a2 e'4 e'
          e a a gis
          e2. \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a8 [g]
          f4 e8 [f] e4 fis
          g fis8 [e] fis4\fermata gis
          a8 [b] c' [a] d4 e
          a,2.\fermata }
          c4
          b,8 [b] a4 gis a
          e2.\fermata e4
          a g8 [f] c'4 e
          fis e8 [d] g4\fermata g8 [f]
          e4 d cis d8 [e]
          f4 e8 [d] e4\fermata gis,
          a, c d e
          a,2.\fermata \fine
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
