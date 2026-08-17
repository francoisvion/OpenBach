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
  piece = "Variation N°21, Canon à la septième"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
posPrall = { \once \override Script.staff-padding = #'() }
sopranoOne =   \relative a' {
    \repeat volta 2 {
    \stemUp
        b2\rest b16\rest a16 [ bes c ] d [ c bes a ] |
        g8 [ d' g, c ~ ] c16 [ fis, g a ] bes [ a g fis ] |
        g8 b8\rest b8\rest g8 as [ g as a ] |
        bes16 [ c d c ] bes [ a g fis!] es'8  d\rest d\rest c8 ~  |
        c16 [ c bes a ] bes [ c d e ] f!8 [ e ] f16 [ g a8 ~ ] |
        a16 [ g f a ] g [ f e d ] cis8. \downprall [ b16 ] cis [ d e8 ] |
        d8 r8 r8 d8 ees! [ d8 es e ] |
        f8 [ g a g ~ ] g8 [ fis16 e ] d [ cis d8 ]	|
    }
    \repeat volta 2 {
        r2 r16 as'16 [ g16 f! ] e [ f g e ] |
        c8 [ d16 es! ] f8 [ bes,8 ] r16 f'16 [ es d ] c [ es d f ] |
        es8 [ f ] g4 ~ g16 [ f g as ] d, [ c d f ] |
        bes,16 [ c d bes ] es8 [ as, ~ ] as [ g16 f ] g8 [ es'8 ~ ] |
        es8 [ d16 c ] d8 r8 r16 e,16 [ f! g ] f [ e d c ] |
        c'16 [ bes c8 ] fis,8 r8 r8 d'16 [ c ] bes [ a g f ] |
        es8  b'8\rest b8\rest c8 ~ c [ bes!] a [ bes16 c ] |
        d8 [ f,! ] es [ c' ~ ] c16 [ bes32 a g a fis16 ] g4 |
    }
}
sopranoTwo =   \relative bes {
    \repeat volta 2 {
    \stemUp \tieUp \staffDown
       b16\rest bes16 [ c d ] es [ d c bes ] a8 [ es' a, d ~ ] |
        d16 [ g, a bes ] c [ bes a g ] a8  a\rest a\rest a8  |
        bes8 [ a bes b ] c16 [ d es d ] c [ bes a g ] |
        \staffUp \stemDown \tieDown fis'8 e\rest e\rest d8 ~  d16 [ d c  bes ] c [ d e fis ] |
        g8 [ fis ] g16 [ a bes8~ ] bes16 [ a g bes ] a [ g f e ] |
        \posPrall d8.^\downprall [ cis16 ] d [ e f8 ] e  r8 r8 e8 |
        f8 [ e f fis ] g [ a bes a ~ ] |
        a8 [ g16 f ] e [ d e8 ] \staffDown \stemUp d4 \staffUp \stemDown r4 |
    }
    \repeat volta 2 {
        r16 bes'16 [ a g ] fis [ g a fis ] d8 [ e16 f ] g8 [ c, ] |
        r16 g'16 [ f es! ] d [ f es g ] f8 g as4 ~  |
        as16 [ g as bes ] es, [ d es g ] c, [ d es c ] f8 [ \staffDown \stemUp \tieUp bes, ~ ] |
        bes8 [ as16 g ] as8  [ \staffUp \stemDown \tieDown f'8 ~ ] f [ es16 d ] es8 r8 |
        \staffDown \stemUp a,16\rest fis16 [ g a ] g [ fis e d ] d' [ c d8 ] g, a\rest |
        \staffUp \stemDown r8 es'!16 [ d ] \staffDown \stemUp \tieUp c [ bes a g ] fis8  a8\rest a8\rest d8 ~ |
        d8 [ c ] b [ \staffUp \stemDown c16 d ] es8 [ \staffDown \stemUp g,] fis[ d' ~ ] |
        d16 [ c32 bes a bes g16 ] as [ g8 fis16 ] g4 d'4\rest |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bass =   \relative g, {
    \repeat volta 2 {
       \stemDown
       g4 g' fis f |
        e4 es d16 [ a bes c ] d8 [ d, ] |
        g16 [ d' e fis ] g [ f es d ] c8 [ b c cis ] |
        \stemNeutral d8 [ bes c d ] g4 ~ g16 [ fis g a ] |
        bes16 [ c d8 ] g, [ g' ] d4. c8 |
        bes8 [ a bes g ] a16 [ e f g ] a [ b cis a ] |
        d16 [ f, g a ] d, [ c' bes a ] g [ bes, c d ] g,_[ g'8 cis,16 ] |
        d16 [ a' d8 ~ ] d8. [ cis16 ] d [ bes a g ] fis [ a fis d ] |
    }
    \repeat volta 2 {
        d8 d'4 c8 b bes4 a!16 [ g ] |
        a8 as4 g8 d [ es f bes, ] |
        es8  r8 r8 es8  as4. g16 [ f ] |
        \tieDown g4 ~ g16 [ f es d ] es [ g, as bes ] es, [ g a b ] |
        \stemDown c4 r8 c8 bes!4 r8 bes8 |
        a16 [ g a bes ] a [ g fis e ] d [ c' d es! ] d [ c bes a ] |
        g16 [ f' g as ] g [ f es d ] c [ b c cis ] d16 [ es d c ] |
        bes16 [ a bes b ] c8 [ d ] g,16 [ d' bes d ] g [ d bes g ] |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key bes \major \time 4/4 \soprano }
		\new Staff = "lower" {\clef "bass" \key bes \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 34 }
}
