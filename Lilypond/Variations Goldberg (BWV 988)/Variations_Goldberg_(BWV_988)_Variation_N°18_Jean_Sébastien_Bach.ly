\version "2.24.4"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°18, Canon à la sixte"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}

adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieOne = \shape #'(
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ) Tie
adjTieTwo = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie

soprano = \relative c''' {
	\key g \major
	\time 2/2

    \repeat volta 2 {
		r2 g2 ~
		g2 fis ~
		fis4 g8 fis \adjTieUp e2 ~
		e4 d8 cis d2
		r2 \adjTieUp e2 ~
		e4 d8 e fis2 ~
		fis4 a8 g a2 ~
		a8 g a fis g2
		r2 \adjTieUp e2 ~
		e2 \adjTieUp d ~ \noBreak
		d4 e8 fis g2 ~
		g8 fis g e fis2 ~
		fis4 fis \adjTieUp e2 ~
		e4 e \adjTieUp d2 ~
		d4 g cis,8 d e4 ~
		e2 d \break
	}        
    \repeat volta 2 {
		r2 a'2 ~
		a2 g ~
		g4 a8 b c2 ~
		c8 b c4 b2
		d,2\rest e2 ~ \noBreak
		e2 dis4 e \break
		fis2. e8 fis
		g2 ~ g8 fis e d
		c4 r a'2 ~
		a2 \adjTieUp g ~
		g4 a8 b \adjTieUp c2 ~
		c8 b c a b2 ~
		b4 b a2 ~
		a4 a g2 ~
		g4 c fis,8 g a4 ~
		a2 g
    }
}

alto = \relative c'' {
	\key g \major
	\time 2/2

    \repeat volta 2 {
		b1
		a2. b8 a
		g2. fis8 e
		fis2 r2
		g2. fis8 g
		a2. c8 b
		c2 ~ c8 b c a
		b2 r2
		g1
		fis2. g8 a
		b2 ~ b8 a b g
		a2. a4
		g2. g4
		fis2. b4
		e,8 fis g2.
		fis1
	}        
    \repeat volta 2 {
		c'1
		b2. c8 d
		e2 ~ e8 dis e4
		dis2 b\rest
		g1
		fis4 g \adjTieOne a2 ~
		a4 g8 a \adjTieTwo b2 ~
		b8 a g fis e4 r
		c'1
		b2. c8 d
		\adjTieDown e2 ~ e8 d e c
		d2. d4
		c2. c4
		b2. e4
		a,8 b c2.
		b1
    }
}

bass = \relative c' {
	\clef bass
	\key g \major
	\time 2/2

    \repeat volta 2 {
		r4 g8 a b4 c
		d4 d, d'2
		r4 e8 d cis4 a
		d4 d, d' c?
		b4-\prallprall a8 b c4 c,
		c'4 b8 c d4 a
		d,4 fis8 e fis4 d
		g4 d g, g'8 a
		b4 a8 b cis4 b8 cis
		d4 cis b a
		g fis e d
		cis4 b8 cis d4 cis8 d
		b4 a8 b cis4 b8 cis
		ais4 gis8 ais b a g fis
		g4 e a a,
		d a' d2
	}        
    \repeat volta 2 {
		r4 d8 e fis4 d
		g4 g, g' a8 b
		c4 b a g8 a
		b4. a8 g fis e dis
		e4 e'8 d c4 b
		a4 b8 c fis,4 g8 a
		dis,4 e8 fis b,4 cis8 dis
		e4 \clef treble e'8 dis e4 fis8 g
		a4 g8 a fis4 e8 fis
		g4 fis e d
		c4 b \clef bass a g
		fis4 e8 fis g4 fis8 g
		e4 d8 e fis4 e8 fis
		dis4 cis8_[ dis] e_[ d c b]
		c4 a d d,
		g d' g2
    }
}

#(set-global-staff-size 19)

\score  {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble << \soprano \\ \alto >>  }
        \context Staff = "lower" { \bass }
    >>

	\midi { \tempo 2 = 96 }
 
    \layout {
			%%% for letter paper
			%\context { \Score \override SpacingSpanner.spacing-increment = #1.0 }

			%%% for a4 paper
			\context { \Score \override SpacingSpanner.spacing-increment = #0.8 }
    }
}
