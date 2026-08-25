\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

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
  title = "Ich ruf zu dir, Herr Jesu Christ"
  opus = "BWV 1124"
  poet = "Auteur : Johann Agricola (1526-1527)"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          r4 b'4 g'4 a'4
          g'4 e'4 g'4 a'4
          b'2\fermata r4 b'4
          d''4 b'4 g'4 a'4
          <a' c''>2 b'2\fermata }
          r4 d''4 e''4 d''4
          b'4 g'4 b'4 a'4
          g'2\fermata r4 b'
          b'4 b'4 a'4 g'4
          fis'2 e'2\fermata
          g'4 fis'4 e'2
          d'2\fermata r4 d'4
          g'4 g'4 a'4 a'4
          b'2\fermata r4 c''4
          b'4 a'4 g'!4 e'4
          g'4 fis'4 e'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          r4 fis'4 e'4 fis'4
          e'4 c'4 e'4 fis'4
          g'2\fermata r4 g'4
          a'4 d'4 e'4 fis'4
          s2 gis'2\fermata }
          s4 g'!4 g'4 fis'4
          g'4 g'4 g'4 fis'4
          d'2\fermata r4 g'4
          g'4 g'4 fis'4 e'4
          e'4 dis'4 e'2\fermata
          e'4 d'!4 d'4 cis'4
          a2 r4 b4
          b4 d'4 e'4 d'4
          d'2\fermata s4 e'4
          e'4 e'4 e'4 e'4
          e'4 dis'4 b2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ich ruf' zu dir, Herr Je -- su Christ!
      Ich bitt' er -- hör' mein kla -- gen,     
      Den rech -- ten weg, o Herr! ich mein',
      Den wol -- lest du mir ge -- ben,
      Dir zu le -- ben,
      Mein'm näch -- sten nütz zu sein,
      Dein wort zu hal -- ten e - ben.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2    
      Ver -- leih' mir gnad' zu die -- ser frist,
      Laß mich doch nicht ver -- za -- gen,
    }
      
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          r4 b4 b4 b4
          b4 a4 b4 d'4
          d'2\fermata r4 d'4
          a4 g4 b4 d'4
          e'2 e'2\fermata }
          r4 d'4 c'4 a4
          e'4 b4 d'4 d'4
          b2\fermata r4 d'4
          d'4 d'4 d'4 b4
          b2 g2\fermata
          a4 a4 a2
          s2 r4 g4
          g4 g4 g4 fis4
          g2\fermata r4 g4
          b4 c'4 b4 a4
          b2 gis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          r4 b,4 e4 dis4
          e4 a4 e4 d4
          g2\fermata r4 g4
          fis4 g4 e4 d4
          a,2 e2\fermata }
          s4 b,4 c4 d4
          e4 e4 b,4 d4
          g,2\fermata r4 g,4
          b,4 g,4 d4 e4
          b,2 c2\fermata
          cis4 d4 a,2
          <d fis>2\fermata r4 g4
          e4 b,4 c4 d4
          g,2\fermata r4 c4
          gis,4 a,4 e4 c4
          b,2 e2\fermata \fine
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
