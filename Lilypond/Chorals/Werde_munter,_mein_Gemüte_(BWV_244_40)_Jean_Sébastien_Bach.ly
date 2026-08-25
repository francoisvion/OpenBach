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
  title = \markup{\concat{"Werde munter, mein Gemüte" \small " (v. 6)"}}
  subtitle = "tiré de la Passion selon saint Matthieu"
  poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 244/40"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' d''8 [cis'']
          b'4 b'8 [a'] a'2\fermata
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' d''8 [cis'']
          b'4 b'8 [a'] a'2\fermata
          b'4 cis'' d''8 [cis''] d'' [e'']
          cis''4 cis'' b'2\fermata
          d''4 e'' fis'' e''8 [fis''16 g'']
          fis''4 e''8 [d''] d''2\fermata
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e'' a'8 [b']
          cis''4 b'8 [a'] a'4 a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          a'8 [gis'] fis'4 b'8 [a'] gis'4
          fis' e'8 [fis'] gis'4 gis'\fermata
          a'8 [gis'] a'4 a'8 [gis'] a'4
          a'8 [fis'] gis'4 e'2\fermata
          a'8 [gis'] fis'4 b'8 [a'] gis'4
          fis' e'8 [fis'] gis'4 gis'\fermata
          a'8 [gis'] a'4 a'8 [gis'] a'4
          a'8 [fis'] gis'4 e'2\fermata
          gis'4 ais' b'8 [ais'] b'4
          b' ais' fis'2\fermata
          b'4 b'8 [a'] a'4 b'
          a' g'8 [fis'] fis'2\fermata
          e'4 a' gis' b'8 [a']
          a' [gis'] a'4 e'8 [fis'] gis'4\fermata
          a' gis'8 [fis'] e' [gis'] a'4
          a' gis' e' e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Bin ich gleich von dir ge -- wi -- chen,
      stell ich mich doch wie -- der ein;
      hat uns doch dein Sohn ver -- gli -- chen
      durch sein Angst und To -- des -- pein.
      Ich ver -- leu -- gne nicht die Schuld;
      a -- ber de -- ine Gnad und Huld
      ist viel grö -- ßer als die Sün -- de,
      die ich stets in mir be -- fin -- de.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          fis'8 [e'] d' [cis'] b4 cis'8 [b]
          a [b] cis' [d'] e'4 e'\fermata
          e' a8 [b] cis' [d'] e'4
          fis' e'8 [d'] cis'2\fermata
          e'4 d'8 [cis'] b4 cis'8 [b]
          a [b] cis' [d'] e'4 e'\fermata
          e' a8 [b] cis' [d'] e'4
          fis' e'8 [d'] cis'2\fermata
          e'4 e' fis' e'8 [d']
          g'4 fis'8 [e'] d'2\fermata
          fis'4 e' d'8 [cis'] d'4
          d'8 [b] cis'4 a2\fermata
          a4 b8 [cis'] b4 cis'
          d'8 [e'] fis'4 gis' e'\fermata
          e' d' cis'8 [d'] e' [fis']
          e'4 d'8 [cis'] cis'4 cis'\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          fis4 b8 [a] gis [fis] e4
          fis8 [gis] a4 e e\fermata
          a fis cis b,8 [a,]
          d4 e a,2\fermata
          a4 b8 [a] gis [fis] e4
          fis8 [gis] a4 e e\fermata
          a fis cis b,8 [a,]
          d4 e a,2\fermata
          e4 d8 [cis] b,4 g
          e fis b,2\fermata
          b,4 cis d g
          a a, d2\fermata
          a4 gis8 [fis] gis4 cis
          fis e8 [dis] e4 e\fermata
          a,8 [gis,] a, [b,] cis [b,] cis [d]
          e4 e a, a,\fermata \fine
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
