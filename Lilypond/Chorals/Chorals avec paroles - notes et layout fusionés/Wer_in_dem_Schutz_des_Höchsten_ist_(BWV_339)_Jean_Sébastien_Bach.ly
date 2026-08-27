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
 title = "Wer in dem Schutz des Höchsten ist"
 poet = "Auteur : Kaspar Bienemann (1540-1591)"
  opus = "BWV 339"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          r4 a' gis' a'
          b' b' a' b'
          cis''2\fermata r4 d''
          cis'' b' a' gis'8 [a']
          b'2 a'\fermata }
           r4 a' b'8 [cis''] d''4
          cis''8 [b'] a'4 b'8 [a'] gis'4
          fis'2\fermata r4 gis'
          e' e' b' cis''
          d''8 [cis''] b'4 a'2\fermata
           r4 e'' cis'' cis''
          b' a' gis' a'
          b'2 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          r4 e' d' e'
          fis' cis' cis' fis'
          eis'2\fermata r4 fis'
          e'8 [cis'] dis' [eis'] fis'4 e'
          fis' e'8 [d'] cis'2\fermata }
           r4 e' fis' eis'8 [fis']
          gis'4 cis' fis'4. eis'8
          cis'2\fermata r4 dis'
          e'8 d'4 cis'8 dis' [e'] e'4
          d'8 [fis'] g'4 g' fis'\fermata
          r b'4. a'16 [gis'] a'4~
          a'8 [gis'16 fis'] e'4 e' e'
          e'4. d'8 cis'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr, wie du willst, so schick's mit mir
      im Le -- ben wie im Ster -- ben,     
      Er -- halt' mich nur in dei -- ner Huld,
      sonst wie du willst, gieb mir Ge -- duld,
      dein Will', der ist _ der _ bes -- te.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Al -- lein zu dir steht mein Be -- gehr,
      Lass mich, Herr, nicht ver -- derb -- en.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 3
      Wer in dem Schutz des Höch -- sten ist,
      und sich Gott thut er -- ge -- ben,      
      der du ja wirst er -- ret -- ten mich
      von Teu -- fels Stri -- cken gnä -- dig -- lich
      dnd von der Pe - sti - len -- ze.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 4
      der spricht: du, Herr, mein' Zu -- flucht bist,
      mein Gott, Hoff -- nung und Le -- ben,
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
          r4 cis' b a
          a gis a gis8 [fis]
          gis2\fermata r4 a
          a b cis' b8 [a]
          a4 gis e2\fermata }
           r4 cis' d'8 [cis'] b [a]
          gis4 a8 [gis] fis4 cis'8 [b]
          a2\fermata r4 gis
          gis a fis8 [gis] g [fis]~
          fis [d] d'4 d'2\fermata
          r4 e' e' cis'8 [d'16 e']
          fis'8 [e'] a4 d'8 [b] a4
          a gis e2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          r4 a, b, cis
          dis eis fis8 [e] d4
          cis2\fermata r4 fis8 [gis]
          a4~ a8 [gis] fis [e] d [cis]
          d [b,] e4 a,2\fermata }
           r4 a2 gis8 [fis]
          eis4 fis8 [e] d [b,] cis4
          fis,2\fermata r4 bis,
          cis8 [b,] a,4~ a,8 gis, ais,4
          b,~ b,8 [cis] d2\fermata
          r4 gis, a,8 [cis] fis [e]
          d4~ d8 [cis] b, [e] cis [a,]
          e4 e, a,2\fermata \fine
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
