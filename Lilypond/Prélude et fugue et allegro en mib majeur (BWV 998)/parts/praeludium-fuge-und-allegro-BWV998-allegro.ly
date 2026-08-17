Global = {
  \key ees \major
  \time 3/8
  \include "../global.ly"
}
staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }
tema = \markup {
  \normal-text\circle \teeny "T"
}
Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieNeutral
  \repeat volta 2 {
  | \staffLower c16\rest ees d c bes aes
  | g c bes aes g f
  | ees d ees f g ees
  | f g aes ees d aes'
  | g bes ees d ees bes
  | c ees d c bes aes
  | g aes bes g f bes
  | ees, g c d ees bes
  | a bes c a g c
  | f, a d ees f c
  | bes c d bes aes d
  | g, bes \staffUpper\stemDown ees f g ees
  | \stemNeutral c d ees f g bes,
  | a c ees f g a,
  | bes c d ees f aes,
  | g bes d ees f g,
  | a bes c d ees g,
  | f a c d ees c
  | d bes' a g f ees
  | d g f ees d c
  | bes a bes c d bes
  | c d ees bes a ees'
  | d bes c d ees f
  | g ees f g a bes
  | c bes a g f ees
  | d8 ees c
  | r16 bes a bes c bes
  | d bes a bes ees bes
  | f' bes, a bes g' bes,
  | aes'! f ees d c bes
  | g' a a8.[\trill bes16]
  | <f bes>4.
  }
  \break
  \repeat volta 2 {
  | r16 f ees f g ees
  | f d bes d f g
  | aes ees f aes d, aes'
  | g aes bes g ees8
  | \staffLower\stemUp c16\rest bes aes bes c aes
  | bes g ees g bes c
  | des aes bes des g, des'
  | c des ees c aes g
  | \staffUpper\stemNeutral r16 c' des c bes aes
  | g c des c aes g
  | f c' des c g f
  | e f g8 r
  | \staffLower\stemUp
    \once\override Staff.TextScript.extra-offset = #'(-3 . -2)
    c,16\rest^\markup { "piano" } c des c bes aes
  | g c des c aes g
  | f c' des c g f
  | e f g8 a\rest
  | \staffUpper r16 aes' bes aes des, c
  | bes g' aes g c, bes
  | aes f' g f bes, aes
  | g f' e c d! e!
  | f c bes c e f
  | g f e f g bes
  | aes32 g f16 g8[ e]
  | f4 r8
  | \staffLower f,16\rest f e f g a
  | bes f e f a bes
  | c f, e f bes c
  | d ees! f bes, a ees'
  | \staffUpper d bes a bes c d
  | ees bes a bes d ees
  | f bes, a bes ees f
  | g aes! bes ees, d aes'
  | g bes c bes aes g
  | f bes c bes g f
  | ees bes' c bes f ees
  | d ees f8 r
  | \staffLower
    \once\override Staff.TextScript.extra-offset = #'(-3 . -1)
    a,16\rest^\markup { "piano" } bes c bes aes g
  | f bes c bes g f
  | ees bes' c bes f ees
  | d ees f8 f\rest
  | \staffUpper
  | r16 f' ees g des g
  | c, e f c g' bes,
  | aes g' f aes ees aes
  | d, f g d aes' c,
  | bes aes' g bes f bes
  | ees, g aes ees bes' ees,
  | c' bes aes d g, ees'
  | f, ees' d c bes aes
  | g bes c bes aes g
  | f bes c bes g f
  | ees bes' c bes f ees
  | d bes' c bes ees, des
  | c g' f g aes g
  | f c' ees, d ees c
  | d bes a bes c bes
  | aes f' aes, g aes f'
  | g, ees' d c bes aes
  | \staffLower g8 aes f
  | e16\rest ees d ees f ees
  | g ees d ees aes ees
  | bes' ees, d ees c' ees,
  | des' bes aes g f ees
  | c'8 \staffUpper f[ d]
  | ees4.\fermata
  }
  \fine
}
Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown
  \repeat volta 2 {
  | s4.*25
  | r8 c a
  | s4.*4
  | s8 \magnifyMusic 0.8 { f' ees }
  | d4.
  }
  \repeat volta 2 {
  | s4.*22
  | r8 bes g
  | aes4 s8
  | s4.*38
  | s8 aes f
  | g4.
  }
}
Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\tieNeutral
  \repeat volta 2 {
  | ees4 g8\rest
  | ees'4 d8
  | c4 bes8
  | aes f bes
  | ees, f g
  | aes bes bes,
  | ees4 d8
  | c ees c
  | f4 ees8
  | d f d
  | g4 f8
  | ees4 r8
  | \stemNeutral ees' ees ees
  | c c c
  | d d d
  | bes bes bes
  | c c c
  | a a a
  | bes d f
  | bes4 a8
  | g4 f8
  | ees c f
  | bes,4 r8
  | ees4 r8
  | a,4 r8
  | bes ees, f
  | bes,4 r8
  | r bes' c
  | d4 r8
  | r bes d
  | ees c f
  | bes,4.
  }
  \repeat volta 2 {
  | bes,4 r8
  | r d bes
  | c d bes
  | ees4 r16 f
  | \stemDown g4 aes8
  | ees g ees
  | f g ees
  | aes4 a8\rest
  | f'4 r8
  | ees4 r8
  | des4 r8
  | \stemUp c8. bes16 aes g
  | \stemDown f8 b\rest f'
  | ees b\rest ees,
  | des b'\rest des
  | c8. bes16 aes g
  | \stemNeutral
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    f8^\markup { "forte" } r f'
  | des r ees
  | c r des
  | bes c bes
  | aes g f
  | des' c bes
  | c bes c
  | f, aes c
  | \stemDown f,4 b8\rest
  | g4 b8\rest
  | a4 b8\rest
  | bes d, f
  | \stemNeutral bes,4 r8
  | c4 r8
  | d4 r8
  | ees g bes
  | ees4 r8
  | d4 r8
  | c4 r8
  | bes8. aes16 g f
  | \stemDown ees8 c'\rest ees
  | d c\rest d,
  | c c'\rest c
  | bes8. c16 bes aes
  | \stemNeutral
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    g8^\markup { "forte" } r ees
  | aes r c
  | f, r f'
  | bes r f
  | g r bes,
  | c r g
  | aes f ees
  | bes' c d
  | ees d c
  | d c bes
  | c bes aes
  | bes aes g
  | aes aes aes
  | a a a
  | bes bes bes
  | d d d
  | ees g, aes
  | \stemDown bes aes bes
  | ees,4.
  | b'8\rest ees, f
  | g4 b8\rest
  | b\rest ees, g
  | aes f bes
  | \stemUp ees,4.\fermata
  }
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
      \Bass
    >>
  >>
  \header {
    composer = ##f
    opus = ##f
    title = \markup { "Allegro" }
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
    \tempo 4. = 78
  }
}
