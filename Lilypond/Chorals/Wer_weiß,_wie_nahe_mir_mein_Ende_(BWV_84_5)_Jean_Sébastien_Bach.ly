\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = \markup{\concat{"Wer weiß, wie nahe mir mein Ende" \small " (v. 12)"}}
  subtitle = "Ich bin vergnügt mit meinem Glücke"
 poet = "Auteur : Ämilie Juliane von Schwarzburg–Rudolstadt (1637-1706)"
  opus = "BWV 84/5"
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
          \partial 4  fis'4
          b' cis'' d'' cis''
          b' cis'' ais'2
          fis'\fermata r4 a'
          a' g' fis' b'
          b' ais' b'\fermata } cis''
          d'' e'' fis'' fis''
          e''4. d''8 d''4\fermata fis''
          e'' d'' cis'' b'8 [cis'']
          d''4 cis'' b'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [e']
          fis'4 fis' fis' fis'8 [e']
          d'4 g' fis'2
          cis'\fermata r4 fis'
          fis' e' d' d'
          g' fis' fis'\fermata } ais'
          b' a' a' b'
          b' a' a'\fermata a'
          ais' b' b'8 [ais'] b'4
          b' ais' fis'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich leb' in -- des in Gott ver -- gnü -- get
      Und sterb' ohn al -- le Küm -- mer -- nis;
      durch dei -- ne Gnad' und Chris -- ti Blut:
      machst du's mit mei -- nem En -- de gut!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      mir g'nü -- get, wie es mein Gott füg -- et,
      Ich glaub' und bin es ganz ge -- wiß:
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
          \partial 4  b8 [cis']
          d'4 cis' b ais
          b e'8 [d'] cis'2
          ais\fermata r4 cis'
          d' a a b
          cis' cis' d'\fermata } fis'
          fis' e' d' d'
          d' cis' fis'\fermata d'
          e' fis' g'8 [fis'] fis' [e']
          fis'4. e'8 dis'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b,4
          b ais b fis
          g e fis2
          fis,\fermata r4 fis
          b, cis d g8 [fis]
          e4 fis b,\fermata } fis
          b cis' d'8 [cis'] b [a]
          g4 a d\fermata d'
          cis' b e8 [fis] g4
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
