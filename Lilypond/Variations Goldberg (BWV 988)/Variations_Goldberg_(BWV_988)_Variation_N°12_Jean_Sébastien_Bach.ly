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
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°12, Canon à la quarte"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 4.0 . 2.3 )
adjBeamTwo = \once \override Beam.positions = #'( 2.3 . 3.4 )
adjBeamTre = \once \override Beam.positions = #'( -2.4 . -1.4 )
adjBeamQtr = \once \override Beam.positions = #'( 2.8 . 2.3 )
adjBeamCin = \once \override Beam.positions = #'( -2.0 . -3.5 )
adjBeamSix = \once \override Beam.positions = #'( 4.8 . 5.5 )
adjBeamSev = \once \override Beam.positions = #'( -4.8 . -5.8 )
adjBeamOct = \once \override Beam.positions = #'( 5.6 . 5.3 )
adjBeamNov = \once \override Beam.positions = #'( -5.9 . -6.1 )
adjBeamTen = \once \override Beam.positions = #'( -4.9 . -5.1 )
adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTre = \shape #'((0 . 0.2) (0.7 . 0.7) (-0.7 . 0.7) (0 . 0.2)) Tie
adjTieQtr = \shape #'((0 . -0.2) (0.7 . -0.7) (-0.7 . -0.7) (0 . -0.2)) Tie
adjTieCin = \shape #'((0 . 0.0) (0.7 . 0.5) (-0.7 . 0.5) (0 . 0.0)) Tie
liftRest = \override MultiMeasureRest.staff-position = #8
hidePP = \tweak #'stencil ##f\pp
hideMF = \tweak #'stencil ##f\mf
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
soprano =   \relative g' {
    \repeat volta 2 {
        r8-\hideMF g16 [ fis ] \adjBeamTwo g8 [ a16 b ] \adjBeamOne c16 [ b a g ] |
        d'16 [ a-\hidePP b cis ] \adjBeamTre d [ e fis g ] a8 r8 |
        r8 g16 [ fis ] \adjBeamCin e16 [ d cis b ] \adjBeamQtr a16 [ g fis g ] |
        g8[-\hideMF fis16 \prall e ] d8 r8 b'4\rest |
        f'16\rest \stemUp d8.^~ d16  [ b-\hidePP a g ] f16 [ e d f ] |
        e16 [ g16 c16 d16 ] e8 a,4-\hideMF a8^~ |
        a16 [ b fis g ] a [ g fis e' ] d [ c b a ] |
        g4 r4 r4 |
        r16-\hidePP fis16 [ g a ] b [ cis d fis ] e [ d cis b ] |
        a16 [ g fis e ] d8 r8 r4 |
        r8 cis'8^~ cis16 [ b-\hideMF a b ] cis [ d e fis ] |
        g8_[ g,16 fis ] \adjTieOne g4 ~ g16 [ b-\hidePP a g ] |
        fis16 [ e fis g ] fis [ a g fis ] e4^~ |
        e8 [ d'-\hideMF cis b ] a [ fis' ] |
        g,4. fis8 e16 [ a g8^~ ] |
        g8 [ fis16 e ] fis [ d'8 cis16 ] d8 r8 |
    }
    \repeat volta 2 {
        R1*3/4 |
        \stemNeutral \staffUp r8 g,16 [ fis ] g8 [ a16-\hidePP b ] c [ b a g ] |
        \adjTieTre g'4~-\hideMF g16 [ fis! a g ] fis [ g e8 ] |
        \grace e16 \adjTieTwo fis8 ~ [ fis32 eis32 fis g! ] fis8 [ a, ] r8 fis'8 |
        g16^[-\hidePP fis g a ] g^[ fis e d ] c [ b a g ] |
        \adjTieCin fis2.^~-\hideMF |
        fis8 [ fis16 g16 ] fis8 [ fis8 ] \adjTieOne fis8 [ g16 a16 ] |
        g4 d'4 \rest e,4 ( |
        e16 ) [ fis16-\hidePP g16 e16 ] fis16 [ g16 gis16 a16 ] b16^[ c16 d16 e16] |
        \stemUp d8 f8\rest f4\rest f4\rest |
        b,16 \rest c,16 [ d16 e16 ] d16 [ es16 fis!16 g16 ] fis16 [ g16 a16  b16 ] |
        \adjTieCin a2.^~ |
        a8 [ d,  e  fis ] g16 [ b a c ] |
        b8 [ a b c ] \stemNeutral d8. ^\prallmordent [ e16 ] |
        \adjTieTwo d4 ~ d16 [ b c d ] e [ fis g a ] |
        b16 [ g d b ] g8 r8 \padFerm r4^\fermata  |
    }
}
bassOne =   \relative fis' {
    \repeat volta 2 {
    \stemUp
        \liftRest R1*3/4 |
        r8 d16 [ e ] d8 [ c!16 b ] a [ b c d ] |
        g,16 [ c b a ] g [ fis e d ] cis8 r8 |
        r8 d16 [ e ] fis [ g a b ] \staffUp \stemDown c [ d e d ] |
        d8 [ e16 fis ] g8 c,8\rest a4\rest |
        \staffDown \stemUp a16\rest  g8. ~ \adjBeamSix g16 [ b \stemDown \staffUp c d ] e [ fis g e ] |
        \adjBeamSev fis16 [ d \stemUp \staffDown a g ] fis8 c'4  c8 ~ |
        \adjBeamOct c16 [ b \stemDown \staffUp e d ] \adjBeamNov c [ d e \stemUp \staffDown fis, ] g [ a b c ] |
        d4 \stemDown \staffUp c4\rest c4\rest |
        c16\rest e16 [ d cis ] \stemUp \staffDown b [ a g e ] fis [ g a b ] |
        \stemDown \staffUp cis16 [ d e fis ] g8 c,8\rest c4\rest |
        \stemUp \staffDown a8\rest a8 ~ a16 [ b cis b ] a [ g fis e ] |
        d8 [ \stemDown \staffUp d'16 e ] \adjTieOne d4_~ d16 [ b cis d ] |
        e16 [ fis e d ] e [ cis d e ] \adjTieOne fis4_~ |
        fis8 [ \stemUp \staffDown g, a b ] \stemDown \staffUp cis [ \stemUp \staffDown e, ] |
        \stemDown \staffUp d'4. e8 fis16 [ cis d8 ]
    }
    \repeat volta 2 {
        \stemUp \staffDown
    	r8 d16 [ e ] d8 [ c!16 b ] a [ b c d ] |
        \adjTieTwo d,4 ~ d16 [ e c d ] e [ d f8 ] |
        \grace f16 e8 ~ [ e32 f! e dis ] e8 [ c' ] f,8\rest e8 |
        dis16 [ e dis cis ] dis [ e fis g ] a [ b cis dis ] |
        \stemDown \staffUp \adjTieQtr e2._~ |
	e8 [ e16 dis ] e8 [ e ] e [ dis16 cis ] |
	dis4 a4\rest \adjTieOne fis'4_~ |
	fis16 [ e dis fis ] e [ d  cis c ] \stemUp \staffDown b [ a  g fis ]
        g8 r8 c4\rest c4\rest |
	\stemDown \staffUp e16\rest a16 [ gis fis ] gis [ f e d ] e [ d c b ] |
        \adjTieQtr c2._~  |
        c8 [ g' fis e ] \adjBeamTen d16 [ \stemUp \staffDown b c a ] |
        b8 [ c b a ] g8. ^\prallprall [ fis16 ] |
        \adjTieTwo g4 ~ g16 [ b a g ] fis [ e d c ] |
        b16 [ d g b ] d8 [ \adjTieTwo g, ~ ] g16 [ a fis8 ] |
        g4 d'4\rest d4\rest |
    }
}
bassTwo =   \relative g {
    \repeat volta 2 {
    \stemDown
        g4-\hideMF g g |
        fis fis fis |
        e e e |
        d16 [ d, d'8 ] r8 c16 [ b a8 c ] |
        b4 b b |
        c c c |
        d d d |
        g8. [ b,16 ] e [ d c e ] d [ c b a ] |
        b8 [ g ] d'8\rest g16 [ fis g8 e ] |
        fis8 [ b ] d,8\rest b16 [ cis d8 b ]  |
        e16 [ fis g fis ] e8 [ fis  e  d ] |
        cis16 [ d e d ] cis8 [ e ] cis [ a ] |
        d4 d16\rest d16 [ e fis ] g [ a g fis ] |
        g8^[ g, ] d'16\rest e16 [ fis g ] a [ fis e d ] |
        b'16 [ b, e d ] cis [ a d g ] a [ e cis a] |
        d16 [ e d cis ] \stemUp d8 [ a ] d, d'8\rest |
    }
    \repeat volta 2 {
        \stemDown d4 d c |
        b8 [ c b a ] g [ a16 b16 ] |
        c8 [ b ] c [ e ] a, [ c ] |
        b4 r4 r4 |
        r8 e8 [ fis g a b ]  |
		c16 [ d c b ] c [ b a g ] a [ fis g a ] |
        b16 [ c b a ] b [ fis dis fis ] b,16^[ dis cis  b ] |
		e16 [ c b a ] g [ b e dis ] e8 [ d ] |
		c8 [ c' ] d,16\rest e16 [ d c ] d [ c b a ] |
		b8 [ b' ] d,16\rest d16^[ c b ] c^[ b a gis ] |
        a8 [ a' ] d,16\rest b'16 [ a g ] a [ g fis e ] |
        fis16 [ e d cis ] d^[ c b a ] b [ a g fis ]
		g16 [ a' g fis ] g [ fis e dis ] e4 ~ |
        e16 [ d c e ] d4. a8 |
        b8 r8 r8 e8 [ c d ] |
        \adjTieOne g,4 ~ g16 [ b d fis ] \padFerm g4_\fermata |
    }
}
bass = << \bassOne \\ \bassTwo>>
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 94 }
}
