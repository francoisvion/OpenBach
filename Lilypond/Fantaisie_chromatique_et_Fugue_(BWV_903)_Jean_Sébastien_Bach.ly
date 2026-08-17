\version "2.24.4"
\header {
    title = "Fantaisie chromatique et Fugue"
    opus = "BWV 903"
    composer = "Jean Sébastien Bach (1685-1750)"
    tagline = ##f
}
#(set-global-staff-size 18)
upper = \relative c'' {
    \override Score.RehearsalMark #'break-align-symbol = #'key-signature
    \override Score.RehearsalMark #'self-alignment-X = #left
    \clef treble
    \key d \minor
    \time 4/4
    \override Staff.TimeSignature #'style = #'default
    \once \override TextScript #'padding = #2
    \mark \markup { \hspace #0 \raise #1.5 \bold "Fantasia" }
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
r32 d,_( e f g a b cis d c bes a g f e d) cis^( d e f g a bes e) r4  |
r16 a,32^( b cis d e f g f e d cis b a64 g f e) d32^( e f a cis d f16) r4 |
<< { \times 2/3 { r16 d f } \times 2/3 { r d g } \times 2/3 { r d a' }
   \times 2/3 { r d, bes' } \times 2/3 { r cis, e } \times 2/3 { g bes g }
   \times 2/3 { e cis a } r8 }
\\ { d,8 e f g a16 r r8 r \times 2/3 { g16 f e } } >>                     |
<< { \times 2/3 { r16 f' d } \times 2/3 { r g d } \times 2/3 { r a' d, }
     \times 2/3 { r bes' d, } cis16 r r8 r8 \times 2/3 { bes16 cis e } }
   \\ { d,8 e f g \times 2/3 { r16 bes g } \times 2/3 { e cis a }
     \times 2/3 { cis e g } r8 } >>                                       |
<< { \times 2/3 { r16 e' f } bes8 \times 2/3 { r16 d, e }
     a8 \times 2/3 { r16 cis, d } g8 \times 2/3 { r16 b, cis } f8 }
   \\ { d8 \times 2/3 { r16 d g, } c8 \times 2/3 { r16 c f, }
	bes8 \times 2/3 { r16 bes e, } a8 \times 2/3 { r16 a d, } } >>
<< { \times 2/3 { r16 bes' ees } \times 2/3 { r a, d }
     \times 2/3 { r g, cis } \times 2/3 { r a d } \times 2/3 { r f, bes }
     \times 2/3 { r e, a } \times 2/3 { r f bes } \times 2/3 { r e, a } }
\\ { g8 f e f d cis d cis } >>                                            |
<< { \times 2/3 { r16 f bes } \times 2/3 { gis f d } \times 2/3 { r d f }
     \times 2/3 { gis b d, } \times 2/3 { r ees a } \times 2/3 { fis ees c }
     \times 2/3 { r c ees } \times 2/3 { fis a c, } } \\ { d8 r s2. } >>  |
\times 2/3 { r16 d g } \times 2/3 { f e d } \times 2/3 { r d b' }
    \times 2/3 { f e d } \times 2/3 { r cis e } \times 2/3 { f d gis, }
    \times 2/3 { r cis e } \times 2/3 { f d gis, }                        |
    \times 2/3 { r c f } \times 2/3 { dis c a } \times 2/3 { r a c }
    \times 2/3 { dis fis a, } \times 2/3 { r bes e } \times 2/3 { cis bes g }
    \times 2/3 { r g bes } \times 2/3 { cis e g, }                        |
s2 s8 \times 2/3 { cis16 e cis } s4                                 |
s1                                                                       |
s2 \times 2/3 { r16 cis e } \times 2/3 { r e g } \times 2/3 { r g bes }
   \times 2/3 { r bes cis }                                              |
\times 2/3 { r16 bes cis } \times 2/3 { g' f e } \times 2/3 { r cis e }
    \times 2/3 { bes' a g } \times 2/3 { r bes, cis } \times 2/3 { g' f e }
    \times 2/3 { r cis e } \times 2/3 { bes' a g }                       |
\times 2/3 { r a, cis } \times 2/3 { d e f } \times 2/3 { r cis d }
    \times 2/3 { f g a } \times 2/3 { f e d } \times 2/3 { cis bes a }
    \times 2/3 { g f e } r8                                              |
\times 2/3 { r16 g cis } \times 2/3 { e d cis } \times 2/3 { r e, g }
    \times 2/3 { bes a g } \times 2/3 { r g cis } \times 2/3 { e d cis }
    \times 2/3 { r e, g } \times 2/3 { bes a g }                    |
\times 2/3 { r cis, d } \times 2/3 { f g a } \times 2/3 { r f gis }
    \times 2/3 { a cis d } \times 2/3 { r a cis } \times 2/3 { d e f }
    \times 2/3 { r cis d } \times 2/3 { f gis a }                        |
\times 2/3 { b gis a } \times 2/3 { b d, e } \times 2/3 { f b, c }
    \times 2/3 { d gis, a } \times 2/3 { b d, e } \times 2/3 { f b,c d }
    \times 2/3 { gis, a b } \times 2/3 { cis d }                         |
\times 2/3 { cis e d } \times 2/3 { cis b a } \times 2/3 { g r r }
    r8 \times 2/3 { r16 f' e } \times 2/3 { d bes a }
    \times 2/3 { g r r } r8                                              |
\times 2/3 { r16 g' f } \times 2/3 { e s s } \times 2/3 { bes' a g }
    \times 2/3 { s s d' } \times 2/3 { cis b s } \times 2/3 { s f' e }
    \times 2/3 { d cis b } \times 2/3 { gis' f e }                       |
\times 2/3 { d cis e } \times 2/3 { a e cis } \times 2/3 { e cis a }
    \times 2/3 { cis a e } \times 2/3 { a e cis }
    \times 2/3 { e cis a } r8
  a''8\mordent           |
r32 e, f g a b cis d e f g a bes a g f e f g f e d cis d e d cis b a g bes a
g f e f g f e d cis d e d cis s32 s16 s2                                 |
s1                                                                       |
s4 g32 a b cis d e f g f g a e f cis d a s4                              |
s4 b32 f' e d gis f e b' a gis d' c b f' e d gis16^( a64 gis fis gis
   gis16.\trill  fis64 gis)                              |
\times 2/3 { a16 d a } \times 2/3 { f a f } \times 2/3 { d f d }
    \times 2/3 { a d a } \times 2/3 { f a f } \times 2/3 { d f d } s4    |
s8 \times 2/3 { s16 f a } \times 2/3 { d a f } s8
    <e g bes e>2_"arpeggio..."
                                                                   |
    <f a d f> <a c ees fis>
                                                                   |
    <g bes d g> <b d f gis>
                                                                   |
    << { a'16. a32 bes a g a a8.\prallprall g32 a bes2~
         \override Stem #'direction = #down bes32[ a g f] s8 } \\
       { <a, cis e>4 r <cis e g>2 | s8 e32 f g d } >>
cis32[ d e cis] g[ a bes f] e[ f g e] cis[ d e cis] s4                   |
s1                                                                       |
    <fis a c ees>2_"arpeggio..." << { d'4 c } \\ { <d, fis a>2 } >>
                                                                   |
    <dis fis a b>2 <dis fis a c>
                                                                   |
    <e g bes cis> <f gis b d>
                                                              |
    <e gis b d> <e a c>
                                                                   |
    <ees a c> <e bes' des>
                                                                   |
    <f a c ees> <e g bes cis>
                                                                   |
    <f a d> <d fis a c>
                                                                   |
    <ees g bes>2 << { <g bes~>2 <g bes> } \\ { ees4 d <cis e>2 } >>
    <cis e f a>
                                                         |
\barNumberCheck #42
    <d f a~>2 a'16 g f e f cis d a
                                                                   |
bes16[ gis a e] f s s8 s4 d'16 f a gis                                   |
a16 fis dis c b a s8
    << { <fis' a>2 } \\ { c4_"arpeggio..." b } >>
                                                                   |
    <a c e a>2 <b d e gis>
                                                              |
    <e gis b c>2 <c e a c>
                                                                   |
    <c e a c>2 <b dis fis b>4 <c dis fis a>
                                                                   |
    <a c e a>2 <b d e a>4 <b d e gis>
                                                                   |
    << { a'2~ a16 } \\ { d,4 cis s16 } \\ { e2 s16 } >> bes'16
a16 g fis32 g fis g \times 2/3 { g64 a g } fis64 g a fis d32             |
des8_( c) << { beses'8^( aes) } \\ { <c, ees>4 } >>
r16 ees f g aes32 bes c des c des ees64 des c des                   |
ees8 r << { bes8^( a) } \\ { <ees ges ees'>4 } >> r16 ees'^( ges f
   ees des c des32 bes)                                                  |
bes8^( a) << { a4~ a16 bes a bes
  bes8.\trill
   a32 bes } \\ { c,4~ c16 des c des   des8._\trill  c32 des }
   \\ { ees4 s2 } >>                                                     |
<< { c'8 r c4~ c16 des c des   des8.\trill  c32 des }
\\ { ees,8 r ees4~ ees16 f ees f   f8._\trill   ees32 f }
\\ { s4 <ges a> s2 } >>                                                  |
<< { ees'16^( c a bes) bes^( a) } \\ { ges4 r8 } >>
 <c, ees f a>8
r16 f a c
   \set subdivideBeams = ##t
   \set Score.beatLength = #(ly:make-moment 6 32)
   ees^( ges f
                ees32\prall  des32)] |
   \set subdivideBeams = ##f
   \set Score.beatLength = #(ly:make-moment 8 32)                        |
    des8 r <des, ges bes des~>4 des'16
    des16 ^( fes ees des32[ ces bes ces
      ces32\prall
    bes32 ces des)]                                                 |
    aes8_( g) <bes, des ees g>4
r16   g'_(  ees f) g_( aes32 g f16 aes32 g)   |
  aes8\mordent  r8
    <b, e gis~>4 gis'32
	b,_( cis dis e fis gis a) b16^( d cis e32 d)                     |
  d8\mordent  r32
   << { s16 b32 d16 cis8. } \\ { eis,16.~ eis4 } \\ { s16. s4 }
   \\ { s32 gis16~ gis4 } >> r8 b b_( a)                                 |
a8[_( gis)] gis32[ a b cis d b gis64 eis fis32]
    << { fis8^( eis) } \\ { d4 } >> r32 eis fis gis
    fis16.\trill
   eis32 |                                                               |
<< { s16 cis'32[ d] cis16[ b a gis32 b a16
    gis32\trill  fis32] }
   \\ { b8[ a16 gis] fis8[ eis] } >>
    \once \override Score.SeparationItem #'padding = #3
   <fis a dis>4\arpeggio r32 e'^(
   dis cis bis cis dis fis)                                |
a8[ a] s16 bis,64^([ dis fis a gis16 a32 fis])
   << { fis8^( e)~ \times 2/3 { e16 cis bis } \times 2/3 { cis gis fis } }
   \\ { <gis cis>4 s4 } >>                                               |
\times 2/3 { gis16 e dis } \times 2/3 { e cis bis } \times 2/3 { cis e dis }
    \times 2/3 { e a gis } \times 2/3 { a cis b } \times 2/3 { cis e d }
    \times 2/3 { e fis g }
     g16.\trill \times 2/3 { fis64 g a }                      |
<< { ees16^([ d8.])~ d8~[ d32 d c bes] a[ bes c ees c bes a g]
fis[ g a c a g fis e] } \\ { r4 <d fis a> s2 } >>                        |
d32[ e fis a g fis e d] c[ d ees fis ees d c bes]
   a[ bes c ees c bes a g] s4                                            |
s8 a32 bes c a bes c s8 c32 d ees c d ees s8
   e32[ fis g a fis g a] s32                                        |
s16. a32 bes[ c a bes c] s8 c32[ d ees] c[ d ees] s8
   e32[ fis g a fis g a] s16                                             |
s16 a32[ bes c bes a g] fis[e d c bes a g fis] e d c bes a g fis e d16 c''
   << {
    bes16\trill  c32 a } \\ { <d, fis>8 } >>                  |
 <d g bes~>4\arpeggio bes'32
   bes_( c d)
    d16.(\trill  c64 d)
   ees16-. a,32^( bes)
    bes16.(\trill  a64 bes)
   c16-. fis,32_( g)
    g16.(\trill  fis64 g)                                     |
<< { a8~ a16 a32^([ c bes16 a g a32 fis]) } \\ { r8 <ees fis> r4 } >>
    \once \override Score.SeparationItem #'padding = #2
   <e g>4\arpeggio
   r32 a^( b cis d64 e f g f32 g64 e)                                    |
<< { f16^( s32 e f32. g64 f e f g)
     g8.(_\trill  f32 g)
   a4~ a16[ bes32^( a g f e d)] } \\ { r16 d~ d8 d4 <a cis e> r } >>|
cis32^( b a b cis d e f g16e cis bes g e cis bes s4)                     |
r4
     << { ees'8\arpeggio^( d) } \\ { <fis, a c>4\arpeggio } >>
    s4   c32  d ees d c s32 s16              |
s4 fis16_([ a c ees]) fis^([ a c a] fis[ a32 fis d16 fis32 d])           |
c8[ b]
 << { b16. b32 } \\ { <d, g>8\arpeggio } >>
<< { cis'32 d e f <g, cis e g>8 <a d f a> } \\ { r8 cis, d } >>
 <a' d f>8\arpeggio  << \set tieWaitForNote = ##t
    {   e'16  d } \\ { cis8 }
    \\ { s8 } \\ { g8~ } >>                                              |
<< { <a d>4 r16 d^( g bes) } \\ { g,8 fis <d g>4 } >>
 << { d'8\arpeggio^( cis) } \\ { <e, g>4\arpeggio } >>
<< { r16 c'32^([ b c fis a16]) } \\ { <ees, fis>4 } >>              |
 \once \override Score.SeparationItem #'padding = #2
<d~ f~ c'>8\arpeggio^( <d f b>8)
<< { r16 bes'( cis32 e g16) } \\ { <cis, e>4 } >>
\once \override Score.SeparationItem #'padding = #2
<c,~ ees~ bes'>8\arpeggio^( <c ees a>8)
<< { r32 a'^([ d c d e f16]) } \\ { d,4 } >>                             |
 \once \override Score.SeparationItem #'padding = #2
<b~ d~ a'>8\arpeggio^( <b d gis)>8)
<< { r16   g'32^([  a bes cis d e]) }
   \\ { <bes, cis>4 } >>
 \once \override Score.SeparationItem #'padding = #2
<a~ c~ g'>8\arpeggio^( <a c fis>8)
<< { r16 d'32^([ b gis a b16]) } \\ { <gis, b>4 } >>                     |
  << { f'16\arpeggio^( d16) e8\mordent }
   \\ { <g, bes>4\arpeggio } >>
<< { r32 ees''^([ c a fis a ees16]) } \\ { a,4 } >>
 \once \override Score.SeparationItem #'padding = #2
<gis~ ees'>8\arpeggio^( <gis d'>8)
<< { r32 d'64^( e fis g a bes a g f32 e f64 g) } \\ { g,4 } >>           |
 \once \override Score.SeparationItem #'padding = #2
d'8\arpeggio^( cis) cis8.\trill(  b32 cis])
 \once \override Score.SeparationItem #'padding = #2
<a d>2\arpeggio\fermata  \bar "|."
}
lower = \relative c {
    \clef bass
    \key d \minor
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
s1 s s s s s
s4 b'8 r c r a r                                                     |
bes r gis r a r a r                                                       |
a r fis r g r e r                                                         |
<< { \times 2/3 { r16 a d } \times 2/3 { b gis r } \times 2/3 { r g c }
     \times 2/3 { a fis r } \times 2/3 { r g bes }
     s8 \times 2/3 { bes16 g r } r8 }
   \\ { fis8 \times 2/3 { r16 r f } e8 \times 2/3 { r16 r ees }
        d8 r \times 2/3 { r16 r f } \times 2/3 { ees d cis } } >>                   |
<< { \times 2/3 { r16 f bes } \times 2/3 { gis f r } \times 2/3 { r e a }
     \times 2/3 { fis ees r } \times 2/3 { r d g } \times 2/3 { e cis r }
     \times 2/3 { r d f } \times 2/3 { d b r } }
   \\ { d8 \times 2/3 { r16 r d } cis8 \times 2/3 { r16 r c }
	b8 \times 2/3 { r16 r bes } a8 \times 2/3 { r16 r aes } } >>      |
<< { \times 2/3 { r16 c ees } \times 2/3 { r16 ees g }
     \times 2/3 { r16 g c } \times 2/3 { r16 c ees } s2 }
   \\ { g,,8 c ees g bes cis e g } >>                                     |
a,8 r g' r a, r g' r                                                      |
f r a r r4 r8 \times 2/3 { d,16 cis bes }                                 |
a8 r cis r a r cis r                                                 |
a r d r f r a r                                                           |
s1                                                                        |
r4 \times 2/3 { r16 f, e } \times 2/3 { d cis e } \times 2/3 { a, r r } r8
   \times 2/3 { r16 f' e } \times 2/3 { d cis e }                                        |
\times 2/3 { a,16 s s } \times 2/3 { s d' cis } r8
   \times 2/3 { f16 e s } \times 2/3 { s s a } \times 2/3 { g s s } s4                                  |
s2 s4 \times 2/3 { e,16 cis a } r8                                   |
s1                                                                        |
s4 s8 s32 b'32 a g bes a g f e f g f e d cis d e d cis b                  |
a b cis d e f g f e g f e d cis b a b cis d e f g a bes a g f a g f e d   |
cis d e f g a bes a s4 s f32 g a f d f e d                                |
gis fis e b' a gis d' c s4 s2                                        |
s2 s4 \times 2/3 { a16 d a f a f }                                        |
\times 2/3 { d16 f a } d16 s s8 \times 2/3 { d16 a f }
 <d e g cis>2                                                  |
 <d f a d>2 <d fis a c>                                        |
 <d g bes d>2 <d f gis b>                                      |
 <cis e a>2 <g cis e>                                     |
s2 s4   g'32  a bes g e f g e                                                |
cis d e cis a b cis d e f g e cis d e f g a bes g e f g e
   cis d e cis a b cis a                                                  |
 <fis a c ees>2 <fis' a>2                                      |
 <dis fis a b>2 <dis fis a c>                                  |
 <g bes cis>2 <gis b d>                                   |
 <c,e gis b>2 <c e a>                                          |
 <fis a c>2 <g bes des>                                        |
 <f a c>2 <f g bes cis>                                        |
 <f a d>2 <fis a c>                                            |
\barNumberCheck #40
 <g bes>2 <g, bes ees g>                                  |
 <a cis e g>2 <a cis e f>                                      |
\barNumberCheck #42
 <bes d f>2 r                                                  |
s4 s16 cis d a bes d f a s4                                               |
s4 s8 fis16 e
 <dis fis a>2                                                  |
 <e, a c e>2 <e b' e>                                     |
 <e' g b c>2 << { <e a>2 } \\ { c4 a } >>                      |
 <f a c f>2 <fis a b dis>4 <fis a c dis>                       |
 <e a c e>2 <e b' e>4 <e b' e>                                 |
 <a e' a>2  r2                                                 |
r4 <  ges aes c ees>4 r2                                               |
r4 <c ees ges c>4 r2                                                      |
r4 <ges' a> r2                                                            |
r4 <a, c ees ges> r2                                                      |
r4 r8
 <f a c f>8
r2                                                                        |
r4
 <fes ges bes des>4  r2                                   |
r4
 <ees bes' ees>4  r2                                           |
r4
 <d b' e>4  r2                                                 |
r32 << { s16   gis'32~  gis4. }
    \\ { cis,16.~ cis4. } \\ { s16. cis'4. }
    \\ { s32 eis,16~ eis4. } >> r8 d' d^( cis)                            |
cis8^( b) b cis16 e <b, gis'>4 r                                          |
<< { gis'8 a16 b cis8 b } \\ { eis,8 fis cis4 } >>
   <bis dis fis a>4\arpeggio   r4                         |
r4
 <gis bis dis gis>4\arpeggio <cis  e gis cis>4 r               |
r1                                                                        |
r4 <c d fis a> r2                                                         |
r2 r4 fis32[ g a c a g fis e]                                             |
d e fis g s8 s16 fis32[ g a bes] s16 s8 a32 bes c d s8 s16 s32 d     |
\clef treble
e[ fis g] s8 s16 fis32[ g a bes] s8 s16 a32[ bes c d] s8 s16 s32 d e      |
fis g \clef bass s16 s8 s2 r8 <d,, fis a>                                 |
 <g, bes d g>4\arpeggio  r4 r2                                 |
r8 <   c  ees fis a> r4
 <cis e g bes>4\arpeggio  r4                                   |
<< { <f a>4 g a } \\ { d,8 c bes4 a }
   \\ { s4 d16 e cis d <cis e>4 } >> r4                              |
s2 s4 a'16 e cis e                                                        |
fis,8 r
     <fis' a c>4\arpeggio
    r16   d32_(
    e fis g a bes s8 s32 bes a g)                                         |
fis16^( a c ees) s4 s2                                                    |
r4
    <f,, b d g>8\arpeggio
r8 << { g'8 f16 g a4~ a32 } \\ { e8 d s a s32 } >>
d32~ << { fis a  c ees d c } \\ { d,8. } >>  bes'4
 <d, g bes>4\arpeggio
<< { <a' c> } \\ { r4 } >>                                           |
 <d, f gis b>4\arpeggio
<< { <g bes>4 } \\ { r4 } >>
 <fis a>4\arpeggio
<< { <f a>4 } \\ { r4 } >>                                                |
 <d f gis>4\arpeggio
<< { <e g>4 } \\ { r4 } >>
 <d, ees>4\arpeggio
<< { <d' f>4 } \\ { r4 } >>                                               |
 <d, cis' e>4\arpeggio
<< {   <c'  ees fis>4 } \\ { r4 } >>
 <d, b' d f>4\arpeggio
<< {   <bes'  d>4 } \\ { r4 } >>              |
 <d, bes' e g>2\arpeggio <d a' d fis>2\arpeggio\fermata        |
}
\score {
    \unfoldRepeats
    <<
      \tempo 4=60
      \new Staff = "Upper" { \set Staff.midiInstrument = "honky-tonk" \upper }
      \new Staff = "Lower" \lower
    >>
    \midi {  }
}
\score {
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Hpsi"
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "Upper" \upper
      \new Staff = "Lower" \lower
    >>
    \layout {  }
}
