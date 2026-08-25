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
  title = \markup{\concat{"Wer nur den lieben Gott läßt walten" \small " (v. 8)"}}
  subtitle = "tiré de la cantate : Siehe, ich will viel Fischer aussenden"
 poet = "Auteur : Georg Neumark (1621-1681)"
  opus = "BWV 88/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          b' cis'' d'' cis''
          b' cis'' ais'2
          fis'4\fermata a' a' g'
          fis' b' b' ais'
          b'2.\fermata }  cis''4
          d'' e'' fis''8 [e''] fis'' [g'']
          e''4 e'' d''\fermata fis''
          e'' d'' cis'' b'8 [cis'']
          d'' [e''] cis''4 b'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [e']
          fis'4 fis' fis'8 [g'] a'4
          g' g' fis'2
          cis'4\fermata cis'8 [d'] e'4 e'
          fis'8 [e'] d'4 cis'8 [d'] e'4
          d'2.\fermata } fis'4
          fis'8 [b'] a' [g'] fis'4 b'
          b' a'8 [g'] fis'4\fermata a'
          ais' b' e'8 [dis'] e'4
          fis'8 [g'] fis' [e'] dis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Sing, bet und geh auf Got -- tes We -- gen,
      cer -- richt das Dei -- ne nur ge -- treu
      denn wel -- cher sei -- ne Zu -- ver -- sicht
      auf Gott setzt, den ver -- läßt er nicht.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      und trau des Him -- mels rei -- chem Se -- gen,
      So wird er bei dir wer -- den neu;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b8 [cis']
          d'4 cis' b cis'8 [d']
          e'4 e'8 [d'] cis'2
          ais4\fermata a a8 [b] cis'4
          cis' b8 [a] g4 fis
          fis2.\fermata } ais4
          b8 [g'] fis' [e'] d'4 d'
          d'8 [b] cis'4 a\fermata a8 [b]
          cis'4 fis8 [g] a [fis] b4
          b ais fis\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b,4
          b ais b fis
          g8 [fis] e4 fis2
          fis,4\fermata fis cis b,8 [a,]
          d4 g8 [fis] e4 fis
          b,2.\fermata } fis4
          b cis' d'8 [cis'] b [a]
          g4 a d\fermata d
          cis b, a, g,8 [g]
          fis [e] fis4 b,\fermata \fine
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
