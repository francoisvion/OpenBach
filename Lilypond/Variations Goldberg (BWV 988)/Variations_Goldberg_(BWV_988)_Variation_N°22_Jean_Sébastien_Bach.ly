\version "2.24.4"
\paper {
top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #10
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
  piece = "Variation N°22, à 1 clavier"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
posMMRest = \temporary \override MultiMeasureRest.staff-position = #0
posMMRestTwo = \once \override MultiMeasureRest.staff-position = #-2
posMMRestTre = { \once \override MultiMeasureRest.staff-position = #-4
                 \once \override MultiMeasureRest.extra-offset = #'( -2 . 0 )
}
posMMRestQtr = \once \override MultiMeasureRest.staff-position = #-6
posMMRestCin = \temporary \override MultiMeasureRest.staff-position = #-10
staffUp = { \change Staff = "upper" \stemDown \tieDown }
staffDown = { \change Staff = "lower" \stemUp \tieUp }
posNoteColum = \once \override NoteColumn.force-hshift = #0.5
ignoreClashNote = \temporary \override NoteColumn.ignore-collision = ##t
tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score.RehearsalMark.self-alignment-X = #left
       \mark \markup { \bold \smaller $markp }
     #})
sopranoOne =   \relative d'' {
    \repeat volta 2 {
		\tempoMark #"Alla breve"
    \stemUp
	R1 |
        R1 |
        R1 |
	R1 |
	b2\rest d ~ |
        d4 c8 [ b ] c4 e |
        a,4 d2 c4  ~ |
        c4 b8 [ a ] b2 ~ |
        b4 b8 [ a ] b4 e |
        cis4 a'2 g8 [ fis ] |
        g1 \downprall ~ |
        g1 ~ |
        g4 fis8 [ e ] fis4 a |
        d,2 g ~ |
        g4 fis e2 |
        d1 |
    }
    \repeat volta 2 {
        d2\rest a'2 ~ |
        a4 g8 [ fis ] g4 b |
        e,1 ~ |
        e4 dis8 [ cis ] dis4 fis |
        b4 b, b'2 ~ |
        b4 a8 [ g ] a4 c |
        fis,4 g a2 ~  |
        a4 g8 [ fis ] g4 b |
        e,1 |
        d1 |
        c1 |
        b2\rest d2 ~ |
        d4 c8 [ b ] c4 e |
        a,2 ~ a8 [ e' d e ] |
        a,4 d2 c4 ~ |
        c4 b8 [ a ] b2 |
    }
}
sopranoTwo =   \relative g' {
  \repeat volta 2 {
  \stemDown \tieUp
  	\posMMRest R1 |
	R1 \undo \posMMRest |
        g2\rest \shiftOn g2 ~ |
        g4 fis8 [ e ] fis4 a |
        d,2. f4 |
        e2. \tieDown g4 ~ |
        g4 fis8 [ e ] fis4 a ~ |
        a4 g8 [ fis ] g4 b |
        e,2 b' |
        a2 d |
        e1 ~ |
        e1 ~ |
        e4 d8 [ cis ] d4 fis |
        b,2. e8 [ d ] |
        e4 d2 cis4 |
        d4 a8 [ g ] a2 |
        \break
    }
    \repeat volta 2 {
		R1 |
		b2\rest b2^~ |
		b4 a8 [ g ] a4 c |
		fis,2 b2|
		\ignoreClashNote b2\rest \shiftOff g'2 ~ |
		g4 fis8 [ e ] \undo \ignoreClashNote \shiftOn fis4 a |
		dis,4  e2 dis4 |
		e2 b2 ~ |
		b4 a8 [ g ] a4 c |
		fis,4 d g2 ~ |
		g4 fis8 [ e ] fis4 a |
		d,2 r2 |
		r2 g2 ~ |
		g4 g8 [ fis ] g2 ~ |
		g4 fis8 [ e ] fis4 a ~ |
		a4 g8 [ fis ] g2 |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative e' {
	\repeat volta 2 {
	\staffUp
         e2\rest e2 ~ |
        e4 d8 [ cis8 ] d2 ~ |
        d4 cis8 [ b8 ] cis4 e4 |
        \staffDown a,1 ~ |
        a4 g8 [ fis8 ] g2 ~ |
        g4 e4 a2 ~ |
        a4 a8 [ g8 ] a4 fis4 |
        \staffUp d'2 \staffDown r2 |
        r2 \staffUp e2 ~ |
        e4 \staffDown d8 [ cis8 ] d2 ~ |
        d4 cis8 [ b8 ] cis4 e4 |
        a,1 |
        r2 a2 ~ |
        a4 g8 [ fis8 ] g4 b4 |
        cis,4 d4 e8 [ fis8 ] g4 ~ |
        g4 fis8 [ e8 ] fis2 |
    }
    \repeat volta 2 {
        \staffUp \posMMRestTwo R1 |
        \posMMRestTre R1 |
        \posMMRestQtr R1 |
        s1*2/4 fis'2 ~ |
        fis4 e8 [ dis8 ] e4 g4 |
        c,4 e4 a2 ~ |
        a4 g4 fis2 |
        e2 g,2\rest  |
	\posMMRestCin R1 |
	R1 \undo \posMMRestCin |
        \staffDown r2 c2 ~ |
        c4 b8 [ a8 ] b4 d4 |
        g,2. b4 |
        e,2 a2 ~ |
        a4 a8 [ g8 ] a4 fis4 |
        \staffUp d'1 |
    }
}
bassTwo = \relative g {
    \repeat volta 2 {
	\stemDown
        g1 |
        fis1 |
        e1 |
        d2. c4  |
        b1 |
        c1 |
        d1 |
        g,1 ~ |
        g4 g'8 [ fis ]  g2^~ |
        g4 fis8 [ e ] fis4 b |
        e,2. d4 ~ |
        d4 cis8 [ b ] cis4 e |
        fis,2 fis' |
        g,2 e' |
        a,1 |
        d1  |
    }
    \repeat volta 2 {
        d'2. c4 |
        b4 d \staffUp g \staffDown \stemDown g, |
        c4 e c a |
        b4 \stemNeutral b, b' a |
        g1 |
        a1 |
        b1 |
        e,2. d4 |
        \stemDown c2 c' ~ |
        c4 b8 [ a ] b4 e |
        a,2. g4 |
        fis2 g |
        e2. d4 |
        c2 cis |
        d1 |
        g,1 |
    }
}
bass = << \bassOne \\ \bassTwo>>
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 2/2 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 2/2 \bass }
    >>
    \layout{  }
    \midi { \tempo 2 = 90 }
}
