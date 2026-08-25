\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, nun sei gepreiset"
 subtitle = "tiré de la cantate : Singet dem Herrn ein neues Lied"
 poet = "Johannes Herman"
  opus = "BWV 190/7"
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
          \partial 4  fis''4
          fis'' d'' e'' fis''
          g''2 e''4\fermata e''
          e'' d'' d'' cis''
          d''2.\fermata e''4
          e'' e'' e'' fis''
          d''2 d''4\fermata d''
          cis'' d'' e'' e''
          d''2.\fermata } cis''4
          cis'' cis'' cis'' cis''
          d''2 d''4\fermata cis''
          cis'' cis'' cis'' cis''
          d''2 d''4\fermata fis''
          fis'' d'' e'' fis''
          g''2 fis''4 fis''
          e'' fis'' dis'' dis''
          e''2.\fermata fis''4
          fis'' d'' e'' fis''
          g''2 fis''4 fis''
          e'' fis'' dis'' dis''
          e''2.\fermata fis''4
          fis'' d'' e'' fis''
          g''2 e''4 e''
          e'' d'' d'' cis''
          d''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          a' fis' g' a'
          b'2 g'4 g'
          fis' fis' e' a'
          a'2. a'4
          e' gis' a' ais'
          b'2 b'4 fis'
          e' fis' g'8 [a'16 b'] a'8 [e']
          fis'2.\fermata } e'4
          a' a' a' a'
          a'2 a'4\fermata e'
          a' a' a' a'
          a'2 a'4\fermata a'
          a' fis' g' a'
          g' a' a' b'
          g' a' fis' fis'
          g'2.\fermata a'4
          a' fis' g' a'
          g' a' a' b'
          g' a' fis' fis'
          g'2.\fermata fis'4
          fis' fis' e' dis'
          e' fis' g' g'
          fis' fis' e' e'
          fis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Lass uns das Jahr voll -- brin -- gen
      zu Lob dem Na -- men dein,
      daß wir dem -- sel -- ben sin -- gen
      in der Chri -- sten ge -- mein;
      dein Se -- gen zu uns wen -- de,
      gib Fried an al -- lem En -- de;
      gib un -- ver -- fälscht im Lan -- de dein se -- lig -- ma -- chend Wort.
      Die Heuch -- ler mach zu -- schan -- den hier und an al -- lem Ort,
      die Heuch -- ler mach zu -- schan -- den hier und an al -- lem Ort.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wollst uns das Le -- ben fri -- sten
      durch dein all -- mäch -- tig Hand,
      er -- halt dein lie -- ben Chri -- sten
      und un -- ser Va -- ter -- land.
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
          \partial 4  d'4
          d' a b c'
          d'2 c'4 c'
          cis' d' b e'
          fis'2. cis'4
          b8 [cis'] d'4 cis' cis'
          d'8 [e'] fis'4 fis' b
          g a8 [d'] d'4 cis'
          a2.\fermata } a4
          e' e' fis' g'8 [e']
          fis'2 fis'4\fermata a
          e' e' fis' g'8 [e']
          fis'2 fis'4\fermata d'
          d' a b c'
          d' a d' fis'
          b c' b b
          b2.\fermata d'4
          d' a b c'
          d' a d' fis'
          b c' b b
          b2.\fermata cis'4
          d' fis' b a
          b2 ais4 b
          cis' b b a
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          d' c' b a
          g2 c4 b
          ais b gis a
          d2. a4
          gis e a fis
          b2 b4 b
          e d a a,
          d2.\fermata } a,4
          a g fis a
          d2 d4\fermata a,
          a g fis a
          d2 d4\fermata d
          d' c' b a
          b cis' d' dis
          e a b b,
          e2.\fermata d4
          d' c' b a
          b cis' d' dis
          e a b b,
          e2.\fermata ais4
          b a g fis
          e d cis b,
          ais, b, gis, a,
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
