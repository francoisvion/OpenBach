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
 title = "Nun lob, mein Seel, den Herren"
 poet = "Auteur : Johann Gramann (1487-1541)"
  opus = "BWV 17/7"
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
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          a'2 gis'4
          fis'2 e'4
          a' b'2
          cis''\fermata cis''4
          cis'' b' cis''
          cis''2 b'4
          a' b'2
          a'\fermata } a'4
          a' b' cis''
          b'2 cis''4
          a' gis'2
          fis'\fermata b'4
          b' a' gis'
          a' fis'2
          e'\fermata
          e'4
          a'2 a'4
          b'2 b'4
          cis''4. b'8 cis''4
          a'2\fermata a'4
          d''2 d''4
          cis'' b' cis''
          b'2\fermata
          b'4
          cis''2 cis''4
          d''2 d''4
          e''2.
          a'2\fermata cis''4
          b' a' gis'
          a' fis'2
          e'\fermata
          e'4
          a'2 gis'4
          fis'2 e'4
          b' cis''2
          b'\fermata cis''4
          d''2 cis''4
          b' a'8 [gis'] a' [b']
          cis''4 b'2
          a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          fis'2 e'4
          d' cis' b
          e' fis' e'
          e'2\fermata fis'8 [e']
          gis'2 eis'4
          fis'2 gis'4
          a'2 gis'4
          e'2\fermata } e'4
          fis' gis' a'
          b' a' gis'
          fis'2 eis'4
          cis'2\fermata fis'4
          e'2 e'4
          e'2 dis'4
          b2\fermata
          cis'4
          cis'2 fis'4
          e' fis' gis'
          a'2 g'4
          fis'2\fermata a'4
          b'2 b'8 [a']
          g' [ais'] b'4 e'
          dis'2\fermata
          e'4
          e'2 fis'4
          fis'2 g'4
          g' fis' e'
          d'2\fermata e'4
          fis'2 e'4
          e'2 dis'4
          b2\fermata
          cis'4
          cis' dis' e'
          dis'2 e'4
          fis'4. gis'8 a'4
          e'2\fermata gis'4
          a' b' a'
          gis' a'2
          a'4 gis'2
          e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wie sich ein Vatr er -- bar - met
      Üb'r sei - ne jun -- ge Kind -- lein klein:
      Er kennt __ _ das arm' Ge -- mäch - te,
      er weiß, __ _ wir sind nur Staub.
      Gleich wie das Gras vom Re - - chen,
      Ein Blum' und fal - lend Laub,
      der Wind nur drü -- ber we -- het,
      so ist __ _ es nim -- mer da:
      al -- so der Mensch ver -- ge - het,
      sein End, das ist __ _ _ _ ihm nah.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      So tut der Herr uns Ar - men,
      so wir __ _ ihn kind -- lich fürch -- ten rein.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  cis'4
          cis'2 cis'4
          a2 gis4
          a2 gis4
          a2\fermata cis'4
          cis'2 b4
          a2 e'4
          e' fis' e'
          cis'2\fermata } cis'4
          d'2 e'4
          eis' fis' gis'
          cis' d' cis'
          a2\fermata a4
          gis a b
          cis'2 b8 [a]
          gis2\fermata
          gis4
          a2 d'4
          b2 e'4
          e'2.
          d'2\fermata e'4
          fis'2 b4
          e' d'8 [cis'] b [ais]
          b2\fermata
          gis4
          a2 a4
          b2 b4
          b a g
          fis2\fermata a4
          fis2 b4
          cis' b a
          gis2\fermata
          gis4
          a2 b4
          b a gis
          d' a2
          gis\fermata cis'4
          fis' e' e'
          e'8 [d'] cis'4 fis'
          e'2 d'4
          cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          fis2 cis4
          d2 d4
          cis d e
          a,2\fermata a4
          eis2 cis4
          fis e d
          cis d e
          a,2\fermata } a,4
          d2 a4
          gis fis eis
          fis b, cis
          fis,2\fermata dis4
          e2 d4
          cis a, b,
          e2\fermata
          cis4
          fis e fis
          gis fis e
          a2 a,4
          d2\fermata cis4
          b, b8 [a] g [fis]
          e [fis] g4 fis
          b,2\fermata
          e4
          a gis fis
          b a g
          cis2.
          d2\fermata a4
          dis2 e4
          a, b,2
          e\fermata
          cis4
          fis2 e4
          b,2 cis4
          d2 dis4
          e2\fermata eis4
          fis gis a
          e fis d
          e2 e4
          a,2\fermata \fine
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
