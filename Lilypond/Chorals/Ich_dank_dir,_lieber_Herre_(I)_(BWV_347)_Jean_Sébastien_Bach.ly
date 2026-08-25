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
 title = "Ich dank dir, lieber Herre (I)"
 poet = "Auteur : Johann Kolros (v.1487-1558)"
  opus = "BWV 347"
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
          \partial 4  a'4
          a' a' a' b'
          g' fis' e'\fermata b'
          cis'' b' a' gis'8 [fis']
          gis'4 fis' e'\fermata }
          \partial 4  e''
          d'' cis'' b' a'
          a'8 [b'] cis''4 b'\fermata cis''
          d'' cis'' b' ais'
          b'2.\fermata
          \partial 4  e'4
          a' b' cis'' d''
          e'' d''8 [cis''] b'4\fermata d''
          cis'' b' e''4. d''8
          cis'' [b'] a' [b'] cis''4 b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          fis' e' fis' fis'
          e' dis' b\fermata gis'
          a' gis'8 [fis'] e'2~
          e'4 dis' b\fermata }
          \partial 4  cis''8 [b']
          a'4 a' gis' a'8 [g']
          fis' [gis'] a'4 gis'\fermata ais'
          b'8 [a'] g'4 fis'8 [e'] e'4
          fis'2.\fermata
          \partial 4 e'8 [d']
          cis'4 d' e' fis'8 [gis']
          a'2 e'4\fermata b'
          a'8 [gis'] fis'4 e' fis'8 [gis']
          a'2 a'4 gis'
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich dank' dir, lie -- ber Her - re,
      daß du mich hast__ _ _ be -- wahrt
      mit Fins -- ter -- nis um -- fan - gen,
      da -- zu in gro -- ßer Not,
      da -- raus ich bin ent -- gan - gen,
      halfst du mir, Her - - - - re Gott.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      in die -- ser Nacht Ge -- fäh - re,
      da -- rin ich lag__ _ _ so hart
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
          \partial 4  cis'4
          cis' cis'8 [b] a [gis] fis4
          b4. a8 gis4\fermata e'
          e' dis' cis'2
          b4. a8 gis4\fermata }
          \partial 4  gis
          a8 [b] cis' [d'] e'4 e'
          d' e' e'\fermata e'
          fis'8 b4 ais8 b4 cis'
          d'2.\fermata
          \partial 4 gis4
          a gis8 [fis] e [e'] d'4
          cis'8 [d'] e' [fis'] gis'4\fermata fis'
          fis'8 [e'] d' [cis'] b4 cis'8 [d']
          e'4. d'8 cis' [fis'] b [e'16 d']
          cis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a8 [gis]
          fis4 cis d dis
          e b, e,\fermata e
          a b cis' b8 [a]
          b4 b, e\fermata }
          \partial 4  cis
          fis8 [gis] a4 e cis8 [a,]
          d4 cis8 [d] e4\fermata cis
          b, cis d8 [g] fis4
          b,2.\fermata
          \partial 4 cis4
          fis e8 [d] cis4 b,
          a,8 [b,] cis [d] e4\fermata b,
          fis8 [gis] a4 gis8 [e] a4~
          a8 [gis] fis4 e8 [d] e4
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
