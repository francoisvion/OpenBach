\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wo soll ich fliehen hin"
  opus = "BWV 148/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  fis'4
          fis' gis' a' b'
          cis''2\fermata r4 cis''
          cis''4. b'8 a'4 b'
          gis'2\fermata r4
          gis'
          a' b' cis'' cis''
          b'2 cis''4\fermata cis''
          a' b' cis'' d''8 [e'']
          cis''4 b'8 [a'] a'4\fermata
          cis''
          e'' cis'' cis'' cis''
          b'2 b'4\fermata b'
          cis''4. b'8 a'4 b'8 [a']
          gis'2 fis'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'4
          cis' dis'8 [eis'] fis' [eis'] fis' [gis']
          eis'2\fermata r4 e'
          e'8 [fis'] gis'4. a'8 eis' [fis']
          eis'2\fermata r4
          eis'
          fis' e' e' fis'
          fis' e' e'\fermata e'
          fis' fis'8 [gis'] a'4 a'
          a' gis' e'\fermata
          a'
          b' a' a' a'~
          a' gis'8 [fis'] gis'4\fermata gis'
          gis'8 [fis'] eis'4 fis'2~
          fis'4 eis' cis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wo soll ich flie -- hen hin weil ich be -- schwe -- ret bin mit vie -- len gros -- sen Sün -- den? Wo kann ich Ret -- tung fin -- den? Wann al -- le Welt her -- kä -- me, mein Angst sie nicht weg -- neh -- me.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [b]
          cis'4 b cis' d'
          gis2\fermata r4 a
          a gis cis' d'
          cis'2\fermata r4
          cis'
          cis'8 [d'] cis' [b] a4 a~
          a gis a\fermata a
          a d' cis' fis'
          e' d'8 [cis'] cis'4\fermata
          e'
          e' e' fis' e'
          fis'8 [e'] dis'4 e'\fermata e'8 [d']
          cis'4 cis' cis' b8 [cis']
          d'4 cis'8 [b] ais4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis8 [gis]
          a4 gis fis d
          cis2\fermata r4 a,8 [b,]
          cis [dis] eis4 fis b,
          cis2\fermata r4
          cis
          fis gis a8 [gis] fis [e]
          d4 e a,\fermata a,
          d8 [cis] b,4 fis8 [e] d4
          e2 a,4\fermata
          a
          gis a8 [gis] fis [e] d [cis]
          dis4 b, e\fermata gis8 [fis]
          eis [dis] cis4 fis8 [e] d [cis]
          b,4 cis fis,\fermata \fine
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
