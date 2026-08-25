\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wer nur den lieben Gott läßt walten (v. 7)"
 subtitle = "tire de la cantate : Gott ist unsre Zuversicht,"
  opus = "BWV 197/10"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          b' cis''8 [b'] ais'4 fis'\fermata
          r a' a' g'
          fis' b' b' ais'
          b'2.\fermata } cis''4
          d'' e'' fis'' fis''
          e''4. d''8 d''4\fermata fis''
          e'' d'' cis'' b'8 [cis'']
          d''4 cis'' b'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [e']
          fis'4 fis' fis' fis'8 [e']
          d'4 g' fis' cis'\fermata
          r fis' fis' e'
          e'8 [d'] d'4 g' fis'
          fis'2.\fermata } fis'4
          fis' a' a' a'
          b' a' a'\fermata a'8 [b']
          cis''4 fis' g'8 [fis'] fis' [e']
          fis'4 fis'8 [e'] dis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      So wan -- delt froh auf Got -- tes We -- gen,
      und was ihr tut, da tut ge -- treu!     
      denn wel -- cher sei -- ne Zu -- ver -- sicht
      auf Gott setzt, den ver -- läßt er nicht.    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Ver -- die -- net eu -- res Got -- tes Se -- gen,
      denn der ist al -- le Morg -- en neu:
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
          d'4 cis' b ais
          b e'8 [d'] cis'4 ais\fermata
          r cis' d' a
          a b cis'8 [d'] e'4
          d'2.\fermata } ais4
          b cis' d' d'
          d' cis' fis'\fermata d'
          ais b b8 [ais] b4
          b ais fis\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b,4
          b ais b fis
          g8 [fis] e4 fis fis,\fermata
          r fis b, cis
          d g8 [fis] e4 fis
          b,2.\fermata } fis4
          b a8 [g] fis [e] d4
          g a d\fermata d
          cis b, e8 [fis] g4
          fis8 [e] fis4 b,\fermata \fine
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
