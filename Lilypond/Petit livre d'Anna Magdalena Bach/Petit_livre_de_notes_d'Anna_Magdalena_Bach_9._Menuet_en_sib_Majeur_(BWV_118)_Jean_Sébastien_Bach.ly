\version "2.24.4"
\include "english.ly"
\header
{
  title = "9. Menuet en si♭ majeur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV Anh. 118"
  tagline = ##f
}
upper = \relative c''
{
  \clef treble
  \key bf \major
  \time 3/4
  \repeat volta 2
  {
    bf4 bf f8. g16            	    |
    \appoggiatura f8 ef2 d4   	    |
    c4 c'4.( d16 ef)          	    |
    \appoggiatura  bf8 a2 bf4 	    |
    c4 f, ef'                 	    |
    d8 c bf a bf4             	    |
    ef16( f g8) f ef d ef     	    |
  }
  \alternative
  {
    {
      c2.                     	    |
    }
    {
      c2.                     	    |
    }
  }
  \repeat volta 2
  {
    a4 a8. bf16 bf8.\trill( a32 bf) |
    c4 bf8 a g f                    |
    bf4 a8 g a f                    |
    g8 f e d e c                    |
    c8 d e f g a                    |
    bf4 e e16( f g8)                |
    c,4 bf8 a g a                   |
    f2.                             |
    f4 bf bf16( c d8)               |
    f,4 c' c16( d ef8)              |
    d8 f ef d c bf                  |
    a4 g8 a f4                      |
    bf4 bf a                        |
    g4 f8 ef d4                     |
    ef'4 d c                        |
  }
  \alternative
  {
    {
      bf2.                          |
    }
    {
      bf2. \bar "|."                |
    }
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower = \relative f
{
  \clef bass
  \key bf \major
  \time 3/4
  \repeat volta 2
  {
    bf,8 c d c d bf    |
    c bf c f, bf4      |
    ef,8 g' f ef d c   |
    f8 c ef d c bf     |
    a8 c bf a g f      |
    bf4 c d            |
    g,4 a bf           |
  }
  \alternative
  {
    {
      f8 ef f g a f    |
    }
    {
      f4 a c           |
    }
  }
  \repeat volta 2
  {
    f8 ef d c d bf     |
    f'8 f, g a bf c    |
    d4 e f             |
    c4 c' bf           |
    a4 g f             |
    e8 d c bf a g      |
    a4 bf c            |
    f,8 c' f d ef c    |
    d8 f ef d c bf     |
    a8 c bf a g f      |
    bf4 g ef           |
    f8 f' ef d ef c    |
    d8 c d bf c d      |
    ef8 f g a bf a     |
    g4 ef f            |
  }
  \alternative
  {
    {
      bf,8 a bf c d ef |
    }
    {
      bf2. \bar "|."   |
    }
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
