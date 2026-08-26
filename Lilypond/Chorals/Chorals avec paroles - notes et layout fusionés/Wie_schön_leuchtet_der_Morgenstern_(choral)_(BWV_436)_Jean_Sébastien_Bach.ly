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
 title = "Wie schön leuchtet der Morgenstern (choral)"
 poet = "Auteur : Philipp Nicolai (1556-1608)"
  opus = "BWV 436"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          b' gis'8 [fis'] e'4 b'
          cis'' cis'' b'\fermata b'
          cis'' dis'' e'' dis''
          cis'' cis'' b'\fermata gis'
          cis'' b' a' gis'
          fis'2 e'4\fermata } r
          b'2 gis'\fermata
          b' gis'\fermata
          a'4 gis' fis' gis'
           a' gis' fis' gis'
          a' gis' fis'2
          e'\fermata e''4 dis''
          cis'' b' a' gis'
          fis'2 e'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          b b cis' dis'
          gis' fis' fis' gis'
          a' a' gis' fis'
          fis'8 [gis'] fis' [e'] dis'4 e'
          e' dis' e'8 [fis'] gis' [e']
          e'4 dis' b } r
          fis'2 e'
          fis' e'
          fis'4 e' dis' e'
          fis' e' dis' e'
          fis' e'8 [dis'] cis' [dis'16 e'] dis'4
          b2 gis'4 fisis'
          gis' gis'8 [fis'] e'4 e'
          e' dis' b \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wie schön leuch -- tet der Mor -- gen -- stern
      voll Gnad' und Wahr -- heit von dem Herrn,
      die sü -- ße Wur -- zel Jes -- se;
      Lieb -- lich,
      freund -- lich,
      schön und herr -- lich, Groß und ehr -- lich, Reich von Ga -- ben,
      hoch und sehr präch -- tig er -- ha -- ben.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      du Sohn Da -- vids aus Ja -- kobs Stamm
      mein Kö -- nig und mein Bräu -- ti -- gam,
      Hast mir mein Herz be -- ses -- sen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  gis4
          fis e8 [fis] gis [ais] b4
          b ais dis' e'
          e' fis' b b
          b ais b b
          a8 [gis] fis4 cis' b
          b4. a8 gis4 } r
          b2 b
          dis' b
          cis'4 b b b
          b b b b
          cis'8 [dis'] e'4~ e'8 [cis'] b [a]
          gis2 cis'8 [b] ais4
          gis dis' cis' b
          cis' b8 [a] gis4 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          dis e cis gis
          e fis b,\fermata e
          a gis8 [fis] gis [ais] b4
          fis fis, b,\fermata e
          a, b, cis8 [dis] e4
          b,2 e4 } r
          dis2 e
          b, e
          fis4 gis a8 [gis] fis [e]
          dis4 e b,8 [b] a [gis]
          fis4 cis8 [b,] a,4 b,
          e2 cis4 dis
          eis8 [fisis] gis4 cis8 [dis] e4
          ais, b, e\fermata \fine
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
