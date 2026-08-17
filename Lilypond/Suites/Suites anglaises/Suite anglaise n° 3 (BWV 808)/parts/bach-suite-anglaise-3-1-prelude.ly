Global = {
  \key g \minor
  \time 3/8
  \include "../../global.ly"
}
Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \label #'SuiteIIIPrelude
  \tempo "Prélude"
  | r8 d d
  | bes bes bes
  | a16 g a bes a bes
  | g fis g a bes c
  | d c d e fis d
  | \stemNeutral g fis g a bes g
  | a g fis e! d c
  | \stemUp bes8 <bes d g> q
  | ees16 f ees d c bes
  | a8 f' f
  | d16 ees d c bes a
  | g8 ees' ees
  | c16 d c bes a g
  | fis8 d' d
  | <d, bes'> <g bes> q
  | bes4.
  | a~
  | a
  | g~
  | g
  | fis
  | g\upmordent
  | r8 <fis d'> q
  | s4.*5
  | d'4 d8
  | <c ees> <bes d> <a c>
  | c8. d16 bes8~
  | bes16 a a8.\prall g16
  | g16 a bes g fis g
  | \stemNeutral d g bes g cis g
  | d'8 a' a
  | f d d
  | d16 b c e f c
  | bes c d bes ees bes
  | a c d ees f d
  | b8\prall c c
  | c16 d ees c fis c
  | a' ees d c bes a
  | \stemUp bes8 d d
  | bes bes bes
  | a16 a' d, a' cis, g'
  | f a d, a' cis, g'
  | f16 d b f' a, f'
  | g, f' a, f' b, f'
  | ees g c, g' b, f'
  | ees g c, g' b, f'
  | ees c a ees' g, ees'
  | f, ees' g, ees' a, ees'
  | d8 f f
  | d d d
  | c16 c' f, c' e, bes'
  | a c f, c' e, bes'
  | a f d aes' c, aes'
  | bes, aes' c, aes' d, aes'
  | g bes ees, bes' d, aes'
  | g bes ees, bes' d, aes'
  | g ees c g' bes, g'
  | a, g' bes, g' c,  g'
  | fis8 g f
  | ees d c
  | <bes f'> <a ees'> \tieNeutral <bes d>~
  | q16 g' c,8.\prall bes16
  | bes8 f' f
  | d d d
  | c16 bes c d c d
  | bes a bes c d ees
  | f e f g a f
  | \stemNeutral bes a bes c a bes
  | c bes a g f ees
  | \stemUp\tieUp d8 <d f bes> q
  | \once\override NoteColumn.force-hshift = #0 g16 a g f ees d
  | c8 <c a'> q
  | f16 g f ees d c
  | bes8 g' g
  | ees16 f ees d c bes
  | a8 f' f
  | d d d
  | d4.
  | c~
  | c
  | bes~
  | bes
  | a
  | bes\upmordent
  | c8 c c
  | <aes f'> q q
  | q <g ees'> q
  | <bes g'> q q
  | <bes g'> <a! f'> q
  | \stemUp f'4.~
  | f
  | <g, ees'>8 <f d'> <ees c'>
  | <ees c'>8. <f d'>16 \tieNeutral <d bes'>8~
  | q16 <ees c'> a8.\prall bes16
  | bes c d bes a bes
  | \stemNeutral f bes d bes e bes
  | f'8 c' c
  | a f f
  | ees16 d ees c b c
  | g c ees c fis c
  | g'8 d d
  | bes g g
  | f a' a
  | f d d
  | \stemUp cis16 b cis d b cis
  | d cis d e cis d
  | e8 a, d\rest
  | \stemNeutral d,16 cis d e f g
  | a g a b cis a
  | d cis d e f g
  | \stemUp\tieUp a bes a g f e
  | f8 <f a> q
  | \once\override NoteColumn.force-hshift = #0 bes16 c bes a g f
  | e8 g g
  | a16 bes a g f e!
  | s4.
  | g8 g g
  | cis, <cis e> q
  | g8. a16 f8~
  | f16 e e8.\prall d16
  | d16 e f d cis d
  | \stemNeutral a d f d gis d
  | a'8 e' e
  | c a a
  | a16 fis g b c g
  | f g a g bes f
  | e g a bes c a
  | fis8\prall g g
  | g16 a bes g cis g
  | e' bes a g f e
  | f g aes f b f
  | d' aes g f ees d
  | \stemUp g'8\rest g g
  | ees ees ees
  | d16 s s4
  | s4.*8
  | g8 g g
  | f16 s s4
  | s4.
  | \stemNeutral d16 bes g des' f, des'
  | ees, des' f, des' g, des'
  | c ees aes, ees' g, des'
  | c ees aes, ees' g, des'
  | c aes f c' ees, c'
  | d, c' ees, c' f, c'
  | \stemUp b8 c bes
  | aes g f
  | <ees bes'> <d aes'> <ees g>~
  | <ees g>16 c' f,8.\prall ees16
  | ees8 bes' bes
  | bes4.~\downprall
  | bes~
  | bes16 aes bes des c bes
  | aes bes aes8 aes
  | aes4.~\downprall
  | aes~
  | aes16 g aes c bes aes
  | g a32 b c8 c
  | c4.\downprall~
  | c~
  | \stemNeutral c16 bes c ees d c
  | bes a g ees' fis, g
  | a g f d' e, f
  | g f ees c' d, e
  | fis e d c' e, fis
  | g fis e bes' cis, d
  | e d cis a' e fis
  | g fis e d e fis
  | \stemUp \override Beam.damping = #+inf.0
    g8 \change Staff = "lower" g, g
  | fis \change Staff = "upper" d' d
  | bes g' g
  | fis d' d
  | \revert Beam.damping bes16 a g a bes c
  | d c d e fis d
  | \stemNeutral g fis g a bes g
  | a g fis e d c
  | \stemUp bes8 <bes d g> q
  | ees16 f ees d c bes
  | a8 f' f
  | d16 ees d c bes a
  | g8 ees' ees
  | c16 d c bes a g
  | fis8 d' d
  | <d, bes'> <g bes> q
  | bes4.
  | a~
  | a
  | g~
  | g
  | fis
  | g\upmordent
  | f'8\rest <fis, d'> q
  | s4.*5
  | d'4 d8
  | <c ees> <bes d> <a c>
  | c8. d16 bes8~
  | bes16 a a8.\prall g16
  | g4 b8\rest
    \fine
}
Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  | R1*3/8
  | r8 g g
  | fis fis fis
  | d d d
  | d \change Staff = "lower" \stemUp a a
  | s4.*3
  | \change Staff = "upper" \stemDown bes'8 r r
  | r <a c> q
  | a8 r r
  | r <g bes> q
  | g r r
  | r <fis a> q
  | \once\override NoteColumn.force-hshift = #1.3 g s4
  | ees16 d ees f g ees
  | c g' f ees d c
  | d c d ees f d
  | bes f' ees d c bes
  | c bes c d ees c
  | \once\override Beam.positions = #'(-6.5 . -6)
    a ees' d \change Staff = "lower" \stemUp c bes a
  | \change Staff = "upper" s4. \stemDown
  | a'8 a a
  | \stemNeutral <g b d f!> q q
  | q <g c e> q
  | <a cis e g> q q
  | q <a d fis> q
  | <c d a'> q q
  | \stemDown <c a'> <bes g'> <g f'>
  | g4.
  | <fis a>4 <d g>8~
  | g fis4
  | g s8
  | s4.*9
  | g8 g a
  | a g g
  | g f e
  | d f e
  | d4.~
  | d
  | r8 ees d
  | c ees d
  | c4.~
  | c
  | s8 r r
  | r bes' bes
  | bes a g
  | f a g
  | f4.~
  | f
  | r8 g f
  | ees g f
  | ees4.~
  | ees
  | r8 d' c
  | bes a g
  | f4 f8
  | g a4
  | bes8 r r
  | r bes bes
  | a a a
  | f f f
  | f \change Staff = "lower" \stemUp c c
  | \change Staff = "upper" \stemDown
    s4.*3
  | \once\override NoteColumn.force-hshift = #-0.5 d'8 c\rest a\rest
  | s4.
  | c8 f,\rest f\rest
  | e\rest <bes' d> q
  | bes r r
  | r <a c> q
  | <f bes> bes bes
  | g16 f g a bes g
  | r bes a g f ees
  | f ees f g a f
  | d a' g f ees d
  | ees d ees f g ees
  | c g' f ees d c
  | s4.
  | r8 <f a> q
  | \override Tie.extra-offset = #'(0 . -1)
    bes4.~
  | \override NoteColumn.force-hshift = #1.5 bes8 \override NoteColumn.force-hshift = #1.3 bes bes
  | \revert NoteColumn.force-hshift c4.~
  | \override NoteColumn.force-hshift = #1.5 c8 \override NoteColumn.force-hshift = #1.3 c c
  | \revert NoteColumn.force-hshift <c ees> q q
  | <c ees> <bes d> <aes bes>
  | \once\override NoteColumn.force-hshift = #1.2 bes4.
  | a4 \once\override NoteColumn.force-hshift = #-0.6 f8
  | \once\override NoteColumn.force-hshift = #-0.5 g <c, f>4
  | <d f>8 f f
  | s4.*9
  | \change Staff = "lower" \stemUp a,8
    \change Staff = "upper" \stemDown a' a
  | f f f
  | e s4
  | s4.*3
  | g8\rest a a
  | d16 e d c bes a
  | \once\override NoteColumn.force-hshift = #-0.3 f'8 d\rest c\rest
  | g\rest e'! e
  | e g,\rest g\rest
  | d'16 c d e! f d
  | g,8\rest <bes d> q
  | bes a a
  | e4 d8~
  | d cis4
  | d8 s4
  | s4.*11
  | \once\stemUp ees8 s4
  | s4.
  | bes'16 d g, d' fis, c'
  | \stemNeutral bes d g, d' fis, c'
  | bes g e bes' d, bes'
  | c, bes' d, bes' e, bes'
  | aes c f, c' e, bes'
  | aes c f, c' e, bes'
  | aes f d aes' c, aes'
  | bes, aes' c, aes' d, aes'
  | g8 bes' bes
  | \stemDown g,\rest ees' ees
  | d16 f bes, f' a, ees'
  | d f bes, f' a, ees'
  | s4.*6
  | \change Staff = "lower" \stemUp g,,8
    \change Staff = "upper" \stemDown  g' g
  | ees d c
  | bes4 bes8
  | c d4
  | ees8 e16\rest aes g f
  | e f g e des e!
  | bes c des \change Staff = "lower" \stemUp bes g bes
  | \change Staff = "upper" \stemDown s4.
  | s8 d16\rest g f ees
  | d ees f d bes d
  | aes bes c \change Staff = "lower" \stemUp aes f aes
  | s4.
  | \change Staff = "upper" s8 \stemDown e'16\rest bes' a g
  | fis g a fis ees! fis!
  | c d ees \change Staff = "lower" \stemUp c a c
  | \change Staff = "upper" \stemDown
    s4.*12
  | s8 d d
  | d \change Staff = "lower" \stemUp a a
  | \change Staff = "upper" \stemDown
    s4.*2
  | d16\rest a' g f! ees \change Staff = "lower" \stemUp d
  | \change Staff = "upper" \stemDown
    bes'8 f\rest f\rest
  | d\rest <a' c> q
  | a e\rest e\rest
  | c\rest <g' bes> q
  | g d\rest d\rest
  | b\rest <fis'! a> q
  | \once\override NoteColumn.force-hshift = #1.3 g s4
  | ees16 d ees f g ees
  | c g' f ees d c
  | d c d ees f d
  | bes f' ees d c bes
  | c bes c d ees c
  | a ees' d \change Staff = "lower" \stemUp c bes a
  | \change Staff = "upper" \stemDown s4.
  | a'8 a a
  | <g b d f> q q
  | q <g c e> q
  | <a cis e g> q q
  | q <a d fis> q
  | <c d a'> q q
  | <c a'> <bes g'> <g f'>
  | g4.
  | <fis a>4 <d g>8~
  | g fis4
  | g s8
}
Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  | s4.*2
  | r8 d d
  | bes bes bes
  | s4.*48
  | bes8 s4
  | s4.*15
  | c8\rest f f
  | d d d
  | s4.*39
  | c8\rest d d
  | \once\override Beam.positions = #'(6 . 6)
    cis16 b cis d b \change Staff = "upper" \stemDown cis
  | \change Staff = "lower" \stemUp
    a8 a a
  | s4.*24
  | \change Staff = "upper" \stemDown
    c8 <g' c> <g d'>
  | q <g c> <a c>
  | \change Staff = "lower" \stemUp
    d,\rest bes bes
  | g bes a
  | g4.~
  | g
  | c8\rest aes g
  | f aes g
  | f4.~
  | f
  | s4.*2
  | f'8\rest d c
  | bes d c
  | bes4.~
  | bes
  | e8\rest c bes
  | aes c bes
  | aes4.~
  | aes
  | s4.*27
  | s8 bes bes
}
Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  | R1*3/8*3
  | r8 g g
  | <fis> <d fis> q
  | \stemNeutral <bes d g> <g bes d> q
  | <d fis a d>4 d'8\rest
  | \change Staff = "upper" \stemDown r16 a'' g f! ees! \change Staff = "lower" d
  | \stemNeutral c d c bes a g
  | f g' f ees d c
  | bes c bes a g f
  | ees f' ees d c bes
  | a bes a g fis e
  | d ees d c bes a
  | g a g f ees d
  | c8 c' c
  | f, f' f
  | bes bes, bes
  | ees, ees' ees
  | a a, a
  | d, r r
  | bes''16 d c bes a g
  | fis g fis e d c
  | b a g f! e d
  | c8 g''16 f e d
  | cis b a g fis e
  | d8 c''!16 bes a g
  | fis e! d c bes a
  | g fis g a bes g
  | c bes c d ees c
  | d e fis d g8
  | c, d d,
  | g4 d'8\rest
  | R1*3/8
  | \clef treble r16 d'32 e f16 d cis d
  | a d f d gis d
  | a'8 a a
  | a g g
  | g f f
  | b16\rest f ees d c ees \clef bass
  | fis,8 c' ees
  | fis, a d
  | d,16\rest g32 a bes16 g fis g
  | d g bes g cis g
  | \override Rest.staff-position = #0
    d'4 r8
  | d,4 r8
  | r8 g a
  | b a g
  | c4 r8
  | c,4 r8
  | r f g
  | a g f
  | bes16 c d bes a bes
  | f bes d bes e bes
  | f'4 r8
  | f,4 r8
  | r bes c
  | d c bes
  | ees4 r8
  | ees,4 r8
  | r a bes
  | c bes a
  | d16 c bes c a bes
  | g bes f bes ees, bes'
  | d, bes' c, bes' bes, bes'
  | ees,8 f f,
  | bes4 r8
  | R1*3/8*2
  | r8 bes' bes
  | <a c> <f a> q
  | <d f bes> <bes d f> q
  | <f a c f>4 r8
  | \change Staff = "upper" \stemDown g''16\rest  c bes a g f
  | \once\override NoteColumn.force-hshift = #0 ees f ees d c bes
  | a bes' a g f \change Staff = "lower" ees
  | \stemDown d ees d c bes a
  | g a' g f ees d
  | c d d bes a g
  | \stemNeutral f g f ees d c
  | bes c bes a g f
  | ees8 ees' ees
  | a a, a
  | d, d' d
  | g g, g
  | c, c' c
  | f4 r8
  | \change Staff = "upper" \stemDown d'16 f ees d c  \change Staff = "lower" bes
  | \stemDown \stemNeutral a bes a g f ees
  | d c bes aes g f
  | \stemDown ees8 bes''16 aes g f
  | \stemNeutral e d c bes a! g
  | f8 ees''16 d c bes
  | a g f ees d c
  | bes a bes c d bes
  | ees d ees f g ees
  | f g a f bes8
  | ees, f f,
  | bes r r
  | d' bes bes
  | a16 g a f e f
  | c f a f b f
  | c'8 g g
  | ees c c
  | bes16 a bes g fis g
  | d g bes g cis g
  | d' e f d cis d
  | a d f d gis d
  | s4.
  | R1*3/8
  | \stemDown b8\rest a' a
  | f <d f> q
  | \stemNeutral <cis e a> <a cis e> q
  | <f a d> <d f a> q
  | <a cis e a> r r
  | R1*3/8
  | \change Staff = "upper" \stemDown
    \once\override NoteColumn.force-hshift = #0 g'''16 a g f e d
  | \change Staff = "lower"
    c d c bes a g
  | \stemNeutral f g f e d c
  | bes c bes a g f
  | e d e f g e
  | a g a b cis a
  | bes'8 cis, d
  | g a a,
  | d,4 r8
  | R1*3/8
  | r16 a''32 b c16 a gis a
  | e a c a dis a
  | e'8 e e
  | e d d
  | d c c
  | r16 c bes a g bes
  | cis,8 g' bes
  | cis, e a
  | d, f aes
  | b d g,
  | r16 c,32 d ees16 c b c
  | g c ees c fis c
  | \stemDown g'4 b,8\rest
  | g4 b8\rest
  | b\rest c d
  | e d c
  | f4 b,8\rest
  | f4 b8\rest
  | bes\rest bes c
  | d c bes
  | ees16 f g ees d ees
  | bes ees g ees a ees
  | bes'4 b,8\rest
  | bes4 b8\rest
  | b\rest ees f
  | g f ees
  | aes4 b,8\rest
  | aes4 b8\rest
  | b\rest d ees
  | f ees d
  | g16 f ees f d ees
  | \stemNeutral c ees bes ees aes, ees'
  | g, ees' f, ees' ees, ees'
  | aes,8 bes bes
  | ees, s4
  | s4.*2
  | e'16 f g e c e
  | f,8 s4
  | s4.*2
  | d'16 ees f d bes d
  | ees,8 s4
  | s4.*2
  | fis'16 g a fis d fis
  | g,8 bes ees
  | f,! a d
  | ees, g c
  | d, d' r
  | d, d' r
  | d, d' r
  | d, d' d
  | \stemDown bes16 a g a bes c
  | d c d e fis d
  | g fis g a bes c
  | d c d e fis d
  | g8 g, g
  | <fis a> <d fis> q
  | \stemNeutral <bes d g> <g bes d> q
  | <d fis a d>4 r8
  | s4.
  | c''16 d c bes a g
  | f g' f ees d c
  | bes c bes a g f
  | ees f' ees d c bes
  | a bes a g fis e
  | d ees d c bes a
  | g a g f ees d
  | c8 c' c
  | f, f' f
  | bes bes, bes
  | ees, ees' ees
  | a a, a
  | d, b'\rest b\rest
  | bes'16 d c bes a g
  | fis g fis e d c
  | b a g f! e d
  | c8 g''16 f e d
  | cis b a g fis e
  | d8 c''!16 bes! a g
  | fis e d c bes a
  | g fis g a bes g
  | c bes c d ees c
  | d e fis d g8
  | c, d d,
  | g4 r8
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
    opus = "BWV 808"
    title = \markup {
      \fill-line {
        \center-column {
          \line \abs-fontsize #18 \caps {
            "Suite III" \abs-fontsize #14 { \caps "avec Prélude" }
          }
        }
      }
    }
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
