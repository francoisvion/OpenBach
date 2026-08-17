\version "2.24.0"
Global = {
   \key b \minor
   \time 4/4
   \partial 16*3
}
VoiceI =  \relative c' {
   \repeat volta 2 {
      fis16 b ais
      b8.\mordent cis16 d b e b fis'8 b,~ b16 b e d
      g e ais b cis, g' fis e d fis b, ais b d g, fis
      g8 b'~ b16 g e d cis e a, g a cis fis, e
      fis8 a'~ a16 fis d cis b d g, fis g b e d
      e8. e,16 fis a d cis d8. b16 e g b cis,
      d fis, b ais b4~ b16 ais e' d e4~
      e16 d gis fis gis4~ gis16 cis, fis eis fis a gis fis
      eis8 cis fis8. e16 d fis, b a b4~
      b16 a gis b eis, d' cis b a eis fis b gis8.- \parenthesize \prall fis16
      fis2~ fis16 b e d e ais, d cis
      d gis, cis b cis4~ \stemDown cis16 fis, d' cis \stemNeutral eis,8.- \parenthesize \prall fis16
      <<\relative fis' { fis2^~ fis4 r16}\\ \relative e' {r16 e d cis d8 cis16 b cis4 r16}>>
   }
   \repeat volta 2 {
      cis'16 gis b
      ais8. cis16 fis, fis' cis e d8. fis16 b, b' fis a
      g e  b d c g' fis a dis,8\prall b r16 e b d
      c e a, c b e g, b a e' fis, a g e' e, g
      fis e' dis a' fis8.\prall e16 e4~ e16 g b, d
      cis8. e16 a, a' e g fis4~ fis16 d ais cis
      b8. d16 g, g' d fis e4~ e16 cis gis b
      ais8. cis16 fis, fis' cis e d4~ d16 b fis a
      g b e, d' cis e g b, ais cis fis,8~ fis16 b fis a
      g b e, g fis b d, fis e b' cis, e d b' b, d
      cis b' ais e' cis8.\prall b16 b g fis' dis e4~
      e16 b gis' eis fis8. e16 d cis d b ais8.- \parenthesize \prall b16
      <<\relative b'{b2~ b4 r16}\\ \relative dis' {r8 dis~ dis16 e dis cis dis4 r16}>>
   }
}
VoiceII =  \relative c {
   \repeat volta 2 {
      r16 r8
      r16 fis b ais b8 cis d16 b g' fis g8.\mordent fis16
      e8 cis fis fis, b cis d b
      e,16 b' e d cis8 b a g fis e
      d16 a' d cis b8 a g fis e d
      cis16 e a g a8. fis16 b, fis' b a g8 a
      d,4~ d16 b g' fis g8 cis,~ cis16 fis b ais
      b8 b,~ b16 eis a gis a4~ a16 fis b a
      b d cis b a fis b ais b8 a gis16 eis d' cis
      d8 b gis eis fis b, cis cis,
      r16 fis' e' d e fis, d' cis d fis, cis' b cis fis, b ais
      b4~ b16 eis,16 a gis a8 fis8 cis' cis,
      <<\relative ais {r8 ais8~ ais16 b ais gis ais4 r16}\\ \relative fis {\tieDown fis2~ fis4 r16}>>
   }
   \repeat volta 2 {
      r16 r8
      r16 fis' cis e d8 ais8 r16 b fis a g8 dis
      e g a c r16 b fis a g8 e
      a fis g e c' a b g
      a fis b,16 b' fis a g b dis, fis e8 g
      a16 a' e g fis8 cis r16 d ais cis b8 fis
      g16 g' d fis e8 b r16 cis gis b ais8 eis
      fis16 fis' cis e d8 ais r16 b fis a g8 dis
      e8 d e cis r16 fis cis e d8 b
      e8 cis d b g' e fis d
      e cis fis fis, g4~ g16 e cis' ais
      b4~ b16 ais e' cis g'8 e fis fis,
      <<\relative a{r16 a g fis g8 fis16 e fis4 r16}\\ \relative b, {b2~ b4 r16}>>
   }
}
\bookpart {
  \header { subtitle = "1. Allemande" }
  \score {
    \new PianoStaff <<
      \accidentalStyle Score.piano-cautionary
      \new Staff {
        \Global
        \VoiceI
      }
      \new Staff {
        \Global
        \clef bass
        \VoiceII
      }
    >>
    \layout { }
    \midi {
      \tempo 4 = 80
    }
  }
}
