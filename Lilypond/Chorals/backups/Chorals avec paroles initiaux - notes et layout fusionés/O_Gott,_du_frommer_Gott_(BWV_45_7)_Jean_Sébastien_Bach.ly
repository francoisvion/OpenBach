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
  title = \markup{\concat{"O Gott, du frommer Gott" \small " (v. 2)"}}
  subtitle = "tiré de la cantate : Es ist dir gesagt, Mensch, was gut ist"
  poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 45/7"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          \partial 4  b'4
          gis' fis'8 [e'] b'4 b'
          cis''2\fermata r4 cis''
          fis' fis' b' a'
          gis' fis' e'\fermata b'
          cis'' cis'' b' a'
          gis'2\fermata r4 fis'
          gis' ais' b' cis''
          dis'' cis''8 [b'] b'4\fermata b'
          b' b' e'' d''
          cis''2\fermata r4 cis''
          cis'' cis'' fis'' e''
          dis''2\fermata r4
          b'
          cis'' b' cis'' dis''
          e''2\fermata r4 b'
          b' a'8 [gis'] fis'4 fis'
          e'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e' dis' e'8 [fis'] gis'4
          a'2\fermata r4 fis'8 [e']
          dis' [cis'] dis'4 e' fis'
          e' dis' b\fermata e'
          e' a' a'8 [gis'] fis'4
          e'2\fermata r4 fis'
          fis' e' fis' gis'
          fis'2 dis'4\fermata fis'
          e' e' e'8 [fis'] gis'4
          a'2\fermata r4 a'
          a' ais' b' b'8 [ais']
          b'2\fermata r4
          b'
          a' b' b'8 [a'] gis' [fis']
          e'2\fermata r4 fis'
          e' e' e' dis'
          b2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Gib, daß ich tu mit Fleiß,
      was mir zu tun ge -- büh - ret,
      wor -- zu mich dein Be -- fehl
      in mei -- nem Stan -- de füh - ret!
      Gib, daß ichs tu -- e bald,
      zu der Zeit, da ich soll;
      und wenn ich’s tu, so gib,
      daß es ge -- ra -- te wohl!
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  gis8 [a]
          b4 a b e'
          e'2\fermata r4 cis'
          b b b b
          b4. a8 gis4\fermata b
          a8 [cis'] fis' [e'] dis' [e'] e' [dis']
          b2\fermata r4 b
          b cis' fis8 [b] b4
          b ais fis\fermata b8 [a]
          gis [fis] gis [a] b4 e'
          e'2\fermata r4 e'
          fis' cis' dis' e'
          fis'2\fermata r4
          e'
          e' e' a b8 [a]
          gis2\fermata r4 fis8 [gis16 a]
          gis4 a8 [b] cis'4 b8 [a]
          gis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e,4
          e fis gis fis8 [e]
          a2\fermata r4 ais
          b a gis dis
          e b, e,\fermata gis
          a fis b b,
          e2\fermata r4 dis
          e cis dis e
          fis fis, b,\fermata dis
          e8 [dis] e [fis] gis4 fis8 [e]
          a2\fermata r4 a8 [gis]
          fis4 e dis cis
          b,2\fermata r4
          gis
          a gis fis b,
          cis2\fermata r4 dis
          e8 [dis] cis [b,] a,4 b,
          e,2.\fermata \fine
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
