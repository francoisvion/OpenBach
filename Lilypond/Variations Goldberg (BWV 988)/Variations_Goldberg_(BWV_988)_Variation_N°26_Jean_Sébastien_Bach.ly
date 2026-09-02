\version "2.24.4"
\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #6
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°26, à 2 claviers"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))
trebleToBass = {
  \clef bass
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}
bassToTreble = {
  \clef treble
  \once \override Staff.Clef.glyph-name = #"clefs.F"
  \once \override Staff.Clef.Y-offset = #1
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #-1
    \musicglyph #"clefs.G_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}
hideEndTimeSig = \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
hidePP = \tweak #'stencil ##f \pp
hideMP = \tweak #'stencil ##f \mp
sopranoOne =   \relative g {
	    \repeat volta 1 {
          \trebleToBass \hideEndTimeSig
		      \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
				  \oneVoice
			    g16-\hidePP [ a g  d  e fis ] g16 [ fis g  a  g a ] b16 [ a b  c  b cis ]
			    \clef "treble" |
			    d16 [ e d a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ] |
			    g16 [ a g b, e fis ] g16 [ fis g a g a ] b16 [ a b cis b cis ] |
			    d16 [ e d a b cis ]  d16 [ cis d e d e ]  fis16 [ e fis g e fis ] |
			    g16 [ fis g d c! d ]  b16 [ g fis! g b d ]  f16 [ e f d b d ] |
			    e16 [ d e c b c ]  g16 [ e d e g c ]  e16 [ d e c a c ] |
			    d16 [ c d a g a ]  fis16 [ d cis d fis a ]  c!16 [ b c a fis a ] |
			    b16 [ a b g fis g ] d16 [ b a b d g ]  b16 [ g fis g b d ] |
		    }
        \voiceOne
		    \time 3/4
		    g8.-\hideMP [ fis32 e32 ] d4 r8 b'8 |
		    a4 a4 r8 a8 |
		    a4 g4 r8 g8 |
		    g8. [ e16 ] a,4 r8 g'8 |
		    g8. [ e16 ] fis4 r8 a8 |
		    b8. [ fis16 ] g4 r8 g8 |
		    g4 cis,4 r8 a8 |
		    a8. [ e16 ] fis4 r4 \bar ":..:"
	    }
	    \oneVoice
	    \repeat volta 2 {
		    \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
			    a'16-\hidePP [ g a d c b ] a16 [ b a g a g ]  fis16 [ g fis e fis e ] |
			    d16 [ c d g fis e ] d16 [ e d c d c ]  b16 [ c b a b a ] |
			    g16 [ fis g b a g ] fis16 [ g fis e fis e ] dis16 [ e dis cis dis cis ]  |
			    \clef "bass"
			    b16 [ ais b e dis cis ] b16 [ c b a b a ] g16 [ a g fis g fis ] |
			    e16 [ dis e b' a b ] g16 [ fis g \clef "treble" b e fis ] g16 [ fis g e dis e ] |
				c16 [ b c e d e ] a,16 [ gis  a c f a ] c16  [ b c a f a ] |
				dis,16 [ cis dis fis! e fis ] b,16 [ ais b dis fis g ] a!16 [ g a fis dis fis ] |
				g16 [ fis g b a b ] e,16 [ dis e g b dis ] e16 [ c b a g fis ] |
		    }
		 \time 3/4
		 e8-\hideMP \voiceOne r8 r8 r16 g'16 fis8. [ e16 ] |
		 d4 ~ d8. [ f16 ] e8. [ d16 ] |
		 c2 ~ c8. [ c16 ] |
     \voiceTwo
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
				fis,16-\hidePP [ g fis cis d e ] \oneVoice fis16 [ e fis g fis g ] a16 [ g a  b g a ] |
				b16 [ c b  fis  g a ] b16^[ a b c b c ]  \voiceOne d16 [ c d  e c d ] |
				e16 [ f e  b c d ] \oneVoice e16 [ d e  fis e fis ] g16 [ fis g a  fis g ]|
				a16 [ b a  fis g a ] b16 [ a b d c b ]  a16 [ g fis e  d c ] |
				b16 [ a g fis g d ] b8 r8 r8 r4. \bar ":|."
        \override Staff.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup \musicglyph #"scripts.ufermata"
		}
    }
}
sopranoTwo =   \relative b' {
	\repeat volta 1 {
		\stemDown
		\clef "bass"
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
			    s1*18/16
			    \clef "treble" |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
		}
		\time 3/4
		b4-\hideMP b4 r8 g'8 |
		g8. [ e16 ] fis4 r8 c8 |
		b8. [ dis16 ] e4 r8 e8 |
		a,8. [ cis16 ] e,4 r8 cis'8 |
		cis4 d4 r8 d8 |
		d4 e4 r8 e8 |
		a,8. [ g32 fis32 ] e4 r8 a,8 |
		d4 d4 r4 |
    }
       \repeat volta 2 {
         \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
				s1*18/16 |
		 }
		\time 3/4
        r8  r16 gis16-\hideMP a8. [ b16 ] c4 ~ |
        c8. [ fis,16 ] g8. [ a16 ] b4 ~  |
		b8. [ e,16 ] fis8. [ g16 ] a8. [ g16 ] |
		\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
				\voiceOne c8-\hideMP s1*10/16 \voiceTwo fis,8 s1*4/16 |
				g8 s1*10/16 b8 s1*4/16 |
				c8 s1*16/16  |
				s1*18/16 |
				s1*18/16 |
		}
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative b' {
  \hideEndTimeSig
	    \repeat volta 1 {
		    \bassToTreble
		    \time 3/4
		    b4-\hideMP b4 r8 b8 |
		    a4 a4 r8 d8 |
		    d4 cis4 \prallprall r8 g8 |
		    g8. [ e16 ] fis4 r8 a8 |
		    d,8. [ e16 ] f4 r8
		    \clef "bass" g8 |
		    g8. [ e16 ] c4 r8 e8 |
		    a,8. [ b16 ] c4 r8 d8 |
		    d8. [ b16 ] g4 r4  |
        \oneVoice
		    \scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
			    g,16-\hidePP [ a g  d e fis ] g16 [ fis g  a g a ]  b16 [ a b c b cis ] |
			    d16 [ e d  a b cis ] d16 [ cis d e d e ] fis16 [ e fis g e fis ]|
			    g16 [ a g  b, e fis ] g16 [ fis g a g a ]  b16 [ a b cis a b ] |
			    cis16 [ d cis  e, a b ]
			    \clef "treble"
			    cis16 [ b cis  d  cis d ] e16 [ d e fis d e ] |
			    fis16 [ e fis  a g a ] d,16 [ cis d fis a b ] c!16 [ b c a fis a ] |
			    g16 [ fis g b a b ] e,16 [ dis e g b cis ]  d!16 [ cis d  b g b ] |
			    cis16 [ b cis  e d e ] a,16 [ gis a cis e fis ]  g!16 [ fis g e cis e ] |
			    fis16 [ e fis a g a ] d,16 [ cis d fis a cis ] d4. \prallmordent \bar ":..:"
		    }
	    }
	    \voiceOne
		\repeat volta 2 {
			\time 3/4
			fis,,8.-\hideMP [ e16 ] fis4 r8 d8 |
			g8. [ a16 ] b4 r8 g'8 |
			e8. [ b'16 ] a4 r8 a8 |
			a8. [ fis16 ] dis4 r8 fis8 |
			g8. [ fis16 ] e4 r8 g8 |
			g4 f4 r8 a8 |
			a8. [ fis16 ] dis4 r8 fis8 |
			fis8. [ dis16 ] e4
      \oneVoice
			\scaleDurations #'(4 . 6) {
        \set Timing.measureLength = #(ly:make-moment 3/4)
        \once \override Staff.Clef.extra-spacing-width = #'(+inf.0 . -inf.0)
        \once \override Staff.Clef.stencil = #ly:text-interface::print
        \once \override Staff.Clef.text = \markup \override #'(baseline-skip . 0) {
          \musicglyph #"clefs.F_change" \lower #1 \with-dimensions #'(0 . 3.5) #'(0 . 0) \number \column  { 18 16 }
        }
        \once \override Staff.TimeSignature.stencil = ##f
          \clef "bass" \time 18/16 s1*6/16 |
					c,16 [ b c f e d ] c16 [ d c  b c b ] a16 [ b a g a fis! ] |
					b16 [ a b e d c ] b16 [ c b a b a ] g16 [ a g fis! g e ] |
					a16 [ g a d c b ]  a16 [ b a g a g ] fis16 [ g fis e fis e ] |
					d16 [ cis d g fis e ] d16^[ e d c d c ] b16 [ c b a b a ] |
					g16 [ fis g c b a ] g16 [ a g f g f ] e16 [ f e d e d ] |
					c8. [ g'16 a b ] c16 [ b c d c d] e16 [ d c b a g ] |
					fis16 [ e fis d e fis ] g16 [ fis g a b c ] d16 [ cis d e fis d ] |
					g8 r8 r8 r16 a16 [ g fis g d ] g,4.
          \override Staff.RehearsalMark.break-visibility = #begin-of-line-invisible
          \override Staff.RehearsalMark.direction = #DOWN
          \mark \markup \musicglyph #"scripts.dfermata"
          \bar ":|."
			}
    }
}
bassTwo = \relative g' {
		\repeat volta 1 {
			\clef "treble"
			\time 3/4
			g4-\hideMP d4 r8 g8 |
			g8. [ e16 ] fis4 r8 a8 |
			b8. [ g16 ] e4 r8 a,8 |
			d4 d4 r8 c!8 |
			b8. [ c16 ] d4 r8 \clef "bass" g,8  |
			c4 e,4 r8 g8 |
			fis8. [ g16 ] a4 r8 d,8 |
			g4 g,4 r4 |
			\scaleDurations #'(4 . 6) {
			    \time 18/16
			    \set Timing.measureLength = #(ly:make-moment 3/4)
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*6/16
			    \clef "treble"
			    s1*12/16|
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			    s1*18/16 |
			}
		}
		\repeat volta 2 {
			\time 3/4
			d''4-\hideMP c4 r8 c8 |
			b8. [ d16 ] g4 r8 d'8 |
			cis4 dis4 r8 e8 |
			dis4 fis,4 r8 dis'8 |
			e4 b4 r8 b8 |
			a8. [ b16 ] c4 r8 c8 |
			b4 a4 r8 a8 |
			a8. [ fis16 ] g4
      \oneVoice
			\scaleDurations #'(4 . 6) {
				    \time 18/16
					\set Timing.measureLength = #(ly:make-moment 3/4)
					\clef "bass"
					r16 e,16-\hidePP [ fis g  a b ] |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
					s1*18/16 |
			}
    }
}
bass = << \bassOne \\ \bassTwo>>
\score {
 \new PianoStaff <<
 \new Staff = "upper" { \key g \major \soprano }
 \new Staff = "lower" { \key g \major \bass }
 >>
 \layout {
   \context {
     \Score
     \remove "Timing_translator"
     \remove "Default_bar_line_engraver"
     \remove "Mark_engraver"
   }
   \context {
     \Staff
     \consists "Timing_translator"
     \consists "Default_bar_line_engraver"
     \consists "Mark_engraver"
   }
 }
  \midi { \tempo 4 = 85 }
}
