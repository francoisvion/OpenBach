\version "2.24.4"
\include "english.ly"
\header
{
  title = "5. Gavotte"
  subtitle = "Partita pour clavier en Mi mineur "
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 830"
  tagline = ##f
}
upper = \relative c''
{
  \clef treble
  \key e \minor
  \time 2/2
  \repeat volta 2
  {
    \partial 2 e16[ fs g8]  b,8.[ g'16] |
    a,8. g'16  fs4  c16[ b a8]  fs'8.[ a,16] |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    g8. b16  e,4 ~ \times 2/3 { e8[ ds e]  a8[ g fs] } |
    \override TupletNumber #'transparent = ##t
    \times 2/3 { e 8[ ds e]  b'[ g fs]  e[ ds! e]  c'[ g fs] } |
    \times 2/3 { e 8[ ds e]  fs[ g a ]  g[ fs g]  a [ b c ] } |
    \times 2/3 { b 8[ a  b]  c [ d e ]  d[ c d ]  e [ fs g] } |
    \times 2/3 { fs8[ g  a] }  d,4 ~ \times 2/3 { d8[ c d]  g[ fs e] } |
    \times 2/3 { e 8[ d  c]  c [ b a ]  a[ g fs]  fs[ e d ] } |
    \times 2/3 { d 8[ c  b]  b [ a g ] }  g8.[ g'16]  fs8.[ g16] |
    a,8.[ g'16]  fs8.[ g16]  b,8.[ g'16]  fs8.[ g16] |
    c,8.[ g'16]  fs8.[ g16] \times 2/3 { d8[ e fs]  fs[ g a] } |
    \times 2/3 { a 8[ b c]  d[ c b]  a[ b g]  d[ g fs] } |
  }
  \alternative
  {
    {
      g2
    }
    {
      g2
    }
  }
  \repeat volta 2
  {
    \partial 2 b16[ c d8]  g,8. e'16 |
    a8.[ cs,16]  d4  cs!16[ b a8]  g'8.[ e16] |
    fs8.[ a16]  d,4 ~  \times 2/3 { d8[ g d]  b[ g fs] } |
    \times 2/3 { g[ b d]  f[ e d]  e[ a e]  cs[ a gs] } |
    \times 2/3 { a8[ cs e]  g[ fs e]  fs[ b fs]  ds[ b as] } |
    \times 2/3 { b8[ ds fs]  a[ g fs]  g[ fs e]  d[ cs b] } |
    \times 2/3 { as8[ b cs]  fs,[ gs as!]  b[ as b]  e[ d cs!] } |
    \times 2/3 { b8[ as b]  fs'[ d cs]  b[ as! b]  g'[ d cs!] } |
    \times 2/3 { b8[ as b]  b'[ a! g]  g[ fs e]  e[ d cs] } |
    \times 2/3 { cs8[ b as]  as[ gs fs]  fs[ e d]  d[ cs b] } |
    b4 ~  b16[ a'! b c!]  d[ c b8]  f'8.[ a,16] |
    gs8.[ b16]  d4  \times 2/3 { f,8[ e f]  d'[ c b] } |
    \times 2/3 { e,8[ ds e]  c'[ b a]  ds,![ cs ds]  c'![ b a] } |
    \times 2/3 { g8[ fs g]  b[ ds e]  a,[ gs a]  g'![ fs e] } |
    \times 2/3 { ds8[ e fs] }  b,4  e16[ fs g8]  b,8.[ g'16] |
    a,8.[ g'16]  fs4  d16[ c b8]  f'8.[ g,16] |
    f'8.[ g,16]  e'4 ~  e8.[ e16]  ds8.[ e16] |
    fs,8.[ e'16]  ds8.[ e16]  g,8.[ e'16]  ds!8.[ e16] |
    a,8.[ e'16]  ds8.[ e 16]  \times 2/3 { b8[ cs ds!]  ds[ e fs] } |
    \times 2/3 { fs8[ g a]  b[ a g]  fs[ g e]  b[ e ds] } |
    e2
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower =
{
  \clef bass
  \key e \minor
  \time 2/2
  \repeat volta 2
  {
    \partial 2  e4 g |
    c'4 ~  c'16 b a8  ds'4  b |
    e'4 ~  e'8. d'!16  c'8.[ e16]  ds8.[ e16] |
    b8.[ e16]  ds8.[ e16]  a8.[ e16]  ds!8.[ e16] |
    g8.[ e16]  ds8.[ b16]  e8.[ c'16]  fs8.[ d'!16] |
    g8.[ e'16]  a8.[ fs'16]  b8.[ g'16]  c'8.[ a'16] |
    d'4 ~  d'16[ c' b a]  g[ a b8]  e8.[ b16] |
    c8.[ b16]  a4  fs16[ e d8]  a8.[ c16] |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \override TupletNumber #'transparent = ##t
    b,8.[ a16]  g4  \times 2/3 { e8[ fs g]  b,[ a, g,] } |
    \times 2/3 { fs8[ g a]  c[ b, a,]  g[ a b]  d[ c b,] } |
    \times 2/3 { a8[ b c']  e[ d c] }  b,8.[ g16]  a,8.[ fs16]  |
    g,8.[ e16]  fs,8.[ d16]  e,8.[ c16]  d,8.[ c16] |
  }
  \alternative
  {
    {
      \times 2/3 { b,8[ c d]  }  g,8. b,16
    }
    {
      \times 2/3 { b,8[ d fs]  g[ d b,] }
    }
  }
  \repeat volta 2
  {
    \partial 2 g,4 g ~ |
    \times 2/3 { g8[ fs e] }  fs8.[ b16]  \times 2/3 { e8[ fs g]  a[ b cs'] } |
    d'4 ~  d'16[ c'! b a]  b8.[ d'16]  g4 ~ |
    \times 2/3 { g8[ d b,] }  g,8.[ b16]  c'8.[ e'16]  a4 ~ |
    \times 2/3 { a8[ e cs] }  a,8.[ cs'16]  d'8.[ fs'16]  b4 ~ |
    \times 2/3 { b8[ fs ds] }  b,8.[ ds'16]  e'8.[ as16]  b8.[ g16] |
    fs4 ~  \times 2/3 { fs8[ e fs] }  g!8.[ b16]  as8.[ b16] |
    fs8.[ b16]  as8.[ b16]  e8.[ b16]  as!8.[ b16] |
    d8.[ b16]  as8.[ b16]  cs16[ d e8 ]  b,8.[ g16] |
    as,8.[ g16]  fs4  \times 2/3 { d8[ cs b,] }  fs8.[ fs,16] |
    \times 2/3 { b,8[ d fs]  a[ gs fs]  gs[ a b] }  d4 ~ |
    \times 2/3 { d8[ e f]  b,[ c d]  gs,[ a, b,] }  e,8.[ gs16] |
    \times 2/3 { a8[ b c'] }  g!8.[ c'16]  fs8.[  c'16]  ds8.[ b16] |
    e8.[ b16]  d!8.[ b16]  c8.[ a16]  cs8.[ as16] |
    b4 ~  b16[ ds' e' fs']  \times 2/3 { g'8[ fs' e']  e'[ d' cs'] } |
    \times 2/3 { cs'8[ b a]  a[ g fs]  fs[ e d]  d[ c! b,] } |
    \times 2/3 { b,8[ a, g,]  g,[ a, b,]  cs,[ e, g,]  as,[ b, cs] } |
    \times 2/3 { c!8[ ds fs]  a[ b c']  b[ a g]  fs[ g e] } |
    \times 2/3 { c'8[ b a]  g[ fs e] }  ds8.[ b,16]  fs8.[ b,16] |
    a8.[ b,16]  g8.[ e16]  \times 2/3 { a8[ b c']  b[ a b] } |
    \times 2/3 { e8[ g b] }  e'4
  }
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}
\score
{
  \new PianoStaff
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
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
