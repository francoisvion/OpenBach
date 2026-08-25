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
  title = \markup{\concat{"Schwing dich auf zu deinem Gott" \small " (v. 2)"}}
  subtitle = "tiré de la cantate : Dazu ist erschienen der Sohn Gottes"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 40/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
          d''4 a' d'' e''
          f'' d'' e''2\fermata
          c''4 c'' c'' bes'8 [a']
          g'2 a'\fermata
          d''4 a' d'' e''
          f'' d'' e''2\fermata
          c''4 c'' c'' bes'8 [a']
          g'2 a'\fermata
          f''4 f'' e'' e''
          d'' e'' cis''2\fermata
          a'4 b' cis'' d''
          d'' cis'' d''2\fermata
          f''4 f'' e'' e''
          d'' e'' cis''2\fermata
          a'4 b' cis'' d''
          d'' cis'' d''2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          a'4 a' bes' bes'
          a' g' g'2\fermata
          a'4 a'8 [g'] f'4 f'8 [e']
          d' [cis'] d'4 cis'2\fermata
          a'4 a' g'8 [f'] e'4
          a'8 [g'] f'4 e'2\fermata
          e'4 a' a' g'8 [a']
          bes'4 c'' fis'2\fermata
          a'4 g' g' a'
          a' e' a'2\fermata
          e'4 a' g' a'
          a'4. g'8 f'2\fermata
          a'4 g' g' g'
          f' g' e'2\fermata
          f'4 f' e' d'8 [e']
          f' [e'16 d'] e'4 fis'2\fermata \fine
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {
      Schüt -- tle dei -- nen Kopf und sprich:
      flieg, du al -- te Schlan -- ge!
      was er -- neurst du dei -- nen Stich,
      machst mir angst und ban -- ge?
      Ist dir doch der Kopf zer -- knickt,
      und ich bin durchs Lei - den
      mei -- nes Hei -- lands dir ent -- rückt
      in den Saal der Freu - den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          f'4 e' f' g'
          c' d' c'2\fermata
          e'4 f' a8 [g] f4
          f e8 [d] e2\fermata
          a4 d'8 [c'] bes4 b
          cis' d'8 [c'] b2\fermata
          c'8 [d'] ees'4 d' d'
          d'8 [bes] a [g] d'2\fermata
          d'4 d' c' c'
          c'8 [b16 a] b4 e'2\fermata
          cis'4 d' e' f'
          e'2 d'\fermata
          c'4 d' c'8 [bes] a4
          a bes a2\fermata
          d'4 d' g a8 [bes]
          a2 a\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          d'4 c' bes g
          a b c'2\fermata
          a8 [g] f [e] d4. c8
          bes,2 a,\fermata
          f4 fis g gis
          a bes8 [a] gis2\fermata
          a4 g fis g8 [f]
          ees2 d\fermata
          d'8 [c'] b [a] c' [bes] a [g]
          fis4 gis a2\fermata
          g4 f e d
          a a, bes,2\fermata
          a,4 b, c cis
          d g, g2\fermata
          f4 e8 [d] e4 f8 [g]
          a4 a, d2\fermata \fine
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
