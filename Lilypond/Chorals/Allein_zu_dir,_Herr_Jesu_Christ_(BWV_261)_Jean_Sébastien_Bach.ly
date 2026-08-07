\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Allein zu dir, Herr Jesu Christ"
  opus = "BWV 261"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff  instrumentName = \markup \center-column {S A}}
    
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial4 d''4 
          a' b'8 [cis''] d'' [e''] fis''4 
          e'' [d''2] cis''4 
          d''2\fermata r4 fis''
          e'' d'' cis''8 [b'] a'4 
          b' [cis''8 d'' e''2~ 
          e''4 d'' cis''2] 
          b'2\fermata r4 }
          \partial4 fis''
          g'' e'' fis'' d''
          e'' fis'' b'\fermata fis'' 
          g'' e'' fis'' d''
          \partial2 e'' fis'' 
          b'2\fermata r4 d''
          cis'' b' a' b'
          g' g' fis'\fermata r
          r b' a' [d''~ 
          d'']  cis'' d''\fermata r
          r a' b' cis''
          d''8 [e'' fis''2] e''4 
          e'' [d'' cis''] cis''
          b'2\fermata r4 \bar "|."
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial4 fis'8 [g'] 
          a'4 g' a' ais'8 [b'8] 
          cis''4 fis' e' e'
          fis'2\fermata r4 a'
          a'8 [g'] fis'4 g' fis'
          g'2. fis'8 [gis'] 
          ais'4 b'8 [a'] g'4 fis'8 [e'] 
          d' 2\fermata r4 }
          \partial4 b'
          b' a' a' g'
          g' fis' fis'\fermata b'
          b' a' a' g'8 [fis'] 
          \partial2 e'4 a'
          g'2\fermata r4 fis'
          eis' fis'8 [gis'] cis'4 fis'
          fis'e' dis'\fermata r 
          r  d'2 a'4~ 
          a' g' fis'\fermata r
          r fis' e' e'
          d' d''8 [cis''] b' [ais' b' cis''] 
          ais'4 b'8 [a'] g'4 fis'8 [e'] 
          dis'2\fermata r4 \bar "|."
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Al -- lein__ zu dir, Herr Je --  su Christ,
      mein Hoff -- nung steht auf Er --  den.
      Von An -- be -- ginn ist nichts er -- korn,
      auf Er -- den ist kein Mensch ge -- born,
      der mir aus Nö -- ten hel -- fen kann;
      ich ruf dich an,
      zu dem ich mein Ver -- trau -- en han.

    }
    
    \new Lyrics \lyricsto "soprano" {
      Ich weiß, dass du mein Trö -- ster bist,
      kein Trost mag mir sonst wer -- den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial4 a4 
          d' d' d' d'
          cis' d'8 [cis'] b4 a
          a2\fermata r4 d'
          cis' d' e'8 [d'] cis'4 
          d' e' ais8 [b] cis'4~ 
          cis' b2 ais4 
          b2\fermata r4 }
          \partial4 d'
          d'8 [b] cis'4 cis'8 [a] b4 
          b cis' d'\fermata fis'
          e' e' d' d'8 [cis'] 
          \partial2 b4 b
          b2\fermata r4 b
          b8 a4 gis8 fis4 fis
          g8 [a b cis'] dis'4\fermata r
          r b8 [cis'16 d'] cis'4 d'8 [e'] 
          fis'4 e'd'\fermata r
          r d' 4 gis 4 ais 4 
          b
          8 [ cis' 8 ] d' 2 cis' 4~ 
          cis'
          4 b 2 ais 4 
          \partial 32 * 24 b2\fermata r4 \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial4 d 8 [ e 8 ] 
          fis 4 g
          4 fis 4. gis 8 
          ais 4 b
          8 [ a 8 ] gis 4 a 4 
          d
          2\fermata r 4 d' 4 
          a 4 b
          4 e 4 fis 4~ 
           fis 4 e
          8 [ d 8 ] cis 8 [ b, 8 ais,
          8 cis 8 ] 
          fis 4 g 8 [ fis
          8 ] e 4 fis 4 
          b, 2\fermata r4 }
          \partial4 b4 
          e 4 a 4 d
          4 g 8 [ fis 8 ] 
          e 4 ais,
          4 b, 4\fermata 
          \partial4 d'4 
          d' 4 cis'
          4 cis' 4 b 8 [ a 8 ] 
          g
          8 [ fis 8 e 8 dis 8 ] 
          e
          2\fermata r 4 b, 4 
          cis 4 dis
          8 [ eis 8 ] fis 4 dis 4 
          e
          8 [ fis 8 g 8 a 8 ] b
          4\fermata r 4 
           r 4 g 2 fis
          8 [ g 8 ] 
          a 4 a, 4 d
          4\fermata r 4 
          r d d' cis'
          b4. a8 g [fis g e] 
          fis4 g8 [fis] e4 fis
          b,2\fermata r4 \bar "|."
        }
      >>
    }
  >>
}

\paper {
  indent = 10
  page-count = 1
}
\layout {}
\midi {}
