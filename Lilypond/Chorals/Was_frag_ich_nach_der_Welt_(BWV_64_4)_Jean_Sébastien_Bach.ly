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
  title = \markup{\concat{"Was frag ich nach der Welt" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Sehet, welch eine Liebe hat uns der Vater erzeiget"
  poet = "Auteur : Balthasar Kindermann (1636-1706)"
  opus = "BWV 64/4"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          fis' d' a' a'
          b'2. b'4
          e' e' a' g'
          fis' d' r a'
          b' b' a' g'
          fis'2. e'4
          fis' gis' a'4. b'8
          gis'2 a'4\fermata a'
          a' a' d'' c''
          b'2. b'4
          b' b' e'' d''
          cis''2. a'4
          b' a' b' cis''
          d''2. a'4
          a' g'8 [fis'] e'4 e'
          d'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          d' fis'8 [e'] d'4 a'8 [fis']
          g'2. d'4
          cis'8 [d'] cis' [b] a4 e'
          d' a\fermata r d'
          d' g' fis' e'
          a2. cis'4
          d' e' e'4. fis'8
          e'2 e'4\fermata e'
          fis'8 [e'] fis' [g'] a' [g'] a' [fis']
          g'2. fis'4
          e' e' e' e'
          e'2. d'4
          g' a' g' b'8 [ais']
          b'2. a'8 [g']
          fis'4 e'8 [d'] d'4 cis'
          a2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Was frag' ich nach der Welt,
      und al -- len ih -- ren Schä -- tzen,
      wenn ich mich nur an dir,
      mein Je -- su, kann er -- gö -- tzen?
      Dich hab' ich ein -- zig mir
      zur Wol -- lust vor -- ge -- stellt:
      Du, du bist mei -- ne Lust:
      was frag' ich nach der Welt!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a a a d'
          d'2. g4
          g4. fis8 e4 a
          a fis r a
          g8 [a] b4 cis'8 [d'] d' [cis']
          d'2. cis'4
          a b a4. d'8
          b2 cis'4\fermata cis'
          d' d' d' d'
          d'2. b8 [a]
          gis [fis] gis [a] b [a] b [gis]
          a2. d'4
          d' d' d' e'
          fis'2. e'4
          d' a a8 [b] a [g]
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  cis4
          d8 [cis] d [e] fis [e] fis [d]
          g2. g,4
          a,8 [g,] a, [b,] cis [b,] cis [a,]
          d4 d r fis
          g e a a,
          d2. a,4
          d8 [cis] d [b,] cis [b,] cis [d]
          e4 e, a,\fermata a,
          d8 [cis] d [e] fis [e] fis [d]
          g2. dis4
          e8 [dis] e [fis] gis [fis] gis [e]
          a2. fis4
          g8 [a] g [fis] g [fis] g [e]
          b2. cis4
          d8 [e] fis [g] a4 a,
          d2.\fermata \fine
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