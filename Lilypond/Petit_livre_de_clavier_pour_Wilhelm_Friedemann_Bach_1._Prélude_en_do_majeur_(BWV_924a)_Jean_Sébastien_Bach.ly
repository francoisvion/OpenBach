\version "2.24.4"
\header {
  title = "1. Prélude en do majeur"
  subtitle = "Petit livre de clavier pour Wilhelm Friedemann Bach"
  subsubtitle = "9 petits préludes"
  opus = "BWV 924a"
  composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
  tagline = ##f
}
voiceone = \relative c'' {
   r16 g c e r g, c e r g, c d r f, b d      |
   r e, b' c r e, a c r e, a b r g b e       |
   r f, c' e r f, g d' r e, g d' r e, g c    |
   r d, a' c r d, e b' r c, e b' r c, e a    |
   r b, f' a r b, e g r c, e f r g, d' f     |
   r g, d' e r g, c e r a, d f r bes, e g    |
   r c, f a r c, f a r d, f b r e, g c       |
   r d, g b r e, g c r f, b d r g, c e       |
   r a, c f r b, d f r g, c e r f, b d       |
   r e, g c r d, f b
   <<
      { \stemDown ees, g c g ees g c, ees } \\
      { \stemUp s8 \tieUp c'8 ~ c4 \tieNeutral }
   >>
                                             |
   a,16 c ees c s4 s s                       |
   r8 r16 a'16 c[ fis a c,]
   b32[ g' f e d c b a]
   <<
      { b4 } \\
      { r32 g[ f! e d8] }
   >>
                                             |
   <<
      { \stemDown c16\rest b c d e8. e16 d4 ~ d16 f e d } \\
      { \stemUp   d'4\rest d16\rest g, c8 ~ c16 c b a b4 } \\
      {
         \stemUp   s2 s4
         \once \override Rest #'extra-offset = #'( 1.1 . 0.0 )
         g16\rest
         a g f
      }
   >>
                                             |
   << c1 e g c >>                            |
   \bar "||"
}
voicetwo = \relative c {
   \clef "bass"
   c4 e g g,                                 |
   a c e e,                                  |
   a b c e                                   |
   fis gis a c,                              |
   d e a, b                                  |
   c bes a g                                 |
   f e d c                                   |
   g' g' g, g'                               |
   g, g' g, g'                               |
   g, g' g,2                                 |
   s4 a'16 c fis, a c, ees g ees c ees! a, c |
   <<
      { \stemDown fis,2 g4 a\rest } \\
      { \stemUp   f'16\rest a,8. s2 c'8\rest c32\rest c b a } \\
      { c8\rest d,8 ~ d4 ~ d4 s4 }
   >>
                                             |
   g2 ~ g4 g,                                |
   << c1 g' >>                               |
   \bar "||"
}
\score {
   \context PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \context Staff = "one" << \voiceone >>
      \context Staff = "two" << \voicetwo >>
   >>
   \layout { }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
   }
}
