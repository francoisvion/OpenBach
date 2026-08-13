\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Was bist du doch, o Seele, so betrübet"
  opus = "BWV 424"
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
           r4 e'' c''4. b'8
          a'4\fermata e'' f'' e''8 [d'']
          c''4 d'' e'' e''\fermata \fine
          r c'' d''4. g'8
          g'2\fermata r4 d''
           e''4. c''8 c''2\fermata
          r4 e'' f'' e''
          d'' c'' b'4. a'8
          gis' [e'' d'' c''] b'2
          a'\fermata r \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           r4 a' a' gis'
          e'\fermata a' a' gis'
          e' a' gis' gis'\fermata \fine
          r a' g' f'~
          f' e'\fermata r g'
           g' g' f'2\fermata
          r4 g' f'8 [a'] gis'4
          a'8 [d'] e'4 f' e'
          d' a'2 gis'4
          e'2\fermata r \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Was bist du doch, o See -- le so be -- trü -- bet,
      Was grämst du dich, so äng -- stig -- lich,
      als würd'st du drum nicht von Gott ge -- lie -- bet?
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           r4 c'8 [d'] e'4 e'8. [d'16]
          c'4\fermata c' b b
          a8 [c' b a] b4 b\fermata \fine
          r e' d' d'
          c'2\fermata r4 d'
           c' c'8 [bes] a2\fermata
          r4 cis' d'4. c'8
          c' b4 a gis a8
          b4 e' e' e'8 [d']
          cis'2\fermata r \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           r4 a, a e
          a,\fermata e d e
          a f e e\fermata \fine
          r a, b,2
          c\fermata r4 b,
           c e f2\fermata
          r4 e d e
          f e d c
          b, a, e e,
          a,2\fermata r \fine
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
