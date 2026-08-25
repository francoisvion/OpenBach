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
 title = "Heut triumphieret Gottes Sohn"
 poet = "Auteur : Kaspar Stolzhagen (1550-1594)"
  opus = "BWV 342"
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
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           c''4 c'' d''
          e''2 d''4
          c''2 b'4
          c''2.\fermata
          c''4 c'' c''
          d'' c'' b'
          a'2 gis'4
          a'2\fermata b'4
           c''2 d''4
          e''4. f''8 g''4
          f'' e'' d''
          e''2.\fermata
          e''4 e'' e''
          d''2 d''4
          e'' d'' c''
          b'2.\fermata
           b'4 b' cis''
          d'' c'' b'
          a'2 gis'4
          a'2\fermata b'4
          c''2 d''4
          e''2 e''4
          e'' dis''2
          e''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           e'8 [f'] g'4 g'
          g'2 f'4
          e' d'2
          e'2.\fermata
          f'4 g' f'
          f' e' d'
          e' f' e'
          e'2\fermata e'4
           e'2 g'4
          g'2 g'4
          c'' b' a'
          gis'2.\fermata
          a'4 g'8 [f'] g' [a']
          b'4 g' a'
          b'2 a'4
          gis'2.\fermata
          g'8 [a'] g' [f'] e'4
          d' e' f'
          e' f' e'
          e'2\fermata gis'4
          a'2 g'4
          g'2 fis'4
          fis' g' a'
          gis'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Heut' tri -- um -- phi -- ret Got -- tes Sohn,
      der von dem Tod _  er -- stan -- den schon,
      Hal -- le -- lu -- ja, _ hal -- le - lu -- ja!
      mit gro -- ßer Pracht und Her - lich -- keit,
      deß dank'n wir ihm _ in E -- wig -- keit.
      Hal -- le -- lu -- ja, hal -- le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           c'4 c' b
          c' b a
          g a g
          g2.\fermata
          a4 g a
          gis a b
          c' b2
          c'\fermata gis4
           a8 [b] c'4 b
          c'2 d'4
          c' e' f'
          b2.\fermata
          c'4 c' c'
          d'8 [c'] d' [e'] f'4
          e'2 e'4
          e'2.\fermata
          e'4 e' a
          a2 gis4
          a d' b
          c'2\fermata e'4
          e' f' d'
          c'2 c'4
          b2 b4
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           a4 e g
          c2 d4
          e f g
          c2.\fermata
          f4 e f
          b, c d
          c d e
          a,2\fermata e4
           a2 g4
          c'2 b4
          a g f
          e2.\fermata
          a4 e c
          g b a
          gis2 a4
          e2.\fermata
          e8 [d] e [f] g4
          f e d
          c d e
          a,2\fermata e4
          a2 b4
          c' b a
          b2 b,4
          e2.\fermata \fine
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
