\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Treuer Gott, ich muß dir klagen (v. 12)"
  subtitle = "tiré de la cantate : Es ist nichts Gesundes an meinem Leibe"
  opus = "BWV 25/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          c''4 d'' e'' d''
          c'' b' a' g'\fermata
          c'' d'' e'' d''8 [e''16 f'']
          e''4 d''8. [c''16] c''2\fermata }
          e''4 f'' g'' f''
          e'' d'' e''2\fermata
          g''4 g'' a'' g''
          f'' e'' d''2\fermata
          e''4 g'' f'' e''8 [d'']
          c''4 d'' e''2
          c''\fermata e''4 g''
          f'' e'' d'' c''
          d''2 c''\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           \repeat volta 2 {
          g'4 g' g' g'
          a' d' d' d'\fermata
          g' a'8 [b'] c'' [g'] g'4
          g' g' g'2\fermata }
          g'4 a'8 [bes'16 c''] bes'4 a'
          g' f'8 [a'16 gis'] a'2\fermata
          g'4 c'' c'' b'
          a' g'8 [fis'] g'2\fermata
          g'4 c''8 [b'] a' [b'] c''4
          a' a' b' e'
          e'2\fermata g'8 [a'] bes'4
          a'8 [b'] c''4 g' g'
          g'2 g'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich will al -- le mei -- ne Ta -- ge
      Rüh -- men dei -- ne star -- ke Hand,     
      Nicht nur in der Ster -- blich -- keit
      Soll dein Ruhm sein aus -- ge -- breit':
      Ich wills auch her -- nach er -- wei -- sen
      Und dort e -- wi -- glich dich prei -- sen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      daß du mei -- ne Plag und Kla -- ge
      hast so herz -- lich ab -- ge -- wandt.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           \repeat volta 2 {
          e'4 b c' d'
          e'8 [fis'] g'4 g'8 [fis'] b4\fermata
          c' f' g'8 [c'] d'4~
          d'8 c' c' [b] e'2\fermata }
          c'4 c' c' c'8 [d']
          e' [a] a [b] cis'2\fermata
          c'8 [d'] e'4 f'8 [e'] d'4
          c' c' b2\fermata
          c'8 [d'] e'4 f' g'8 [g]
          a [e'] d' [c'] b2
          a\fermata bes4 e
          f g8 [a] b4 c'
          c' b e'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           \repeat volta 2 {
          c4 g c' b
          a g d g\fermata
          e d c b,
          c g, c2\fermata }
          c'4 a e f
          cis d a,2\fermata
          e4 c f g
          a8 [b] c'4 g2\fermata
          c'4 c d e
          f fis g gis
          a2\fermata g4 c
          d e8 [f] g [f] e [c]
          g,2 c\fermata \fine
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
