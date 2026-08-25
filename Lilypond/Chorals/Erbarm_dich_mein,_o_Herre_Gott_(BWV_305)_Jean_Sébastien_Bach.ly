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
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

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
 title = "Erbarm dich mein, o Herre Gott"
 poet = "Auteur : Erhart Hegenwalt"
  opus = "BWV 305"
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
          \repeat volta 2 {
          \voiceOne
          \partial 4  e'4
          g' g' a' b'
          c'' b' a'\fermata g'
          c'' b' c'' a'
          g' f' e'\fermata }
          \partial 4  e'
          a' a' g' c''
          b' a' g'\fermata g'
          c'' g' a' e'
          a'8 [g'] f'4 e'\fermata
          \partial 4  e'
          a' a' g'8 [f'] e'4
          f' d' c'\fermata c'
          g'2 a'4 b'
          c'' g' a' g'
          f'4. f'8 e'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          e' e' e' f'8 [e']
          e' a'4 gis'8 e'4\fermata e'8 [f']
          g' [a' a' g'16 f'] g'4. f'8~
          f' e'4 d'16 [c'] b4\fermata }
          \partial 4  c'
          f' f' f'8 [e'16 d' e'8 fis']
          g'16 [d'] g'4 fis'8 d'4\fermata e'
          e' e'8 [d'] c' [b cis' d']
          e'4. d'4 cis'8\fermata
          \partial 4 c'4
          c'8 ees'4 d'8 d'4 c'
          c'4. b8 g4\fermata g
          d' e'8 [d'] c'4 d'
          e'8 [f' g' e'] f'4. e'8~
          e' d'4 c'8 b4\fermata \fine
        }
      >>
    }

  \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Er -- barm' dich mein, o Her -- re Gott, nach dei -- ner gross'n Barm -- her -- zig -- keit, Al -- lein ich dir ge -- sün -- digt hab', das ist wi -- der mich ste -- tig -- lich; das Bös' vor dir nicht mag  be -- stahn, du bleibst _ ge -- recht, ob man ur -- tei -- le dich. _ }

  \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wasch ab, mach' rein mein Mi -- se -- that, ich kenn mein Sünd' und ist mir leid.}
      
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g4
          b b c' d'
          c'8 [e' f' e'16 d'] c'4\fermata b
          e' f'8 [e'16 d'] c'4 c'
          c'8. [bes16 a8 b16 a] gis4\fermata }
          \partial 4  a
          c' d'4. c'8 [g a]
          d [d' e' d'16 c'] b4\fermata c'
          c' c'8 [bes] a4 a
          a a a\fermata
          \partial 4 a
          a8 c'4 b16 [a] b4 c'8 [b]
          a4 g8. [f16] e4\fermata e
          g c'8 [d'] e' [f'] g'4
          g c' c' c'8. [bes16]
          a8 [b16 c' b8 a] gis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4~
          e8 [f e d] c a4 gis8
          a [c d e] a,4\fermata e8 [d]
          c4 d8 [g] e [c] f4
          c d e\fermata }
          \partial 4  a8 [g]
          f [e d c] b, [c b, a,]
          g, [b, c d] g,4\fermata c8 [b,]
          a, [b, c e,] f, [g, a, b,]
          cis [a,] d4 a,\fermata
          \partial 4 a8 [g]
          f4 fis g a8 [g]
          f [d g g,] c4\fermata c
          b, c8 [b,] a,4 g,8 [f,]
          e, [d, e, c,] f, [a,] c4
          d2 e4\fermata \fine
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
