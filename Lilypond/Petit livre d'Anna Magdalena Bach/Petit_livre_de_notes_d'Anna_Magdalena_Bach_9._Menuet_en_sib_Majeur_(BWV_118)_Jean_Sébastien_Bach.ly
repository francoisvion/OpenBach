\version "2.24.4"

\include "english.ly"

\header
{
  title = "9. Menuet en si♭ majeur"
  composer = "Jean Sébastien Bach (1685-1750)"
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
    bf4 bf f8. g16            	    | % 1
    \appoggiatura f8 ef2 d4   	    | % 2
    c4 c'4.( d16 ef)          	    | % 3
    \appoggiatura  bf8 a2 bf4 	    | % 4
    c4 f, ef'                 	    | % 5
    d8 c bf a bf4             	    | % 6
    ef16( f g8) f ef d ef     	    | % 7
  }

  \alternative
  {
    {
      c2.                     	    | % 8
    }

    {
      c2.                     	    | % 9 
    }
  }

  \repeat volta 2
  {
    a4 a8. bf16 bf8.\trill( a32 bf) | % 10
    c4 bf8 a g f                    | % 11
    bf4 a8 g a f                    | % 12
    g8 f e d e c                    | % 13
    c8 d e f g a                    | % 14
    bf4 e e16( f g8)                | % 15
    c,4 bf8 a g a                   | % 16
    f2.                             | % 17
    f4 bf bf16( c d8)               | % 18
    f,4 c' c16( d ef8)              | % 19
    d8 f ef d c bf                  | % 20 
    a4 g8 a f4                      | % 21
    bf4 bf a                        | % 22
    g4 f8 ef d4                     | % 23
    ef'4 d c                        | % 24
  }

  \alternative
  {
    {
      bf2.                          | % 25
    }

    {
      bf2. \bar "|."                | % 26
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
    bf,8 c d c d bf    | % 1
    c bf c f, bf4      | % 2
    ef,8 g' f ef d c   | % 3 
    f8 c ef d c bf     | % 4
    a8 c bf a g f      | % 5
    bf4 c d            | % 6
    g,4 a bf           | % 7
  }

  \alternative
  {
    {
      f8 ef f g a f    | % 8
    }

    {
      f4 a c           | % 9
    }
  }

  \repeat volta 2
  {
    f8 ef d c d bf     | % 10
    f'8 f, g a bf c    | % 11
    d4 e f             | % 12
    c4 c' bf           | % 13
    a4 g f             | % 14
    e8 d c bf a g      | % 15
    a4 bf c            | % 16
    f,8 c' f d ef c    | % 17
    d8 f ef d c bf     | % 18
    a8 c bf a g f      | % 19
    bf4 g ef           | % 20
    f8 f' ef d ef c    | % 21
    d8 c d bf c d      | % 22
    ef8 f g a bf a     | % 23
    g4 ef f            | % 24
  }

  \alternative
  {
    {
      bf,8 a bf c d ef | % 25
    }

    {
      bf2. \bar "|."   | % 26
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