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
 title = "Jesu, meiner Seelen Wonne"
 subtitle = "tiré de la cantate : Mein liebster Jesus ist verloren"
 poet = "Auteur : Martin Jahn (v.1620-v.1682)"
  opus = "BWV 154/3"
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
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' d''
          b' b' a'2\fermata }
          b'4 cis'' d'' d''
          cis'' cis'' b'4 b'\fermata
          d''4 e'' fis'' fis''
          e'' e'' d''4 d''\fermata
          cis''4 d'' e'' e''
          d'' cis'' b'2\fermata
          cis''4 d'' e''8 [d''] [cis''4]
          b'4 b' a'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          a'4 a' gis' a'
          a'8 [gis'] a'4 gis' gis'\fermata
          a' a' b' a'
          a' gis' e'2\fermata }
          gis'4 ais' b' b'
          b' ais' fis'4 fis'\fermata
          fis'4 a' a' a'
          a'8 [e'] a' [g'] fis'4 fis'\fermata
          e'4 a' e'8 [fis'] gis'4
          a' a' gis'2\fermata
          a'4 a' a'8 [gis'] a'4
          a' gis' e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, mein Hort und Er -- ret -- ter,
      Je -- su, mei -- ne Zu -- ver -- sicht,
      Wie ver -- lan -- get mei -- nem Her -- zen,
      Je -- su -- lein, nach dir mit Schmer -- zen!
      Komm, ach komm, ich war -- te dein,
      komm, o lieb -- stes Je -- su -- lein!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Je -- su, star -- ker Schlan -- gen -- tre -- ter,
      Je -- su, mei -- nes Le -- bens Licht!
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
          e'4 fis' e'8 [d'] cis'4
          d' e' e' e'\fermata
          e' fis' b cis'8 [d']
          e' [b] e' [d'] cis'2\fermata }
          e'4 e' fis' fis'
          fis'8 [cis'] fis' [e'] d'4 d'\fermata
          d'4 cis' d' d'
          d' cis' a4 a\fermata
          a8 [b] cis'4 b e'
          fis' e' e'2\fermata
          e'4 fis' e' e'
          e'8 [b] e' [d'] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          a4 fis cis fis
          b, cis8 [d] e4 e\fermata
          a8 [gis] fis4 gis a
          e e a,2\fermata }
          e4 d8 [cis] b, [cis] d [e]
          fis4 fis b,4 b,\fermata
          b4 a8 [g] fis [e] d4
          a a, d4 d\fermata
          a8 [gis] fis4 gis cis'
          fis8 [gis] a4 e2\fermata
          a8 [fis] e [d] cis [b,] a,4
          e e a,2\fermata \fine
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
