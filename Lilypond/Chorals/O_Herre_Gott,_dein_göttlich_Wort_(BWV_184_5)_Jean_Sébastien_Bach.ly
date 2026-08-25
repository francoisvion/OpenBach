\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Herre Gott, dein göttlich Wort (v. 8)"
 subtitle = "tiré de la cantate : Erwünschtes Freudenlicht"
 poet = "Anarg von Wildenfels"
  opus = "BWV 184/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \repeat volta 2 {
          \partial 4  d''4
          d'' cis'' b' a'
          d'' e'' fis''\fermata e''
          fis''8 [g''16 a''] g''4 fis'' e''8 [fis'']
          g''4 fis'' e''2
          d''2.\fermata } d''4
          e'' fis'' d''\fermata d''
          e'' fis'' d''\fermata b'
          e''4. d''8 cis''4 d''8 [cis'']
          b'2 a'4\fermata
          a'
          d'' cis'' b' a'
          d'' e'' fis''\fermata e''
          a''4. g''8 fis''4 e''8 [fis'']
          g''4 fis'' e''2
          d''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          b' a' g' g'
          fis' a' a'\fermata a'
          a' d'8 [e'] fis' [g'] a'4
          g'8 [a'] b'4 e'8 [fis'] g'4
          fis'2.\fermata } a'4
          a' a' b'\fermata a'
          b' cis'' b'\fermata fis'
          e'8 [fis'] gis'4 a' a'
          a' gis' e'\fermata
          fis'
          fis'8 [gis'] a'4 g'8 [fis'] e'4
          a' a' a'\fermata a'
          a' d'8 [e'] fis' [g'] a'4
          g'8 [a'] b'4 e'8 [fis'] g'4
          fis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr, ich hoff je, du wer -- dest die
      in kei -- ner Not ver -- la - - ßen,
      gibst ihn' be -- reit
      die Se -- lig -- keit
      und läßt sie nicht ver -- der -- ben.
      O Herr, durch dich bitt ich, laß mich
      Fröh -- lich und wil -- lig ster - - ben.    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      die dein Wort recht als treu -- e Knecht
      im Herzn und Glau -- ben fa - - ßen;
 
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          fis' fis'8 [e'] d'4 cis'
          d' cis' d'\fermata cis'
          cis' b a8 [b] cis'4
          d'2. cis'4
          a2.\fermata } fis'4
          cis' d' d'\fermata fis'
          e'8 [d'] cis'4 fis'\fermata d'8 [cis']
          b4 e' e' d'8 [e']
          fis'4 e'8 [d'] cis'4\fermata
          cis'
          d' e' e'8 [d'] cis'4
          d' cis' d'\fermata cis'
          cis' b a8 [b] cis'4
          d'2. cis'4
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          b fis g a
          b a d\fermata a8 [g]
          fis4 b,8 [cis] d4 cis
          b,8 [b] a [g] a2
          d2.\fermata } d'4
          a d g\fermata fis
          gis ais b\fermata b8 [a]
          gis [fis] e4 a8 [gis] fis [e]
          d4 e a,\fermata
          fis
          b, cis8 [d] e [fis] g4
          fis a d\fermata a8 [g]
          fis4 b,8 [cis] d4 cis
          b,8 [b] a [g] a2
          a2.\fermata \fine
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
