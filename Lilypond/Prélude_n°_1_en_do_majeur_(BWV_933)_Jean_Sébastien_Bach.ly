\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Prélude n° 1 en do majeur"
  subtitle = "6 petits préludes"
  opus = "BWV 933"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
     sopranoOne =   \relative e' {
		 \repeat volta 2 {
			 e4 r8 f8 g4 r8 c8 |
			 f,8 \mordent[ f ] d' [ f,] f [ e ] r4 |
			 d4 \mordent r8 e8 f4 r8 f8 |
			 e8 [ g ] g16 [ f g a ] \appoggiatura e8 d4-\prall-\turn r16 g16 [ b d ] |
			 e16 [ d c b ] a [ g fis e ] fis [ d fis a ] fis [ d fis a ] |
			 d16 [ c b a ] g [ fis e d ] e [ c e g ] e [ c e g ] |
			 c16 [ b a g ] fis [ g a fis ] d [ e fis g ] a [ b c a ] |
			 d8 [ g,] b16 [ a g fis ] g [ d b8 ] r4 |
		 }
		 \repeat volta 2 {
			 b'4 r8 c8 d4 r8 e8 |
			 f8 [ f ] f [ e ] d [ c ] r4 |
			 <c g'>4 r8 bes8 a4 \mordent r8 a'8 |
			 b8 [ c ] f, [ e ] \appoggiatura f16 e8 [ d ] r16 g,16 [ b d ] |
			 g16 [ f e d ] c [ bes a g ] a [ f a c ] a [ f a c ] |
			 f16 [ e d c ] b [ a g f ] g [ f g d'] g, [ f g d'] |
			 e16 [ d c b ] a [ g f e ] d [ f a c ] b [ g b d ] |
			 g8 [c, ] e16 [ d c b ] c [ g e c ] r4 |
		 }
	 }
	 sopranoTwo =   \relative g {
		 \repeat volta 2 {
			 <g c>4-\mordent  s8 d'8 <c e>4 \mordent s8 e8 |
			 d8 [ d ] r8 d8 d [ c ] s4 |
			 b4 s8 c8 d4 s8 d8  |
			 c8 [ e ] c [ c ] \appoggiatura c8 b4 s4  |
			 s1 |
			 s1 |
			 s1 |
			 s1 |
		 }
		 \repeat volta 2 {
			 <d g>4-\mordent s8 a'8 <g b >4 \mordent s8 c8 |
			 d8 [ d] d [ c ] b [ a ] s4 |
			 g4 s8 g8 f4 s8 c'8 |
			 f8 [ e ] d [ c ] c [ b ] s4 |
			 s1 |
			 s1 |
			 s1 |
			 s1 |
		 }
	 }
  soprano = << \sopranoOne \\ \sopranoTwo>>
bass = \relative c, {
		 \repeat volta 2 {
			 r16 c16 [ e g ] c4 r16 c,16 [ e g ] c4  |
			 r16 c16 [ d c ] b [ d g, b ] c [ c, e g ] c [ d e f ] |
			 g16 [ g, b d ] g4 r16 g,16 [ b d ] g4 |
			 r16 g,16 [ c e ] e,8 [ f ] g16 [ g' d b ] g8 [ g'] |
			 c,8 [ g' c, a'] d, [ a' c, a'] |
			 b,8 [ a' b, g'] c, [ g' b, g'] |
			 a, [ g' a, g'] fis [ a fis d ] |
			 b8 [ e c d ] g8 r16 g16 g,4 |
		 }
		 \repeat volta 2 {
			 r16 g16 [ b d ] g4 r16 g,16 [ b d ] g4 |
			 r16 a16 [ b a ] gis16 [ b e, g ] a [ a, c e ] a [ b c d ] |
			 e16 [ e, g c ] e4  r16 f,16 [ a c ] f [ e f e ] |
			 d16 [c d c ] b [ g c e] g [ fis g d ] b [ d g, b ] |
			 e,8 [ c' e, c'] f, [ c' e, c'] |
			 d,8 [ b' c, a'] b,8 [ f' e d ] |
			 c8 [ e f a ] f [ d g f ] |
			 e8 [ a f g ] c,4 c, |
		 }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }
}
