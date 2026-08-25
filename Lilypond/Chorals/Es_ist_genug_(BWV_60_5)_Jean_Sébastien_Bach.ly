\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Es ist genug"
 subtitle = "tiré de la cantate : O Ewigkeit, du Donnerwort"
 poet = "Franz Joachim Burmeister"
  opus = "BWV 60/5"
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
          a'2 b'4 cis''
          dis''2\fermata r4 dis''
          e'' b' b' d''
          cis''2.\fermata b'4
          cis''8 [dis''] e''4 e'' dis''
          e''2\fermata a'
          b'4 cis'' dis''2\fermata
          r4 dis'' e'' b'
          b' d'' cis''2\fermata
          r4 b' cis''8 [dis''] e''4
          e'' dis'' e''2\fermata
          r4 b' b' b'
          cis'' b' d'' cis''
          cis''2 b'\fermata
          r4 b' b' b'
          cis'' b' d'' cis''
          cis''2 b'\fermata
          r4 e'' cis'' b'
          a'2\fermata r4 e''
          cis'' b' a'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          e'2 e'4 d'8 [cis']
          gis'2\fermata r4 gis'
          gis'4. a'8 gis' [fis'] gis' [e']
          a'2.\fermata gis'4
          a'8 [b'] cis''4 b' a'16 [gis' a'8]
          gis'2\fermata e'
          e'4 e' fis'2\fermata
          r4 fis'8 [gis'16 a'] gis'8 [fis'] gis' [a']
          b'4 gis' a'2\fermata
          r4 fis' g'8 [a'] b'4
          b'8 [a'16 gis'] a'8 [fis'] gis'2\fermata
          r4 gis'8 [a'] b' [a'] b' [gis']
          a'4 b' a' a'
          a'8 [gis'] a' [fis'] gis'2\fermata
          r4 fis' b b'
          ais' a' gis' a'
          a'8 [fis'] dis'4 e'2\fermata
          r4 e' e' fis'8 [gis']
          fis'2\fermata r4 b'
          a' gis' e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Es ist ge -- nug,
      Herr, wenn es dir ge -- fällt,
      so span -- ne mich doch aus!
      Mein Je -- su kommt;
      nun gu -- te Nacht, o Welt!
      Ich fahr ins Him -- mels -- haus,
      ich fah -- re sich -- er hin mit Frie -- den,
      mein gro -- ßer Jam -- mer bleibt da -- nie -- den.
      Es ist ge -- nug,
      es ist ge -- nug.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          cis'2 b4 fis'
          fis'2\fermata r4 bis
          cis'8 [dis'] e'4 e' e'
          e'2.\fermata e'4
          e'8 [fis'] g'4 fis' b
          b2\fermata cis'
          b4 a a2\fermata
          r4 b b e'
          e' e' e'2\fermata
          r4 dis' e'8 [fis'] g'4
          fis' b b2\fermata
          r4 e' e' e'
          e' e' fis' e'
          e' dis' e'2\fermata
          r4 dis' e' f'
          e' d' e' fis'
          e'8 [a] fis4 gis2\fermata
          r4 b a a8 [gis]
          cis'2\fermata r4 e'
          e' d'16 [cis' d'8] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          a2 gis4 ais
          bis2 r4 gis
          cis'8 [b16 a] gis8 [fis] e [d] cis [b,]
          a,2.\fermata e4
          a ais b b,
          e2\fermata a
          gis4 g fis2\fermata
          r4 b, e4. fis8
          gis4 fis8 [e] a2\fermata
          r4 a g8 [fis] e4
          b b, e2\fermata
          r4 e8 [fis] gis [fis] gis [e]
          a [b] a [gis] fis [gis] a [a,]
          e2 e\fermata
          r4 a gis g
          fis f e dis
          e2 e\fermata
          r4 gis a8 [cis] dis [eis]
          fis2\fermata r4 gis
          a e a,2\fermata \fine
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
