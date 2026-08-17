\version "2.24.4"
\include "english.ly"
\header
{
  title = "8b. Polonaise en Fa majeur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 117b"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative c''
{
  \clef treble
  \key f \major
  \time 3/4
  \repeat volta 2
  {
    f8\mordent f16 g \appoggiatura g16 a8 g16 a bf a g f                   |
    g8 g16 a \appoggiatura g16 f8 e16 d e8\mordent c                       |
    \appoggiatura bf8 a4
                         \once \override Slur #'extra-offset = #'(  0.0  . -0.50 )
                         \grace { \hideNotes \stemDown a16^([ bf] \unHideNotes }
                         \once \override Script #'extra-offset = #'( -3.50 . -2.70 )
                         d4) \prall
                                    c                                      |
    bf8(
         \once \override Script #'padding = #1.0
         c16\mordent d) \appoggiatura c16 bf8 a16 g a8\mordent f           |
    a8(
        \once \override Script #'padding = #0.5
        bf16\mordent c) d8 d16 e \appoggiatura d8 c4                       |
    \appoggiatura c16 bf8(
                           \once \override Script #'padding = #1
                           c16\mordent d) \appoggiatura c16 bf8 a16 g a8 f |
    f'8 f16 e d8 c bf a                                                    |
    g16 bf a g \appoggiatura g8 f2                                         |
  }
  \repeat volta 2
  {
    a'8 a16 g  a8 g16 a bf a g f                                           |
    g8 g16 f g8 f16 g a g f e                                              |
    a8 a16 g f8 e d\prall c                                                |
    b16 c d b c4 bf                                                        |
    a8 c c\prall bf16 c \appoggiatura c8 d4                                |
    g,8 bf bf a16 bf \appoggiatura bf8 c4                                  |
    f8 f16 e d8 c bf a                                                     |
    g16 bf a g \appoggiatura g8 f2                                         |
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower = \relative f
{
  \clef bass
  \key f \major
  \time 3/4
  \repeat volta 2
  {
    f8 a c a f c'                    |
    e,8 c' d, b' c16 bf a g          |
    f16 e d c bf f' e f a, f' e f    |
    g,8 f' c e f,16 c' d e           |
    f8 g16 a bf8 f a f               |
    g8 f e c f16 g a bf              |
    a8 f bf, c d bf                  |
    c8 c, f a16 c f4                 |
  }
  \repeat volta 2
  {
    f8 a c a f c'                    |
    e,8 g c g e c                    |
    f16 e f g a8 g f e               |
    g8 g, c16 d e d c bf a g         |
    f8 a c f bf, f'                  |
    e8 g e c bf e                    |
    a,8 f' bf, c d bf                |
    c8 c, f a16 c f4                 |
  }
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}
\score
{
  \new PianoStaff
  <<
    \new Staff = upper \upper
    \new Staff = lower \lower
  >>
  \layout
  {
    \context
    {
      \Score
      \remove "Mark_engraver"
    }
    \context
    {
      \Staff
      \consists "Mark_engraver"
    }
  }
  \midi   { }
}
