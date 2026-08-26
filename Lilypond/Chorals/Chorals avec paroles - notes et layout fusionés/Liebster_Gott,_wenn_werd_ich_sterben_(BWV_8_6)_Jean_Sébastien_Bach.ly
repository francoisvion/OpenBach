\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
 title = "Liebster Gott, wenn werd ich sterben"
 subtitle = "tiré de la cantate : Liebster Gott, wenn werd ich sterben"
 poet = "Auteur : Kaspar Neumann (1648-1715)"
  opus = "BWV 8/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          r4 b'8 b' e''4 b'
          cis'' b' a'4. b'16 [a']
          gis'4 fis' r b'8 a'
          gis'4 cis''8 [b'] ais' [fis'] b'4~
          b' ais' b'2 }          
          r4 fis'8 gis' a'!4 gis'
          cis''4. dis''8 bis'2
          r4 cis''8 b' ais'4 b'
          b' ais' b' fis'8 fis'
          b'4. a'8 gis'4 cis''
          bis' cis''2 bis'4
          cis''2 r4 e''8 b'
          cis''4 gis'8 [a'] b'4. a'8
          gis'4 fis'8 [e'] dis'4 e'~
          e' dis' e'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          r2 r4 gis'8 gis'
          a'4. gis'8 gis' [fis'16 e'] fis'8 fis'
          e'4 dis' r2
          r4 gis'8 gis' fis'4 fis' 
          fis' fis' fis'2 }          
          r4 d'8 e' fis'4 e'8 [fis']
          gis' [fis'] gis' [a'] gis'2
          r4 gis'8 gis' fis'4
          fis' fis' fis' fis' r
          r fis'2 e'4
          fis'8 gis' ais'8 ais' gis'2
          gis'4 gis'8 dis' e'2~
          e'4 e' dis'8 [e'] fis'4
          fis'8 [e'] dis' [e'] b4 cis'
          b2 b\fermata \fine
        }
      >>
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 1
      Herr -- scher ü -- ber Tod und Le - - ben
      mach ein -- mal mein En - de gut,
      Hilf, daß ich ein ehr -- lich Grab
      ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er - - de
      nim -- mer -- mehr zu -- schan - - den wer - - de.
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 2
      Leh -- re mich den Geist auf -- ge - - ben
      mit recht wohl -- ge -- faßt - tem Mut.
    }
    
    \new Lyrics \lyricsto "alto" {\set stanza = 1
      Herr -- scher ü -- ber Tod __ _ und Le -- ben
      mach ein -- mal mein En -- de gut,
      Hilf, daß ich ein ehr -- lich Grab
      ne -- ben from -- men Chri -- sten hab
      und auch end -- lich in der Er -- de
      nim -- mer -- mehr __ zu -- schan - - - - den wer -- de.
      
    }
    
    \new Lyrics \lyricsto "alto" {\set stanza = 2
      Leh -- re mich den Geist __ _ auf -- ge -- ben
      mit recht wohl -- ge -- faß -- tem Mut.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          r2 r4 e'8 e'
          e'4 e' cis' b
          b b r2
          r4 e'8 dis' cis'4 dis'
          cis' cis' dis'2 }         
          r2 r4 e'8 dis'
          cis' a' gis' fis' dis'2
          r4 e'8 dis' cis'4 dis'
          cis'8 [b] cis'4 dis' r
          r dis'8 dis' b4 cis'
          dis' e' dis'2
          e'4 e'8 bis cis'4. d'8
          cis'2 b~
          b4 c' fis g
          fis8 [e] fis4 gis!2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          r2 r4 e8 e
          a4 e fis dis
          e b,4 r2
          r4 e4. dis8 cis b,
          fis8 [e] fis4 b,2 }          
          r2 r4 cis8 dis
          e dis e fis gis,4 gis8 fis
          e2. dis8 [e]
          fis4 fis, b, r
          r b,8 b, e [dis] cis [b,]
          a, [gis,] fisis,4 gis,2
          cis r4 cis'8 gis
          a [b] cis'4 gis dis
          e a,2 ais,4
          b,2 e\fermata \fine
        }
        
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {\set stanza = 1
         Herr -- scher ü -- ber Tod und Le -- ben
         mach ein -- mal mein En -- de gut,
         Hilf, daß ich ein ehr -- lich Grab
         ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er -- de
         nim -- mer -- mehr zu -- schan - - - den wer - de.
       }
    
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {\set stanza = 2
         Leh -- re mich den Geist auf -- ge -- ben
         mit recht wohl -- ge -- faßt -- tem Mut.
       }
       
       \new Lyrics \lyricsto "bass" {\set stanza = 1
         Herr -- scher ü -- ber Tod und Le -- ben
         mach ein -- mal mein En -- de gut,
         Hilf, daß ich ein ehr -- lich Grab
         ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er -- de
         nim -- mer -- mehr zu -- schan - - - den wer -- de.
       }
    
       \new Lyrics \lyricsto "bass" {\set stanza = 2
         Leh -- re mich den Geist auf -- ge -- ben
         mit recht wohl -- ge -- faßt -- tem Mut.
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
