\version "2.27.1"

\paper { 
	#(set-paper-size "a4")
}

\include "english.ly"

cu = {\change Staff = "up" }
cd = {\change Staff = "down" }

\header {
  title = "Partita II"
  subtitle = "Pratique du clavier - partie I"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 826"
  tagline = ##f
}

TopVoice =  \relative ef'' {
ef4 r16 ef16 d16. ef32 f4 r16 f f16. g32 |
af8. af16 af g32 f g16. d32 ef4 r16 g16 g16. af32 |

% T meas. 3
bf4 r16 bf, bf16. c32 df8. df16 
	df16 c32 bf c16. g32 | \stemDown af4 \stemUp
r16 f' g16. af32 d,4 r16 d g16. ef32 |
c4~ c32 ef df c df16. f32 b,16. c32 b16. c32 d4~ |

% T meas. 6
d2~ d16. g,32 a16. b32 c16. <b g>32 <c a>16. <d b>32 |
<ef c>8. <ef c>16 
}

MiddleVoice = \relative g' {
<g c>4 r16 c b16. c32 d4 r16 d d16. ef32 |
f8. f16 f8 r <c g>4 r16 ef ef16. f32 |

%%%% M meas. 3
<< { g4 } \\ { c,4 } >> r16 g g16. af32 bf8. bf16 <bf e>4 |
\stemUp <c f>4 \stemDown r4 r16 f, f16. g32 g4 |
r16 ef ef16. f32 f4 g16. a32 g16. a32 b4~ |

%%%% M meas. 6
b8. d,16 f8. af16 g16. f32 ef16. d32 ef16. d32 ef16. f32 |
g4
}

RHtoEnd = \relative c' {

