\version "2.27.1"

\paper { 
	#(set-paper-size "a4")
}

\language "english"

cu = {\change Staff = "up" }
cd = {\change Staff = "down" }

\header {
  title = "Partita II"
  subtitle = "Pratique du clavier I"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 826"
  tagline = ##f
}

global =
 {
    \key ef \major
    \time 2/2
 }

TopVoice = \relative c''' {
\partial 4 s16 af g f
g d ef b c f ef d ef b c g af d c b |
c g af ef f ef' d c b8. \prall a16 g8 b |
c16 d ef8 f,16 ef' d c d ef f8 g,16 f' ef d |
ef16 f g8 af,16 g' f ef f g af8 b,16 af' g f |

<<
  {
    ef4~ ef8. c16 d4~ d8. b?16 |
    c4 r8 c16 b c4~ c16 c bf af |
    g c32 d ef16 c
  }
  \\ 
  {
    r16 b c g af ef f8 r16 g af f g d ef8~ |
    ef16 f32 g af16 f d f8.~ f16 f ef d ef8 f |
    ef4
  }
>>

g8( af) 
<<
  {
    bf4~ bf8 g'~ |
    g16 c,32 d ef16 c a f' c32 d ef16 d4~ d8 d |
    d c \prall r16 fs g a ef8 d \prall r16 g a bf |
    %% measure 10, top part
    f8 e \prall r16 a bf c g8 fs r16 ef d c
  }
  \\
  {
    r16 f, g d ef8 r |
    s2 r16 a bf8~ bf fs |
    g4 r a r |
    bf r c r |
  }
>>

d16 a bf fs g c bf a bf fs? g d ef a g fs |
g d ef b c f ef d ef c d fs a ef d c |
bf d g bf~ bf fs g bf, c ef g bf~ bf fs g c,
d fs g bf~ bf fs g d ef fs g bf~ bf fs g bf

e a, bf fs g bf a g fs d ef bf c ef d c |
<<
  {
    bf8 d' bf a16 g
  }
  \\
  {
    s8 <d g>8 <d g> <c fs>
  }
>>

<<
  { g4~ g16 } \\ { r16 d4 } \\ { s16 d16 b8. }
>>

ef'16 d c |
d a b g af f ef d ef( f32 g) c,8 r16 af'' g f |
g d e c df bf af g af( bf32 c) f,8 r16 c f g |
af e f c df c' bf af bf f g d e? d'^\markup { \flat } c bf

c g af e f ef'! d^\markup { \flat } c df a bf g g'4~ |
g16( c,) f( e) af( g f e) f( c) ef( df) bf'( af g f) |
e( f32 g) c,16 bf af f' g, e' f4~ f32 g f e f16 g |
af e f c af f ef' c d a bf d f af g f |
g d ef bf g ef d' b c g af c ef g f ef |

f c d af f d c' a b fs g b d f ef d |
ef b c af g( f) ef' d c b c d g,8 d' |
ef16 g c g ef d c b c ef g8~ g16 bf, af g |
af c f c af g f e f b d8~ d16 f, ef d |
c8 ef'( af, g) d f'( af, g) |

ef g'( af, g) f af'16( g af g fs g) |
	\once \override Script.padding = #1
fs4.~ 
	\prall fs16 e32 fs g16 d f ef d c b a |
g8 <g c ef g>\arpeggio 
	<<
	  { ef'8 d16 c }
	  \\
	  { <g c>8 <b f> }
	>>
<ef, g c>4 \bar ":|."
}

BottomVoice = \relative c {
\partial 4 r4
c8 c, \clef treble r16 af''' g f g d ef b c f ef d |
\clef bass ef16 b c g af8 f g g,~ g16 f' ef d |
ef bf c g af g' f ef f c d a b af' g f |
g16 d ef b c bf' af g af ef f c d8 b' |

%%%% Left Hand measure 5
c8 ef f, af b, d f, g |
af f g g' c, g' << { c8 d } \\ { c4 } >>
c8. g32 f ef f g16 c,32 d ef16 g,8. bf32 af g af bf16 ef,32 f g16 |
a,8 c f a bf8. f''32 ef d ef f16 bf,32 c d16 |
ef,16 g a bf c d ef c fs, a bf c d e fs d |

%%%% Left Hand measure 10
g, bf c d e fs g ef a, c d ef d c bf a |
bf c d a bf ef d c d a bf f_\markup { \sharp } g c bf a |
bf fs g d ef32 f g16 c,32 d ef16 fs,4 r8 d |
g bf'( ef, d) a c'( ef, d) |
bf d'( ef, d) c ef'( ef, d) |

%%%% Left Hand measure 15
<cs cs,>4 r8 cs d a fs d |
g16 a bf c d8 d, 
<<
  {
    r8 r16 d' g 
  }
  \\
  {
    g,4~ g16
  }
>>
\bar ":..:"

r8. |
g8 g' r16 af g f g d ef b c f, ef d |
c8 c' r16 df' c bf c g af e f bf, af g |
f g af8 bf,16 af' g f g af bf8 c,16 bf' af g |

af16 bf c8 df,16 c' bf af bf c df8 e,16 df' c bf |
af8 c f, af df f g, bf~ |
bf af16 bf c8 c, f16 c' f g af f af c |
f8 af, c f, bf f' d bf |
ef g, bf ef, af ef' c af |

d f, af d, g d' b g |
c ef, af f g g,~ g16 af' g f |
g d ef b c f ef d ef b c g af df c bf |
c g af e f bf af g af f g b d af g f |
ef( g c ef)~ ef b c ef, f( af c ef)~ ef b c f, |

g( b c ef)~ ef b c g af? b c ef~ ef b c ef |
a d, ef b c ef d c b g af? ef f af g f |
ef g c ef g8 g, <c c,>4 \bar ":|."
}

\score 
{
  \context PianoStaff
  <<
    \context Staff = "up"
    {
      \set Staff.midiInstrument = #"harpsichord"
      \global
      \TopVoice
    }
    \context Staff = "down"
    {
      \set Staff.midiInstrument = #"harpsichord"
      \global
      \clef bass
      \BottomVoice
    }
  >>
  \layout { }
  \header { piece = "2. Allemande" }
  
  \midi {
    \tempo 4 = 80
  }
}