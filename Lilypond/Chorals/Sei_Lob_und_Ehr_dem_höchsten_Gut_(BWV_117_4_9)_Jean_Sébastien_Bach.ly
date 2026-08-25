\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Sei Lob und Ehr dem höchsten Gut (v. 4 - 9)"
  subtitle = "tiré de la cantate : Sei Lob und Ehr dem höchsten Gut"
 poet = "Johann Jakob Schütz ?"
  opus = "BWV 117/4"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''4
          d'' d'' d''8 [e''] f''4
          e'' d'' c''\fermata d''
          b'8 [a'] g' [a'] b'4 cis''
          d'' e'' d''\fermata } d''
          g'' fis'' e'' fis''
          g''8 [fis''] e''4 d''\fermata d''
          g'' d'' e'' b'8 [c'']
          d''4 c'' b'\fermata b'
          a'8 [b'] c''4 b' a'
          e' fis' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          a' g'8 [fis'] g'4 c'8 [d']
          e'8. [f'16] g'4 g'\fermata a'
          g' d' g'8 [fis'] e'4
          a'8 [fis'] g'4 fis'\fermata } b'
          b' a'8 [b'] cis''4 cis''
          d'' a'8 [g'] fis'4\fermata g'
          g' g' g' g'
          a'8 [b'] e' [a'] gis'4\fermata g'
          a' g'8 [a'] b' [g'] e'4
          e' d' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      \tweak X-offset #-3.5 "4. Ich" \tweak X-offset #0 rief zum Herrn in mei -- ner Not:
      Ach Gott, ver -- nimm mein Schrei - en!
      Drum dank, ach Gott, drum dank ich dir;
      ach dan -- ket, dan -- ket Gott mit mir!
      Gebt un -- serm Gott die Eh - re!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Da half mein Hel -- fer mir vom Tod
      und ließ mir Trost ge -- dei - hen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 3
      \tweak X-offset #-3.5 "9. So" \tweak X-offset #0 kom -- met vor sein An -- ge -- sicht
      mit jauch -- zen -- vol -- lem Sprin - gen;
      Gott hat es al -- les wohl be -- dacht
      und al -- les, al -- les recht ge -- macht.
      Gebt un -- serm Gott die Eh - re!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 4
      be -- zah -- let die ge -- lob -- te Pflicht
      und laßt uns fröh -- lich sin - gen:
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          a b8 [c'] b4 a
          g8 [c'] c' [b] e'4\fermata d'
          d'8 [c'] b [a] g4 a
          a8 d'4 cis'8 d'4\fermata } d'
          d'8 [e'] fis' [g'] a' [g'] fis' [e']
          d'4 cis' a\fermata b
          b8 [c'] d'4 c' g8 [e']
          d' [b] c' [e'16 dis'] e'4\fermata d'
          d' e' d' c'8 [b]
          a2 b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g4
          fis d g, a,8 [b,]
          c4 g, c\fermata fis,
          g,4. fis,8 e, [fis,] g, [a,]
          fis, [d,] a,4 d,\fermata } g8 [a]
          b [cis'] d'4 a ais
          b8 [g] a4 d\fermata g8 [fis]
          e [d] c [b,] c [d] e4
          fis8 [gis] a4 e\fermata g
          fis e8 [fis] g4 c
          cis d g,\fermata \fine
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
