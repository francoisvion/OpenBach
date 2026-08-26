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
 title = "Der Herr ist mein getreuer Hirt"
 subtitle = "tiré de la cantate : Du Hirte Israel, höre"
 poet = "Auteur : Cornelius Becker (1561-1604)"
  opus = "BWV 104/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'8 [b']
          cis''4 d'' e'' d''
          cis'' b' cis''\fermata cis''
          cis'' b'8 [cis''] d'' [cis''] b'4
          a' b' a'\fermata } a'
          b' cis'' d'' cis''
          b' cis'' b'\fermata b'
          cis'' d'' e'' d''
          cis'' b' cis''\fermata cis''
          cis'' b'8 [cis''] d'' [cis''] b'4
          a'8 [fis'] gis'4 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          a' a' gis' fis'8 [gis']
          a'4 gis' a'\fermata e'
          fis' fis'8 [e'] d'4 e'
          e'8 a'4 gis'8 e'4\fermata } e'
          e' e' d'8 [e'] fis'4
          fis'8 [e'] e' [d'16 cis'] d'4\fermata e'
          e' fis' gis' fis'
          e' d'8 [fis'16 eis'] fis'4\fermata e'
          fis' fis'8 [e'] d'4 e'
          e'8 [fis'] e'4 e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Der Herr ist mein ge -- treu -- er Hirt,
      dem ich mich ganz ver -- trau - e,
      zum fri -- schen Was -- ser leit' er mich,
      mein Seel zu la -- ben kräf -- tig -- lich
      durchs se -- lig Wort der Gna - den.
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
       zu Weid er mich, sein Schäf -- lein, führt,
       auf schö -- ner grü -- nen Au - e,

    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  cis'8 [d']
          e'4 fis' b8 [cis'] d'4
          e' e' e'\fermata a
          a2. d'8 [b]
          e' [d'16 cis'] d'4 cis'\fermata } cis'
          gis ais b ais
          b ais fis\fermata b
          a a b a8 [b]
          cis'4 fis8 [gis] ais4\fermata a
          a2 b4 gis
          a8 [d'] b4 cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          a8 [gis] fis4 e b,
          cis8 [d] e4 a,\fermata a8 [gis]
          fis [e] d [cis] b, [a,] gis,4
          cis8 [a,] e4 a,\fermata } a,
          e d8 [cis] b,4 e8 [fis]
          g4 fis b,\fermata gis
          a8 [gis] fis4 e fis8 [gis]
          a [ais] b4 fis\fermata a8 [gis]
          fis [e] d [cis] b, [cis] d4
          cis8 [d] e4 a,\fermata \fine
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
