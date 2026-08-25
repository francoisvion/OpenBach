\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, du höchstes Gut"
 subtitle = "tiré de la cantate : Herr Jesu Christ, du höchstes Gut"
 poet = "Bartholomäus Ringwaldt"
  opus = "BWV 113/8"
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
          b'4
          b' ais' b' cis''
          d'' cis'' b'\fermata b'
          cis'' cis'' fis'' e''
          d''2 cis''4\fermata } fis''
          e'' d'' cis''8 [d''] e''4
          d'' cis'' b'\fermata d''
          cis'' b' a'8 [gis'] fis' [gis']
          a' [b'] b'4 cis''\fermata cis''
          d'' e'' fis''4. e''8
          d''4 e'' cis''2
          b'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          fis'4
          e' fis' fis' gis'8 [ais']
          b'4 ais' fis'\fermata fis'8 [gis']
          a'4 a'8 [g'] fis'4 gis'8 [ais']
          b'2 ais'4\fermata } a'
          a'8 [g'] fis' [gis'] ais' [b'] cis''4
          b' ais' fis'\fermata fis'8 [gis']
          a'4. gis'8 fis' [e'] fis'4
          cis' fis'8 [e'] e'4\fermata fis'
          fis'8 [b'] a' [g'] fis'4 gis'8 [a']
          b' [a'] g'4 fis'2
          fis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Stärk mich mit dei -- nem Freu -- den -- geist,
      heil mich mit dei -- nen Wun -- den;
      und nimm mich einst, wenn dirs ge -- fällt,
      in wah -- ren Glau -- ben von der Welt
      zu dei -- nen Aus - - ser -- wähl -- ten! _ _
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wasch mich mit dei -- nem To -- des -- schweiss
      in mei -- ner letz -- ten Stun -- den; 
      
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
          d'4
          cis'8 [b] cis'4 d' e'
          fis'4. e'8 d'4\fermata d'
          e' a d'8 [cis'] b [cis']
          d' [e'] fis'4 fis'\fermata } a8 [b]
          cis'4 d'8 [e'] fis'4 g'
          g' cis'8 [e'] d'4\fermata d'
          e'8 [e] fis [gis] a [b] a [gis]
          fis4. gis8 a4\fermata cis'
          b8 [fis'] e'4 b4. cis'8
          b4 cis'8 [b] ais [cis'] e'4
          dis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          b8 [a]
          g4 fis8 [e] d4 cis
          b, fis, b,\fermata b
          a8 [g] fis [e] d4. cis8
          b, [cis] d [e] fis4\fermata } d
          a b fis e8 [fis]
          g [e] fis4 b,\fermata b
          a dis8 [eis] fis4 fis,
          fis8 [e] d [e] a,4\fermata ais,
          b, cis d e8 [fis]
          g [fis] e4 fis fis,
          b,2.\fermata \fine
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
