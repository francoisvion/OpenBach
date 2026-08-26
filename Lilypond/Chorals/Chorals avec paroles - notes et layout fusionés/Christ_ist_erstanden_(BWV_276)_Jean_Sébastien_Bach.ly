\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
 title = "Christ ist erstanden"
 poet = "Anonyme"
  opus = "BWV 276"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
          \partial 4  a'4
          g' a'8 [b'] c''4 d''
          a'2\fermata a'4 f'8 [g']
          a' [g'] f'4 e'8 [d'] e'4
          d'2\fermata r4 f'
           g' g' d' c'
          f' g' a'\fermata a'8 [g']
          f'4 g' a'8 [g'] f'4
          e' d' e'2\fermata
           d'4 d' d'2
          d'1\fermata \bar "||"
          a'4 a' g' a'8 [bes']
          c''4 d'' a'\fermata a'
          a'8. [g'16] f'8 [g'] a' [g'] f'4
           e'8 [d'] e'4 d'\fermata f'
          g' g' d' c'
          f' g' a'\fermata a'
          a'8 [g'] f'8. [g'16] a'4 f'
           e' d' e'2\fermata
          d'4 d' d'2
          d'1\fermata \bar "||"
          \partial 4 a'4
          f' c'' a'\fermata c''8 [bes']
           a'4 g' f'\fermata a'8 [g']
          f'4 e' d'\fermata f'
          g' g' d' c'
          f' g' a'\fermata \break
          \partial 4 a'8 [g']
          f'4 g' a' f'
          e' d' e'2\fermata
          d'4 d' d'2
          d'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          f'8 [e'] e' [gis'] a'4. g'8~
          g' [f'16 e'] f'4\fermata e' d'
          c'8 [cis'] d'4 cis'8 d'4 cis'8
          a2\fermata r4 d'~
           d'8 [c'16 b] c'4. b4 a16 [bes]
          c'8 [d'] e'4 f'\fermata e'
          e'8 d'4 cis'8 d'4. c'8
          bes a4 b8 cis'2\fermata
          d'4 c' c' bes~
          bes a8 [g] a2\fermata \bar "||"
          f'4 e'8 [d'] g' [bes' a' g']
          f'2 f'4\fermata f'
          e' d'8 [e'] f' [cis'] d'4~
           d' cis' d'\fermata c'
          c'8 [b] c'4. bes4 a16 [g]
          c'4 c' c'\fermata c'8 [cis']
          d'4 a d' d'~
          d'8 c'4 b8 c'2\fermata
          c'8 [bes] a4 g4. bes8
          a1\fermata \bar "||"
          e'4
          d' c' c' c'8 [d']
           e' f'4 e'8 c'4\fermata e'~
          e'8 d'4 c'8 c' [bes]\fermata c'4
          d' c'8 [b] a [b c' bes]
          \partial 32 * 24 a16 [g a8] d' [c'] c'4\fermata
          f'8 [e']
          d'4. c'16 [bes] a4. d'16 [c']
          b8 a4 gis8 cis'2\fermata
          d'4 c' bes8 [a] g16 [a bes8]~
          bes [a bes g] a2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Christ ist er -- stan - den
      von der Mar -- ter al - le:
      des soll'n wir al -- le froh __ _ sein;
      Chri -- stus will un -- ser Trost __ _ sein.
      Ky -- ri -- e -- leis.
      Wär' er nicht er -- stan - den,
      so wär' die Welt ver -- gan - gen:
      seit dass er nun er -- stan -- den ist,
      so lob -- ben wir den Her -- ren Christ,
      Ky -- rie e -- leis!
      Al -- le -- lu -- ja,
      al -- le -- lu -- ja,
      al -- le -- lu -- ja! dess soll'n wir al -- le froh __ _ sein;
      Chris -- tus will un -- ser Trost __ _ sein.
      Ky -- rie -- e -- leis!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'8 [c']
          b4 c'8 [d'] e' [f'16 e'] d'4
          d'2\fermata a4 a
          a a bes8 [f] g [a16 g]
          f2\fermata r4 a
           e8 [f] g4~ g16 [d] e4 f16 [g]
          a8 [f] bes4 c'\fermata a
          a g8 [bes] a4~ a16 [g a8]
          g16 [f g8] f16 [e f8] e2\fermata
          a8 [g a fis] g [d] g4~
          g fis8 [e] fis2\fermata \bar "||"
          d'4 c'8 [b] c'4 c'
          c'4. bes8 c'4\fermata c'8 [d']
          e' a4 g8 f [g] a4
           a4. g8 f4\fermata a
          g8 [f] g4 g8. [f16] e4
          a g f\fermata a8 [g]
          f [e d e] f [g] a4
          a8 [e] f4 g2\fermata
          a8 g4 fis8 g [d] g4~
          g fis8 [e] fis2\fermata \bar "||"
          a4
          a8 [bes a g] f4 f
           c'4. bes8 a4\fermata a
          a g8 [a] d4\fermata a8 [f]
          d16 [e] f4 e8 fis [gis a g]
          \partial 32 * 24 f16 [e] f4 e8 f4\fermata
          c'
          c'8 [bes16 a] g4. f16 [e] f8 [bes16 a]
          gis8 [a d' d] a2\fermata
          f8 [g] a4. g16 [fis] g4~
          g8 [fis g e] fis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          e8. [d16] c8 [b,] a,4 bes,8. [c16]
          d2\fermata cis4 d8 [e]
          f4. f,8 g, [bes,] a,4
          d2\fermata r4 d,
           e,4. f,8 g, [gis,] a,4~
          a,8 [bes, a, g,] f,4\fermata cis
          d e f8 [e] d4~
          d8 [cis] d4 a,2\fermata
          fis,8 [e, fis, d,] g, [a, bes, g,]
          d2 d,\fermata \bar "||"
          d8 [e] f4~ f8 [e f g]
          a [f] bes4 f\fermata f
          cis d~ d8 [e f g]
           a4 a, bes,\fermata a,
          e,8 [d, e, f,] g,4 a,~
          a,8 [g, f, e,] f,4\fermata f8 [e]
          d2~ d8 [e f g]
          a [a,] d4 c2\fermata
          fis,8 [g,] c4~ c8 [bes,16 a,] bes,8 [g,]
          d2 d,\fermata \bar "||"
          cis4
          d e f\fermata a,8 [bes,]
           c4 c, f,\fermata cis
          d8 [d, e, fis,] g,4\fermata a,
          b, c~ c8 [b,] a,4~
          \partial 32 * 24 a,8 [d bes, c] f4\fermata
          f,
          bes, ees8 [d] cis4 d~
          d8 [c] b,4 a,2\fermata
          bes,8 [a, g, fis,] g, [a, bes, g,]
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
