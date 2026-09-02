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
  subtitle = "5 petits préludes"
  opus = "BWV 939"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
     sopranoOne =   \relative c' {
			r8 c8 [ e g ] e [ c bes' g ] |
			a8 [ c, f a ] f [ c c' a ] |
			b8 [ g b d ] b [ g f' d ]  |
			e2 r4 e4 |
			d2 r4 d4 |
			d8 g,8 [ b d ] b4 e4 |
			c2 r4 <a c>4 ~ |
			<a c>8 d,8 [ fis a ] fis [ d c' a ] |
			b8 [ g b d ] b [ g f' d ] |
			e8 [ g, c e ] c [ g g' e ] |
			fis8 [ a, c fis ] c [ a a' fis ] |
			g2 r4 s4 |
			c,8 [ e g c ] g [ e bes' g ] |
			a16 [ g f e ] d [ c b a ] b [ g a b ] c [ d e f ]  |
			g4 c,2 b4 |
			c1 |
	 }
     sopranoTwo =   \relative d' {
			s1*3 |
			< g c>2 r4 <g c>4 |
			<a c>2 r4 <a c>4 |
			<g b>8 s8*3 g4 b4 |
			c2 r4 e,4 ~ |
			e8 s8 s2. |
			s1*3 |
			<b' d>2 s4 b4 |
			s1*2 |
			s4 g2 d4 |
			e1 |
	 }
	 soprano = << \sopranoOne \\ \sopranoTwo >>
bass = \relative c, {
			<c c'>1 ~ |
			<c c'>1 ~ |
			<c c'>1 |
			r8 c'8 [ e g ] e [ c c' e, ] |
			fis8 [ d fis a ] fis [ d d' fis, ]|
			g2 r4 g4 |
			a8 [ a, c e ] c [ a g' e ] |
			fis2r4 d4 |
			g4-\mordent g, g'-\mordent g, |
			g'4-\mordent g, g'-\mordent g, |
			g'4-\mordent g, g'-\mordent g, |
			g'8 [ g, b d ] b [ g f' d ] |
			e8 [ c e g ] e [ c c' e, ]  |
			f1 ~ |
			f8 [ d e c ] g'4 g, |
			c,1 \bar "|."
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
