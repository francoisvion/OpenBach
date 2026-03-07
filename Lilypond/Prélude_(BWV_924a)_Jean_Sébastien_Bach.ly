\header {
   composer          = "Jean Sébastien Bach (1685-1750) (1685-1750)"
   title             = "Prelude"
   opus              = "BWV 924a"
   
  tagline = ##f
}

\version "2.24.4"

voiceone = \relative c'' {
   r16 g c e r g, c e r g, c d r f, b d      | % 1
   r e, b' c r e, a c r e, a b r g b e       | % 2
   r f, c' e r f, g d' r e, g d' r e, g c    | % 3
   r d, a' c r d, e b' r c, e b' r c, e a    | % 4
   r b, f' a r b, e g r c, e f r g, d' f     | % 5
   r g, d' e r g, c e r a, d f r bes, e g    | % 6
   r c, f a r c, f a r d, f b r e, g c       | % 7
   r d, g b r e, g c r f, b d r g, c e       | % 8
   r a, c f r b, d f r g, c e r f, b d       | % 9
   r e, g c r d, f b
   <<
      { \stemDown ees, g c g ees g c, ees } \\
      { \stemUp s8 \tieUp c'8 ~ c4 \tieNeutral }
   >>
                                             | % 10
   a,16 c ees c s4 s s                       | % 11
   r8 r16 a'16 c[ fis a c,]
   b32[ g' f e d c b a]
   <<
      { b4 } \\
      { r32 g[ f! e d8] }
   >>
                                             | % 12
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
                                             | % 13
   << c1 e g c >>                            | % 14
   \bar "||"
}

voicetwo = \relative c {
   \clef "bass"
   c4 e g g,                                 | % 1
   a c e e,                                  | % 2
   a b c e                                   | % 3
   fis gis a c,                              | % 4
   d e a, b                                  | % 5
   c bes a g                                 | % 6
   f e d c                                   | % 7
   g' g' g, g'                               | % 8
   g, g' g, g'                               | % 9
   g, g' g,2                                 | % 10
   s4 a'16 c fis, a c, ees g ees c ees! a, c | % 11
   <<
      { \stemDown fis,2 g4 a\rest } \\
      { \stemUp   f'16\rest a,8. s2 c'8\rest c32\rest c b a } \\
      { c8\rest d,8 ~ d4 ~ d4 s4 }
   >>
                                             | % 12
   g2 ~ g4 g,                                | % 13
   << c1 g' >>                               | % 14
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
