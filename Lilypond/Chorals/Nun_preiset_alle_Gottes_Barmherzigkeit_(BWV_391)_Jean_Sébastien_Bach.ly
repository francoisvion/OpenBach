\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
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
 title = "Nun preiset alle Gottes Barmherzigkeit"
 poet = "Auteur : Matthäus Apelles von Löwenstern (1594-1648)"
  opus = "BWV 391"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 g' a'
          b' g'2\fermata
          a'4 a' b'
          c''2 b'4
          c''2.\fermata
          b'4 b' cis''
          d'' a'2\fermata
          b'4 cis'' d''
          d''2 cis''4
          d''2.\fermata
          a'4 a' b'
          c'' d'' e''
          d''2 c''4
          b'2 a'4\fermata
           e''4. d''8 c''4
          d''4. c''8 b'4
          c'' c'' b'
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 e' fis'
          g'8 [f'] e'2\fermata
          f' f'4
          g'2 g'4
          g'2.\fermata
          g'4 g' g'
          fis' fis'2\fermata
          g'4 g' fis'8 [g']
          a'4 g'8 [fis' g' e']
          fis'2.\fermata
          fis'4 fis' gis'
          a'4. gis'8 [a' g']
          fis'4 gis' a'
          a' gis' e'\fermata
          e'8 [fis'] g'4 a'
          a'8 [g'] fis'4 g'
          g' a' g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Nun prei -- set al -- le
      Got -- tes Barm -- her -- zig -- keit,
      lob' ihn mit Schal -- le,
      du wer -- the Chri -- sten -- heit!
      Er läßt dich freund - lich zu sich la -- den.
      freu -- e dich, I - sra -- el, sei -- ner Gna -- den, Gna -- den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           b4 b d'
          d' c'2\fermata
          c' d'4
          e'2 d'8 [f']
          e'2.\fermata
          d'4 d' e'
          a d'2\fermata
           d'4 a d'~
          d'8 [c'] b4 a
          a2.\fermata
          d'4 d' d'
          e' d' c'8 [b]
          a4 b c'8 [e']
          f'4 e'8 [d'] c'4\fermata
          g' c'8 [d'] e'4
          d'2 d'4
          e' d' d'
          e' d'8 [c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           g8 [fis] e4 d
          g, c2\fermata
          f4. e8 d4
          c e g
          c2.\fermata
          g4 g8 [fis] e4
          d2 d4\fermata
           g a b
          fis g a
          d2.\fermata
          d4 c b,
          a, b, c~
          c b, a,
          d e a,\fermata
          c'4. b8 [a g]
          fis [e] d4 g8 [fis]
          e4 fis g
          c d g,\fermata \fine
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
