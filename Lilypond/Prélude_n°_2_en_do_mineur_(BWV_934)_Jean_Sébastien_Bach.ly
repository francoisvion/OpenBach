\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Prélude n° 2 en do mineur"
  subtitle = "5 petits préludes"
  opus = "BWV 934"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
     sopranoOne =   \relative c'' {
		 \repeat volta 2 {
			 c8 [ d es g, d' f, ] |
			 \appoggiatura f16 es8 [ d c es g c ] |
			 f,8 [ es' d f as c, ] |
			 \appoggiatura c16 b8 [ a g b d f ] |
			 es8 [ c g c e c ] |
			 f8 [ c g' c, as' c, ] |
			 d8 [ bes f bes d bes ] |
			 es8 [ bes f' bes, g' bes, ] |
			 c8 [ as g as c es ] |
			 bes8 [ g f g bes es ] |
			 as,8 [ g f g as es ] |
			 d8 [ es f d bes as ] |
			 g8 [ bes es bes g bes ] |
			 as8 [ es' bes es c es ] |
			 bes8 [ es c es des es ] |
			 c4 es as ~ |
			 as4 f d' ~ |
			 d4 bes g' ~ |
			 g8 [ f es d c d ] |
			 es2. |
		 }
		 \repeat volta 2 {
			 g8 [ as bes g bes f ] |
			 e8 [ d c e g bes ] |
			 as8 [ f des g e c ] |
			 bes8 [ g as c f a, ] |
			 bes8 [ d f as g f ] |
			 g8 [ es d c b f' ] |
			 es8 [ d c es a, g ] |
			 fis8 [ g a fis d a' ] |
			 d8 [ g, fis c' bes g ] |
			 c,8 [ fis g a es c ] |
			 bes8 [ d fis g a, fis' ] |
			 g4 bes2-\mordent ~ |
			 bes8 [ des e c g' bes, ] |
			 as8 [ bes c as f e ] |
			 f8 [ as b g d' f, ] |
			 es8 [ f g es c b ] |
			 c8 [ es fis d a' c, ] |
			 b8 [ d f as g b ] |
			 d8 [ f es c g b ] |
			 c2. |
		 }
	 }
	 sopranoTwo =   \relative bes' {
		 \repeat volta 2 {
			 s2.*19 |
			 r8 bes8 g2 |
		 }
		 \repeat volta 2 {
			 s2.*19 |
			 r8 g8 es2 |
		 }
	 }
  soprano = << \sopranoOne \\ \sopranoTwo>>
bass = \relative as, {
		 \repeat volta 2 {
			 c4 c' g  |
			 as as, r4 |
			 as'4 f d |
			 g4 g, r4 |
			 c4 c' bes |
			 as4 g f |
			 bes,4 bes' as |
			 g4 f es |
			 as4 c f, |
			 g4 bes es, |
			 f4 as f |
			 bes4 bes, d |
			 es4 es, des' |
			 c4 bes as |
			 g4 f es |
			 as8 [ es' as g f es ] |
			 d8 [ f bes as g f ] |
			 g8 [ bes es des c bes ] |
			 as4 bes bes, |
			 es4. bes'8 es4 |
		 }
		 \repeat volta 2 {
			  e,4 es' des |
			  c4 e, c |
			  f4 bes, c |
			  f,4 f' es |
			  d4 bes d |
			  es4 es' d |
			  c4  a c |
			  d4 d, c |
			  bes4 a g |
			  es'4 d c |
			  d4 c d |
			  g,8 [ d' g bes des f, ] |
			  e4 c e |
			  f8 [ g ] as4 r4 |
			  b,4 g b |
			  c8 [ d ] es4 r4 |
			  fis,4 d fis |
			  g4 d' es |
			  as,4 f g |
			  c4. g'8 c4 |
		 }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key es \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key es \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }
}
