\version "2.24.4"

\paper {
  page-top-space = #0.0
  line-width = 18.0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

#(set-global-staff-size 17)

\header  {
        title = "9 Little Preludes"
        subtitle = "No. 1"
        piece = "Prelude in C Major"
        composer = "Jean Sébastien Bach (1685-1750)"
        opus = "BWV 924"
  tagline = ##f
}

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag


%%
%% Treble Voice
%%

treble = \relative c'  {
    \override Script #'padding = #1.0
    %1-4
    \stemDown r16 g'16[ c16 e16] r16 g,16[ c16 e16] r16 g,16[ c16 d16] r16 b16[ d16 g16]
    r16 a,16[ d16 g16] r16 a,16[ d16 f16] r16 a,16[ d16 e16] r16 c16[ e16 a16]
    r16 b,16[ e16 a16] r16 b,16[ e16 g16] r16 c,16[ e16 f16] r16 g,16[ d'16 f16]
    r16 g,16[ d'16 e16] r16 g,16[ c16 e16] r16 a,16[ c16 d16] r16 \stemUp e,16[ b'16 d16]

    %5-8
    r16 e,16[ b'16 c16] r16 e,16[ a16 c16] r16 f,16[ a16 bes16] r16 c,16[ g'16 bes16]
    r16 c,16[ g'16 a16] r16 c,16[ f16 a16] r16 d,16[ f16 b!16] r16 e,16[ g16 c16]
    r16 d,16[ g16 c16] r16 d,16[ g16 b16] r16 c,16[ g'16 b16] r16 c,16[ fis16 a16]
    r16 b,16[ d16 a'16] r16 b,16[ d16 g16] r16 a,16[ c16 g'16] r16 a,16[ c16 f!16]

    %9-12
    \stemUp <f d b>4\arpeggio r4 s2
    s4 f16[ g16 b16 d16] b16 \stemDown g16[ b16 d16] \stemUp f16 g16 b16 f16]  
    \stemDown e16 c'16 g16 f16 e16 c'16 g16 e16 d16 c'16 f,16 e16 d16 b'16 f16 d16
    c16 b'16 e,16 d16 c16 a'16 e16 c16 b16 a'16 d,16 c16 b16 g'16 d16 b16

    %13-16
    a16 g'16 c,16 b16 a16 fis'16 c16 a16 b16 f'!16 d16 c16 b16 f'16 d16 b16
    g16 e'16 c16 b16 a16 e'16 c16 a16 fis16 d'16 b16 a16 g16 d'16 b16 g16
    \stemUp e16 c'16 a16 g16 fis16 c'16 a16 fis16  d16 c'16 b16\prall a16 b16 g16 d'16 f,!16
    g16 e16 f16 d'16 c16 b16 a16 g16 \stemDown f'16 d16 ees16 c16 fis,16 ees'16 d16 c16 

    %17-18
    b16 d16 b16 g16 \stemUp aes16 f!16 g16 d16 ees16 fis16 a!16 c16 f16\rest c8[ b16] 
    <c g e! c>1^\fermata    
}

%%
%% 
%%
trebleTwo = \relative c' {
    s1*8
    s4 e4\rest s2
    s1*7
    s2. \stemDown d8[ f!8]
}
%%
%% Bass Voice
%%

bass = \relative c  {
    \override Script #'padding = #1.0
    %1-4
    \stemUp c4 \stemDown e4 g4^\mordent \stemUp g,4
    \stemDown d'4^\mordent  f4 a4^\mordent \stemUp a,4
    \stemDown e'4 e'4^\mordent a,4 b4^\upmordent
    c4 e,4 fis4 gis4^\downmordent

    %5-8
    a4 \stemUp c,4 \stemDown d4 e4^\upmordent
    f4 e4  d4\prall c4
    \stemDown g'4\mordent \stemUp g,4 \stemDown g'4\mordent \stemUp g,4 
    \stemDown g'4\mordent \stemUp g,4 \stemDown g'4\mordent \stemUp g,4

    %9-12
    \stemDown g'4\mordent d4\rest d16\rest g,16[ b16 d16] \stemUp f16[ g16 b16 d16]
    b16 \stemDown g16[ b16 d16] s2.
    <g, g,>1~
    <g g,>1~

    %13-16
    <g g,>1~
    <g g,>1~
    <g g,>1~
    <g g,>1~

    %17-18
    <g g,>1~
    c,1_\fermata
}

%%
%% Layout
%%

\score  {
    \context PianoStaff <<
        \override PianoStaff.VerticalAlignment #'forced-distance = #11.3
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key c \major \time 4/4 << \treble \\ \trebleTwo >> \bar "|." }
        \context Staff = "lower"  { \clef bass \key c \major \time 4/4 \bass }
    >>

    \midi  { 
        
    }
 
    \layout  { 
        \context  { 
            \PianoStaff
        }
    }
}
