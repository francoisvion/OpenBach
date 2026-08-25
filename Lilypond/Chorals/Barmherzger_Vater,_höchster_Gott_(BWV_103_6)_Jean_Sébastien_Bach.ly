\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Barmherzger Vater, höchster Gott" \small " (v. 9)"}}
  subtitle = "tiré de la cantate : Ihr werdet weinen und heulen"
  poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 103/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'8 [g']
          a'4 b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e'' d''8 [cis'']
          cis''2 b'4\fermata } b'
          b' b'8 [cis''16 d''] cis''8 [b'] a'4
          a' gis' a'\fermata a'
          b' cis'' d'' cis''
          b'2 cis''4\fermata fis'8 [g']
          a'4 b' a' d''
          d'' cis'' d''\fermata d''
          cis'' b' e'' d''8 [cis'']
          cis''2 b'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d' d'8 [e']
          fis' [g'] e'4 fis'\fermata fis'
          fis'8 [e'] d'4 g' fis'8 [gis']
          ais' b'4 ais'8 fis'4\fermata } fis'
          e'8 [fis'] gis'4 a' e'
          e' e' e'\fermata fis'
          fis' fis' fis' e'
          d' cis'8 [b] fis'4\fermata d'8 [e']
          fis'4 g' d'8 [e'] fis' [g']
          a' [e'] fis' [g'] fis'4\fermata b'
          e'8 [fis'] g' [a'] b' [a'16 g'] fis'4
          fis'8 [g'] fis' [e'] dis'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich hab dich ei -- nen Au -- gen -- blick,
      o lie -- bes Kind, ver -- las -- sen;
      will ich dir schon die Freu -- den -- kron
      auf -- setz -- en und ver -- eh -- ren;
      dein kur -- zes Leid soll sich in Freud
      und e -- wig Wohl ver -- keh -- ren.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sieh a -- ber, sieh, mit gro -- ßem Glück
      und Trost ohn al -- le Ma -- ßen;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          a g fis8 [g] a [b]
          a4 a a\fermata b
          ais b b8 [cis'] d' [e']
          fis' [cis'] fis' [e'] d'4\fermata } d'8 [cis']
          b4 e' e'8 [d'] cis'4
          b cis'8 [d'] cis'4\fermata d'8 [cis']
          b4 e' d'8 [cis'] b [ais]
          fis'4 e' ais\fermata b
          cis' d'8 [e'] fis'4 a
          a8 [b] a4 a\fermata a8 [gis]
          a4 b b8 [cis'] d' [gis]
          ais b4 ais8 fis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          fis g d8 [e] fis [g]
          a4 a, d\fermata b,
          fis g8 [fis] e4 b
          fis2 b,4\fermata } b8 [a]
          gis [fis] e4 a,8 [b,] cis [d]
          e [d] e4 a,\fermata d8 [e]
          d [cis] b, [ais,] b,4 cis
          d g fis\fermata b
          a g fis e8 [d]
          a [g] a4 d\fermata b,
          a, e8 [fis] g [a] b4
          fis8 [e] fis4 b,\fermata \fine
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
