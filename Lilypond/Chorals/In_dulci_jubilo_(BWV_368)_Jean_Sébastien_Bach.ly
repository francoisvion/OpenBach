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
 title = "In dulci jubilo"
 poet = "Anonyme"
  opus = "BWV 368"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  f'4
          f'2 f'4
          a'2 bes'4
          c''2 d''4
          c''2.\fermata
          f'2 f'4
          a'2 bes'4
          c''2 d''4
          c''2.\fermata
           c''2 d''4
          c''2 bes'4
          a'4. bes'8 a' [g']
          f'2\fermata f'4
          g'2 g'4
          a'2 g'4
          f'2 g'4
          a'2.\fermata
           c''2 d''4
          c''2 bes'4
          a'4. bes'8 a' [g']
          f'2\fermata f'4
          g'2 g'4
          a'2 g'4
          f'2 g'4
          a'2.\fermata
           d'2 d'4
          e'2 e'4
          f'8 [e'] f' [g'] a' [bes']
          c''2.\fermata
          a'2 a'4
          g'2 g'4
          f'2.~
          f'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          d'2 d'4
          e'2 e'4
          f'2.
          f'\fermata
          f'4 e' d'
          c'2 d'4
          c' e' g'
          e'2.\fermata
           f'2 f'4
          e' f' g'
          cis' d' e'
          d'2\fermata f'4~
          f' e'8 [d'] e'4
          f'2 e'4
          f'4. g'8 f' [e']
          f'2.\fermata
          f'2 f'4
          g' f' g'
          g' f' e'
          d'2\fermata f'4~
          f' e'8 [d'] e'4
          f'2 e'4~
          e' a d'
          cis'2.\fermata
           d'2 d'4~
          d' c'8 [d'] e'4~
          e' d'2
          c'2.\fermata
          c'4 f'8 [e'] f'4
          f'2 e'4
          f'8 [ees'] d' [c'] d' [bes]
          c'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      In dul -- ci ju -- bi -- lo __ _ _
      sin -- get und seid froh, __ _ _
      un -- sers Her -- zens Won - - ne
      liegt in prae -- se -- pi -- o __ _ _
      leuch -- tet als die Son - - ne
      ma -- tris in pre -- mi -- o __ _ _
      Al -- pha es et O, __ _ _ _
      Al -- pha es et O. __ _ 
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a2 bes4
          c'2 bes4
          a2 bes4
          a2.\fermata
          a2 bes4
          a g f
          g c' b
          g2.\fermata
           a2 bes4
          c' d' e'
          a b cis'
          a2\fermata c'4
          d' bes c'
          c'2 c'4
          c' a c'
          c'2.\fermata
          a2 bes4
          g2 e'4
          e' d' cis'
          a2\fermata c'4
          d' bes c'
          c'2 c'4
          a2 bes4
          e2.\fermata
           r8 f g [a] bes [a]
          g4 a8 [bes] c' [bes]
          a4. g8 f4
          g2.\fermata
          a4 bes c'
          d' bes c'~
          c' bes8 [a] bes [g]
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f4
          d c bes,
          a, bes,8 [a,] g, [a,]
          f, [f] ees [d] c [bes,]
          f2.\fermata
          d4 c bes,
          f e d
          e c g,
          c2.\fermata
           f2 bes4~
          bes a g~
          g f e
          d2\fermata a,4
          bes, g, c
          f,8 [g,] a, [bes,] c [bes,]
          a,4 f, c,
          f,2.\fermata
          f4 e d
          e d c
          f8 [g] a4 a,
          d2\fermata a,4
          bes, g, c
          f,8 [g,] a, [bes,] c [a,]
          d4 c bes,
          a,2.\fermata
           bes,4 a, g,
          c bes, a,
          d8 [c] d [e] f [d]
          e2.\fermata
          f,4 g, a,
          bes, g, c
          a, bes,2
          f,2.\fermata \fine
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