\stemNeutral
<<
  { \stemUp <fs' c a>4 <g d b>2 }
\\
  { \stemDown ef!16[ d32 c d16. a32] }
>>
\stemNeutral
\fine

g16 c32 d ef8~ ef16 d32 c ef d c b c16 g af f g c g f |
ef c'32 d ef d c16 g' c, af' c, b c d b \stemUp g r r8 |
g'32 f ef d c16 \tieUp bf~ bf \tieNeutral df8 c16 af'32 g f e f8~ f32 g af g f ef d ef |

f ef d c bf16 af~ af c8 bf16 g'32 f ef d ef8~ ef32 f g f ef d c b |
\stemNeutral c bf af g f16 ef'~ ef d32 c ef d c b c d ef f g16 c,~ c b32 c d c b c |
af' g f e f16 df~ df c32 df ef df c df g f ef d ef16 c~ c b32 c d c b c |

f c b a b16 d f32 bf, af g af16 c f32 af, g f g8~ g32 f' g af g16 f |
g16 b,8 c16~ c bf32 af g f ef d ef g f ef f ef d ef d8 c |
r g'~ g32 af g f g16 af bf d ef8~ ef32 bf ef f g16 ef |

df16 c f8~ f32 c f g af16 f ef c d8~ d32 f g af bf af g af |
bf af g16~ g32 f e16~ e32 d c16~ c32 g' af bf af g f16~ f32 ef df16~ df32 c bf16~ bf32 f' g af |
g f e f bf f e f af f e f g f e f f4~ f32 ef d ef f d ef f |
bf, d f g af8~ af32 g f af g f ef d ef bf ef f g8~ g32 f ef g f ef d c |
bf'( a g fs) ef!16 d~ d32 g af c cs,16 d~ d32 fs g a cs, ef d cs fs d e fs g a bf c |

bf a g fs~ fs16 g~ g d8 ef16~ ef b8 c16~ c32 bf af g af16 c |
fs,32 ef' d c bf'16 a g8(  \once \override Script.padding = #1.5  % to raise the trill sign.
	fs16.) \prall g32 g4~ g32 f g af g f ef d  |
f ef d c g'8~ g32 ef f g f ef d c ef d c bf g'8~ g32 d ef f ef d c bf |

d32 c bf af g'8~ g32 c, d ef d c bf af c bf a g g'8~ g32 bf, c d c bf a g |
af!4~ af32 af g af bf af g af ef'4~ ef32 c b c d c b c |
fs16 ef!8 d16 g d8 c16 a' c,8 bf16~ bf32 d c bf g' bf, a g' |

\once \override Script.extra-offset = #'(0 . 1) % This is to move the fermata up.
bf8~ \fermata bf32 a g fs g bf a g fs e d c bf d c e d g fs e d c bf d c bf g |
r16 e''32 fs fs32. \prall e64 fs32 g bf,32 a g fs 
<< { g16 bf16~ bf
     c32 bf a bf c a fs8. g16 }
  \\  
    { g8~ g4 d4 }
>>

<g d b>8 g16 a b8 c d ef |
f16 ef d ef f8 g af d, |
f b, d g, g'16 f ef d |
ef8 c'4 bf16 af g f ef d |
c4~ c16 d e f g af bf g |

e8 df'~ df16 g, af bf af g f e |
f g af8~ af16 g f ef d c d f |
ef f g8~ g16 f ef d c b c ef |
d af' d, c d ef f g f ef d c |
b g' f ef d f d c b d b a |

g' a b c d c b c d ef f d |
b c d ef f af g f ef d c b |
c d ef c a8 c f, ef' |
bf16 c d bf g8 bf ef, d' |
a16 bf c a fs8 a d, c'|

g16 a bf g ef g d g cs, bf' a g |
fs e d e fs8 g a bf |
c16 bf a bf c8 d ef a, 
c fs, a d, d'16 c bf a |
bf a g a bf8 c d ef

f16 ef d c bf f' c bf af f' bf, af |
g f ef f g8 a b c |
d16 c b a g d' a g f d' g, f |
ef c' g f ef f g af g c g f |
ef c' g f ef f g af g c g f |

e bf' g f e f g af g bf g f |
e bf' g f e g bf df c bf af g |
af f' c bf af bf c df c f c bf |
af f' c bf af bf c df c f c bf |
a ef' c bf a bf c df c ef c bf

a ef' c bf a c ef gf f ef df c |
df'8 bf c df ef df |
c af bf c df c |
bf8 af bf g af bf |
e,16 d c d e8 f g af |

bf16 af g af bf8 c df g, |
bf e, g c, c'16 bf af g 
af g f8~ f16 af g f ef d c bf
g' f ef8~ ef16 g f ef d c b c |
f ef d8~ d16 f ef d c b a g |

ef'16 f g8~ g f16 ef d af'^\markup { \natural } b c |
d c b c d g f ef d c b a |
g4~ g16 a b c d ef f d 
b8 af'~ af16 d, ef f ef d c b |
c4~ c16 g' df c bf ef bf af |

g16 af bf c df8 bf g'4~ |
g'8 c,16 bf af f' bf, af g df' g, f |
e f g af bf8 g e'8. \prall d32 e |
f8 f,16 g af8 bf c d |
ef16 d c d ef8 f g af

b,16 g' d c b c d ef d g d c
b g' d c b c d ef d g d c |
b g' d c b c d ef d f d c |
b f' d c b d f af g f ef d
ef f g ef c g' f ef d c bf af |

g af bf8~ bf16 c bf af g f e d |
c g' c, bf c d e f e g c, bf
c g' f e f c f g af bf c d |
ef d c d ef8 f16 g af8 df, |
f b, d g, g'16 f ef d |

<< { ef8. c16 c4( b8.) \prall c16 | c2 \fermata \bar "|." }
  \\
    { r8. <a ef>16 <d, g>2 | <g ef>2 }
>>

}

BottomVoice = \relative c' {
<c g ef c>4 r <c, d f af b> r r <b' f d c> <c, ef g c> r |

<c' g e c> r r <c, g' c> |
<c' af f c> r r16 <c, d af'> <c d af'>16. <bf d g>32 <bf d g>4 |
r16 <bf c g'> <bf c g'>16. <af c f>32 \tieUp <af c f>4~ <g d' f> r16 <d' f> <d f>16. <ef g>32 |
\context Staff <<
  \new Voice { \voiceOne af8. af16~ af g32 f g16 <d b> }
  \new Voice { \voiceTwo f8. f16 <g, b>4 }
  >>
\oneVoice
<g c ef>4 r |
r <g c ef a> <g d' g>2 |

c8_\markup { \huge { Andante } } c' f, g ef c ef g |
c af ef f g g, r16 \stemDown \cu f'' ef d |
ef8 g e c f af f c |

d f d bf ef g ef c |
\cd \stemNeutral af c f af, g c ef g, |
f af g f ef g f ef |

