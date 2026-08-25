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
  title = \markup{\concat{"Was mein Gott will, das g'scheh allzeit" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Nimm, was dein ist, und gehe hin"
  poet = \markup{\column{"Auteur : Markgraf Albrecht von" "Brandenberg (1490-1568)"}}
  opus = "BWV 144/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          a' b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e''4. d''8
          cis''4 d'' cis''2
          b'2.\fermata } b'4
          b' b' cis''4. b'8
          cis''4 a' a' gis'
          a'\fermata a' b' cis''
          d'' cis'' b'2
          cis''2.\fermata
          fis'8 [gis']
          a'4 b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e''4. d''8
          cis''4 d'' cis''2
          b'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d' d'8 [e']
          fis' [g'] a'4 a'\fermata a'
          a' g' g' fis'
          fis'2~ fis'8 g' fis' [e']
          d'2.\fermata } fis'4
          e' d' cis' dis'8 [eis']
          fis'4 fis' fis' e'
          e'\fermata e' e' e'
          fis' ais' b' gis'
          ais'2.\fermata cis'4
          fis' gis' fis' fis'
          b' a' a'\fermata gis'
          a' gis' ais'4. b'8
          cis''4 b'2 ais'4
          a' g' fis'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Was mein Gott will, das g'scheh' all -- zeit,
      sein Will' der ist der be - - ste;
      Er hilft aus Noth, __ _ _ der From -- me Gott,
      und züch -- ti -- get mit Ma -- ßen.
      Wer Gott ver -- traut, fest auf ihn baut, 
      den will er nicht ver -- la - - ßen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      zu hel -- fen den'n er ist be -- reit, die an ihn glau -- ben fe - - ste.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          a g fis8 [g] a [b]
          a4 e' fis'\fermata fis'
          e' e' b b
          ais b2 ais4
          fis2.\fermata } d'8 [cis']
          b [cis'] b [a] gis4 a8 [b]
          a [b] cis'4 b b
          cis'\fermata cis' b ais
          b g' fis' eis'
          fis'2.\fermata a8 [b]
          cis'4 d'8 [cis'] cis'4 d'
          e' e' fis'\fermata e'8 [d']
          e'4 e' e'8 fis' g'4~
          g'8 [fis'16 e'] d'8 [cis'16 b] fis'8 [cis'] fis' [e']
          dis'4 e' dis'\fermata \fine
        }
        
        \new Lyrics \with {alignAboveContext = "lower"} \lyricsto "tenor" {
          \repeat unfold 47 {\skip1}
          \tweak X-offset #-6.0 "(T.) ver" -- la - - - - - ßen.
        }
    
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b,4
          fis g d8 [e] fis [g]
          a4 a, d\fermata d
          a e8 [fis] g [a] b4
          fis8 [e] d [e] fis2
          b,2.\fermata } b8 [a]
          gis [a] gis [fis] eis [cis] fis [gis]
          a [gis] fis [e] d [b,] e4
          a,\fermata a gis g
          fis e d8 [cis] d [b,]
          fis2.\fermata
          fis,4
          fis eis fis b8 [a]
          gis4 a d\fermata b,
          a, e8 [d] cis d cis [b,]
          ais, [g] fis [eis] fis2
          b,2.\fermata \fine
        }
        
        \new Lyrics \lyricsto "bass" {
          \repeat unfold 47 {\skip1}
          \tweak X-offset #-6.0 "(B.) ver" -- la - - - ßen.
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
