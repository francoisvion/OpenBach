\version "2.24.4"
\include "english.ly"
\header
{
  title = "24. Polonaise en ré mineur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 128"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative d'
{
  \clef treble
  \key d \minor
  \time 3/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \repeat volta 2
  {
    d'8 d16 cs d4\mordent d32 e f8. 		       |
    \appoggiatura f16 e16 d e8 a,2  		       |
    e'8 e16 d e4\mordent e32 f g8.  		       |
    f8 f16 e f8 f16 e d4\mordent    		       |
    f8 \times 2/3 { f16 g a } g8 e \appoggiatura d8 c4 |
    g'8 g16 a bf8 a bf4                                |
    a8 g16 f g4\mordent e\trill                        |
    f8 f16 e f4\mordent f,                             |
  }
  \repeat volta 2
  {
    a'8 a16 g a4\mordent a32 bf c8.                    |
    a8 a16 g a8 a16 g f4\mordent                       |
    c8 bf16 a d8 c bf\trill a                          |
    g8 g' \appoggiatura f8 e2\trill                    |
    g,16 c e c g16 c e c g16 c e d                     |
    c8 \times 2/3 { e16 f g } bf,2\mordent             |
    \appoggiatura c16 bf16 a bf g a2\mordent           |
    a8. d16 \appoggiatura d8 cs2\trill                 |
    d8. e16 f8 a d a                                   |
    g16 f e f d4\mordent d,                            |
  }
}
lower = \relative ef
{
  \clef bass
  \key d \minor
  \time 3/4
  \repeat volta 2
  {
    d4 f d   |
    a4 a' e  |
    cs4 a cs |
    d4 a d,  |
    d'4 e e  |
    c4 c e   |
    f4 bf, c |
    f,2.     |
  }
  \repeat volta 2
  {
    f4 f' e  |
    f4 c f,  |
    a'4 bf g |
    bf4 c c, |
    c4 c c   |
    c4 e d   |
    c4 f e   |
    d4 a' g  |
    f4 d f   |
    a4 d,2   |
  }
}
\score
{
  \new PianoStaff
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi
  {
    \context
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}
