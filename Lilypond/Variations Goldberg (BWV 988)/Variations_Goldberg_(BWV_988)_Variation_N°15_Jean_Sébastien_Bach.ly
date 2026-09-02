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
  piece = "Variation N°15, Canon à la quinte (en mouvement contraire). à 1 clavier"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score.RehearsalMark.self-alignment-X = #left
       \once \override Score.RehearsalMark.extra-spacing-width = #'(+inf.0 . -inf.0)
       \mark \markup { \bold $markp }
     #})
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
adjBeamOne = \once \override Beam.positions = #'( -5.2 . -6.0 )
adjBeamTwo = \once \override Beam.positions = #'( 5.8 . 7.3 )
adjBeamTre = \once \override Beam.positions = #'( -2.4 . -1.4 )
adjBeamQtr = \once \override Beam.positions = #'( 4.0 . 4.5 )
adjBeamCin = \once \override Beam.positions = #'( 7.7 . 5.2 )
adjBeamSix = \once \override Beam.positions = #'( 1.3 . 1.5 )
adjBeamSev = \once \once \override Beam.damping = #6
adjBeamOct = \once \override Beam.positions = #'( -4.3 . -5.3 )
adjBeamNov = \once \override Beam.positions = #'( 5.0 . 5.3 )
adjBeamTen = \once \override Beam.positions = #'( -2.0 . -1.8 )
adjBeamOnc = \once \override Beam.positions = #'( -5.3 . -5.1 )
adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTre = \shape #'((0 . -1.2) (0.0 . -1.4) ( 0.0 . -1.4) (0 . -1.2)) Tie
adjTieQtr = \shape #'((0.6 . -1.0) (2.2 . -2.6) ( -2.2 . -2.6) (-0.5 . -1.4)) Tie
adjTieCin = \shape #'((0 . 0.9) (0.5 . 2.1) (-0.5 . 2.1) (0 . 0.9)) Tie
adjSlurOne = \shape #'((0 . 0.0) (0 . 0.3) (0 . 0.5) (0 . 0.3)) Slur
adjSlurOne = \shape #'((0 . 0.8) (0 . 0.5) (-0.3 . 0.1) (-0.3 . -0.3)) Slur
lengthenStemOne = \once \override Stem.length-fraction = #(magstep +2)
pushNoteColRight = \once \override NoteColumn #'force-hshift = #0.3
allowScriptInStaff = \once \override Script.staff-padding = #'()
sopranoOne =   \relative d'' {
    \repeat volta 2 {
    \stemUp
	\tempoMark #"Andante"
       R1*1/2 |
        r16 d16 [ d ( e ) ] e ( [ fis ) fis ( g ) ] \noBreak |
        \adjTieTwo g4 ~ \adjBeamTwo g16 [ a bes c ] |
        d16 [ a a32 gis a16 ] \adjTieTwo d,4 ~ |
        d8 [ es16 ( f ) ] es ( [ d ) d ( c ) ] |
        bes8 d8\rest d8\rest c8 |
        g'32 [ a fis16 g a ] bes [ c d c ] |
        \adjBeamCin bes16 [ \grace a16 g16 \adjTieTwo d8 ~ ] \adjBeamQtr d8  [ es ] |
        d8 r8 f16\rest es16 [ d ( c ) ] |
        bes16 ( [ c ) c ( d ) ] d ( [ es ) es ( d ) ] |
        d8 r8 r8 a'8 |
        bes8 [ d,16 \adjTieTwo e ~ ] e [ f8 g16 ] |
        \stemDown \adjBeamSix a8 [ \stemUp bes, ] c [ a' ] |
        r8 g32 [ a g16 ~ ] g [ g8 g16 ~ ] |
        g16 [ f32 g32 a16 bes ] a [ f cis8 ] |
        r8 g'8 ~ g16 [ fis32 e fis8 ] |
    }
    \repeat volta 2 {
        R1*1/2 |
        d8\rest es8 [ d  c ] |
        g'16 [ g,8 as16 ~ ] as  [ bes8 c16 ] |
        bes8 [ f' ] g [ d ] |
        es16 [ d c8 ] e'16\rest bes,8 [ c16 ] |
        d16 [ bes f d ] es [ f g as ] |
        \adjTieCin bes2 ~ |
        bes16 [ c32 d es d c16 ] d [ es32 f es f g16 ] |
        f8 r8 r4 |
        r16 c16 [ c ( d ) ] es [ e g, e' ] |
        fis4 ~ fis16 [ g a bes ] |
        c16 [ bes a g ] fis [ g fis8 ~ ] |
        fis16 [ a g8 ] f8\rest c8 |
        g8. [ a16 ] bes [ c d e ] |
        fis16 [ g a fis ] \stemNeutral g [ fis e32 d c'16 ~ ] |
        c16 [ fis, g a ] bes [ c d8 ] |
    }
}
sopranoTwo =   \relative g' {
    \repeat volta 2 {
    \stemDown
        b16\rest g16 [ g ( f ) ] f ( [ es ) es ( d ) ] |
        d4 ( \adjBeamOne  d16 ) [ \stemUp \staffDown c bes a ] |
        g16 [ cis cis32 d cis16 ] \stemDown \staffUp g'4 ( |
        g8 ) [ fis16 e ] fis [( g) g( a ]) |
        bes8 r8 r8 a8 |
        d,32 [ c es16 d c ] \staffDown \stemUp bes [ a g a ] |
        bes16 [ d \staffUp \stemDown \adjTieTre g8 ~ ] g [ \allowScriptInStaff fis ^\prallprall ] |
        g8 r8 r16 fis16 [ g a ] |
        bes16 ( [ a ) a ( g ) ] g ( [ fis ) fis ( g ) ] |
        g8 r8 r8 c,8 |
        bes8 [ g'16 \adjTieOne f ~
		] f [ e8 d16 ] |
        cis8 [ bes' ] a [ cis, ] |
        g'8\rest d32 [ cis d16 ~ ] d [ d8 d16 ] ~ |
        d16 [ e32 d cis16 b ] cis [ e a8 ] |
        r8 d, ~ d16 [ e32 f e d e16 ] |
        \stemUp d4 g4\rest  |
    }
    \repeat volta 2 {
        g8\rest fis8_[ g a ] |
        \stemDown d,16 [ d'8 c16 ~ ] c [ bes8 a16 ] |
        bes8 [ es, ] d [ g ] |
        f16 [ g as8 ] b16\rest bes8 [ as16 ] |
        g16 [ bes es g ] f [ es d c ] |
        \adjTieQtr bes2 ~ |
        bes16 [ as32 g f g as16 ] g [ f32 es f es d16 ] |
        es8 r8 r4 |
        r16 as16 [ as ( g ) ] fis [ f d' f, ] |
        es4 ~ \adjBeamOct es16 [ d \staffDown \stemUp c bes ] |
        \adjBeamNov a16 [ bes \staffUp \stemDown c d ] es [ d es8 ~ ] |
        es16 [ c d8 ] g8\rest a8 |
        d8. [ c16 ] bes [ a g f ] |
        es16 [ d c es ] \adjBeamOnc d [ e fis32 g \staffDown \stemUp a,16^~ ] |
        \adjBeamNov a16 [ \staffUp \stemDown es'! d \staffDown \stemUp c ] bes [ a g fis ] |
        g4 a4\rest |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bass =   \relative g {
    \repeat volta 2 {
       g8 [ g, ] r8 \adjTieTwo g' ~ |
        g16 [ fis32 e fis8 ] r8 d8 |
        es8 [ e ] r8 es'! |
        d16 [ cis d8 ] r16 c16 [ bes a ] |
        g32 ( [ fis g16 ) c, g' ] c ( [ fis, ) fis ( g ) ] |
        g16 [ fis g a ] d,8 [ es ] |
        bes8 [ bes'16 c ] d8 [ d ] |
        g,8^[ bes,32 c d bes ] g8 r8 |
        r16 fis'16 [ g a ] bes8 [ a ] |
        g16 [ fis8 e16 ] fis32 [ a g8 fis16 ] |
        \adjBeamTen g16 [ a bes a ] g32 [ a g16 f32 g f16 ] |
        e16 [ f g e ] cis_[ d e cis ] |
        f32 [ e d16 ] g4 fis8 |
        bes8 [ e, ] a [ cis, ] |
        d8 [ f16 e ] f8 [ a ] |
        \stemDown \staffUp \adjBeamSev d16 [ \staffDown c32 bes a g a16 ] d,4 |
    }
    \repeat volta 2 {
       \adjSlurOne d16 [ ( es' ) es ( d ) ] d [ ( c)  c ( bes ) ] |
        bes16 [ ( fis ) fis ( g ) ] g [ ( d ) \adjTieOne d8_~ ] |
        d16^[ c32 bes c16 f, ] f'^[ bes, es8_~ ] |
        \stemUp es16 [ d32 c d c bes16 ] es [ g, as bes ] |
        c,16 [ g' c bes ] as [ g \adjTieOne as8_~ ] \stemNeutral |
        as16 [ as' bes as ] g [ f es f ] |
        g16 [ as bes8 ] bes,8. [ as'16 ] |
        g16 ( [ f ) f ( es ) ] f ( [ g ) \adjSlurOne g ( as ) ] |
        c,8 [ b ] r16 a16 [ b g ] |
        c8 [ c' ] r8 \stemDown c,8_~ |
        c16 [ \staffUp \shiftOn d' es \staffDown bes ] a [ bes c g ] |
        g8 [ ( fis16)  g ] a [ bes32 c d es c16 ] |
        bes32 [ d c16 bes32 c a16 ] g32 [ a f16 es32 f d16 ] |
        c16 [ es32 d es16 fis, ] \stemUp g8 \stemDown  r16 c16  |
        d8 r16 es16 c8 [ d ] |
        g16 [ d32 c bes c a16 ] g4 |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key bes \major \time 2/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key bes \major \time 2/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 8 = 66 }
}
