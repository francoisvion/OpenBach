\version "2.24.4"
\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #10
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
  piece = "Variation N°23, à 2 claviers"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
posBeamA = \once \override Beam.positions = #'(0.7 . 0.7)
posBeamB = \once \override Beam.positions = #'(0 . 0)
posBeamC = \once \override Beam.positions = #'(-0.2 . -0.2)
doKneedBm = \once \override Beam #'auto-knee-gap = #1
ignoreClash = \temporary \override NoteColumn.ignore-collision = ##t
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))
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
sopranoOne =   \relative g' {
    \repeat volta 2 {
        \stemNeutral
     	b8\rest g8 b'16 [ a g fis ] e [ d cis b ] |
	a16 [ g fis8 ] a'16 [ g fis e ] d [ cis b a ] |
	g16 [ fis e8 ] g'16 [ fis e d ] cis_[ b a g ] |
	fis16 [ e d8 ] b'8\rest b16\rest e,32 [ fis32 ] g^[ a b cis d8 ~ ] |
	\doKneedBm \posBeamC d8 [ b,16 c ] d [ e fis g ] a [ b c d ] |
	\doKneedBm \posBeamB e8 [ c,16 d ] e [ fis g a ] b [ c d e ] |
	\doKneedBm \posBeamA fis8 [ d,16 e ] fis [ g a b ] c [ d e fis ] |
	g8 b,8\rest b16\rest fis'32 [ e d c b a ] g16 b16\rest b8\rest |
	\stemUp r16 b'16 [ b ] b,16\rest b32\rest g'32_[ fis e d16 ] b16\rest b32\rest c32 [ b a g16 ] b16\rest |
	r16 a'16 [ a ] b,16\rest b32\rest d32_[ cis b a16 ] b16\rest b32\rest g32 [ fis e d16 ] b'16\rest |
	r16 g'16 [ g ] b,16\rest b32\rest c!32 [ b a g16 ] b16\rest b32\rest a32 [ g fis e16 ] b'16\rest |
	r16 g'16 [ g ] b,16\rest b32\rest fis32 [ e d cis16 ] b'16\rest b32\rest d,32 [ cis b a16 ] b'16\rest |
	\stemNeutral b16\rest a16 [ a' g ] fis [ e d c ] b [ a g fis ] |
	b16 [ g fis e ] d [ c b a ] g [ b e d ] |
	cis16 [ b a b ] cis [ d e fis ] g [ a b cis ] |
	d16 [ cis32 b a g fis e ] d8 b'8\rest b4\rest |
	\pageBreak
	}
    \repeat volta 2 {
		a'8 \prallmordent  b,16\rest g'16 \once \stemUp \grace { g16 } fis8  b,16\rest e16 \once \stemUp \grace { e16 } d8 b16\rest c16  |
		b8 \prallprall b16\rest a16 \grace a16 g8 b16\rest fis16 \grace fis16 e8 \clef "bass" d,16\rest d'16 |
		c8 d,16\rest  b'16 \once \stemUp \grace { b16 } a8 d,16\rest g16 \once \stemUp \grace { g16 } fis8 d16\rest e16 |
		\once \stemUp \grace { e16 } dis8 d16\rest fis16 a8 d,16\rest c'16 b8 \prallprall d,16\rest a'16 |
		g8 d8\rest \clef "treble" b''16\rest dis16 [ e fis ] g [ gis a b ] |
		c16 [ a g f ] e [ d c b ] a [ g fis! e ] |
		dis16_[ \once \stemUp \grace { d'!16 } c b8 ] b32\rest b32 [ cis dis e fis g16 ~ ] g [ fis e \prallprall dis ] |
		e32^[ c b a b ] r32 r16 r32 fis32 [ e dis e ] s4 s16 s32 |
		r16 e16 [ f g ] \stemUp a [ b c d ] e8 r8 |
		r16 d16 [ c b ] a [ g fis e ] d8 r8 \clef "bass" |
		r16 d16 r16 b16 r16 d16 r16 b16 r16 b16 r16 g16 |
		r16 g16  r16 e16  r16 g16  r16 e16  r16 e16  r16 c16  |
		r16 c16 r16 a16 r16 c16 r16 e16 r16 g16 r16 b16 |
		r16 d16 r16 b16 r16 d16 r16 \clef "treble" fis!16 r16 a16 r16 c16 |
		r16 cis16 [ d e ] fis [ g a b ] c!8 r8 |
		r16 b16 [ a g ] fis [ e d c ] b8 r8  |
    }
}
sopranoTwo =   \relative b' {
  \repeat volta 2 {
	  \stemDown
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  r16 d16 [ d ] s16 s1*2/4 |
	  r16 d16 [ d ] s16 s1*2/4 |
	  r16 b16 [ b ] s16 s1*2/4 |
	  r16 a16 [ a ] s16 s1*2/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
	  s1*3/4 |
    }
    \repeat volta 2 {
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s8 s32 a32 [ g fis g ] s4 s8 s16 s32 |
		r16 c,16 [ d e ] f! [ g a b ] c8 r8 |
		r16 b16 [ a g ] fis [ e d c ] b8 r8 \clef "bass" |
		r16 b16  r16 gis16 r16 b16 r16 g16 r16 g16 r16 e16 |
		r16 e16 r16 cis16 r16 e16 r16 c16 r16 c16 r16 a16 |
		r16 a16 r16 fis16 r16 a16 r16 c16 r16 e16 r16 g16 |
		r16 f16 r16 d16 r16 f16 r16 \clef "treble" a16 r16 c16 r16 e16 |
		r16 a16 [ b cis ] d [ e fis g ] a8 r8 |
		r16 d,16 [ c b ] a [ g fis e ] d8 r8 |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative g' {
	\repeat volta 2 {
		\stemNeutral
		\bassToTreble \doKneedBm \posBeamA g8 [ b'16 a ] g [ fis e d ] cis_[ b a g ] |
		\doKneedBm \posBeamB fis8 [ a'16 g ] fis [ e d cis ] b^[ a g fis ] |
		\doKneedBm \posBeamC e8 [ g'16 fis ] e [ d cis b ] a^[ g fis e ] |
		\stemNeutral d8 \clef "bass" d,16\rest c'32 [ b ] a [ g fis e d8 ] d8\rest d16\rest c16 |
		b8 d8\rest \clef "treble" b'16 [ c d e ] fis [ g a b ] |
		c16 [ d e8 ] c,16 [ d e fis ] g [ a b c ] |
		d16 [ e fis8 ] d,16 [ e fis g ] a [ b c a ] |
		b32 [ g a b c d e fis ] g16 d16\rest d8\rest d16\rest fis,32 [ e d c b a ] |
		g8 b'16\rest a,16 b8 \prallmordent b'16\rest c,16 d8 \prallmordent b'16\rest e,16 |
		fis8 \prallmordent b16\rest g16 a8 \prallmordent b16\rest b16 cis8 \prallmordent b16\rest d16 |
		e8 \prallmordent b16\rest fis'16 g8 \prallmordent b,16\rest a'16  b8 b,16\rest d16 |
		cis8 b16\rest e16 g,8 b16\rest b16 a8 \prallmordent b16\rest g16 |
		fis8 b16\rest a,16 a' [ g fis e ] d [ c b a ] |
		g16 [ b d c ] b [ a g fis ]  \clef "bass" e_[ d cis b ] |
		a16 [ e' g fis ] e_[ d cis b ] a [ g fis e ] |
		d4_~ d16 [ e32 fis g a b cis ] d8 b8\rest |
    }
    \repeat volta 2 {
		\stemUp
		r16 d16[ d ] s16 s1*2/4 |
		r16 g16 [ g ] s16 s1*2/4 |
		r16 a'16 [ a ] s16 s1*2/4  |
		r16 c'16 [ c ] s16 s1*2/4 |
		b,16\rest e16_[ d! c ] b [ a g fis ] e [ d c b ] |
		a8 b'8\rest b16\rest gis,16 [ a b ] c [ cis dis e ] |
		fis8 \clef "bass" d,16\rest \stemNeutral a'16 g8 [ c8 ] a8 [ b8 ] |
		e,8 r32 s4 c'32 [ b a b ] r32 r16 r32 f32 [ e d ] |
		c8 d8\rest r16 \stemUp d'16 [ c b ] a [ g  fis  e ]  |
		\ignoreClash d8 r8 r16 c16 [ d e ] fis [ g a b ] \undo \ignoreClash |
		c8 [ c c c a a ] |
		fis8 [ fis fis fis d d ] |
		b8 [ b b d f a ] |
		c8 [ c c \clef "treble" e g b ] |
		d16 r16 r8 \clef "bass" r16 e,16 [ d c! ] b [ a g fis ] |
		g16 [ b, c d ] e [ fis g a ] b8 r8 |
    }
}
bassTwo = \relative d, {
    \repeat volta 2 {
		\stemDown
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
    }
    \repeat volta 2 {
		r16 d16 [ d ] d'16\rest d32\rest e32 [ fis g a16 ] d,16\rest d32\rest a'32 [ b c32 d16 ] d,16\rest |
		r16 g,16 [ g ] d'16\rest d32\rest \clef "treble" \stemNeutral d'32 [ e fis g16 ] b16\rest b32\rest fis32 [ g a b16 ] b16\rest |
		r16 e,16_[ e ] b'16\rest b32\rest b32 [ c d e16 ] b16\rest b32\rest e32 [ fis g a16 ] b,16\rest |
		r16 a'16 [ a ] b,16\rest b32\rest b'32 [ a g fis16 ] b,16\rest b32\rest g'32 [ fis e dis16 ] b16\rest |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s2 s32 a,32 [ g fis g ]  s16 s32 |
		s8 s8 r16 b16 [ a  g ] fis! [ e  d  c ] |
		b8 r8 r16 a16_[ b c ] d [ e fis g ] |
		a8 [ a a a fis fis ] |
		\stemDown d8 [ d d d b b ] |
		g8 [ g g b d f ] |
		e8 [ e e g b d ] |
		fis16 r16 r8 \clef "bass" r16 g,16 [ fis e ] d [ c b a ] |
		g8 [ a16 b ] c [ d e fis ] g8 r8 |
    }
}
bass = << \bassOne \\ \bassTwo>>
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 85 }
}
