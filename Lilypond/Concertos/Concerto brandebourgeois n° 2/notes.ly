\include "english.ly"
\version "2.24.0"
piano = \markup{\italic piano}
pianoparen = \markup{\italic (piano)}
forte = \markup{\italic forte}
forteparen = \markup{\italic (forte)}
pianissimo = \markup{\italic pianissimo}
pianissimoparen = \markup{\italic (pianissimo)}
tasto = \markup{\italic \line{Tasto solo}}
\header {
  title = \markup \center-column { "Brandenburg Concerto No. 2" }
  composer = \markup { "Johann Sebastian Bach" }
  mutopiatitle = "Brandenburg Concerto No. 2"
  subtitle = \markup{ \center-column { "BWV 1047"} }
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1047"
  mutopiainstrument = "Trumpet, Flute, Oboe, Violin, Violone, Viola, Violincello"
  date = "1717-1723?"
  source = "Rust, 1871. Bach Gesellschaft Volume 19"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Andy Vaught"
  maintainerEmail = "andy.vaught@gmail.com"
 footer = "Mutopia-2009/06/13-1680"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url "http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
Amovement = \markup{\bold\large "I - Allegro"}
Atromba = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key c \major
  \transposition f
  \set Staff.midiInstrument = "Trumpet"
  \set Staff.instrumentName = \markup{ \bold Tromba. }
  \partial 8*1 c8
  e g e c  e g c g
  e g e c  e[ g]   c16 d e f
  g8 g g g g2 \trill ~
  g2. r8 c,8
  c g g e  e c c c'
  c g g e  e[ c] c g'16 g
  g4 r8 g16 g  g4 r8 g16 g
  g8[ c16 g] e c g'8 e4 r4
  r1
  r2 r4 r8 c
  e g e c  e g c g
  e g e c  e g c r
  r1
  r2 r4 r8 g
  g'16[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
  g[ a b a]  g[ a b a]  g8 g, r4
  r1
  r2 r4 r8 g
  g'16[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
  g[ a b a]  g[ a b a]  g8 g, r d'
  e16[ fs e fs]  fs8. \trill e32 fs32 g16[ fs g a]  g[ fs e d]
  e[ d e g]  fs[ e d c]  d8 g, r d'16 d
  d4 r8 d16 d d4 r8 d16 d
  d4 r8 d16 d d4 r8 d8
  d8[ g16 fs]  g8 d  d[ b'16 a16] b8 d,8
  d8[ g16 fs] g8 d8 d[ b'16 a] b8 r8
  r d,16[ e]  d8 g fs[ d16 e] d8 g
  g, r8 r4 r4 r8 g'8
  a16[ b a b]  b8. \trill a32 b
  c8[ c,16 d]  e[ f g e]  a[ f d f]  g,[ d' g f]  e[ f g e]  c8 e
  e1 \trill ~
  e2 r8 e a e
  f2 ~ f8 d g d
  e2 ~ e8 c f c
  d2 \trill ~ d8 c16 d e8[ d]
  c[ a'16 gs]  a8 e  e[ c'16 b] c8 e,
  e[ a16 gs]  a8 e  e[ c'16 b] c8 r
  r e,,16[ e] e8 r8 r8 e16[ e] e8 r
  r e16[ e] e8 e8 c4 r8 e'8
  e[ c16 d] e8[ c16 d] e8 a e a
  e[ c16 d] e8[ c16 d] e8 a e[ a16 g]
  fs[ e d e]  fs[ e d e]  fs[ g fs e]  d[ e d e]
  fs[ e d e]  fs[ e d e]  fs[ g fs e]  d8 r8
  r1
  r2 r4 r8 g,
  c g e g  c, g' e g
  c g e g  c,4 r8 g'16 g
  g4 r8 g16 g g4 r8 g16 g
  g4 r8 g16 g g4 r4
  r8 c, e g  c g e c
  e'8(^\piano e e e) e( e e e)
  a( a a a) a( a a a)
  a16[ b c b]  a[ b a g]  fs[ g a g]  fs[ g a b]
  e,8 r8 r4 r2
  g,8 bf16^\forte bf  g8[ e'16 d]  c8[ g'16 f]  e[ d c bf!]
  c8[ f16 e]  f8 c  c[ a'16 g] a8 c,
  c[ f16 e]  f8 c  c[ a'16 g a8] c,16 c
  c4 r8 c,16 c c4 r8 c'16 c
  f[ g f g] g8. f16 f4 r4
  r1
  r1
  r1
  r1
  r1
  r2 r4 r8 d
  e16[ fs e fs]  fs8. \trill e32 fs  g16[ fs g a]  g[ a bf g]
  a[ bf a g]  fs[ e d c]  bf[ c d bf g8] g
  bf d bf g  bf d g d
  bf d bf g  bf d g r
  r8 d16[ d] d8 r8 r d16[ d] d8 r
  r d16[ d] d8 r r d16[ d] d8 r
  r8 f8(^\piano f f) f( f f f)
  e c,[_\forte e g] c[ g e c]
  e'(_\piano e e e) e( e e e)
  f[ _\forte d16 e]  f8[ d16 e] f8 a f a
  f[ d16 e]  f8[ d16 e] f8 a[ d a]
  bf4 r4 r8 g c g
  a4 r4 r8 f bf f
  g4 r4 r8 e a g
  f d f a  d a f a
  f d f a  d a f d
  r1
  r2 r4 r8 d16 e
  f[ e d e]  f[ e d e]  f[ g f e]  d[ e d e]
  f[ e d e]  f[ e d e]  f[ g f e]  d8 r8
  r8 e,( e e ) e ( e e e)
  e( e e e e4) r4
  r4 r8 e' e[ c16 d]  e8[ c16 d]
  e8 a e a  e[ c16 d] e8 a
  f a f a  g d g d
  e g e g  fs16[ g fs g]  a[ g fs e]
  a8( _\pianoparen a a) fs  g( g g) e
  fs16[ e fs g]  a[ g fs a]  g[ a b g] e8 r
  r4 r8 g ^\forteparen g[ e16 fs]  g8[ e16 fs]
  g8 b g b  g[ d16 fs]  d8 e
  e g e g   d fs d fs
  d fs d fs  c e c e
  c e c a'  fs r8 r e
  e r8 r4 r r8 e
  e r8 r4 r2
  r1
  r2 r4 r8 c
  g[ e16 c]  g'8[ e16 c]  g'8 c g c
  g[ e16 c]  g'8[ e16 c]  g'8[ c g] g16 g
  g4 r8 g16 g g4 r8 g16 g
  g4 r8 g16 g g4 r4
  c8( _\piano c c c)  c( c c c)
  d( d d d)  d( d d d)
  d_\forte g, d' d  g d d g,
  e(_\piano e e e)  e( e e e)
  e( e e e)  e( e e e)
  c( c c c)  c( c c c)
  g'[_\forteparen d'16 c]  d8 g,  g[ g'16 f]  g8 g,
  g[ d'16 c]  d8 g, g[ g'16 f]  g8[ c,16 d]
  c8 g g e  e c c c'
  c g g e  e c c g'16[ g]
  g8 r r g16 g g8 r r g16 g
  g8[ c16 g]  e[ c g'8] e4. \fermata
  \bar "|."
\pageBreak
}}
ucirc = $(ly:wide-char->utf-8 #x00FB)
agrave = $(ly:wide-char->utf-8 #x00E0)
Aflute = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Flute"
  \set Staff.instrumentName =
     \markup{\bold\center-column { Flauto.
     \line{(Fl{\hspace #-1.2 \ucirc \hspace #-1.2 }te \agrave bec.)} } }
  \partial 8*1 f'8
  c[ a16 bf] c8[ a16 bf] c8 f c f
  c[ a16 bf] c8[ a16 bf] c8[ f c] f
  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-!]
  bf16[( a) g( f)] c8 e \trill f[ e16 d] c[ bf a g]
  f8 r r4 r2
  r2 r4 r8 f'
  c[ a16 bf] c8[ a16 bf] c8[ f c f]
  c[ a16 bf] c8[ a16 bf] c8[ f c] r
  r1
  r2 r4 r8 a'
  g[ e16 f] g8[ e16 f] g8 c g c
  g[ e16 f] g8[ e16 f] g8[ c g] g
  a16[ b a b]  b8.[ \trill a32 b] c8[ c,16 d] e[ f g e]
  a[ f d f]  b,[ d g f]  e[ f g e c8] c'
  g[ e16 f] g8[ e16 f] g8[ c g c]
  g[ e16 f] g8[ e16 f] g8 c g16[ c e, c']
  f,[ c' f, c']  f,[ d' f, d'] g,[ e' g, e'] g,[ c g c]
  f,[ c' f, c']  f,[ b f b]  c[ g d g]  c,[ d e c]
  d[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
  d[ c d e]  f[ e f e]  d[ c b a g8]  c'
  c-.  g-. g-. e-.  e c c c'
  c g g e  e c c g'
  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-!]
  f16[( e d c)] g8 b c4 r8 f
  f r g r  a r r f
  f r e r f r r d16 e
  f[ g a g]  f[ g a g]  f[ g f e]  d[ cs d e]
  f[ g a g]  f[ g a g]  f[ g f e]  d[ e d c]
  bf[ a bf c]  d[ c d bf]  e[ d e f]  g[ f g e]
  a[ g a bf]  c[ bf c a]  d[ cs d e]  f[ e f d]
  g8. f16  e[ d cs b]  a8. g16  f[ e d cs]
  d8[ f16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
  e[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-!]
  g16[( f e d)]  a8 cs  d16[ f g a]  b[ cs d e]
  f[ e d e]  f[ e d e]  f[ g f e]  d[ cs d e]
  f[ e d e]  f[ e d e]  f[ g f e d8] d
  d[ b16 c]  d8[ b16 c]  d8 g d g
  d[ b16 c]  d8[ b16 c]  d8 g g,  g'16[ f]
  e[ d c d]  e[ d c d]  e[ f e d]  c[ b c d]
  e[ d c d]  e[ d c d]  e[ f e d c8] c
  c[ a16 bf]  c8[ a16 bf]  c8[ f c f]
  c8[ a16 bf]  c8[ a16 bf]  c8 f c a
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ d c bf]
  a8  c'16[_\piano bf]  a[ bf a g]  f[ c d e]  f[ g a bf]
  c[ d ef d]  c[ d c bf]  a[ g fs g]  a[ bf c d]
  g,8[_\forte b16 a]  g8[ d'16 c]  b8 g' d16[ c b a]
  gs8(_\piano gs gs gs) gs( gs gs gs)
  a16[ cs e d]  cs[ d cs b]  a[ e f g]  a[ b! cs! d]
  ef[ f g f]  ef[ d c! bf]  a[ bf a g]  f[ ef d c]
  bf8 r8 r4 r8 bf'_\forte bf f
  f d d bf  bf bf' bf f
  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-!]
  ef16[( d c bf)]  f8 a8 bf4 r8 f'8
  g16[ a g a]  a8.[ \trill g32 a]  bf8[ bf,16 c]  d[ ef g d]
  g[ ef c ef]  a,[ c f ef]  d[ ef f d]  bf[ c d bf]
  g[ c g c]  a[ c a c]  bf[ d bf d]  bf[ g' bf, g']
  a,[ g' a, g']  a,[ fs' a, fs'] g8 g, r bf'
  bf[( af)] r8 af af([ g]) r ef
  ef( d) r f f[( ef)] r ef'
  ef( d) r d d( c) r g
  af f d b'  g c r g16 f
  ef[ d c d]  ef[ f g f]  ef[ d ef f]  g[ af g f]
  ef[ d c d]  ef[ f g f]  ef[ d ef f]  g[ f g a!]
  b[ a b c]  d[ c d ef]  f[ ef d c]  b![ a g a]
  b[ a b c]  d[ c d ef]  f[ ef d c]  b![ a b g]
  c8 c,[ e! g]  c[ g e c]
  f[ a16 g]  f8[ c'16 bf]  a8 f'  c16[ bf a g]
  fs8(_\piano fs fs fs) fs[( fs fs)] d'_\forte
  d1 ~
  d2 ~ d8 d, r g16 bf
  c,[ bf' c, bf']  c,[ bf' c, bf']  c,[a' c, a']  c,[a' c, a']
  bf,[ a' bf, a']  bf,[ a' bf, a']  bf,[ g' bf, g']  bf,[ g' bf, g']
  a,[ g' a, g']  a,[ g' a, g']  a,[fs' a, fs']  a,[ fs' a, fs']
  g,[ bf' d c]  bf[ c bf a]  g[ a bf c]  bf[ a g fs]
  g[ bf d c]  bf[ c bf a]  g[ a bf c]  d[ g, fs g]
  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-!]
  c16[( bf) a( g)] d8 fs g4 r8 d
  g16[ a bf a]  g[ a bf a]  g[ fs g a] bf[ c bf a]
  g[ a bf a]  g[ a bf a]  g[ a g f]  e[ f e d]
  cs[ b a b]  cs[ b a b]  cs[ b cs d]  e[ d e f]
  g[ f e f]  g[ f e f]  g[ a g f]  e[ g f e]
  f[ g a g]  f[ g a g]  f[ e d e]  f[ e d e]
  f[ g a g]  f[ g a g]  f[ e d e f8] a
  d16[ c bf c]  d[ c bf a] g8 r r g
  c16[ bf a bf]  c[ bf a g] f8 r r f
  e8(_\piano e e e)  e( e e e)
  d b( b b) c4 r8 c_\forte
  c[ a16 b]  c8[ a16 b]  c8 e c e
  c[ a16 b]  c8[ a16 b]  c8 e a e
  f2 ~ f8 d g d
  e2 ~ e8 c f c
  d2 ~ d8 b e d
  c[ e16 d]  e8[ a16 gs]  a8[ e16 d16]  e8[a,16 b]
  c8 a  a[ a'16 gs]  a8[ e16 d] e8 r
  r e'16 f e8[ a,]  gs8[ e'16 f]  e8[ a,16 gs]
  a8.[ b16]  b8.[ a16] a4 r8 f'
  c[ a16 bf!]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f,
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c8 c
  d16[_\piano ef f ef]  d[ ef d c]  bf[ f g af]  bf[ c d ef!]
  f[ g af g]  f[ g f ef]  d[ c b c]  d[ ef! f g]
  c,8[_\forte e!16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
  cs8(_\piano cs cs cs) cs( cs cs cs)
  d16[ fs a g]  fs[ g fs e]  d[ a bf c]  d[ e fs! g]
  af8[_\forte f!16 ef]  d8[ af'16 g]  f8[ d'16 c]  b[ a g f]
  e!8 bf'! bf g  g e e g
  g bf bf g  g e e c
  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-!]
  bf16[( a) g( f)] c8 e f4. \fermata
           \bar "|."
\pageBreak
}}
Aoboe = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Oboe"
  \set Staff.instrumentName = \markup{\bold Oboe.}
  \partial 8*1 f'8
  c[ a16 bf] c8[ a16 bf] c8 f c f
  c[ a16 bf] c8[ a16 bf] c8[ f c] f
  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-!]
  bf16[( a) g( f)] c8 e \trill f[ e16 d] c[ bf a g]
  f8 r r4 r2
  r2 r4 r8 f'
  c[ a16 bf] c8[ a16 bf] c8[ f c f]
  c[ a16 bf] c8[ a16 bf] c8[ f c] c
  d16[ e d e]  e8.[ \trill d32 e]  f8[ f,16 g]  a[ bf c a]
  d[ bf g bf]  e,[ g c bf]  a[ bf c a f8] a'
  g[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8 c  g16[ c, e, c']
  f,[ c' f, c']  f,[ d' f, d']  g,[ e' g, e']  g,[ c g c]
  f,[ c' f, c']  f,[ b f b]  c[ d e c]  g[ c e c]
  g'8[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8 c g r
  r1
  r2 r4 r8 c,
  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-!]
  f16[( e d c)] g8 b c4 r8 f
  d r  bf! r  c r  r c
  bf r  g r  f r  r f
  f[ d16 e]  f8[ d16 e]  f8 a f a
  f[ d16 e]  f8[ d16 e]  f8 a f r
  r d' g d  e2 ~
  e8 c f c d2 ~
  d8 b e b  cs4. \trill d16 e
  f8 a, a f  f d d d'
  d a a f  f[ d d] a''
  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-!]
  g16[( f e d)]  a8 cs  d8[ c16 bf]  a[ g f e]
  d[ e f e]  d[ e f e]  d[ e d e]  f[ g f e]
  d[ e f e]  d[ e f e]  d[ e d e]  f[ g a fs]
  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
  g[ a b a]  g[ a b a]  g[ a b c d8] g
  g8[ e16 f]  g8[ e16 f]  g8 c g c
  g8[ e16 f]  g8[ e16 f]  g8 c r c,
  c[ f16 e]  f8 c  c[ c'16 bf]  c8 c,
  c [f16 e]  f8 c8  c[ c'16 bf]  c8 f,
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a bf]
  c8(_\piano c c c)  c( c c c)
  a_\forte[ c16 bf]  a8[ ef'16 d]  c8 a'  d,16[ c bf a]
  b8 g b d  g d b g
  b_\piano( b b )b  b( b b b)
  a_\forte[ cs16 b]  a8[ e'16 d]  cs8 a'  e16[ d cs! b!]
  a8_\piano( a a a) a[( a a)] f'_\forte
  d[ bf16 c]  d8 bf'  bf f f d
  d bf bf bf'  bf[ f f] f
  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-!]
  ef16[( d c bf)]  f8 a8 bf4 r4
  r1
  r1
  r1
  r2 r4 r8 bf
  c16[ d c d]  d8.[ \trill c32 d]  ef8[ ef,16 f]  g[ af bf g]
  c[ af f af]  d,[ f bf af]  g[ af bf g]  ef[ f g ef]
  c[ f c f]  d[ f d f]  ef[ g ef g]  ef[ c' ef, c']
  d,[ c' d, c']  d,[ b' d, b']  c8 c,  r c'
  g[ ef16 f]  g8[ ef16 f]  g8 c g c
  g[ ef16 f]  g8[ ef16 f]  g8 c g16[ a b c]
  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ c b c]
  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ f ef d]
  c8 [e!16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
  c_\piano[a' c bf]  a[ bf a g]  f[ c d e] f[ g a bf]
  c[ d ef d]  c[ d c bf]  a[ bf a g]  fs[ a bf c]
  d8_\forte[ bf16 c]  d8[ bf16 c]  d8 g d g
  d8[ bf16 c]  d8[ bf16 c]  d8 g d r
  r g c g a2 ~
  a8 f bf f g2 ~
  g8 e a e  fs4. \trill g16 a
  bf8[ g16 fs]  g8 d  d[ bf'16 a]  bf8 d,
  d[ g16 fs]  g8 d  d[ bf'16 a] bf8 r
  r d,16 ef  d8[ g]  fs[ d16 ef]  d8 a'
  d,[ c16 bf]  a8 d  bf16[ a g a]  bf[ c d8]
  d[ bf16 c]  d8[ bf16 c]  d8 g d g
  d[ bf16 c]  d8[ bf16 c]  d8 g g, g
  g16[ f e f]  g[ f e f]  g8 cs g cs
  cs a e a  cs e a, cs
  d16[ e f e] d[ e f e] d[ e f e] d[ e f e]
  d[ e f e] d[ e f e] d[ e f e d8] r
  r4 r8 d  g16[ f e f]  g[ f e d]
  c8 r r c f16[ e d e]  f[ e d c]
  b8_\piano( b b ) gs  a( a a)  fs
  gs( gs gs gs) e4 r
  r r8 e'_\forte e[ c16 d16]  e8[ c16 d16]
  e8 a e a  e[ c16 d]  e8 a,
  f16[ e f g] a[ g a f]  b[ a b c]  d[ c d b]
  e[ d e f]  g[ f g e]  a[ gs a b]  c[ b c a]
  d8. c16  b[ a gs fs]  e8. d16  c[ b a gs]
  a4 r8  c16 b  a8[ a'16 gs]  a8[ e16 d]
  e8[ e16 d]  e8[ c16 b]  a8[ a'16 gs]  a8 e
  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-!]
  d16[( c b a)]  e8 gs a4  r8 f'
  c[ a16 bf!]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
  f8 bf[ d f]  bf f d bf
  d,[  f16 ef]  d8[ af'16 g]  f8 d'  g,16[ f ef d]
  e!8_\piano c'( c c)  g( g g g)
  g16[ a bf a]  g[ a g f]  e[ f g f]  e[ f g a]
  d,8_\forte[ fs16 e]  d8[ a'16 g]  fs8 d'  a16[g fs e]
  d8 d'_\piano([ d d)]  d( d d d)
  f,_\forte c' e e  g g e bf'
  bf g g e  e e c c
  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-!]
  bf16[( a g f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}
Aviolino = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}
  \partial 8*1 f'8
  c[ a16 bf] c8[ a16 bf] c8 f c f
  c[ a16 bf] c8[ a16 bf] c8[ f c] f
  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-!]
  bf16[( a) g( f)] c8 e \trill f4 r8 c
  d16[ e d e]  e8.[ \trill d32 e]  f8[ f,16 g]  a[ bf c a]
  d[ bf g bf]  e,[ g c bf]  a[ bf c a f8]  f'
  c[ a16 bf] c8[ a16 bf] c8[ f c f]
  c[ a16 bf] c8[ a16 bf] c8 f  c16[ f a, f']
  bf,[ f' bf, f']  bf,[ g' bf, g']  c,[ a' c, a']  c,[ f c f]
  bf,[ f' bf, f']  bf,[ e bf e]  f[ g a f]  c[ f a f]
  g8[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8[ c g] r
  r1
  r2 r4 r8 c
  g8[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8 c g r
  r1
  r2 r4 r8 c,
  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-!]
  f16[( e) d( c)] g8 b c16[ d c bf]  a[ g f ef]
  d[ c bf a]  g[ c bf c]  a[ c d e]  f[ ef d c]
  bf[ f' e! f]  c[ e d e]  f[ c a c]  f[ c  a'8]
  a[ f16 g]  a8[ f16 g]  a8 d a d
  a[ f16 g]  a8[ f16 g]  a8 d  << { a16 f' a, f'} \\ { s8 d, } >>
  \repeat unfold 4 { << { bf'16[ f' bf, f'] } \\ { g,8[ g] } >> }
  \repeat unfold 2 { << { a16[ e' a, e'] } \\ { f,8[ f] } >> }
          \repeat unfold 2 { << { a16[ d a d] } \\ { f,8[ f] } >> }
  e16[ d' e, d']  e,[ d' e, d']  e,[ cs' e, cs']  e,[ cs' e, cs']
  d,8[ f'16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-!]
  g16[( f) e( d)]  a8 cs  d8[ c16 bf]  a[ g f e]
  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g a fs]
  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c d b]
  c[ d e d]  c[ d e d]  c[ b c d]  e[ f e d]
  c[ d e d]  c[ d e d]  c[ b c d]  e[ f g e]
  a[ g f g]  a[ g f g]  a[ bf a g]  f[ e f g]
  a[ g f g]  a[ g f g]  a[ bf a g]  f[ g a f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
  f8[ a16 g]  f8[ c'16 bf]  a8 f'  c16[ bf a g]
  << { a8( a a a) a( a a a) } \\ { fs_\piano fs fs fs  fs fs fs fs } >>
  g16[ b d c]  b[ c b a]  g[ d e f!]  g[ f g a]
  b8_\forte[ d16 c]  b8[ f'16 e]  d8 b'  e,16[ d c b]
  cs8 a cs e  a e cs a
  c!_\piano( c c c) c([ c c)] a'_\forte
  bf f f d  d bf bf bf'
  bf f f d  d[ bf bf] f'
  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-!]
  ef16[( d) c( bf)]  f8 a \trill  bf[ a16 g]  f[ef d c]
  bf[ ef bf ef]  c[ ef c ef]  d[ f d f]  d[ bf' d, bf']
  c,[ bf' c, bf']  c,[ a' c, a']  bf8 bf, r d'
  e16[( fs) e( fs)]  fs8.[ \trill e32 fs]  g8[ g,16 a16]  bf[ c d bf]
  ef[ c a c]  fs,[ a d c]  bf[ c d bf]  g[ a bf g]
  ef[ af ef af]  f[ af f af]  g[ bf g bf]  g[ ef' g, ef']
  f,[ ef' f, ef']  f,[ d' f, d']  ef,4  r8 g'
  g( f)  r f  f( ef)  r c
  c( b)  r d  d( c)  r g
  c16[ g g b]  c[ g g b]  c[ g g b]  c[ g g b]
  c16[ g g b]  c[ g g b]  c[ g a b]  c[ d ef f]
  g[ f g a]  b[ a b c]  d8 g,  r d'
  g,16[ f g a]  b[ a b c]  d8 g,  r g16 af
  bf[ af g f]  g[ f e! d]  c[ g a! b]  c[ d e c]
  << { g'8 c,[( c c)] c(c c c) } \\ { r8 f,[_\piano f f] f f f f } >>
  a_\forte[ c16 bf]  a8[ ef'16 d]  c8 a'  d,16[ c bf a]
  bf[ c d c]  bf[ c d c]  bf[ c bf a]  g[ fs g a]
  bf[ c d c]  bf[ c d c]  bf[ c bf a]  g[ a g f]
  ef[ d ef f]  g[ f g ef]  a[ g a bf]  c[ bf c a]
  d[ c d ef]  f[ ef f d]  g[ fs g a]  bf[ a bf g]
  c8. bf16  a[ g fs e!]  d8. c16  bf[ a g fs]
  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ c bf a]
  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ e fs g]
  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-!]
  c16[( bf) a( g)] d8 fs g8[ f16 ef]  d[ c bf a]
  g8 d bf d  g, d' bf d
  g d bf d  g,4  r8 e''
  e16[ d cs d]  e[ d cs d]  e8 a e a
  e16[ d cs d]  e[ d cs d]  e8 a e a
  f16[ e d e]  f[ e d e]  f[ g a g]  f[ g a g]
  f[ e d e]  f[ e d e]  f[ g a g]  f[ e d c]
  bf[ a g a]  bf[ a g a]  bf[ g' bf, g']  bf,[ g' bf, g']
  a,[ g f g]  a[ g f g]  a[ f' a, f' ]  a,[ f' a, f' ]
  gs,16[ a b a]  gs[ a b a]  a[ a c a]  a[ a c a]
  b[ a d a]  b[ a d a]  c[ a b a] a8 \noBeam e
  e[ c16 d]  e8[ c16 d]  e8 a e a
  e[ c16 d]  e8[ c16 d]  e8 a e r
  r a d a b2 ~
  b8 g c g a2 ~
  a8 fs b fs  gs4.  a16 b
  c8[ a'16 gs]  a8 e  e[ c'16 b] c8 e,
  e[ a16 gs]  a8 e  e[ c'16 b] c8 e,
  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-!]
  d16[( c) b( a)]  e8 gs \trill a4  r8 f
  c[ a16 bf]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f'
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c8 f
  bf,[ d16 c]  bf8[ f'16 ef]  d8 bf'  f16[ ef d c]
  << {b8( b b b) b( b b b)} \\ {f_\piano f f f d d d d} >>
  c'16[ e! g f]  e[ f e d]  c[ g a bf!]  c[ bf c d]
  e8_\forte [g16 f]  e8[ bf'16 a]  g8 e'  a,16[ g f e]
  fs8 d fs a  d a fs d
  f!16[ g af g]  f[ g f ef]  d[ ef f ef]  d[ c b a!]
  g4  r8 bf'!_\forte  bf g g c,
  e g g bf  bf g g c,
  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-!]
  bf16[( a) g( f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}
AviolinoI = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violino I}
                                    \line{di ripieno.}}}
  \partial 8*1 f'8
  c[ a16 bf] c8[ a16 bf] c8 f c f
  c[ a16 bf] c8[ a16 bf] c8[ f c] f
  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-!]
  bf16[( a) g( f)] c8 e \trill f4 r4
  r1
  r2 r4 r8 f
  c[ a16 bf] c8[ a16 bf] c8[ f c f]
  c[ a16 bf] c8[ a16 bf] c8 f c r
  r1
  r2 r4 r8 a'
  g8[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8[ c g] r
  r1
  r2 r4 r8 c
  g8[ e16 f]  g8[ e16 f]  g8 c g c
  g[ e16 f]  g8[ e16 f]  g8 c g r
  r1
  r2 r4 r8 c,
  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-!]
  f16[( e) d( c)] g8 b  c4 r
  r1
  r2 r4 r8 a_\piano
  a[ f16 g]  a8[ f16 g]  a8 d a d
  a[ f16 g]  a8[ f16 g]  a8[ d a] f'_\forte
  f2  e~
  e d ~
  d cs
  d8[ f16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-!]
  g16[( f) e( d)]  a8 cs  d4  r8 d,16_\piano cs
  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimo[ cs]
  d8[ d16 cs]  d8[ d16 cs]  d4  r8  g16_\piano fs
  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo[ fs]
  g8[ g16 fs]  g8[ g16 fs]  g4  r8  c16_\piano[ b]
  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo[ b]
  c8[ c16 b]  c8[ c16 b]  c4  r8  f,16_\piano[ e]
  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo[ e]
  f8[ f16 e]  f8[ f16 e]  f4  r8 f'8_\forte
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
  f8_\piano c'4 a f  c'8 ~
  c  a4  fs d  d'8 ~
  d8  b4 g d  d'8 ~
  d  b4 gs e  e'8 ~
  e  cs4  a e  a8 ~
  a  ef'4  c! a  c8
  d8 r  r bf,16[ a]  bf8[ bf16 a]  bf8[ bf16 a]
  bf8 r r  bf16[ a]  bf8[ bf16 a bf8]  f''_\forte
  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-!]
  ef16[( d) c( bf)]  f8 a \trill  bf4 r
  r1
  r
  r
  r
  r
  r
  r
  r2 r4 r8 c_\piano
  g[ ef16 f]  g8[ ef16 f]  g8 c g c
  g[ ef16 f]  g8[ ef16 f]  g8[ c g] c_\forte
  d16[ c d ef]  f[ ef f ef]  d[ c b a]  g[ c b c]
  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ f ef d]
  c8_\piano c'4 g e! c8 ~
  c c'4 a f c8 ~
  c c'4 a fs d'8_\forte
  d8[ bf16 c]  d8[ bf16 c]  d8 g d g
  d8[ bf16 c]  d8[ bf16 c]  d8[ g d] g
  g2 a ~
  a g ~
  g fs
  g8_\forte[ bf,16 a]  g8[ d'16 c]  bf8 g'  d16[ c bf a]
  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ e fs g]
  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-!]
  c16[( bf) a( g)] d8 fs g8[ f16 ef]  d[ c bf a]
  g8 d bf d  g, d' bf d
  g d bf d  g,4  r4
  g''1 ~
  g
  f ~
  f ~
  f2 e ~
  e d ~
  d c
  b a4 r8 a,16_\piano gs
  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
  a8[ a16 gs]  a8[ a16 gs]  a4 r
  f''1_\forte
  e
  d
  c8 e, e c  c a a a'
  a e e c  c a a e''
  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-!]
  d16[( c) b( a)]  e8 gs  a4  r8 f
  c[ a16 bf]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f'
  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
  f8_\piano  f'4 d bf f'8 ~
  f8 d4 b g g'8 ~
  g e4 c g g'8 ~
  g e4 cs a a'8 ~
  a fs4 d a d8 ~
  d af4 f d g8
  c,1 ~
  c
  f8_\forte[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-!]
  bf16[( a) g( f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}
AviolinoII = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violino II}
                               \line{di ripieno.}}}
  \partial 8*1 c'8
  a[ f16 g]  a8[ f16 g]  a8 c f, c'
  a[ f16 g]  a8[ f16 g]  a8[ c f,] c'
  c16[ d e f]  g8 f  c4  r8 c
  c16[ d e f]  g8 f  c4  r8 f,16 e
  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]
  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]  f8 c'
  e g4 f8 e g f g
  c, bf a g a4 r
  r1
  r2 r4 r8 c
  a8[ f16 g]  a8[ f16 g]  a8 c f, c'
  a8[ f16 g]  a8[ f16 g]  a8 c a r
  r1
  r2 r4 r8 c
  c g c g  c g' e g
  c, g c g  c g' e r
  r1
  r2 r4 r8 e
  c g c g  c g' e g
  c, g c g  c g' e r
  r1
  r2 r4 r8 g,
  g16[ a b c]  d8 c g4  r8 g
  g16[ a b c]  d8 c g4  r8  c,16[ b]
  c4 r8  c16[ b]  c8[ c16 b] c8[ c16 b]
  c4 r8  c16[ b]  c8[ c16 b] c8 g'
  b8 d4 c8  b d c c
  c a g f  e4 r
  r1
  r2 r4 r8 a_\piano
  a[ f16 g]  a8[ f16 g]  a8 d a d
  a[ f16 g]  a8[ f16 g]  a8[ d a] r
  bf1_\forte
  a1
  g2. e4
  f r8  d'16 cs  d8[ d16 cs]  d8[ d16 cs]
  d4 r8  d16 cs  d8[ d16 cs]  d8 a
  cs  e4  d8 cs e d d
  d a a g  f4 r8  d16_\piano cs
  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimo cs
  d8[ d16 cs]  d8[ d16 cs]  d4 r8  g16_\piano fs
  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo fs
  g8[ g16 fs]  g8[ g16 fs]  g4 r8  c16_\piano b
  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo[ b]
  c8[ c16 b]  c8[ c16 b]  c4  r8  f,16_\piano[ e]
  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo[ e]
  f8[ f16 e]  f8[ f16 e]  f4  r8 c'8_\forte
  c16[ d e f]  g8 f c4  r8 c8
  c16[ d e f]  g8 f c4  r4
  c,8 r f r  a r c r
  d, r fs r  a r c r
  d, r g r  b r d r
  e, r gs r  b r d r
  e, r a r  cs r e r
  f, r a r  b r ef r
  f, r r bf,16 a  bf8[ bf16 a] bf8[ bf16 a]
  bf8 r r bf16 a16  bf8[ bf16 a16 bf8]  bf'8_\forte
  a8 c4  bf8  a c bf bf
  bf g f f  f4 r
  r1
  r
  r
  r
  r
  r
  r
  r2 r4 r8 c'_\piano
  g[ ef16 f]  g8[ ef16 f]  g8 c g c
  g[ ef16 f]  g8[ ef16 f]  g8[ c g] r
  r g_\forte  g[ g,] r g' g[ g,]
  r g'  g[ g,] r g' g[ g,]
  c_\piano r e! r  g r bf r
  c, r f r  a r c r
  d, r fs r  a r c r
  bf_\forte[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]
  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]  g8 r
  ef'1
  d
  c2. a4
  bf r8  g'16 fs  g8[ g16 fs]  g8[ g16 fs]
  g4 r8  g16 fs  g8[ g16 fs]  g8 d
  fs a4 g8  fs a g a
  d, c bf a  bf4 r
  r8 d, bf d  g, d' bf d
  g d bf d  g,4 r4
  cs'1 ~
  cs
  d ~
  d ~
  d2 c ~
  c b ~
  b a
  gs a4 r8  a,16_\piano gs
  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
  a8[ a16 gs]  a8[ a16 gs]  a4 c'_\forte ~
  c2 b2 ~
  b a ~
  a gs
  a8 e e c  c a a a'
  a e e c  c a a a'
  gs b4 a8  gs b a a
  a f e e e4 r8 f
  c[ a16 bf]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] c'
  c16[ d e f]  g8 f c4 r8 c
  c16[ d e f]  g8 f  c16[ f e d] c[ bf a g]
  f8_\piano r bf r d r f r
  g, r b r d r f r
  g, r c r e r g r
  a, r cs r e r g r
  a, r d r fs r a r
  f! r d r b! r g r
  g,1 ~
  g
  c8_\forte[ f16 e] f8[ f16 e] f8[ f16 e] f8[ f16 e]
  f8[ f16 e] f8[ f16 e] f8[ f16 e] f8 c'
  e g4 f8  e g f g
  c, bf a g a4. \fermata
           \bar "|."
\pageBreak
}}
Aviola = \new Voice { \relative c' {
  \clef alto
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Viola"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Viola}
                                    \line{di ripieno.}}}
  \partial 8*1 a'8
  f c f c  f a c c,
  f c f c  f[ a c] a
  g bf e, c'  g4 r8 a
  g bf e, c'  g4 r8 c,16 bf
  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8[c'16 bf]
  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8 a'
  g c,4 a'8   g c,4 bf8
  f' d c c  c4 r
  r1
  r2 r4 r8  a'8
  f c f c  f a c c,
  f c f c  f a c r
  r1
  r2 r4 r8 f,
  g c g c  g e c e
  g c g c  g e c r
  r1
  r2 r4 r8 g'
  g c g c  g e c e
  g c g c  g e c r
  r1
  r2 r4 r8 g'
  d f b, g'  d4 r8 g
  d f b, g'  d4 r8 g,
  g8[ g16 f]  e8[ e16 d]  c4  r8 g'16 f
  g8[ g16 f]  e8[ e16 d]  c4  r8 e'
  d g,4 e'8 d8 g,4 g8
  c f e d  c4 r
  r1
  r2 r4 r8  a'_\piano
  a[ f16 g]  a8[ f16 g]  a8 d a d
  a[ f16 g]  a8[ f16 g]  a8[ d a] d,_\forte
  g,16[ f g a]  bf[ a bf g]  c8 c' r c,
  f,16[ e f g]  a[ g a f]  bf8 bf' r bf,
  e,16[ d e f]  g[ f g e]  a8 a' r a16 g
  a8[ a16 g]  f8[ f16 e] d4 r8  a'16 g
  a8[ a16 g]  f8[ f16 e] d4 r8  f8
  e a,4 f'8 e a,4 a8
  d f f e d4 r8 d16_\piano cs
  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimoparen cs
  d8[ d16 cs]  d8[ d16 cs]  d4 r8  g16_\piano fs
  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo fs
  g8[ g16 fs]  g8[ g16 fs]  g4 r8  c16_\piano b
  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo b
  c8[ c16 b]  c8[ c16 b]  c4 r8  f,16_\piano e
  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo e
  f8[ f16 e]  f8[ f16 e]  f4 r8 a_\forte
  g bf e, c'  g4 r8 a
  g bf e, c'  g4 r4
  a,8_\piano r c r  f r a r
  fs r d r  fs r a r
  b, r d r  g r b r
  gs r e r  gs r b r
  cs, r e r  a r cs r
  a r f r  a r c! r
  bf r8 r8 bf,16 a bf8[ bf16 a] bf8[ bf16 a]
  bf8 r r bf16 a  bf8[ bf16 a bf8] d_\forte
  c f4 d8 c f4 f8
  bf, ef a, c d4 r
  r1
  r
  r
  r
  r
  r
  r
  r2 r4 r8 c'_\piano
  g[ ef16 f]  g8[ ef16 f]  g8 c g c
  g[ ef16 f]  g8[ ef16 f]  g8 c g r
  r g_\forteparen g[ g,] r g' g[ g,]
  r g' g[ g,] r g' g[ g,]
  g_\piano r c r  e! r g r
  a, r c r  f r a r
  a, r d r  fs r a r
  g_\forte[ g16 fs] g8[ g16 fs] g8[ g16 fs] g8[ g16 fs]
  g8[ g16 fs] g8[ g16 fs] g8[ g16 fs] g8 \noBeam g,
  c16[ bf c d]  ef[ d ef c]  f8 f, r f
  bf16[ a bf c]  d[c d bf]  ef8 ef, r ef
  a16[ g a bf]  c[ bf c a]  d8 d, r d''16 c
  d8[ d16 c]  bf8[ bf16 a] g4 r8 d'16 c
  d8[ d16 c]  bf8[ bf16 a] g4 r8 bf
  a8 d,4 bf'8 a d,4 d8
  g ef d d d4 r
  r8 d bf d  g, d' bf d
  g d bf d  g,4 r
  e'1 ~
  e1
  a ~
  a
  bf
  a
  gs2 e ~
  e e4 r8 a,16_\piano gs
  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
  a8[ a16 gs]  a8[ a16 gs]  a4 r8 a^\forte
  d16[ c d e]  f[ e f d]  g8 g, r g
  c16[ b c d]  e[ d e c]  f8 f, r f
  b16[ a b c]  d[ c d b]  e8 e, r e'8
  e e e c  c a a a'
  a e e c  c a a e'
  e e,4 e'8 e e,4 e'8
  a, d c b  c4 r8 f
  c[ a16 bf!] c8[ a16 bf]  c8 f c f
  c[ a16 bf] c8[ a16 bf]  c8[ f c] a'
  g bf e, c'  g4 r8 a8
  g bf e, c'  g16[ f e d]  c[ bf a g]
  d'8_\piano r f r  bf r d r
  b r g r  b r d r
  e, r g r  c r e r
  cs r a, r  cs r e r
  fs r a r  d, r fs r
  d r f! r  af r d, r
  e,1 ~
  e
  a8_\forte[ c16 bf]  a8[ a16 g]  f8[ a16 g] f8[ c'16 bf]
  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8 a'
  g c,4 a'8 g c,4 c8
  f d c c  c4. \fermata
           \bar "|."
\pageBreak
}}
Aviolone = \new Voice { \relative c' {
  \clef bass
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violone}
                                    \line{di ripieno.}}}
  \partial 8*1 f,,8
  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f[ g a g]  f[ g a g]  f[ e f g a8]  f
  e8 g c, f  e g c, a'
  e g c, f  e g c, bf
  a f a c  f c a c
  a f a c  f c a f
  c' e, f a  c e, f e'
  f bf, c c,  f4 r
  r1
  r2 r4 r8 f8
  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f[ g a g]  f[ g a g]  f8 f, f' r
  r1
  r2 r4 r8 f
  e g e c  e g c g
  e g e c  e g c r
  r1
  r2 r4 r8 c,
  e g e c  e g c g
  e g e c  e g c r
  r1
  r2 r4 r8 e,
  b d g, c  b d g, c
  b d g, c  b d g, f
  e c e g  c g e g
  e c e g  c g e c
  a' b c e  g b, c e
  a f g g,  c4 r
  r1
  r2 r4 r8  f16_\piano e
  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
  d[ e f e]  d[ e f e]  d_\forte[ cs d e]  f[ e f d]
  g8 g, r g'  c,16[ bf c d]  e[ d e c]
  f8 f, r f'  bf,16[ a bf c]  d[ c d bf]
  e8 e, r e'  a,16[ g a bf]  a[ g f e]
  d8 d' f a  d a f a
  f d f a  d a f d
  a' cs, d f  a cs, d f
  bf[ f16 g]  a8 a,  d[ d,] r a''_\piano
  d a f a  d,[ a' f] a_\pianissimo
  d a f a  d, d, r d'_\pianoparen
  g d b d  g,[ d' b]  d_\pianissimo
  g d b d  g, g' r g_\pianoparen
  c g e g  c,[ g' e] g_\pianissimoparen
  c g e g  c, c, r c'_\piano
  f16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f_\pianissimoparen[ g a g]  f[ g a g]  f[ e f g a8] f_\forteparen
  e g c, f  e g c, a'
  e g c, f  e g c, d
  ef8 r ef r ef r ef r
  d r d r  d r d r
  f r f r  f r f r
  e r e r  e r e r
  g r g r  g r g r
  f r f r  f r f r
  bf,_\forte[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d c]
  bf8[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d ef]
  f8 a, bf d  f a, bf d
  g ef f f,  bf4 r
  r1
  r
  r
  r
  r
  r
  r
  r2 r4 r8 c,
  c'16[ d ef d]  c[ d ef d]  c[ b c d] ef[ f ef d]
  c[ d ef d]  c[ d ef d]  c[ b c d ef8] c
  g' g, r g' \noBeam g g, r g'
  g g, r g' g g, g' f
  e! r e r  e r e r
  ef r ef r  ef r ef r
  d r d r  d r d r
  g16_\forteparen[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ c bf a]
  g[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ a bf g]
  c,8 c' r c  f,16[ ef f g]  a[ g a f]
  bf,8 bf' r bf  ef,16[ d ef f]  g[ f g ef]
  a,8 a' r a  d,16[ c d ef]  d[ c bf a]
  g8 d' d bf  bf g g g'
  g d d bf  bf g g g'
  d fs, g bf  d fs, g fs'
  g c, d d,  g4 r
  r1
  r2 r8 g'16 a bf[ a bf g]
  a8 e cs e  a, e' cs e
  a e cs e  a,4 r8 a'
  a[ f16 g]  a8[ f16 g]  a8[ d a d]
  a8[ f16 g]  a8[ f16 g]  a8[ d d, f]
  g8 bf g bf  c, e c e
  f a f a  b, d b d
  e e, r e'  e e, r e'
  e e, r e'  a,4 r8 e'_\piano
  a16[ b c b]  a[ b c b]  a[ b c b]  a[ b c b]
  a[ b c b] a[ b c b] a[ b c b] a_\forte[ b c a]
  d,8 d' r d  g,16[ fs g a]  b[ a b g]
  c,8 c' r c  f,16[ e f g]  a[ g a f]
  b,8 b' r b  e,16[ d e f]  e[ d c b!]
  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c b!]
  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c d]
  e8 gs, a c  e gs, a c
  f d e e,  a4 r8 f'
  c[ a16 bf]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c] a'
  e g c, f  e g c, a'
  e g c, f  e16[ f e d]  c[ bf a g]
  af8_\piano r af r  af r af r
  g r g r  g r g r
  bf r bf r  bf r bf r
  a r a r  a r a r
  c r c r  c r c r
  b r b r  b r b r
  c_\forte[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ a bf g]
  a8_\forte f, a c  f c a c
  a f a c  f c a f
  c' e, f a  c e, f e'
  f bf, c c, f4. \fermata
           \bar "|."
\pageBreak
}}
Avioloncello = \new Voice { \relative c' {
  \clef bass
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violincello"
  \set Staff.instrumentName =
        \markup{\bold\center-column{Violoncello
                               \line{e Cembalo}
                               \line{all' unisono.}}}
  \partial 8*1 f,,8
  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f[ g a g]  f[ g a g]  f[ e f g a8]  f
  e8 g c, f  e g c, a'
  e g c, f  e g c, bf
  a f a c  f c a c
  a f a c  f c a f
  c' e, f a  c e, f e'
  f bf, c c,  f8 g[ a f]
  bf a g c  a g f f'
  bf,8 r c r  f, \noBeam f'16 g  a[ bf a g]
  f16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f[ g a g]  f[ g a g]  f[ e f g a8] f
  bf g a c  a g f a
  g r c r  f,[ g a] f
  e g e c  e g c g
  e g e c  e[ g c] c,
  f e d g  e d c e
  f r g r  c,[ d e] c
  e g e c  e g c g
  e g e c  e[ g c] c,
  f e d g  e d e c
  f r g g,  c[ d e] c
  b d g, c  b d g, e'
  b d g, c  b[ d g,] g'16 f
  e8 c e g  c g e g
  e c e g  c g e c
  g' b, c e  g b, c e
  a f g g,  c d16[ e] f[ g a f]
  bf8 a g c  a g f a
  bf r c r  r f,16 g a[ g f e]
  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
  d[ e f e]  d[ e f e]  d[ cs d e]  f[ e f d]
  g[ f g a]  bf[ a bf g]  c,[ bf c d]  e[ d e c]
  f[ e f g]  a[ g a f]  bf,[ a bf c]  d[ c d bf]
  e[ d e f]  g[ f g e]  a,[ g a bf]  a[ g f e]
  d8 d' f a  d a f a
  f d f a  d a f d
  a' cs, d f  a cs, d f
  bf f16 g a8[ a,] d d, r a''
  d a f a  d,[ a' g] a
  d a f a  d, d, r d'
  g d b d  g,[ d' b] d
  g d b d  g, g' r g
  c g e g  c,[ g' e] g
  c g e g  c, g' c16[ bf a g]
  f[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
  f[ g a g]  f[ g a g]  f[ e f g a8] f
  e g c, f  e g c, a'
  e g c, f  e g c, d
  ef_\piano( ef ef ef)  ef( ef ef ef)
  d( d d d)  d( d d d)
  f( f f f)  f( f f f)
  e( e e e)  e( e e e)
  g( g g g)  g( g g g)
  f( f f f)  f( f f f)
  bf,_\forte[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d c]
  bf8[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d ef]
  f8 a, bf d  f a, bf d
  g ef f f,  bf c[ d bf]
  ef d c f  d c bf d
  ef r f r  bf, c d bf
  c bf a d  bf a g bf
  c r d r  g, a bf g
  af g f bf  g f ef g
  af r bf r  ef, f g ef
  f ef d g  ef d c c'
  f d g g,  c d ef16[ f ef d]
  c[ d ef d]  c[ d ef d]  c[ b c d] ef[ f ef d]
  c[ d ef d]  c[ d ef d]  c[ b c d ef8] c
  g' g, r g' g[ g,] r g'
  g g, r g' g g, g' f
  e!_\piano( e e e) e( e e e)
  ef( ef ef ef) ef( ef ef ef)
  d( d d d)  d( d d d)
  g16_\forteparen[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ c bf a]
  g[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ a bf g]
  c,[ bf c d]  ef[ d ef c]  f[ ef! f g]  a[ g a f]
  bf,[ a bf c]  d[ c d bf]  ef[ d ef f]  g[ f g ef]
  a,[ g a bf]  c[ bf c a]  d[ c d ef]  d[ c bf a]
  g8 d' d bf  bf g g g'
  g d d bf  bf g g g'
  d fs, g bf  d fs, g fs'
  g c, d d, g4 r
  r1
  r2 r8  g'16 a bf[ a bf g]
  a8 e cs e  a, e' cs e
  a e cs e  a,4 r8 a'
  a[ f16 g]  a8[ f16 g]  a8[ d a d]
  a8[ f16 g]  a8[ f16 g]  a8[ d d, f]
  g8 bf g bf  e, c' c, e
  f a f a  d, b' b, d
  e e, r e'  e e, r e'
  e e, r e'  a,4 r8 e'
  a16[ b c b]  a[ b c b]  a[ b c b]  a[ b c b]
  a[ b c b] a[ b c b] a[ b c b] a[ b c a]
  d,[ c d e]  f[ e f d]  g[ fs g a]  b[ a b g]
  c,[ b c d]  e[ d e c]  f[ e f g]  a[ g a f]
  b,[ a b c]  d[ c d b]  e[ d e f]  e[ d c b!]
  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c b!]
  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c d]
  e8 gs, a c  e gs, a c
  f d e e,  a4 r8 f'_\tasto
  c[ a16 bf]  c8[ a16 bf]  c8 f c f
  c[ a16 bf]  c8[ a16 bf]  c8[ f c]
           a'^\markup{\bold\center-column{accomp. 6}}
  e g c, f  e g c, a'
  e g c, f  e16[ f e d]  c[ bf a g]
  << { af8( af af af) } \figuremode{<6 4 2>} >> af( af af af)
  << { g( g g g) } \figuremode{<7!>} >> g( g g g)
  << { bf( bf bf bf) } \figuremode{<6 4>} >> bf( bf bf bf)
  << { a( a a a) } \figuremode{<7+>} >> a( a a a)
  << { c( c c c) } \figuremode{<6 4 2>} >> c( c c c)
  b( b b b)  b( b b b)
  c_\forte[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ f e d]
  c8[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ a bf g]
  a8 f, a c  f c a c
  a f a c  f c a f
  c' e, f a  c e, f e'
  f bf, c c, f4. \fermata
           \bar "|."
\pageBreak
}}
Bmovement = \markup{ \bold\large "II - Andante " }
Bflute = \new Voice { \relative c'' {
   \clef treble
   \time 3/4
   \key f \major
   \set Staff.midiInstrument = "Flute"
   \set Staff.instrumentName =
      \markup{\bold\center-column { Flauto.
                                   \line{(Flute a bec.)} } }
 R2.
 R
 R
 R
 r4 r a'
 bf4. a8 g16( bf a8)
 f4^\trill e8( d) a'4
 b4.( c16 d) c( b c8)
 gs4^\trill fs8( e) c'4
 c8( b) r4 b8( c16 d)
 b8( a) r4 a4
 a8( gs) r4 gs
 gs8( a) r4 a
 a4. b8 e,16( a gs8)
 a4 r c
 c8( bf!) r4 bf8( c16 d)
 bf8( a) r4 a
 a8( g) r4 g8( a16 bf)
 g8( f) r4 c'4
 d4.( e16 f) e( g f8)
 f4 e8^\trill( d) c( b)
 g'4 f8( e) d( c)
 c4 r r
 R2.
 r4 r d
 ef4. d8 c16( ef d8)
 \appoggiatura c16 bf8 d16( cs) d8 f16( e!) f4
 f8( e) r4 e8( f16 g)
 e8^\trill( d) r4 r
 R2.
 r4 r f
 g4. f8 ef16( g) f8
 ef8( d) r4 d,
 d8( c) r4 r
 r g' c
 c8( bf) r4 bf
 bf8( a) r4 d
 ef4. d8 c16( g' f8)
 ef( d) c^\trill( bf) a( g)
 c4. bf8 a16( c bf8)
 a8^\trill( g) r4 ef'
 ef8( d) c( bf) c16( ef) d8
 c( bf) a( g) r4
 r r bf,
 bf8( a) r4 g'4
 g8( f) r4 r
 r r g,
 g8 f r4 f'
 f8( e) r4 r
 r a c
 c8( b) r4 b
 b8( c) r4 r
 r c,4 ef
 ef8( d) r4 f
 f8( e!) r4 r
 r e4 g
 g8( f) r4 f
 f8( e) r4 e8( f16 g)
 e8( d) r4 d
 d8( cs) r4 cs
 cs8( d) r4 d
 d4. e8 a,16( d cs8)
 g'4( ~ g16 bf a8) \appoggiatura g16 f4 ~
 f16( cs d8) d4( cs8.^\trill) d16
 d2. \fermata  \bar "|."
\pageBreak
}}
Boboe = \new Voice { \relative c'' {
   \clef treble
   \time 3/4
   \key f \major
   \set Staff.midiInstrument = "Oboe"
   \set Staff.instrumentName =
      \markup{\bold\center-column { Oboe. }}
 R2.
 R2.
 r4 r a
 bf4.( a8) g16( bf a8)
 f4^\trill e8( d) f'4
 f8( e) r4 e8( f16 g)
 d8( c) r4 f,
 f8( e) r4 r
 r r e'
 f4. e8 d16( a' g8)
 f( e) d( c) b^\trill( a)
 d4. c8 b16( d c8)
 b8( a) r4 f'
 f8( e) d( c) d16( f e8)
 d( c) b^\trill( a) c4
 d4.( e16 f) e( g f8)
 f4 e8^\trill( d) c( d)
 c( bf) r4 bf8( c16 d)
 bf8( a) r4 a
 a8( g) r4 g8( a16 bf)
 g8^\trill( f) r4 d'4
 d8( c) c( b) b([ a16 b)]
 c4 r r
 R2.
 R2.
 R2.
 r4 r a
 bf4. a8 g16( bf a8)
 f4^\trill e8( d) f'4
 f8( ef) r4 ef8( f16 g)
 ef8^\trill( d) r4 d
 d8( c) r4 c8( d16 ef)
 c8( bf) f'4 bf
 bf8( a) r4 a4
 a8( g) r4 r
 r d g
 g8( fs) r4 r
 R2.
 r4 r d
 ef4. d8 c16( ef d8)
 c( bf) a( g) a([ bf16 c)]
 bf4.^\trill a8 a([ bf)]
 g4 r d'
 e!4.( f16 g) f( e f8)
 cs4^\trill b8( a) r4
 r r d4
 d8( cs) r4 e
 e8( d) r4 r
 r e, g
 g8( fs) r4 fs'
 fs8( g) r4 r
 r g,4 bf!
 bf8( a) r4 a4
 a8( bf) r4 r
 r bf' d,
 d8( cs) r4 e
 e8( d) r4 r
 R2.
 r4 r d'
 bf4. a8 g16([ bf a8)]
 g( f) e( d) e([ f16 g)]
 f4.^\trill e8 e([ f)]
 cs4. d8 gs,4 ~
 gs8 a f4^\trill e8( d)
 d2. \fermata  \bar "|."
\pageBreak
}}
Bviolino = \new Voice { \relative c'' {
  \clef treble
  \time 3/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}
 r4 r a
 bf4. a8 g16( bf a8)
 f4^\trill e8( d) f'4
 f8( e) r4 e8( f16 g)
 e8^\trill( d) r4 d4
 d8( cs) r4 cs4
 cs8( d) r4 r
 r r f,
 f8( e) r4 r
 R2.
 r4 r a'
 f4. e8 d16( f e8)
 d8( c) b( a) b([ c16 d)]
 c4.^\trill b8 b([ c)]
 \appoggiatura b16 a4 r r
 R2.
 r4 r c
 d4.( e16 f) e( g f8)
 f4( e8^\trill d) c( d)
 c( bf) r4 bf8( c16 d)
 bf8^\trill( a) r4 f'
 f8( e) a( g) f( g)
 e4 r g
 a4. g8 f16( a g8)
 e8^\trill( g16 fs) g8( bf16 a) bf4
 bf8( a) r4 a8( bf16 c)
 a8^\trill( g) r4 d'4
 d8( cs) r4 cs
 cs8( d) r4 a,4
 bf4.( c16 d) ef( d ef8)
 a,4^\trill g8( f) bf4
 bf4. c8 a4^\trill
 a8( bf) r4 r
 r c f
 f8( ef) r4 ef
 ef8( d) r4 r
 r r bf'
 bf8( a) r4 a8( bf16 c)
 a8^\trill( g) r4 g
 g8( fs) r4 fs4
 fs8( g) r4 g4
 g4. a8 d,16( g fs8)
 \appoggiatura fs16 g4 r4 bf,
 bf8( a) r4 r
 r r e'
 e8( d) r4 f,4
 f8( e) r4 r
 r r d'
 d8( cs) r4 cs
 cs8( d) r4 r
 r d f!
 f8( e) r4 e
 e8( f) r4 r
 r f a
 a8( g) r4 bf
 bf8( a) r4 r
 r r a,
 bf4. a8 g16( d') c8
 bf( a) g( f) e^\trill( d)
 g4. f8 e16( g f8)
 e8^\trill( d) r4 bf''
 bf8( a) g( f) g a
 \appoggiatura f16 e4.\trill f8 d4 ~
 d8( e16 f) a,8( g) bf( a)
 fs2.^\trill \fermata  \bar "|."
\pageBreak
}}
Bvioloncello = \new Voice { \relative c {
  \clef bass
  \time 3/4
  \key f \major
  \set Staff.midiInstrument = "Cello"
  \set Staff.instrumentName =
        \markup{\bold\center-column{Violoncello
                               \line{e Cembalo.}}}
 d8 a' f a d, a'
 g bf e, g cs, e
 d a' f a d, f
 g e cs e a, cs
 d a f a d, f
 g bf e, g a a'
 d, a' f a d, g
 gs, b e, gs a d
 e b' gs b a c
 d f b, d g, b
 c e a, c f, a
 b d gs, b e, e'
 a, c f, a d, b
 e d e4 e,
 a8 e' c e a, c
 bf! d g, bf c, c'
 f, a g bf a c
 bf d g, bf c c'
 f, a g bf a c
 bf d g, bf cs, e
 d a' f a d, f
 e f g4 g,
 c8 e d f e g
 f d b d g, b
 c a bf! fs g bf
 c ef a, c d d,
 g e'! f cs d f
 g bf e, g a a,
 d a' f a d, f
 g bf ef, g c, ef
 f a d, f bf, d
 ef c f4 f,
 bf8 f' d f bf, d
 f, c'' a c f, a
 c, g' ef g c, ef
 g, d'' bf d g, bf
 d, a' fs a g bf
 c ef a, c f,! a
 bf d g, bf ef, g
 a c fs, a d, d'
 g, bf ef, g c, a
 d c d4 d,
 g8 d'' bf d g, bf
 cs, e a, cs d g,
 a e' cs e a, cs
 d, a'' f a d, f
 a, e' cs e a, cs
 d, a'' f a d, f
 a, e' cs e a, cs
 d, a'' fs a d, fs
 g, d'' b d g, b
 c, g' e g c, e
 f, c'' a c f, a
 bf, f' d f bf, d
 e, bf'' g bf e, g
 a, e' cs e a, cs
 d, a'' f a d, f
 g bf e, g c, e
 f a d, f bf, d
 e g cs, e a, a'
 d, f bf, d g, e
 a g a2
 bf2 b4 ~
 b4 a2
 d,2. \fermata  \bar "|."
\pageBreak
}}
Cmovement = \markup{\bold\large "III - Allegro Assai "}
Ctromba = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key c \major
  \transposition f
  \set Staff.midiInstrument = "Trumpet"
  \set Staff.instrumentName = \markup{ \bold Tromba. }
  \set Score.skipBars = ##t
  c8 g' g^\trill f16 g
  a8 g16 f g8 c
  g^\trill e16 f g8^\trill f16 g
  a8[ g16 f] g f e g
  f e d f  e d c d
  d c d e  f e d c
  d8 g, g' r
  g r g r
  g r g r
  g a4 g8 ~
  g fs g16 fs e g
  fs e fs g  a g fs e
  fs e d e  fs g e fs
  g a fs g  a fs g a
  d,8 g, g'4 ~
  g8 f!16 e f8 f
  e16 d c d  e f d e
  f g e f  g a f g
  a g a bf  a g f e
  d c d e  f e f d
  e8 c16 d  e8 d16 e
  f8 e16 d  e8 c16 d
  e8 c16 d  e8 d16 e
  f8 r  e r
  d r  c r
  g r  c, r
  g' r r4
  R2*13
  g8 d' d c16 d
  e8 d16 c d8 g
  d e16 c  d8 c16 d
  e8 d16 c  d g a b
  c b a c  b a g b
  a g a b  c b a g
  a8 d, r d
  g g g fs16 e
  fs8 fs fs g16 fs
  e8 e e d16 c
  d8 d d e16 d
  c8[ e fs a]
  b16 c b a  g fs e d
  e fs d e  fs g e fs
  g a fs g  a g fs e
  d8 g16 a  fs8. g16
  g8 r r4
  R2*14
  e,8 r e r
  e r e r
  e r e r
  e r e r
  e r e r
  e r e r
  e r e r
  e r r c'
  f f f e16 d
  e8 e e f16 e
  d8 d d c16 bf
  c8 c c d16 c
  bf8 bf' e,4^\trill
  d8 r r4
  R2
  R2
  R2
  R2
  R2
  R2
  R2
  r8 d g4 ~
  g8 f16 e f8 f
  e16 d c d  e f d e
  f g e f  g e f g
  c, e d e  f8 \noBeam f
  f g16 f e8 e
  e8 f16 e d8 d
  d e16 d c8 c
  c d16 c  bf8 bf'
  bf c16 bf a8 a
  a bf16 a  g f e d
  c8 r c r
  c r c r
  d r c r
  c f16 g  a8 g16 a
  bf8 a16 g  a8 f16 g
  a8 f16 g  a8 a ~
  a8 g4 f8 ~
  f e  f16 e d f
  e d e f  g f e d
  e8 r c, r
  c r c r
  c r c r
  c' d4 c8 ~
  c8 b^\trill  c16 d e c
  g'8 r8 r4
  g,8 r g r
  g r g r
  g r g r
  g r g r
  g r g r
  g r g r
  g r g r
  e e'16[ f]  g a f g
  a b g a  b g a b
  e, g c, d  e f d e
  f g e f  g e f g
  c, e d e  f g e f
  g e c d  e f g e
  a bf a g  f e d c
  g'8 r g r
  g r g r
  R2
  c,8 g'  g f16 g
  a8 g16 f  g8 c
  g8 e16 f  g8 f16 g
  a8 g16 f  g8 \fermata r  \bar "|."
}}
Cflute = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Flute"
  \set Staff.instrumentName =
     \markup{\bold\center-column { Flauto.
                                 \line{(Flute a bec.)} } }
  \set Score.skipBars = ##t
  R2*26
  c8 g' g^\trill f16 g
  a8^\trill g16 f  g8 c
  g^\trill e16 f  g8^\trill f16 g
  a8^\trill g16 f  g f e g
  f e d f  e d c e
  d c d e  f e d c
  d8 g, c4 ~
  c16 a f a d4 ~
  d16 b g b e4 ~
  e16 c a c f4 ~
  f16 d b d  g a g f
  e d c e  d c b d
  c g a b  c d e f
  g8[ c, g b]
  c r c' r
  c r c r
  c r c r
  c d4 c8 ~
  c b  c16 b a c
  b a b c  d c b a
  b a b c  d e c d
  e f d e  f d e f
  b, d g, a  b c a b
  c d b c  d b c d
  g, b e, f  g a f g
  a b c d  b d g, f
  e8 g  c4 ~
  c16 d b c  d e c d
  e f g e  f8 f ~
  f e16 d  d8. c16
  c8 c,16[ d]  e8 d16 e
  f8 e16 d  e8 c16 d
  e8 c16 d  e8 e' ~
  e8 d4 c8 ~
  c b  c16 b a c
  b a b c  d c b a
  b a g a  b a b d
  cs b cs d  e d cs b
  cs b a b  cs b cs e
  d8 r d r
  d r d r
  d r d r
  d e4 d8 ~
  d cs  d16 cs b d
  cs b cs d  e d cs b
  cs8 e,16 f  g8 f16 g
  a8 g16 f  g8 e16 f
  g8 e16 f  g8 f16 g
  a8 r g r
  f r g r
  a r g r
  f r e r
  d r r d'
  g g g f16 ef
  f8 f  f g16 f
  ef8 ef ef d16 c
  d8 d  d ef16 d
  c8 c  c bf16 a
  bf8 r r4
  R2
  R2
  R2
  r8 a d4 ~
  d8 c16 bf  c8 c
  bf16 a g a  b c a b
  c d b c  d b c d
  g,8 r r4
  R2
  R
  R
  r8 bf16 c  d ef c d
  ef f d ef  f d ef f
  bf, d g, a  bf c a bf
  c d bf c  d bf c d
  g, bf ef, f  g af f g
  af bf g af  bf g af bf
  ef,4 r8 g
  c[ f, bf f]
  a f  bf d16 c
  bf8[ g' c, f]
  d r r4
  R2
  R
  R
  R
  R
  f,8 c'  c bf16 c
  d8 c16 bf  c8 f
  c8 a16 bf  c8 bf16 c
  d8 c16 bf  c bf a c
  bf16 a g bf  a g f a
  g f g a  bf a g f
  g8 g,16 a  bf8 a16 bf
  c8 bf16 a  bf8 g16 a
  bf8 g16 a  bf8 a16 bf
  c8 r bf r
  a r bf r
  c r bf r
  a r g r
  f c''[ f f]
  f g16 f e8 e
  e8 f16 e d8 d
  d e16 d  c8 c
  c d16 c  bf8 bf
  bf c16 bf a8 a
  a8 bf16 a  g f e d
  e f d e  f g e f
  g a f g  a g f e
  d e f g  e8. f16
  f8 r ef r
  d r a' r
  f r ef r
  d r a' \fermata r \bar "|."
}}
Coboe = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Oboe"
  \set Staff.instrumentName = \markup{\bold Oboe.}
  R2
  R
  R
  R
  R
  R
  c8 g'  g f16 g
  a8 g16 f  g8 c
  g e16 f  g8 f16 g
  a8 g16 f  g f e g
  f e d f  e d c e
  d c d e  f e d c
  d8 g, g'4 ~
  g8 f16 e  f8 f
  e16 d c d  e f d e
  f g e f  g e f g
  c, bf a bf  c d bf c
  d ef c d  ef f d ef
  f ef f g  f d g f
  e! d e f  g f e g
  c,8 r f r
  f r f r
  f r f r
  f g4 f8 ~
  f e  f16 e d f
  e d e f  g f e d
  e8 c16 d  e8 d16 e
  f8 e16 d  e8 c16 d
  e8 c16 d  e8 d16 e
  f8 r e r
  d r c r
  g r g r
  g r r g
  a[ c, f a]
  b[ d, g b]
  c[ e, a c]
  d[ g, b d]
  c[ g a g]
  c16 b c d  e8 g
  e8. d16  d8. c16
  c8 e16 d  c8 c,
  f f'  c e16 d
  c8 e16 d  c8 c,
  f r c' r
  d[ d, e f]
  g[ g' e c]
  g d'[ g g]
  g8 a16 g  f8 f
  f g16 f  e8 e
  e f16 e  d8 d
  d e16 d  c8 c
  c b16 a  f'8 e16 d
  g a g f  e8 g
  g[ c, f d]
  g,[ g' g d]
  g,[ g' g d]
  e r r4
  R2
  R
  R
  R
  R
  R
  R
  R
  d8 a'  a g16 a
  bf8 a16 g  a8 d
  a f16 g  a8 f16 g
  bf8 a16 g  a g f a
  g f e g  f e d f
  e d e f  g f e d
  e8[ g e cs]
  a r r cs16 d
  e8[ g e cs]
  a r cs r
  d r e r
  a, r cs r
  d r e r
  a,16 cs d e  f g e f
  g a f g  a f g a
  d, f bf, c  d ef c d
  ef f d ef  f d ef f
  bf, d g, a  bf c a bf
  c d bf c  d bf c d
  g, d' e f g4 ~
  g16 f e g  f e d f
  e8 a,  a'4 ~
  a8 g16 f  g8 g
  f16 e d e  fs g e fs
  g a fs g  a fs g a
  d,8 r r4
  R2
  R
  R
  R
  R
  r4 r8 bf
  ef ef ef d16 c
  d8 d d ef16 d
  c8 c c bf16 a
  bf8 bf bf c16 bf
  af8 af af bf16 af
  g af' g f  ef d c bf
  a! bf g a  bf c a bf
  c d bf c  d c bf a
  g a bf c  a8. bf16
  bf8 f' f ef16 f
  g8 f16 ef  f8 bf
  f8 d16 ef  f8 ef16 f
  g8 f16 ef  f ef d f
  ef d c ef  d c bf d
  c bf c d  ef d c bf
  c8 f,16 g  a8 g16 a
  bf8 a16 g  a8 f16 g
  a8 f16 g  a8 g16 a
  bf8 r a r
  g r f r
  e16 d e f  g f e d
  e8[ bf'' g e]
  c r r e16 f
  g8[ bf g e]
  c r e r
  f r g r
  c, r e r
  f r g r
  d r r c
  g' g g f16 e
  f8 f  f g16 f
  e8 e  e d16 c
  d8 d  d e16 d
  c8 c  c bf16 a
  bf16 g' f ef  d c bf a
  g a f g  a bf g a
  bf c a bf  c8 c ~
  c bf16 a  g8. f16
  f8 r c' r
  bf r f' r
  a, r c r
  bf r f' \fermata r \bar "|."
}}
Cviolino = \new Voice { \relative c' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}
  \set Score.skipBars = ##t
  R2*20
  f8 c' c^\trill bf16 c
  d8 c16 bf  c8 f
  c a16 bf c8 bf16 c
  d8 c16 bf  c bf a c
  bf a g bf  a g f a
  g f g a  bf a g f
  g8 c, c' r
  c r c r
  c r c r
  c d4 c8 ~
  c8 b c16 b a c
  b a b c  d c b a
  b4 r8 e
  a,4 ~ a16 d f d
  b4 ~ b16 e g e
  c4 ~ c16 f a f
  d4 ~ d16 c b a
  g f e g  f e d f
  e8 r r16 b' c d
  e f g a  d, e f g
  e8 c16 d  e8 d16 e
  f8 e16 d  e8 c16 d
  e8 c16 d  e8 d16 e
  f8 r e r
  d r c r
  g' r g r
  g r r e
  a a  a g16 f
  g8 g g a16 g
  f8 f f e16 d
  e8 e e f16 e
  d8 d d c16 b
  c4 r8 e ~
  e[ a, d b]
  g'8 f16 e  d8 r
  R2
  c,8 g' g f16 g
  a8 g16 f  g8 c
  g e16 f  g8 f16 g
  a8 g16 f  g f e g
  f e d f  e d c e
  d c d e  f e d c
  d c b c  d c d f
  e d e f  g f e d
  e d cs d  e d e g
  f8 d16 e  f8 e16 f
  g8 f16 e  f8 d16 e
  f8 d16 e  f8 e16 f
  g8 r f r
  e r d r
  a'16 a' b, a'  cs, a' d, a'
  a, a' b, a'  cs, a' a, a'
  d, a' b, a'  cs, a' a, a'
  cs, a' e a  cs, a' a, a'
  d, a' b, a' cs, a' a, a'
  f a d, a'  e a cs, a'
  d, a' b, a'  cs, a' a, a'
  f a d, a'  e a cs, a'
  f d f, g  a bf g a
  bf c a bf  c a bf c
  f, a d, ef  f g ef f
  g a f g  a f g a
  d, f bf, c  d ef c d
  ef f d ef  a,8 d
  d16 c bf a  g b' cs d
  e d cs e  d cs b d
  cs b a b  cs d b cs
  d e cs d  e cs d e
  a,8 r8 r4
  R2
  r8 d g4 ~
  g8 f16 e  f8 f
  e16 d c d  e f d e
  f g e f  g e f g
  c, f a, bf  c d bf c
  d ef c d  g, f g a
  bf c d ef  f g ef f
  g a f g  a f g a
  d, f bf, c  d ef c d
  ef f d ef  f d ef f
  bf, e g, af  bf c af bf
  c d bf c  d bf c d
  g, c bf af  g f ef d
  c d bf c  d ef c d
  ef f d f  f8 f ~
  f ef16 d  c8. bf16
  bf4 r
  R2
  R
  R
  R
  R
  R
  R
  R
  R
  R
  c'16 c' d, c'  e, c' f, c'
  c, c' d, c'  e, c' c, c'
  f, c' d, c'  e, c' c, c'
  e, c' g c  e, c' c, c'
  f, c' d, c'  e, c' c, c'
  a c f, c'  g c e, c'
  f, c' d, c'  e, c' c, c'
  a c f, c'  g c e, c'
  f,8 e16 d c8 \noBeam f
  bf bf bf a16 g
  a8 a a bf16 a
  g8 g g f16 e
  f8 f f g16 f
  e8 a16 g  f ef d c
  d4 r8 d,8
  g[ c, f c]
  e c f a16 g
  f8[ d' d, c']
  a f16 g  a8 g16 a
  bf8 a16 g  a8 f16 g
  a8 f16 g  a8 g16 a
  bf8 a16 g  f8 \fermata r  \bar "|."
}}
CviolinoI = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violino I}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t
  R2*46
  r4 g'8 r
  g r f r
  f r e r
  e r d r
  d r c r
  c r b r
  e2 ~
  e8[ c f d]
  g2 ~
  g16 f g a  d, g f g
  e8 c r4
  R2*14
  cs8 a'4 cs,8
  d a'4 cs,16 b
  cs8 a'4 cs,8
  d a'4 e8
  f a4 cs,8
  d a'4 e8
  f8 a4 cs,8
  f r f r
  g r e r
  f r d r
  ef r c r
  d r bf r
  c r a r
  bf r r4
  R2*11
  r4 bf'4 ~
  bf a ~
  a g ~
  g f ~
  f ef ~
  ef d ~
  d8 g,  c d16 ef
  a,8 r bf r
  c r d4 ~
  d8 c16 bf  a8. bf16
  bf4 r
  R2*11
  e8 c'4 e,8
  f c'4 e,16 d
  e8 c'4 e,8
  f c'4 g8
  a c4 e,8
  f c'4 g8
  a c4 e,8
  f4 f ~
  f e ~
  e d ~
  d c ~
  c bf ~
  bf a ~
  a8 d  g a16 bf
  e,8 r f r
  g r a4 ~
  a8 g16 f  e8. f16
  f8 r f r
  f r f r
  f r f r
  f r f \fermata r \bar "|."
}}
CviolinoII = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violino II}
                               \line{di ripieno.}}}
  \set Score.skipBars = ##t
  R2*46
  r4 d8 r
  e r d r
  d r b r
  c r g r
  g r g r
  a r g r
  g c16 b c8 g
  a4 d8 b
  e4 d4 ~
  d8[ c g b]
  g e r4
  R2*14
  a8 r g r
  f r g r
  a r g r
  f r g r
  a r a r
  a r g r
  a r a r
  a r f' r
  e r g, r
  a r bf r
  c r ef, r
  f r g r
  a r a r
  g r8 r4
  R2*12
  ef'2
  d
  c
  bf
  af
  g
  f8 r f r
  a r bf r
  g[ g f f]
  f4 r
  R2*11
  c'8 r bf r
  a r bf r
  c r bf r
  a r bf r
  c r c r
  c r bf r
  c r c r
  a4 c
  bf2
  a
  g
  f
  g4 f
  f8 a d4
  c8 r c r
  e r f r
  d[ d c c]
  c r ef r
  d r a r
  c r ef r
  d r a \fermata r \bar "|."
}}
Cviola = \new Voice { \relative c'' {
  \clef alto
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Viola"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Viola}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t
  R2*46
  r4 b8 r
  a r a r
  b r g r
  f r f r
  e r e r
  d r d r
  c2 ~
  c8 f4 g8 ~
  g f4 e16 d
  c8[ g' b g]
  g4 r
  R2*14
  e8 r e r
  d r a r
  g' r e r
  d r a r
  d r e r
  d r cs r
  d r e r
  d r a' r
  bf r c r
  d r f, r
  g r a r
  bf r d, r
  ef r d r
  d r r4
  R2*11
  r4 g4 ~
  g8 a16 bf c8 c,
  f4 r8 bf
  ef, f16 g a8 a,
  d4 r8 g8
  c,[ c f f]
  bf, c16 d ef8 d
  c r d r
  ef r f r
  bf,[ ef c f]
  d4 r
  R2*11
  g8 r g r
  f r c r
  bf' r g r
  f r c r
  f r g r
  f r e r
  f r g r
  f4 f
  g2
  f
  e
  d
  c
  d8[ f bf a]
  g r a r
  bf r c r
  f,[ bf g g]
  a r c r
  bf r f r
  a r c r
  bf r f \fermata r \bar ".|-|"
}}
Cviolone = \new Voice { \relative c' {
  \clef bass
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-column{ \line{Violone}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t
  R2*46
  r4 b8 r
  c r d r
  g, r g r
  a r b r
  e, r e r
  f r g r
  c,[ d e c]
  f, f'16 e  d8 g16 f
  e8 d16 c  b8 g
  c8 e16 f  g8 g,
  c4 r
  R2*14
  a8 e' e d16 e
  f8 e16 d  e8 a
  e cs16 d  e8 d16 e
  f8 e16 d  e d cs e
  d cs b d  cs d e cs
  f e d f  e d cs e
  d cs b d  cs d e cs
  d8 a'[ d d]
  d e16 d  c8 c
  c d16 c  bf8 bf
  bf c16 bf a8 a
  a bf16 a  g8 g
  g a16 g fs8 fs
  g r r4
  R2*11
  r4 r8 g,
  c c c bf16 a
  bf8 bf  bf c16 bf
  a8 a  a g16 f
  g8 g g af16 g
  f8 f  f g16 f
  ef4 r8 ef'8 ~
  ef8 f16 ef d8 ef16 d
  c8 d16 c  bf8 d
  ef[ c f f,]
  bf4 r
  R2*11
  c8 g'  g f16 g
  a8 g16 f  g8 c
  g e16 f  g8 f16 g
  a8 g16 f  g f e g
  f e d f  e f g e
  a g f a  g f e g
  f e d f  e d c e
  d e f g  a bf g a
  bf c a bf  c a bf c
  f, a d, e  f g e f
  g a f g  a f g a
  d, f bf, c  d e c d
  e f d e  f d ef f
  bf,4 r8 bf'8 ~
  bf8 c16 bf  a8 bf16 a
  g8 a16 g  f8 a,
  bf[ g c c,]
  f r f r
  f r f r
  f r f r
  f r f \fermata r \bar ".|-|"
}}
Cvioloncello = \new Voice { \relative c {
  \clef bass
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violincello"
  \set Staff.instrumentName =
        \markup{\bold\center-column{Violoncello
                               \line{e Cembalo}}}
  f8 g a g16 a
  bf8 a16 g  a8 f16 g
  a8 f16 g  a8 g16 a
  bf8 a16 g  a8 d
  g,[ c f, a]
  c[ f, e f]
  c d e d16 e
  f8 e16 d  e8 c16 d
  e8 c16 d  e8 d16 e
  f8 r e r
  d r c r
  g'[ c, b c]
  g4 r8 g'8
  a g16 a  b8 a16 b
  c4 r8 c,8
  d c16 d  e8 d16 e
  f4 r8 f ~
  f[ ef d c]
  bf4 r8 bf'8
  c[ bf a g]
  f a16 g  f8 f,
  bf bf'  f a16 g
  f8 a16 g  f8 f,
  bf r f' r
  g[ g, a bf]
  c[ c' a f]
  c e16 d  c8 c,
  f f'  c e16 d
  c8 e16 d  c8 c,
  f r c' r
  d[ d, e f]
  g[ g' e c]
  g[ g' e c]
  f[ a f d]
  g[ b g e]
  a[ c a f]
  b[ d b g]
  c[ e, f g]
  a g16 f  e8 d
  c16[ d e f] g8 g,
  c r r4
  R2
  R
  R
  R
  R
  r8 g'16 a  b c a b
  c d b c  d b c d
  g, b e, f  g a f g
  a b g a  b g a b
  e, g c, d  e f d e
  f g e f  g e f g
  c,8[ d e c]
  f,8 f'16 e  d8 g16 f
  e8 d16 c  b8 g
  c e16 f  g8 g,
  c r c r
  c r c r
  c r c d16 e
  f8 e16 d  e8 a
  d,[ a' c, c,]
  g'[ c b c]
  g4 r8 g' ~
  g[ f cs d]
  a4 r8 a'
  d, f16 e  d8 d,
  g g' d f16 e
  d8 f16 e d8 d,
  g r d' r
  e[ e, f g]
  a[ f e d]
  a' e' e d16 e
  f8 e16 d  e8 a
  e cs16 d  e8 d16 e
  f8 e16 d  e d cs e
  d cs b d  cs d e cs
  f e d f  e d cs e
  d cs b d  cs d e cs
  d8 a'[ d d]
  d e16 d  c8 c
  c d16 c  bf8 bf
  bf c16 bf  a8 a
  a bf16 a  g8 g
  g a16 g  fs8 fs
  g f![ e d]
  cs[ a' d d,]
  a'4 r8 a
  b a16 b  cs8 b16 cs
  d4 r8 d,8
  e d16 e  fs8 e16 fs
  g4 r8 g
  a g16 a  b8 a16 b
  c4 r8 c,8
  d c16 d  e8 d16 e
  f8 c  f4 ~
  f8 ef16 d  ef8 ef
  d bf r g
  c c c bf16 a
  bf8 bf  bf c16 bf
  a8 a a g16 f
  g8 g  g af16 g
  f8 f  f g16 f
  ef4 r8 ef'8 ~
  ef f16 ef  d8 ef16 d
  c8 d16 c16  bf8 d
  ef[ c f f,]
  bf r bf r
  bf r bf r
  bf r bf c16 d
  ef8 d16 c  d8 g
  c,[ f bf bf,]
  f'[ bf, a bf]
  f' a16 g  f8 f,
  bf bf'  f a16 g
  f8 a16 g  f8 f,
  bf r f' r
  g[ g, a bf]
  c[ a g f]
  c' g'  g f16 g
  a8 g16 f  g8 c
  g e16 f  g8 f16 g
  a8 g16 f  g f e g
  f e d f  e f g e
  a g f a  g f e g
  f e d f  e d c e
  d e f g  a bf g a
  bf c a bf  c a bf c
  f, a d, e  f g e f
  g a f g  a f g a
  d, f bf, c  d e c d
  e f d e  f d ef f
  bf,4 r8 bf' ~
  bf c16 bf  a8 bf16 a
  g8 a16 g  f8 a,
  bf[ g c c,]
  f r f r
  f r f r
  f r f r
  f r f \fermata r \bar "|."
}}
