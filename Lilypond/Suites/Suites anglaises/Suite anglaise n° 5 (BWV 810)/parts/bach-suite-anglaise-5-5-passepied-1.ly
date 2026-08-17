Global = {
  \key e \minor
  \time 3/8
  \include "../../global.ly"
}
Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVPassepiedI
  \partial 8 b8
  | e16 fis g8 fis
  | g8 e16 dis e fis
  | g a b c b a
  | b e, fis g a b
  | c8 b16 a g fis
  | b8 a16 g fis e
  | a g fis g a fis
  | g b, cis dis e dis
  | e fis g a g fis
  | g fis e dis e fis
  | g a b c b a
  | b e, fis g a b
  | c d, e fis g a
  | b8 b, e~
  | e16 fis fis8.\trill e16
  | e4
    \bar "||"
  \partial 8 g8
  | b,16 c d8 e
  | d8 c16 b a g
  | g'8 b,16 c d e
  | d8 g4~
  | g8 e a
  | fis b4~
  | b8 a16 g fis e
  | g fis e d fis8^!
  | b,16 cis d8 cis
  | d cis16 b cis d
  | e fis g8 fis
  | g4.~
  | g16 ais b g fis e
  | d eis fis eis cis b
  | e fis cis8.\trill b16
  | b4 b8
  | e16 fis g8 fis
  | g8 e16 dis e fis
  | g a b c b a
  | b e, fis g a b
  | c8 b16 a g fis
  | b8 a16 g fis e
  | a g fis g a fis
  | g b, cis dis e dis
  | e fis g a g fis
  | g fis e dis e fis
  | g a b c b a
  | b e, fis g a b
  | c d, e fis g a
  | b8 b, e~
  | e16 fis fis8.\trill e16
  | e4
    \bar "||"
  \partial 8 b16 c
  | d b gis e f'8~
  | f e d
  | c16 e a c, b gis'
  | a e c a c e
  | a fis dis b c8~
  | c b a
  | g16 b e dis e fis
  | e( dis cis b) b'8
  | b16 e, f d e c
  | d( c b a) a'8~
  | a16 d, ees c d a
  | c( b a g) d'8~
  | d16 a b g a f
  | e d' c a b g
  | fis' g c, b a b
  | g4 b8
  | e16 fis g8 fis
  | g8 e16 dis e fis
  | g a b c b a
  | b e, fis g a b
  | c8 b16 a g fis
  | b8 a16 g fis e
  | a g fis g a fis
  | g b, cis dis e dis
  | e fis g a g fis
  | g fis e dis e fis
  | g a b c b a
  | b e, fis g a b
  | c d, e fis g a
  | b8 b, e~
  | e16 fis fis8.\trill e16
  | e4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}
Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 8 e8
  | g,8 a b
  | e, g b
  | e16 fis g8 fis
  | g fis16 e fis g
  | a8 fis d
  | g e c
  | fis, e' dis
  | e e, fis
  | g a b
  | e, g b
  | e16 fis g8 fis
  | g fis16 e fis g
  | a8 fis d
  | g16 fis e d c b
  | c a b8 b,
  | e[ e,]
    \bar "||"
  \partial 8 e'16 fis
  | g a b c b a
  | b a g a b c
  | b a g a b c
  | b a g fis e d
  | cis e a g fis e
  | d e d cis b a
  | g e' a8 a,
  | d8. fis16 b a
  | g fis e d e fis
  | b, b' ais gis ais b
  | cis, b' a g a dis,
  | e a g fis g e
  | cis8 d ais
  | b d g~
  | g16 e fis8 fis,
  | b8 b'16 a g fis
  | g8 a b
  | e, g b
  | e16 fis g8 fis
  | g8 fis16 e fis g
  | a8 fis d
  | g e c
  | fis, e' dis
  | e e, fis
  | g a b
  | e, g b
  | e16 fis g8 fis
  | g8 fis16 e fis g
  | a8 fis d
  | g16 fis e d c b
  | c a b8 b,
  | e[ e,]
    \bar "||"
  \partial 8 r8
  | r8 e'16 fis gis a
  | b a gis b e, gis
  | a8 d, e
  | a, a' g
  | fis b,16 cis dis e
  | fis e dis fis b, dis
  | e8 c a
  | b8. b'16 a fis
  | gis8 e gis
  | a,8. a'16 g e
  | fis8 d fis
  | g,8. d'16 c a
  | b8 g r
  | c a r
  | d c d
  | g16 a b g a fis
  | g8 a b
  | e, g b
  | e16 fis g8 fis
  | g8 fis16 e fis g
  | a8 fis d
  | g e c
  | fis, e' dis
  | e e, fis
  | g a b
  | e, g b
  | e16 fis g8 fis
  | g fis16 e fis g
  | a8 fis d
  | g16 fis e d c b
  | c a b8 b,
  | e4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    title = \markup { "Passepied I en Rondeau" }
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
