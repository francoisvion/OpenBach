\version "2.27.1"

#(ly:set-option 'relative-includes #t)

\header {
  title = "Fugue en do majeur"
  subtitle = "sur un thème de Tommaso Albinoni"
  opus = "BWV 946"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
 }

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

Global = {
  \key c \major
  \time 4/4
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
R1*2
{ r8 g4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a4\trill 
g8. } a32 g f8. g16 e8. f32 e d16 e f g
e4. a8~ a g16 f e4~
e8 g a4 g f
e8. fis16 g8 fis16 g a8 g16 a b8 a16 b
c8 d b c a g4 fis8
g8 a16 b c4 b2
a8 r r4 r2
{ r8 c4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4\trill
e8 } d f e g4. a8
g b e, a d,4 c
b8 c f4 e d
g, a b4. a16 b
c8 e a, d g, c f,16 e f g
e8 a4 g8~ g f16 e f8 fis 
g4 r r2
R1*2
{ r8 c4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4~
d8 c16 b c4 } a8 d c4
b8. c16 d8 c16 d e8 d16 e fis8 e16 fis
g8 f e4 d8 e16 d c8 d16 c
b8 c16 bes a8 bes16 a g8 a'16 g f8 g16 f
e8 g4 f8~ f e4 d8 
cis4 d c b!8 c~
c b16 a b8 c16 b c8 d16 e fis8 e16 fis
g8 b16 a g e a g fis d g b, c e fis8
b,16 d e8 a,16 c d8~ d16 g, c8 f,16 a g f
e4. \tieDashed f8~ f g16 a b8 a16 b
c8 b4 \tieSolid a8~ a g f4
e8 g16 e c8 a'16 f d8 b'16 a g4
e8 b16 c d8 a16 b c8 g' f4\parenthesize\trill
e4 f'\rest c'2\rest
R1*2
R1
{ r8 c,4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4~
d8 c4 } d8 b! c a bes 
gis a fis gis a16 b! c8~ c d16 e
b8. c16 d4 r2
b2\rest c4 bes
\once\override NoteColumn.force-hshift = #0 a
f'2 e4~
e ees8 d ees4 a
g2 f
<c e!>1\fermata \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  
{ r8 c4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4\trill
 c8. } d16 e8 c d8. c16 b8 a16 b
c8 g' e a d, g4 f8~ 
f e4 d8~ d16 g, c8~ c b
c8. b16 a4 b4. a16 b
c8 e c d b c4 b8
c4. c8~ c d g4
a g d~ d8. c16
b8 c16 d e4 fis e8 fis16 g
cis,8 d4 c8~ c b a4
g a b4. c8~
c r r4 r2
{ r8 g'4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a4\parenthesize\trill
g4 } a8 b g a f g
e4. f8~ f g16 f e4~
e8 b c a b g a b
c4 b a4. d16 c 
b8. c!16 d8 c16 d e8 d16 e fis8 e16 fis
g8 b16 a g e a g fis d g b, c e d c
b d c e d f e g f8 e d4
c8 a16 b c8 b16 c d8 c16 d e8 d16 e
f8 e a4 g fis8 \tieDashed gis~ 
gis4 a16 b a g fis8 g4 fis8
g8. a16 b8 a16 b c8 b a4
g8 b16 a g8 a16 g fis8 g4 f8~
f ees4 \tieSolid d8~ d c4 b8
c c' a4 g f 
e8 a16 g f8 g16 f e8 f4 e8
d8 g4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a8. a16
g8. g16 f8. f16 e8. c16 d8 b
c g a4 b8 c b f'
e8 e16 f g8 d16 e f8 c4 b8
c4 e,4\rest f2\rest
R1
r8 g'4 a8~ \stemUp\tieUp a b16 c d8 c16 d
e8 d4 c8~ c b a4 
g8 b c4 ~ c8 b4 a8~
a b c4 b8 c16 bes a4
\stemDown\tieDown
g f8 a g4 \tieDashed c~
c2. a8 g
g4. a8 g4 f
e d e8 \tieSolid a4.~
a8 g~ g16 a g fis g d e f e b c d
r2 g~
\once\override NoteColumn.force-hshift = #1 g4
\once\stemUp
\once\override NoteColumn.force-hshift = #0.3 f
g2
a1 
d4 c2 b4
g1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override VoiceFollower.style = #'dashed-line
R1*5
R1*2
{ r8 g4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a4\parenthesize\trill
g8 } f e a~ a g16 fis g4~
g8 f e a d, g4 f8~
f8 e f4 g e
f8 c' cis d g, \clef "treble" c4 b8
c8 b4 c8~ c d16 e fis8 e16 fis
g8 .gis16 a8. g16 fis8 g4 f8~
f e4 d8~ d c4 \clef "bass" b8
{ c c,4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4\parenthesize\trill
c8 } f d e c cis d4
R1*3
R1
R1*2
{ r8 g4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a4\parenthesize\trill
g } f e d
c8 e f4 c'8 cis d4 
a8 f'16 e d8 bes~ bes a g4
g8 r r4 r2
R1*4
{ r8 c,4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4
g8 c } b cis d
\change Staff = "upper" \voiceTwo
g4.
g8 b4 a8~ a g4 fis8~ 
fis e4 fis16 e dis4 e
fis8 g4 f8~ f e4 d16
\change Staff = "lower" \voiceThree
c
b!8 c16 bes a8 c b8 c16 d e8 d16 e
f8 e a4 g f
e4. f8 d e c d 
b c a b c e d4~
d2 c\rest
  << {
g16 c b a g a g f! \shiftOn e4 g
a2 g4 c~
c a c4. d16 c
b4 g_~ g2
c,1
  } \\ {
\change Staff = "upper"
    s2
    \once\override NoteColumn.force-hshift = #0.3 c'~
\once\override NoteColumn.force-hshift = #0 c8
    b!16 c d2 s4
s1
  
\change Staff = "lower" \voiceThree
    s4
    \override NoteColumn.force-hshift = #-0.4
    e! d2
\override NoteColumn.force-hshift = #0
    g,1
  } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
R1*5
{ r8 c4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4\trill
c8. } d16 e8 d16 e fis8 g g4~
g8 f4 e8 fis g d4
e8 d c4 d e
a, r r2
R1*2
R1*3
R1*3 
\stemDown  { g8\rest g4 a8~ a b16 c d8 c16 d
e8 d4 c8~ c b a4\parenthesize\trill
g8 } a b c d16 f a e f d g f
e8 f a g b a g4
f8 c' cis d b c4 b8
e8 e, a c d b a d
g, g,\rest g4\rest g2\rest
R1*7
{ r8 c,4 d8~ d e16 f g8 f16 g
a8 g4 f8~ f e d4\parenthesize\trill
c8 } e4 f8~ f g16 a b8 a16 b
c d e8 b16 c d8 a16 b c8~ c b
c e16 f g4 fis8 g b,4
\stemNeutral  c8 g' gis a fis g d dis
e g a a, b4 c~
\stemDown c8 b a d g c f,4~
f8 e f fis g c, c'4~
c2. c8 b
c8. bes16 a g f8~ f e4 d8~
d c4 b8 a a'16 g fis4
g8. a16 b4 b,2\rest
b2\rest e,_\markup { "Pédalier" }
f b!4 c
fis,1
g
c,\fermata \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
 
  \layout {
    \context {
    \Staff
    \consists Merge_rests_engraver
  }
  }
  \midi {
    \tempo 4 = 100
  }
}
