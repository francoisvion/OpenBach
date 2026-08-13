\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gott der Vater wohn uns bei"
  opus = "BWV 317"
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
          a'4 a' b' cis''
          d'' d'' cis''\fermata b'
          d'' a' fis' g'
          fis' e' d'2\fermata }
          \repeat volta 2 {
          d'4 e' fis'4. e'8
          d'4 e' fis'\fermata d''
          cis'' d'' e''4. d''8
          cis''4 b' a'\fermata
          \partial 4  a'
          a' d'' cis'' a'
          b'8 [a'] g'4 fis'\fermata e'
          fis' g' a'4. g'8
          fis'4 e' d'2\fermata }
          d'4 e' fis'4. e'8
          d'4 e' fis'\fermata a'
          a' a' fis' g'
          fis' e' d'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          fis'4 fis' g' g'
          a' a'8 [gis'] a'4\fermata g'
          fis' e'4. d'4 cis'8
          d'4. cis'8 a2\fermata }
          \repeat volta 2 {
           a4 a8 e'4 d' cis'8
          b4 b cis'\fermata d'8 [e']
          fis'4 fis'8 b'4 a'16 [gis'] a'4
          a' gis' e'\fermata
          \partial 4 e'
          fis' fis' e' d'8 [e']
          fis'4. e'4 dis'8\fermata e'4~
          e'8 d'4 cis' d' e'8~
          e' d'4 cis'8 a2\fermata }
           a4 a8 e'4 d' cis'8
          d'4 b8 [e'] d'4\fermata d'~
          d'8 [e'] fis' [e'] d'4. e'8~
          e' d'4 cis'8 a2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gott der Va -- ter wohn' uns bei und lass' uns nicht ver -- der - ben, Vor dem Teu -- fel uns be -- wahr', halt' uns bei fe -- stem Glau - ben, und auf dich lass uns bau - en, aus Herz -- zens -- grund ver -- trau - en, A -- men, a -- men, das sei wahr, so sin -- gen wir Al -- le -- lu -- ja, Al -- le -- lu -- ja.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Mach uns al -- ler Sün -- den frei und helf uns se -- lig ster - ben.
      dir uns las -- sen ganz und gar, mit al -- len rech -- ten Chris - ten
      ent -- flie -- hen Teu -- fels Lis - ten, mit Waf -- fen Gotts uns fris - sten.
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
          d'4 d' d' e'
          fis'8 [e'] d'4 e'\fermata e'
          d' e'8 [a] a4 g
          a4. a16 [g] fis2\fermata }
          \repeat volta 2 {
           fis4 a a a8 [g]
          fis4 b ais\fermata b~
          b8 [a] fis'4 e' cis'8 [d']
          e'4. d'8 cis'4\fermata
          \partial 4 cis'
          d' a a8 [g] fis4
          b b b\fermata b8 [a]
          a4 g fis8 [a] b4
          a4. g8 fis2\fermata }
           a4 a a a
          a8 [fis] g [a] a4\fermata fis8 [g]
          a [b] cis'4 d'8 [cis'] b4
          a4. g8 fis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d4 d g8 [fis] e4
          d8 [cis] b,4 a,\fermata e
          b, cis d e
          fis8 [g] a4 d2\fermata }
          \repeat volta 2 {
           d4 cis d a,
          b,8 [a,] g,4 fis,\fermata b,
          fis d cis fis
          e e, a,\fermata
          \partial 4 a8 [g]
          fis [e] d4 a, d
          dis e b,\fermata cis
          d e fis g
          a a, d2\fermata }
           fis4 cis d a8 [g]
          fis d4 cis8 d4\fermata d8 [e]
          fis [g] a4 b8 [a] g4
          a a, d2\fermata \fine
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
