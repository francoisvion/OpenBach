\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Es ist das Heil uns kommen her (vv. 7–8)"
 subtitle = "tiré de la cantate : Es ist das Heil uns kommen her"
 poet = "Paul Speratus"
  opus = "BWV 9/7"
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
          \partial 4  b'4
          b' b' b'8 [cis''] d''4
          cis'' b' a'\fermata b'8 [a']
          gis' [fis'] e' [fis'] gis'4 ais'
          b' cis'' b'\fermata } b'
          e'' dis'' cis'' dis''
          e''8 [dis''] cis''4 b'\fermata b'
          e'' b' cis'' gis'8 [a']
          b'4 a' gis'\fermata gis'
          fis'8 [gis'] a'4 gis' fis'
          cis' dis' e'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  gis'4
          fis'8 [gis'] a'4 gis'8 [a'] b'4
          b'8 [a'] d' [e'] fis'4\fermata fis'
          e' b e' cis'
          fis'4. e'8 dis'4\fermata } e'8 [fis']
          gis' [ais'] b'4 ais'8 [gis'] fis'4
          b'8 [gis'] ais'4 fis'\fermata gis'8 [a']
          b' [a'] gis' [fis'] eis' [fis'] gis' [cis']
          cis' [gis'] gis' [fis'] fis' [eis'\fermata] e'4
          fis'8 [e'] dis' [cis'] b [cis'] dis'4
          e' b b\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ob sichs an -- ließ, als wollt er nicht,
      laß dich es nicht er -- schre - cken;
      Sein Wort laß dir ge -- wis -- ser sein,
      und ob dein Herz spräch lau -- ter Nein,
      so laß doch dir nicht grau - en.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Denn wo er ist am be -- sten mit,
      da will ers nicht ent -- de - cken.
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
          \partial 4  e'4
          b fis' e' e'
          e'8 [fis'] g'4 d'\fermata b
          b8 [a] gis4 cis' fis
          fis8 [b] ais4 fis\fermata } gis
          cis' dis'8 [e'] fis'4 b
          b fis'8 [e'] dis'4\fermata e'
          b8 [cis'] d'4 cis'8 [dis'] eis' [fis']
          gis' [cis'] cis'4 cis'\fermata cis'
          cis'8 [b] a4 e' b8 [a]
          g4 fis8 [a] gis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          e dis e gis,
          a, b,8 [cis] d4\fermata dis
          e4. dis8 cis [dis] e [fis]
          dis [b,] fis4 b,\fermata } e8 [dis]
          cis4 b, fis8 [gis] a [fis]
          gis [e] fis4 b,\fermata e8 [fis]
          gis [a] b4 b8 [a] gis [fis]
          eis4 fis cis\fermata cis'8 [b]
          a [gis] fis4 gis8 [a] b4
          b8 [ais] b4 e\fermata \fine
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
