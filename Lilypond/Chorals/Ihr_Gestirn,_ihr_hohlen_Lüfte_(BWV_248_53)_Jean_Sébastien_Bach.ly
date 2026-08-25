\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ihr Gestirn, ihr hohlen Lüfte"
 subtitle = "tiré de l'Oratorio de Noël, partie V : Ehre sei dir, Gott, gesungen"
  opus = "BWV 248/53"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          a'4 b' cis''8 [d''] e''4
          a' gis' fis' e'\fermata
          fis' gis' a' b'
          cis''8 [d''] b'4 a'2\fermata }
          cis''4 cis'' b' cis''
          d'' cis''8 [b'] b' [a'] b'4\fermata
          fis' gis' a' b'
          cis''8 [d''] b'4 a'8 [gis'] a'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          e'4 e' a'4. gis'8~
          gis' fis'4 e' dis'8 b4\fermata
          d'8 [cis'] b4 e' e'
          e'8 [fis'] e'4 e'2\fermata }
          a'4 a' e'8 [fis'] gis'4
          fis' e'8 [fis'] gis' [fis'] gis'4\fermata
          cis'8 [d'] e'4. d'16 [cis'] fis'4
          e' e' e'8 [d'] e'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Zwar ist sol -- che Her -- zens -- stu -- be
      wohl kein schö -- ner Für -- sten -- saal,
      in den -- sel -- ben nur wird blin -- ken,
      wird sie vol -- ler Son -- nen dün -- ken.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      son -- dern ei -- ne fin -- stre Gru -- be;
      doch, so -- bald dein Gna -- den -- strahl
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
          cis'4 b a8 [b] cis' [d']
          e' [b] b4 b8. [a16] gis4\fermata
          d'8 [cis'] d' [e'] a4 e
          a4. gis8 cis'2\fermata }
          e'4. dis'8 e' [d'] cis' [b]
          a [b] cis' [dis'] e'4 e'\fermata
          ais8 [b] b4 a a~
          a8 b gis [d'] cis' [b] cis'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          a4 gis fis cis8 [b,]
          cis [dis] e4 b, e\fermata
          b,~ b,8 d cis [b,] a, [gis,]
          a, [d] e [e,] a,2\fermata }
          a8 [gis] fis4 gis8 [fis] e4
          fis8 [gis] a4 e e\fermata
          e8 [d] cis [b,] cis [fis] e [d]
          e4 e, a, a,\fermata \fine
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
