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
  title = \markup{\concat{"Zeuch ein zu deinen Toren" \small " (v. 5)"}}
  subtitle = "tiré de la cantate : Sie werden euch in den Bann tun"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 183/5"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          a' b' c'' d''
          b'8 [c''] c'' [b'16 c''] d''4\fermata e''
          d''8 [c''] b' [a'] b'4 b'8 [a']
          a'2.\fermata } e''4
          d'' c'' b' a'
          b'2.\fermata b'4
          c'' d'' e'' e''
          d''8 [c''] b' [c''] b'4\fermata b'
          c'' d'' e'' e''
          d''8 [c''] b' [c''] b'4\fermata e''
          d''8 [c''] b' [a'] b'4 b'8 [a']
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'8 [d']
          e' [f'] e' [d'] c' [d'] a' [fis']
          d' [g'] e' [a'] gis'4\fermata b'8 [gis']
          e'4. a'8 a' [b'] gis'4
          e'2.\fermata } a'8 [g']
          fis' [gis'] a'4 a'8 [gis'] a' [d'']
          gis'2.\fermata gis'4
          a' g' g' c''8 [b']
          a' [g'] fis'4 g'\fermata b'
          a' g' g' g'
          fis'8 [gis'] a'4 gis'\fermata c''8 [b']
          a'4 gis'8 [a'] a' [fis'] gis'4
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Du bist ein Geist, der leh - ret,
      Wie man recht be -- ten soll;
      es steigt zum Him -- mel an,
      es steigt und läßt nicht a - be,
      bis der ge -- hol -- fen ha - be,
      der al -- len hel -- fen kann.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dein Be -- ten wird er -- hö - ret,
      dein Sin -- gen klin -- get wohl.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c'8 [b]
          c' [d'] c' [b] a [c'] b [a]
          b [e'] c' [f'] e' [d']\fermata b4
          a8 [b] c' [d'] e' [f'] b [d']
          c'2.\fermata } c'4
          c'8 [b] e' [f'] b [e'] e' [a]
          e'2.\fermata e'4
          e' d' c'8 [d'] e'4
          a d' d'\fermata e'
          e' b c' b
          a8 [e'] d' [a] e'4\fermata a
          d'8 [e'] f' [d'] e'4 d'8 [cis']
          cis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          a gis a fis
          g8 a~ a g16 [a] b4\fermata gis
          a f e8 [d] e4
          a,2.\fermata } a,4
          b, c8 [d] e4 f
          e2.\fermata e4
          a8 [b] c' [b] c' [b] a [g]
          fis [e] d4 g\fermata gis
          a8 [g] f [g] f [e] d [c]
          d [e] f [d] e4\fermata c
          f8 [e] d [f] e [d] e4
          a,2.\fermata \fine
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
