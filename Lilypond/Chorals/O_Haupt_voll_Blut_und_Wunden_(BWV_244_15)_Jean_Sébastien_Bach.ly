\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "O Haupt voll Blut und Wunden (v. 5)"
  subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/15"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  fis'4
          b' a' g' fis'
          e'2 fis'4\fermata cis''
          d'' d'' cis''8 [b'] cis''4
          b'2.\fermata } d''4
          cis''8 [b'] a'4 b' cis''
          d''2 d''4\fermata a'
          b' a' g' g'
          fis'2.\fermata d''4
          cis''8 [d''] e''4 d'' cis''
          b'2 cis''4\fermata fis'
          g' fis' e' a'
          fis'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d'8 [e'] e' [d']
          d'4 cis' d'\fermata e'
          d'8 [e'] fis'4 fis' fis'8 [e']
          d'2.\fermata } b'8 [a']
          g'4 fis'8 [e'] d'4 g'
          g' fis'8 [e'] fis'4\fermata fis'
          g' fis' fis' e'
          dis'2.\fermata e'4
          e' e' fis' e'
          fis' e' e'\fermata d'
          d'8 [cis'] d'4 d' cis'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Er -- ken -- ne mich, mein Hü -- ter,
      mein Hir -- te, nimm mich an!
      Dein Mund hat mich ge -- la -- bet
      mit Milch und sü -- ßer Kost;
      dein Geist hat mich be -- ga -- bet
      mit man -- cher Him -- mel -- slust.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Von dir, Quell al -- ler Gü -- ter,
      ist mir viel Gut's ge -- tan.
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
          \partial 4  a4
          g a b8 [a] a4
          b a a\fermata ais
          fis b b ais
          b2.\fermata } fis'4
          e'8 [d'] cis'4 b8 [a] g [a]
          b4 a8 [g] a4\fermata d'
          d' d'8 [cis'] b4 b
          b2.\fermata b4
          a a8 [gis] a [b] cis' [a]
          fis [b] gis4 a\fermata a
          g a b e8 [a]
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          g fis b,8 [cis] d4
          g, a, d\fermata cis
          b,8 [cis] d [e] fis4 fis,
          b,2.\fermata } b4
          e fis g8 [fis] e4
          d2 d4\fermata d
          g d e8 [fis] g [a]
          b2.\fermata gis4
          a cis fis8 [gis] a4
          d e a,\fermata d8 [cis]
          b,4 a, g, a,
          d,2.\fermata \fine
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
