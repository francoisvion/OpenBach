\version "2.24.4"
\include "english.ly"
\header
{
  title = "15. Menuet en do mineur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 121"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative c
{
  \clef treble
  \key c \minor
  \time 3/4
  \repeat volta 2
  {
    c''4 c d 	   		  |
    ef4 ef f 	   		  |
    g4 g af 	   		  |
    fs2\trill g4 ~ 		  |
    g8 af f! e f4 ~ 		  |
    f8 g ef! d ef4 		  |
    c8 b c4 d      		  |
    g,2.            		  |
  }
  \repeat volta 2
  {
    g4 g af         		  |
    bf8 af g af bf4  		  |
    c,4 e \times 2/3 { g8 af bf } |
    af8 g f2                      |
    f4 f g                        |
    af8 g f g af4                 |
    bf,4 d \times 2/3 { f8 g af } |
    g8 f ef2                      |
    g4 af a                       |
    bf4 b c                       |
    b4 c d                        |
    ef4 e f                       |
    d4 ef! e                      |
    f4 fs g                       |
    g,4 f'!8 ef d ef              |
    c2.                           |
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower = \relative c
{
  \clef bass
  \key c \minor
  \time 3/4
  \repeat volta 2
  {
    c2 r4    	  		   |
    c4 c d   	  		   |
    ef4 ef c 	  		   |
    d4 c b   	  		   |
    bf!2 a4  	  		   |
    af!2 g4  	  		   |
    af2 f4   	  		   |
    g4 g'8 f ef d 		   |
  }
  \repeat volta 2
  {
    << { r4 e f } \\
       { c2.    } >>               |
    g'4 e c                        |
    e4 c e                         |
    f4. g8 f ef!                   |
    << { d2     ef4 } \\
       { r4 bf2     } >>           |
    f'4 d c                        |
    d4 bf d                        |
    ef4. f8 ef d                   |
    c4 f ef                        |
    d4 g ef                        |
    d4 c b                         |
    c4 bf! a                       |
    b4 c bf                        |
    a4 af g                        |
    ef'4 f g                       |
    c,2.                           |
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
  \midi
  {
    \context
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
    }
  }
}
