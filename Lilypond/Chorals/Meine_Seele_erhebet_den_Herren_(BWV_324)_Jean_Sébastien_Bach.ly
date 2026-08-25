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
 title = "Meine Seele erhebet den Herren"
 poet = "Luc 1, 46 et suivants"
  opus = "BWV 324"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           b'2 d''
          b'4 b' b' b'
          c''2 b'
          a' a'
          g'1\fermata
           b'2 d''
           \cadenzaOn \override NoteHead.style = #'altdefault a'\breve
          \hide Stem a'4 a' a' a' a' a' a' \undo \hide Stem e'2 \cadenzaOff \bar "|"
          g' fis'
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           e'2 d'
          d'4 dis' e' fis'
          e' d'2 d'4
          e'2 d'
          d'1\fermata
           d'
           \cadenzaOn \override NoteHead.style = #'altdefault a\breve
          \hide Stem d'4 d' d' d' d' d' d' \undo \hide Stem e'2 \cadenzaOff \bar "|"
          e' dis'
          b1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mei - ne See -- le er -- he - get den Herrn, und _ mein Geist freu -- et sich Got -- tes mei -- nes Hei - lands.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          g2 a
          b4 a g fis
          g a2 g4
          g2 fis
          b1\fermata
           g
            \cadenzaOn \override NoteHead.style = #'altdefault a,\breve
          \hide Stem fis4 fis fis fis fis fis fis \undo \hide Stem a2 \cadenzaOff \bar "|"
          b2. a4
          g1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           e2 fis
          g4 fis e dis
          e fis g e
          c a, d2
          g,1\fermata
           g2 b,
           \cadenzaOn \override NoteHead.style = #'altdefault a,,\breve
          \hide Stem d4 d d d d d d \undo \hide Stem c2 \cadenzaOff \bar "|"
          b,4 a, b,2
          e,1\fermata \fine
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
