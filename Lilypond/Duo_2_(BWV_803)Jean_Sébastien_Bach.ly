\version "2.24.4"
\header {
  title = "Duo 2"
  subtitle = "tiré du Clavierübung Part 3"
  opus = "BWV 803"
  composer = "J.S.Bach (1685-1750)"
  tagline = ##f
}
\layout {
  \context {
    \Staff
    \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 12)
         (padding . 2)
         (minimum-distance . 8))
  }
}
One =  {
\key f \major  \time 2/4 \clef  violin
\set Staff.midiInstrument = "harpsichord"
  f'4 a'
  c''4. bes'16 a'
  bes'8 c'' d'' e''
  f''8 c'' f'' a''
  g''16 f'' e'' d'' c'' bes' a' g'
  a'16 c'' f' a' d''4~
  d''8 c''16\prall b' c'' e'' d'' f''
  e''16 d'' c'' b' a' c'' g' c''
  f'16 e'' d'' c'' b' d'' g' b'
  c''4~ c''16 e'' a' c''
  f'4~ f'16 a' d' f'
  bes'4~ bes'16 d'' g' bes'
  e'4~ e'16 g' c' e'
  a'16 c'' f' a' d' f' bes d'
  g'16 bes' e' g' c' e' a c'
  f'16 a' d' f' bes' d'' g' bes'
  c'4 e'
  f'4. f'16 e'
  f'8 g' a' bes'
  c''8 f' bes' d''
  c''16 bes' a' g' f' ees' d' c'
  d'16 bes f' d' bes'4~
  bes'16 d'' g' bes' e'4~
  e'16 c' g' e' c''4~
  c''16 e'' a' c'' f'4~
  f'16 d' a' f' d'' a' f'' d''
  bes'16 g' d'' bes' g'' d'' bes'' g''
  e''16 c'' g'' e'' bes'' g'' e'' c'''
  a''16 c''' f'' a'' c'' f'' ees'' d''
  ees''16 g'' c'' ees'' a' ees'' d'' c''
  d''16 bes' e'' bes' f'' bes' g'' bes'
  a'16 g'' f'' e'' d'' f'' c'' f''
  bes'16 a'' g'' f'' e'' g'' c'' e''
  f''16 c'' a'' f'' c'' a' f'' c''
  a'16 f' c'' a' f' c' a' f'
  c'4 g''\downmordent
  f''4 r8 a'(
  bes'8 cis'') d''4~
  d''16 cis'' d'' e'' f''4~
  f''8 ees''16 d'' ees''8 fis'
  g'4 r8 f'(
  gis'8 a'~ a') g'16 fis'
  g'8 e''16 g' f' e' d' f'
  e'8 a' d''16\prall cis'' d''8~
  d''8 cis''16 b' a' g' f' e'
  d'4 f'
  a'4. g'16 f'
  g'8 a' b' cis''
  d''4. cis''16 b'
  cis''8 d'' e'' f''
  \appoggiatura a'' g''8 f''16 e'' f''8 d''
  e''4\mordent cis''\downmordent
  d''8 b'( c'' dis''
  e''4~ e''16) dis'' e'' fis''
  g''4. f''16 e''
  f''8 gis' a'4
  r8 g'( ais' b'~
  b'8) a'16 gis' a'8 fis''16 a'
  g'16 fis' e' g' fis'8 dis''
  e''16\prall dis'' e''8 r4
  r4 e'
  gis'4 b'~
  b'8 a'16 gis' a'8 b'
  c''8 d'' e''4~
  e''8 d''16 c'' d''8 e''
  fis''8 gis'' a''4~
  a''8 gis''16 fis'' e'' d'' c'' b'
  a'4~ a'16 e' c'' a'
  f''16 c'' a'' f'' c'''8 f''
  e''8 ees'' d'' des''~
  des''8 c'' b' bes'
  a'16 g' f' g' a' bes' c'' d''
  e''16 d'' c'' d'' e'' f'' g''8
  c''4 aes'
  f'4. g'16 aes'
  g'8 f' ees' des'
  c'8 f' c' aes
  bes16 c' des' ees' f' g' aes' bes'
  g'16 f' e' f' g' aes' bes' c''
  aes'16 g' f' g' aes' bes' c'' des''
  e'16 des'' c'' bes' aes' g' f' e'
  f'8 g'( aes' b')
  c''4~ c''16 b' c'' d''
  ees''4. des''16 c''
  des''8 e' f'4
  r8 ees'( fis' g'~
  g'8) f'16 e' f'8 d''16 f'
  ees'16 d' c' ees' d'8 b'
  c''16\prall b' c''8 r4
  r4 c'
  e'4 g'~
  g'8 f'16 e' f'8 g'
  aes'8 bes' c''4~
  c''8 bes'16 aes' bes'8 c''
  d''8 e'' f''4~
  f''8 e''16 d'' c'' bes' aes' g'
  aes'8( b' c''4~
  c''16) b' c'' d'' ees''4~
  ees''8 des''16 c'' des''8 e'
  f'4 r8 ees'(
  fis'8 g'~ g') f'16 e'
  f'8 d''16 f' ees' d' c' ees'
  d'8 g' c''16\prall b' c''8~
  c''8 b'16 a' g' f' ees' d'
  c'4 ees'
  g'4. f'16 ees'
  f'8 g' a' b'
  c''4. b'16 a'
  b'8 c'' d'' ees''
  \appoggiatura g'' f''8 ees''16 d'' ees''8 c''
  d''4\mordent b'\turn
  c''4 c''4\rest
  f'4 a'
  c''4. bes'16 a'
  bes'8 c'' d'' e''
  f''8 c'' f'' a''
  g''16 f'' e'' d'' c'' bes' a' g'
  a'16 c'' f' a' d''4~
  d''8 c''16\prall b' c'' e'' d'' f''
  e''16 d'' c'' b' a' c'' g' c''
  f'16 e'' d'' c'' b' d'' g' b'
  c''4~ c''16 e'' a' c''
  f'4~ f'16 a' d' f'
  bes'4~ bes'16 d'' g' bes'
  e'4~ e'16 g' c' e'
  a'16 c'' f' a' d' f' bes d'
  g'16 bes' e' g' c' e' a c'
  f'16 a' d' f' bes' d'' g' bes'
  c'4 e'
  f'4. f'16 e'
  f'8 g' a' bes'
  c''8 f' bes' d''
  c''16 bes' a' g' f' ees' d' c'
  d'16 bes f' d' bes'4~
  bes'16 d'' g' bes' e'4~
  e'16 c' g' e' c''4~
  c''16 e'' a' c'' f'4~
  f'16 d' a' f' d'' a' f'' d''
  bes'16 g' d'' bes' g'' d'' bes'' g''
  e''16 c'' g'' e'' bes'' g'' e'' c'''
  a''16 c''' f'' a'' c'' f'' ees'' d''
  ees''16 g'' c'' ees'' a' ees'' d'' c''
  d''16 bes' e'' bes' f'' bes' g'' bes'
  a'16 g'' f'' e'' d'' f'' c'' f''
  bes'16 a'' g'' f'' e'' g'' c'' e''
  f''16 c'' a'' f'' c'' a' f'' c''
  a'16 f' c'' a' f' c' a' f'
  c'4 g''\downmordent
  f''4\fermata r \bar "|."
}
Two =  {
\key f \major  \time 2/4 \clef bass
\set Staff.midiInstrument = "harpsichord"
  R2*4
  c4 e
  f4. f16 e
  f8 g a b
  c'8 g c' e'
  d'16 c' b a g f e d
  e16 g c e a4~
  a16 c' f a d4~
  d16 f bes, d g4~
  g16 bes e g c4~
  c16 e a, c f a d f
  bes,16 d g, bes, e g c e
  a,16 c f, a, d f bes, d
  e16 g c e g bes e g
  a16 c' f a d'4~
  d'8 c'16 bes c' ees' d' f'
  ees'16 d' ees' c' d' f' bes d'
  ees16 d' c' bes a c' f a
  bes,4~ bes,16 g, d bes,
  g4~ g16 bes e g
  c4~ c16 a, e c
  a4~ a16 c' f a
  d4~ d16 f d f
  g16 bes d g bes, d g, bes,
  c16 e g, c e, g, c, e,
  f,4 a,
  c4. bes,16 a,
  bes,8 c d e
  f8 c f a
  g16 f e d c bes, a, g,
  a,16 c f, a, c f a, c
  f16 a c f a c' f a
  c'4 c
  f16 c a, c f,8 r
  r8 e( f gis)
  a4~ a16 gis a b
  c'4. bes16 a
  bes8 cis d4
  r8 c( dis e~
  e8) d16 cis d8 b16 d
  c16 b, a, c b,8 e
  a16\prall gis a8 r4
  r4 a,
  cis4 e~
  e8 d16 cis d8 e
  f8 g a4~
  a8 g16 f g8 a
  b8 cis' d' bes
  \appoggiatura a g8 f16 g a8 e(
  f8 gis a4~
  a16) gis a b c'4~
  c'8 bes16 a bes8 cis
  d4 r8 c(
  dis8 e4) d16 cis
  d8 b16 d c b, a, c
  b,8 e a16\prall gis a8~
  a8 gis16 fis e d c b,
  a,4 c
  e4. d16 c
  d8 e fis gis
  a4. gis16 fis
  gis8 a b c'
  \appoggiatura e' d'8 c'16 b c'8 f'
  d'8 b e' e
  a16 c' e a c e a, c
  f,4 a,
  c4. bes,16 a,
  bes,8 c d e
  f8 c f a
  g16 f e d c bes, a, g,
  aes,16 c f, aes, c,8 c
  des8 d ees e~
  e8 f ges g
  aes16 bes c' bes aes g f ees
  des16 ees f ees des c bes,8
  e16 f g f e d c8
  f16 g aes g f ees des8
  c8 c, r c(
  des8 e) f4~
  f16 e f g aes4~
  aes8 ges16 f ges8 a,
  bes,4. aes,8(
  b,8 c4) bes,16 a,
  bes,8 g16 bes, aes, g, f, aes,
  g,8 c f16\prall e f8~
  f8 e16 d c bes, aes, g,
  f,4 aes,
  c4. bes,16 aes,
  bes,8 c d e
  f4. e16 d
  e8 f g aes
  \appoggiatura c' bes8 aes16 g aes8 des'
  bes8 g c' c
  f8 d( ees fis)
  g4~ g16 fis g a
  bes4. aes16 g
  aes8 b, c4
  r8 bes,( cis d~
  d8) c16 b, c8 a16 c
  bes,16 a, g, bes, a,8 d
  g16\prall fis g8 r4
  r4 g,
  b,4 d~
  d8 c16 b, c8 d
  ees8 f g4~
  g8 f16 ees f8 g
  a8 b c' aes
  \appoggiatura g f8 ees16 f g8 g,
  c16 \change Staff=up a' g' f' \stemDown e' \change Staff=down \stemUp d' c' bes
  \stemNeutral a16 f' e' d' c' bes a g
  f16 bes a g f ees d c
  d16 f e d c bes, a, g,
  a,8 f, r4
  c4 e
  f4. f16 e
  f8 g a b
  c'8 g c' e'
  d'16 c' b a g f e d
  e16 g c e a4~
  a16 c' f a d4~
  d16 f bes, d g4~
  g16 bes e g c4~
  c16 e a, c f a d f
  bes,16 d g, bes, e g c e
  a,16 c f, a, d f bes, d
  e16 g c e g bes e g
  a16 c' f a d'4~
  d'8 c'16 bes c' ees' d' f'
  ees'16 d' ees' c' d' f' bes d'
  ees16 d' c' bes a c' f a
  bes,4~ bes,16 g, d bes,
  g4~ g16 bes e g
  c4~ c16 a, e c
  a4~ a16 c' f a
  d4~ d16 f d f
  g16 bes d g bes, d g, bes,
  c16 e g, c e, g, c, e,
  f,4 a,
  c4. bes,16 a,
  bes,8 c d e
  f8 c f a
  g16 f e d c bes, a, g,
  a,16 c f, a, c f a, c
  f16 a c f a c' f a
  c'4 c
  f4\fermata r \bar "|."
}
\score { <<
	\context PianoStaff <<
		\context Staff = "up" <<
			\One
		>>
		\context Staff = "down" <<
			\Two
		>>
	>>
>>
  \midi {
    \tempo 4 = 106
    }
\layout { }
}
