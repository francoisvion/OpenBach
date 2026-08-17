\version "2.24.4"
\include "english.ly"
\header {
  title = "Warum betrübst du dich"
  subtitle = "Aria"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 516"
  tagline = ##f
}
upper = \relative af''
{
  \clef treble
  \key f \minor
  \repeat volta 2
  {
    \partial 4 f4  			|
    c4 df df( c8) \noBeam bf		|
    af2. \fermata af4			|
    g8[ af]  g[ af]  bf c16 df  c8 bf	|
    af4( g) f \fermata af		|
    bf4  c  df8( ef16 f)  df8( c)	|
    bf2. \fermata ef4			|
    af,8[ g]  af[ df]  c4  bf8 af	|
    af2.
  }
  \partial 4 c4				|
  bf4  c16( bf af8)  bf4  ef		|
  df2. \fermata a4			|
  bf4  ef8( f16 gf)  f4  ef8( df)	|
  c2 bf4 \fermata df			|
  c4 f e4. f8				|
  g2. \fermata bf,4			|
  af8[ g]  f[ e]  f4. g8		|
  g2 f4	s \bar "|."
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower =
{
  \clef bass
  \key f \minor
  \repeat volta 2
  {
    \partial 4 f8 g		|
    af4 bf e4. c8		|
    f2._\fermata f4		|
    bf,8 c  df4  g,  e8( c)	|
    f4 c f, _\fermata f8 ef!	|
    df4  c  bf,8 c  df4		|
    ef2. _\fermata c4		|
    f4  df  ef8 df  ef4		|
    af2.
  }
  \partial 4 af,4		|
  ef4  ef  ef8( df)  c4		|
  bf,2. _\fermata f4		|
  gf4 c df ef			|
  f4( f,) bf, _\fermata bf	|
  bf4 af g f			|
  e2. _\fermata c4		|
  f4 c df bf,			|
  c2 f,4 s \bar "|."
  \override Staff.RehearsalMark #'direction = #-1
  \mark \markup { \musicglyph #"scripts.dfermata" }
}
verseone = \lyricmode
{
  Wa4 --			|
  rum4 be -- trü -- bst8 du	|
  dich2. und4			|
  beu4 gest dich zur		|
  Er2 -- den,4 mein		|
  sher4 ge -- plag -- ter	|
  Geist,2. mein4		|
  ab4 -- ge -- mat -- ter	|
  Sinn?2. Wirst4		|
  du4 dich nicht recht		|
  fest2. in4			|
  Got4 -- tes Wil -- len	|
  grün2 -- den,4 kannst	|
  du4 in E4. -- wig8 --		|
  keit2. nicht4			|
  wah4 -- re Ru4. -- he8	|
  fiu2 -- den.4
}
versetwo = \lyricmode
{
  Du4				|
  sorgst,4 wie will4. es8	|
  doch2. noch4			|
  end4 lich mit dir		|
  wer2 den,4 und		|
  fäh4 rest ü -- ber		|
  Welt2. und 4			|
  ü4 -- ber Him mel		|
  hin.2.
}
\score
{
  \new GrandStaff
  <<
    \new Staff = upper
    {
      \new Voice = "singer" \upper
    }
    \new Lyrics \lyricmode
    {
      \set associatedVoice = #"singer"
      \verseone
    }
    \new Lyrics \lyricmode
    {
      \set associatedVoice = #"singer"
      \versetwo
    }
    \new Staff = lowerstaff \lower
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
      \consists "Ambitus_engraver"
    }
    \context { \GrandStaff \accepts "Lyrics"   }
    \context
    {
      \Lyrics
        \consists "Bar_engraver"
        \consists "Separating_line_group_engraver"
        \override BarLine #'transparent = ##t
    }
  }
  \midi { }
}
