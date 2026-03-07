\version "2.24.4"

up = { \stemUp \slurUp \phrasingSlurUp \tieUp }
down = { \stemDown \slurDown \phrasingSlurDown \tieDown }
neutral = { \stemNeutral \slurNeutral \phrasingSlurNeutral \tieNeutral }

sarabande = \relative c'' {
	\clef treble
	\key d \minor
	\time 3/4

	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	<< {
		#(revert-auto-beam-setting '(end 1 32 3 4) 1 8)
		#(revert-auto-beam-setting '(end 1 32 3 4) 3 8)
		#(revert-auto-beam-setting '(end 1 32 3 4) 5 8)

		#(override-auto-beam-setting '(end * * * *) 1 4)
		#(override-auto-beam-setting '(end * * * *) 2 4)

		<d f>4 bes4. bes8
		<bes e>4 a4. a8
		a8[ bes] bes[ a] a[ d]
		d16_( c) bes_( a) g4( fis16.-\trill) d32_( e fis g a)
		bes8 d16_( c bes a g f e d cis d)
		\neutral g,16( e' cis' bes') a4. \up cis,8
		d8 a g'4 g16 f_( e f)
		s8 d4*1/2 cis8 b cis4		% kludge to avoid colliding with the e2. in the other voice
		
		\bar ":|"

		\up e8.( f32 g) \once \override Script #'extra-offset = #'(0.6 . 0.0) cis,4.-\trill cis8
		\repeat volta 2 {
			d16 c_( b c) b8 ~ b16 d( \neutral e g f a32 g)
			\up g4 f8 e f g
			e8 d16 c \neutral bes'4 ~ bes16 aes( fis g)
			\up fis4-\trill g8( d) ees( bes)
			c8 d16_( ees) \neutral fis,8 d' c16( bes a g)
			c16( ees) bes'( a) bes,( d) a'( g) \up a, c_( g') fis
			\neutral g4 g,,4 ~ g16 g'32( a bes c d f,)
			\up bes'8. a16 \neutral g( f e d32 c) bes8.-\trill a16
			\up a8 c16( b) b8( c) d,8. c'16
			b8 d16( cis) cis8( d) \neutral e,16. f'32( e16 f32 d)
			\neutral d16( cis e) a, a( g bes) d, d( cis e) a,
			\up <cis' e>4 <d f>2
			\neutral g,,16 bes'[( ees g ees bes g ees)] bes'' cis,32( d e16) g,
			f16( a d) a'( g) cis,( d) f a,( d e) cis
		}
		\alternative { {
			d8. c16( bes a g f e d cis d32 e)
			\up e'8.( f32 g) \once \override Script #'extra-offset = #'(0.6 . 0.0) cis,4.-\trill cis8
		} {
			\neutral d16 d, f a g( f e d c bes) c( a)
		} }

	} \\ {

		<d a'>4 g4. s8
		<cis, g'>4 g'4. s8
		<d f>4 <c e> <bes d>
		ees8 s8 a,2
		<g d'>8 s8*5
		s2 s8 g'8
		f4 <e cis'> <d d'>
		<< e'2. \\ a,2. >>
		
		\bar ":|"

		<a cis>4 g2
		\repeat volta 2 {
			fis8 s8 f8 s8*3
			<e c'>4 <d c'> <g b>
			<c, g' c>8 s8*5
			c'4 bes8 r g r
			g4 s4*2
			s4*2 d8 s8
			s2.
			<e c'>8. s16 s2
			f8 s fis s s4
			g8 s gis s s4
			s2.
			<bes, g'>4 <a a'>2
			s2.*2
		}
		\alternative { {
			s2.
			<a a' cis>4 g'2
		} {
			s2.
		} }

	} >>
	
	#(revert-auto-beam-setting '(end 1 32 3 4) 1 8)
	#(revert-auto-beam-setting '(end 1 32 3 4) 3 8)
	#(revert-auto-beam-setting '(end 1 32 3 4) 5 8)

	#(override-auto-beam-setting '(end * * * *) 1 4)
	#(override-auto-beam-setting '(end * * * *) 2 4)

	bes,16 d'( c a) bes( fis g) bes d( f e) cis
	d16 b,( d f gis b d) e( f) cis( d) gis,(
	a16 bes32( a g16 f) e( d32 cis d16) gis, a( e' g) cis
	d4 d,2

	\bar "|."
}

#(set-global-staff-size 20)
%#(set-default-paper-size "letter")

\header {
  title = "3. Sarabande"
  subtitle = "Partita pour violon seul n° 2 en ré mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1004"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\score {
	\sarabande
	\layout {
		\context { \Score \override SpacingSpanner #'spacing-increment = #1.0 }
	}
	\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 60 4) } }
}
