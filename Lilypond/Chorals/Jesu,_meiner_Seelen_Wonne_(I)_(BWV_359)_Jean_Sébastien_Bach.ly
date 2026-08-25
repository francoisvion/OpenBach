\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, meiner Seelen Wonne (I)"
 poet = "Auteur : Martin Jahn (v.1620-v.1682)"
  opus = "BWV 359"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          \repeat volta 2 {
          cis''4 d'' e'' e''
          d'' cis'' b' b'\fermata
          cis'' d'' e''8 [d''] cis''4
          b' b' a'2\fermata }
           b'4 cis'' d'' d''
          cis'' cis'' b'2\fermata
          d''4 e'' fis'' fis''
          e'' e'' d''2\fermata
           cis''4 d'' e'' e''
          d'' cis'' b'2\fermata
          cis''4 d'' e''8 [d''] cis''4
          b' b' a'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          a'4 a' gis' a'
          a'8 [gis'] a'4 gis' gis'\fermata
          a' a' b'4. a'8
          a'4 gis' e'2\fermata }
           gis'4 ais' b' b'
          b' ais' fis'2\fermata
          fis'4 a' a'4. b'16 [c'']
          b'4 a'8 [g'] fis'2\fermata
          e'4 a' e'8 [fis'] g'4
          fis'8 [gis'] e' [fis'] gis'2\fermata
          a'4 a' b'8 [gis'] a'4
          a' gis' e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, mei -- ner See -- len Won -- ne,
      Je -- su, mei -- ne be -- ste Lust,
      wie ich dich so herz -- lich lieb'
      und mich oh -- ne dich be -- trüb';
      d'rum, o Je -- su, komm zu mir,
      und bleib bei mir für end für!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    Je -- su, mei -- ne Freu -- den -- son -- ne,
    Je -- su, dir ist ja be -- wußt, 
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          e'4 fis' e'8 [d'] cis'4
          d' e' e' e'\fermata
          e' fis' e'4. fis'16 [g']
          fis'4 e'8 [d'] cis'2\fermata }
           e'4 e' fis' fis'
          fis'8 [g'] fis' [e'] d'2\fermata
          d'4 cis' d' d'
          d' cis' a2\fermata
          a4 a b cis'~
          cis'8 b4 a8 e'2\fermata
          e'4 fis' e' e'
          fis' e'8 [d'] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          a4 fis cis fis
          b, cis8 [d] e4 e\fermata
          a8 [gis] fis4 gis a
          d e a,2\fermata }
           e4 d8 [cis] b, [cis] d [e]
          fis4 fis b,2\fermata
          b4 a8 [g] fis [e] d4
          g a d2\fermata
          a8 [gis] fis4 g ais,
          b, cis8 [d] e2\fermata
          a,8 [a] gis [fis] gis [e] a [cis]
          d [b,] e4 a,2\fermata \fine
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