d f af c, b d g d |
ef af, f g c,4~ c16 d32 ef f g a b |
c8 c' bf af g bf g ef |

af c af f bf af g f 
e g c e, f af f df
bf g c c, f16 g32 af bf c d e f8 ef |
d f d bf g' bf ef, g 
a, fs' g g, d' a' c d, |

g a bf b c d ef c
a g d' d, g a b g
c ef c a bf d bf g

a c a fs g bf g ef
c16 d32 ef f g af bf c16 c, c'8~ c32 c, d ef f g af bf c16 c, c'8~ |
c8 c, bf bf' fs d g ef

\once \override Script.extra-offset = #'(0 . 1) % This is to move the fermata up.
<cs e g>4\fermata r
<<
    { <g' bf d>2 | cs4~ cs8. cs16 d8 c16 bf << { a16 bf c8 } \\ { a4 } >> }
  \\
    { d,2~ | d1 }
  >>

\time 3/4

<g g,>8 r r4 r |
r2. r 
\clef treble
r8 c16 d ef8 f g af |
bf16 af g af bf8 c df g, |

bf e, g c, c'16 bf af g |
af8 f g af bf af |
g ef f g af g |
f ef f d ef f |
g g,16 a b8 c d ef |

f16 ef d ef f8 g af d, |
f b, d g, g'16 f ef d |
ef d c8~ c16 ef d c \clef bass bf a g f |
d' c bf8~ bf16 d c bf a g fs g |
c bf a8~ a16 c bf a g fs e d |

bf'8 d g, bf e, cs' |
d d,~ d c16 bf a g fs e |
d4~ d16 e fs g a bf c a |
fs8 ef'~ ef16 a, bf c bf a g fs |
g4 r16 g' af bf af g f ef |

d8 f d bf c d
ef ef, r16 ef' f g f ef d c
b8 d b g a b |
c c, r16 d'' ef f ef8 d |
c c, r16 af' bf c bf8 af |

g c, r16 d' e f e8 d |
c c, r16 d e f e8 c |
f f, \clef "G" r16 g'' af bf af8 g |
f f, r16 df' ef f ef8 df |
c f, r16 g' a bf a8 g |

f f, \clef bass r16 g a bf a8 f |
bf16 c df8~ df16 c bf af g f g bf |
af bf c8~ c16 bf af g f e f af |
g16 df' g, f g af bf c bf af g f |
c'8 bf16 af g c bf af g f e d |

c4~ c16 d e f g af bf g |
e8 df'~ df16 g, af bf af g f e |
f g af f d8 f bf, af' |
ef16 f g ef c8 ef af, gf' |
d16 ef f d b8 d g, f' |

c16 d ef c af c g c fs, ef' d c |
b a g a b8 c d ef |
f16 ef d ef f8 g af d, |
f b, d g, g'16 f ef d |
ef d c d ef8 f g af |

bf16 af g f ef bf' f ef df bf' ef, df
c bf af bf c8 d e f
g16 f e d c g' d c bf g' c, bf
af f' af, g f c' df g, a ef' f b, |
c16 f ef d c g' af d, ef b' c f, 

g8 g, \clef treble r16 a'' b c b8 a |
g8 g, r16 ef' f g f8 ef 
d8 g, \clef bass r16 a b c b8 a |
g8 g, \clef treble r8 g''16 f ef d c b |
c8 \clef bass c,16[ d] ef8 f g af

bf16 af g af bf8 c df g, |
bf e, g c, c'16 bf af g |
af4~ af16 bf af g f g af f |
g f ef d c bf af g f f' e f |
af f e f b, f' ef d ef g c, ef
fs,8. fs'16 g4 g, c,2_\fermata

}

\score {
  \context PianoStaff <<
    \context Staff = "up" {
     \set Staff.midiInstrument = #"harpsichord"
      {
      \key ef \major
      \time 4/4
      \tempo "Grave Adagio"
      \context Staff
        <<
          \new Voice { \voiceOne \TopVoice }
          \new Voice { \voiceTwo \MiddleVoice }
        >>
	\oneVoice
	\RHtoEnd
      }
    }
    \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
      \key ef \major
      \time 4/4
      \clef bass
        \BottomVoice
    }
  >>
  \layout { }
  \header { piece = \markup {\larger "1. Sinfonie"}}
  
  \midi {
    \tempo 4 = 107
    }
}