Global = {
  \key d \minor
  \time 3/8
  \include "../global.ly"
}
Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  | R1*3/8
  | R1*3/8
  | R1*3/8
  | R1*3/8
  | a4.
  | b
  | c
  | b
  | a8 e' a~
  | a gis16 fis e d
  | c b c d b c
  | d c d e c d
  | e d e f d e
  | f g a g f e
  | d c d e c d
  | e f g f e d
  | c4.~
  | c8 bes4~
  | bes8 a g
  | f16 e f g e f
  | g f g a f g
  | a8 d, d'~
  | d c16 bes a g
  | fis16 e fis g e fis
  | g4.
  | a
  | bes
  | a4.
  | g8 d' f,!
  | ees4.~
  | ees8 c' ees,
  | d4.~
  | d16 e! fis g a bes
  | c d e fis g a
  | d, g a bes a g
  | c, fis g a g fis
  | g4.
  | a
  | bes
  | a~
  | a16 d, g f e d
  | cis8 d e~
  | e a, d~
  | d8 cis16 b! a g
  | f4.~
  | f16 f e d cis b!
  | \tieDown a4~ a16 a
  | g4~ g16 g
  | g g f8. g16
  | a8~ a16 bes c8~
  | c16 c bes8. c16
  | d8. d16 g8~
  | g16 g f8. e16
  | d8 r16 d8 cis16
  | d4.
    \fine
}
Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  | d4.
  | e
  | f
  | e
  | d4 c8
  | d b e
  | a, e' a~
  | a gis16 fis e d
  | c b c d b c
  | d8 f\rest b~
  | b e, a~
  | a gis16 fis e d
  | c4.~
  | c8 \change Staff = "lower" \stemUp\tieUp b! a
  | bes4.~
  | bes8 a g
  | a16 \change Staff = "upper" \stemDown\tieDown bes' a g f e
  | d4 g8
  | e4.~
  | e8 a, d~
  | d8 \change Staff = "lower" \stemUp\tieUp cis16 b a g
  | f g a c bes a
  | g f g8 c~
  | c bes a
  | bes16 a bes c \change Staff = "upper" \stemDown\tieDown d e
  | fis e fis g e fis
  | g8 d g~
  | g8 fis16 e d c
  | d4.~
  | d8 c bes
  | c4.~
  | c8 bes a
  | bes a\rest a\rest
  | R1*3/8*7
  | d4.
  | e
  | f
  | e
  | d16 e d c! \change Staff = "lower" \stemUp\tieUp bes! a
  | g4.~
  | g16 g f e d8~
  | d16 f e d cis8
  | d8. d16 e8
  | g16\rest fis g8. fis16
  | g8. g16 a8
  | a16\rest a bes8. bes16
  | a8. a16 g8
  | a16\rest f e8. e16
  | fis4.
}
Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
}
Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  | R1*3/8*8
  | a4.
  | b!
  | c
  | b!
  | a8 gis a
  | d, e f
  | g f g
  | c, d e
  | f g a
  | \stemNeutral bes16 a g f e d
  | cis b cis d b cis
  | d4.
  | e
  | f
  | e4 ees8
  | \stemDown d4.~
  | d8 c bes
  | ees c d
  | \stemNeutral\tieNeutral g,16 fis g a fis g
  | a g a bes g a
  | bes a bes c a bes
  | c d ees d c bes
  | a g a bes g a
  | bes c d c bes a
  | g4.
  | a
  | bes
  | a
  | g16 a bes c d e
  | fis g a bes c d
  | g, d' ees f ees d
  | fis, c' d ees d c
  | bes4.~
  | bes16 e, a g f e
  | d e d c bes a
  | g8 e a
  | d,4.
  | \stemDown\tieDown e
  | f
  | e
  | d~
  | d8 d'16 c bes a
  | g4.~
  | g8 g'16 f e d
  | cis8 d bes
  | gis a a
  | d,4.
    \fine
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f
    opus = ##f
    title = \markup { "Fughetta" }
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
    \tempo 4. = 60
  }
}
