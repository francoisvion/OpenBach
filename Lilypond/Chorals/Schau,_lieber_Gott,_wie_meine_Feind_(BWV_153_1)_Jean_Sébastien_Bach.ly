\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Schau, lieber Gott, wie meine Feind"
  opus = "BWV 153/1"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  b'4
          c'' b' a' e''
          e''8 [d''] c''4 b'\fermata d''
          c'' b' a' b'8 [c''16 d'']
          c''4 b' a'\fermata } a'
          b'8 [a'] g'4 fis' e'8 [fis']
          g'4 a' b'\fermata g'
          a'8 [b'] c''4 b' c''8 [b']
          a'4 gis' a'\fermata a'
          e'' c'' d'' e''
          d'' c'' b'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  gis'4
          a' gis' a' gis'8 [a']
          b'4 e'8 [fis'] gis'4\fermata gis'
          a' gis' a'8 [g'] f'4
          e'2 e'4\fermata } d'
          d'8 [dis'] e'4 dis' e'8 [dis']
          e' [g'] fis' [e'] dis'4\fermata e'8 [d']
          c' [d'] e'4 e' a'
          e' e' e'\fermata e'
          e' e' f' g'
          fis'8 [gis'] a'4 e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Schau, lie -- ber Gott, wie mei -- ne Feind,
      da -- mit ich stets muß käm - pfen!
      Herr, wo mich dei -- ne Gnad nicht hält,
      So kann der Teu -- fel, Fleisch und Welt
      mich leicht in Un -- glück stür - zen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      So li -- stig und so mäch -- tig seind,
      daß sie mich leicht -- lich däm - pfen!
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
          \partial 4  e'4
          e' d' e' d'8 [c']
          b4 c'8 [d'] e'4\fermata f'
          e' e'8 [d'] c'4 d'
          gis8 a4 gis8 c'4\fermata } a
          g8 [a] b4 b b8 [a]
          b4 c' fis\fermata b
          a a' gis' e'8 [d']
          c'4 b c'\fermata c'
          b a a bes
          a8 [e] fis4 gis\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          a b c' b8 [a]
          gis4 a e\fermata b,
          c8 [d] e4 f e8 [d]
          e2 a,4\fermata } fis
          g8 [fis] e4 b8 [a] g [fis]
          e [d] c4 b,\fermata e
          f c8 [d] e4 a,8 [b,]
          c [d] e4 a,\fermata a
          gis a8 [g] f [e] d [cis]
          d4 dis e\fermata \fine
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
