Global = {
  \key e \minor
  \time 3/8
  \include "../../global.ly"
}
Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVGigue
  \repeat volta 2 {
  | b16 c b a g fis
  | e8 e' dis
  | e, d' cis
  | e, c' b
  | ais b cis
  | d16 	g eis cis fis e
  | dis fis dis b e d
  | cis e cis ais d b
  | c8 a' b,~
  | b g' a,~
  | a fis' g,~
  | g16 b dis e~ e fis
  | dis8 e fis
  | g fis g\rest
  | f e f\rest
  | dis e\rest e~
  | e d4
  | c4.
  | b
  | a16 e a c~ c b
  | \stemNeutral g b e g fis b,
  | e c a fis g d'
  | c, fis a c b e,
  | a fis dis b c a'
  | b, dis fis a g fis
  | g8. fis16 e d
  | \stemUp fis' g fis e d cis
  | b8 b' ais
  | b, a' gis
  | b, g' fis
  | e4 dis8
  | d4 cis8
  | c4 b8~
  | b ais cis
  | d16 fis d b dis fis
  | e g e b e gis
  | e a e cis e ais
  | b8 b, a'
  | \stemNeutral g16 e cis ais fis' a,
  | f' d b gis e' g,
  | dis' c! a fis d' eis,
  | \stemUp cis'8.d16 b8~
  | b16 cis ais8.[\prall b16]
  | b fis dis b a' fis
  | \stemNeutral\tieNeutral g e g b e dis
  | e b e g b ais
  | b4.~
  | b
  }
  \break
  \repeat volta 2 {
  | R1*3/8*12
  | e,,16 dis e fis g a
  | b8 b, c
  | b' cis, d
  | b' dis, e~
  | e16 g fis e dis e
  | fis a g fis e fis
  | g b a g fis g
  | a c b a g a
  | b8 b' a
  | g c, b
  | a e' d
  | c e, d~
  | d16 fis a c b a
  | \stemUp\tieUp b4.~
  | b8. d16 c b
  | a4.~
  | a16 d, fis a g fis
  | g b cis e d cis
  | d8 a d~
  | d c16 b c8
  | b4.~
  | b8 e \once\slurDown \appoggiatura d16 c8
  | \once\shape #'((0 . 0.3) (0 . 0.3) (0 . 0.3) (0 . 0.3)) Slur
    \once\slurDown \appoggiatura b16 a8 b c~
  | c b e
  | dis16 cis b cis dis e
  | \stemNeutral fis8 fis, g
  | fis' gis, a
  | fis' ais, b
  | c g' f
  | \stemUp \once\override Tie.staff-position = #5 e4.~
  | e8 e dis
  | e d f\rest
  | r c b
  | r a16 gis a8
  | \stemNeutral r16 fis gis b e dis
  | e b gis e r8
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }  }
}
Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  | \magnifyMusic 0.8 { R1*3/8*4 }
  | e16 g fis e d cis
  | b8 b' ais
  | b, a' gis
  | b, g' fis
  | e16 a fis d g fis
  | e g e cis fis e
  | dis fis dis b e d
  | << {
      \autoBeamOff
      \omit Flag \omit Stem
      \stemDown s16 b'_~ b8 s
      \undo\omit Flag \undo\omit Stem
      \autoBeamOn
    } \\ {
      \stemDown cis, b' a
    } >>
  | b cis dis
  | e16 c ais fis b a
  | gis b gis e a g
  | fis a fis dis g e
  | fis8 f e~
  | e e dis~
  | dis d cis
  | c4 fis8
  | s1*3/8*6
  | cis8 d e
  | dis16 gis' eis cis fis e
  | dis fis dis b e d
  | cis e cis ais d b
  | g8 fis4
  | f8 e4
  | dis8 d4
  | cis8 fis ais!
  | b4 a8
  | g8. b16 d8
  | cis4 cis8
  | d4 dis8
  | s1*3/8*3
  | e,8. fis16 d8~
  | d16 e cis4
  | b8 \change Staff = "lower" \voiceThree \stemUp a a\rest
  | a\rest g fis
  | a\rest e16 dis e8
  | \change Staff = "upper" \voiceTwo \stemDown
    s1*3/8*2
  | \magnifyMusic 0.8 { R1*3/8*4 }
  | b'16 ais b cis d e
  | fis8 \change Staff = "lower" \stemUp fis, g
  | \change Staff = "upper" \stemDown fis' \change Staff = "lower" \stemUp gis, a
  | \change Staff = "upper" \stemDown fis' ais, b
  | c!16 d c b a b
  | c e d c b cis
  | d fis e d cis dis
  | e dis e g fis \change Staff = "lower" \stemUp\tieUp a,
  | g c b a g fis
  | e a g fis e fis
  | g b a g fis g
  | a c b a g a
  | fis4.
  | g
  | a
  | b8 c d~
  | d s4
  | s1*3/8*4
  | g,16 \change Staff = "upper" \stemDown\tieDown b d f e d
  | e4.~
  | e16 \change Staff = "lower" \stemUp\tieUp a, c e d c
  | b4.~
  | b8 \change Staff = "upper" \stemDown\tieDown e g~
  | g fis4
  | e4 a8~
  | a g16( fis e dis)
  | e4.~
  | e
  | a4 g8
  | fis d\rest d\rest
  | s1*3/8*4
  | g8\rest a g
  | fis4 a8
  | gis <e b'> g\rest
  | s <e a> <d e>
  | s <dis fis> fis
}
Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  | R1*3/8*12
  | b16 c b a g fis
  | e8 e' dis
  | e, d' cis
  | e, c' b
  | a16 d b g c b
  | a c a fis b a
  | gis b gis e a g
  | fis8 e' dis
  | e e, d
  | c c' b
  | a a, g
  | fis fis' e
  | dis4.
  | e16 g b d cis b
  | ais4.
  | a8 gis fis~
  | fis b, cis16 d
  | e8 fis gis
  | ais16 cis ais fis b a
  | gis b gis e a g
  | fis a fis d g fis
  | e g e cis fis e
  | d8 b b'~
  | b b, b'~
  | b b, b'~
  | b16 c b a g fis
  | e8 e' dis
  | e, d' cis
  | e, c' b
  | ais8. fis16 b8~
  | b16 e, fis8[ fis,]
  | \stemDown b fis' b,\rest
  | b\rest <b e> <a b>
  | b\rest <g b> <e cis'>
  | r16 b' dis fis b ais
  | b fis dis b b'8\mordent
  }
  \repeat volta 2 {
  | fis16 dis e fis g a
  | b8 b, c
  | b' cis, d
  | b' dis, e16 fis
  | g8 fis e
  | d16 e d cis b cis
  | d fis e d cis d
  | \stemNeutral e g fis e d fis
  | e8 g, fis'~
  | fis a, g'~
  | g b, a'~
  | a cis, dis
  | e b\rest b\rest
  | \stemDown\tieDown g g\rest a
  | a\rest a\rest b
  | a\rest a\rest c
  | a fis b~
  | b g c~
  | c a d~
  | d e fis
  | g16 b d g fis b,
  | \stemNeutral e c a fis g b
  | c, e a c b e,
  | a e c a b d
  | fis,4.
  | \once\stemDown g
  | c16 e g b a g
  | \stemDown fis4.
  | g
  | e
  | \stemNeutral d16 cis d e fis g
  | a b a g fis e
  | dis b cis dis e fis
  | g a g fis e d
  | c d c b a g
  | fis dis e fis g a
  | b fis gis ais b cis
  | dis e dis cis b cis
  | d fis e d cis dis
  | e g fis e dis fis
  | e g fis e d g
  | c, e d c b e
  | a, a' g fis b b,
  | e b gis e d' b
  | c a c e a gis
  | a e a c e dis
  | e4.
  | r8 r e,,
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
}
\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f
    opus = ##f
    title = \markup { "Gigue" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
