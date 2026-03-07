\version "2.22.0"

scoreAFlute = \relative c'' {
  R1 * 7 |
  \tag #'parts {
    <>_\markup \tiny {Violino I}
    \cueDuring "scoreAViolinI" #down {R1} |
  }
  \tag #'score {
    R1 |
  }
  \oneVoice e1~\paren\p | e16 a, c e \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber a16\bracketizeSlur( b c) b\bracketizeSlur( a gis) a g f e\bracketizeSlur( f d)}
  \footnote "*)" #'(0 . 0.1) \markup {"*)" \dotted_rhythm_footnote_A} e16.[ a,32 gis16. d'32] \slurSolid |
  c8 r r \tuplet 3/2 {\once \undo \omit TupletNumber g'16( f e)} d8 r r \tuplet 3/2 {f16( e d)} |
  c8 r r \tuplet 3/2 {c16( d e)} f8 r r \tuplet 3/2 {a,16( b c)} |
  d8 r r f \tuplet 3/2 {\once \undo \omit TupletNumber e16( d c)} a'8~ \tuplet 3/2 {\slurDotted a16\bracketizeSlur( b c) b\bracketizeSlur( c a)} \slurSolid |
  \tuplet 3/2 {\slurDashed gis16( e) e \slurSolid f( dis e) f( dis e) f( dis e) \slurDashed gis,( a b) a\paren\f( b c) b( e d) c( b a)} |
  gis8 \tuplet 3/2 {a'16\paren\p( b c)} b8 \tuplet 3/2 {a16( b c) b( a gis)} e'4.~ |
  e8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 e, fis g! fis g a, e' fis g\bracketizeSlur( fis e)} |
  fis8 r r \tuplet 3/2 {a16\bracketizeSlur( g fis)} g8 r \tuplet 3/2 {\once \undo \omit TupletNumber r16 f g a\bracketizeSlur( g f)} \slurSolid |
  e8 r r4 r 2 |
  r8 \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber c'16\paren\f( b a) g( fis e) \slurSolid dis( e fis)} \slurDashed b,8.[( cis32 dis]) \tuplet 3/2 {\once \override TupletNumber.transparent = ##f e16-. fis-. g-. a-. b-. c-.} |
  \tuplet 3/2 {b16-. a-. g-. fis( g e)} b16.[ e32 fis16. dis32] e16. e,32 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f c'16( b a)} g8 \override ParenthesesItem.font-size = #0 fis-\bracketify\trill \slurSolid |
  \mark \default e8 r8 r4 r2 | r8 b'8\paren\p b4~ b16 e, g b \tuplet 3/2 {\slurDashed \once \override TupletNumber.transparent = ##f e16\bracketizeSlur( fis g) fis\bracketizeSlur( e dis)} |
  e8[ \tuplet 3/2 {e'16\bracketizeSlur( d c)]} b8 r r \tuplet 3/2 {c16\bracketizeSlur( d e)} a,8 r \slurSolid  |
  r4 a( g fis) | e8 a, g dis e
  \tag #'parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    \footnote "*)" #'(0 . 1) \markup {"*)" \sixteenth_to_triplet_footnote_A} r16
  }
  e'16\paren\f dis16.[ fis32 b,16. fis'32] |
  g8 \slurDashed b\bracketizeSlur(\paren\p g e) cis2 | d8 r r4 r8 g,\bracketizeSlur( d' f) \slurSolid |
  e8 r r \tuplet 3/2 {\once \override TupletNumber.transparent = ##f d16( e f)} e8 r r \tuplet 3/2 {gis16( a b)} |
  a8 r r \tuplet 3/2 {b16( a gis)} a8 r r \tuplet 3/2 {a16( gis fis)} |
  d'8 r r4 r8 b,( d f!) | b2~ b8 a4\paren\f gis8 |
  a8 r r \tuplet 3/2 {cis16(\paren\p d e)} d8 r r \tuplet 3/2 {\slurDashed a16( g! f)} \slurSolid |
  f1~ | f4~ \tuplet 3/2 {f16 d b} gis16. f'32\brack\f e8 a b, gis' |
  a8 r r4 r2 |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 a_\brack\p a \repeat unfold 3 {bes( gis a)} cis,( d e) d( e f) e( a g) f( e d)} |
  \tuplet 3/2 {\slurDashed cis16\bracketizeSlur( b a)} r8 r4 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 a' b c! b c d, a' b c\bracketizeSlur( b a)} \slurSolid |
  \tuplet 3/2 {b16( a g)} r8 r bes~ \tuplet 3/2 {bes16 g\paren\f a bes a bes c, g' a \slurDashed bes\bracketizeSlur( a g)} |
  a2 g | \tuplet 3/2 {\slurDashed f16( a g) f( e d) c( b a) gis( a b)} \slurSolid e,8.[( fis32 gis]) \tuplet 3/2 {\once \override TupletNumber.transparent = ##f a16-. b-. c-. d-. e-. f!-.} |
  \mark \default \tuplet 3/2 {e16-. d-. c-. \slurDashed b( c a)} \slurSolid e16.[ a32 b16. gis32] a8 r r gis8\paren\p |
  a8 r r4 r2 | R1 * 3 | r8 d4\paren\p c b a8~ |
  a8 g4 a8 \tuplet 3/2 {\once \undo \omit TupletNumber b16[( c d)} g8]-. \tuplet 3/2 {c,16[( d e)} a8]-. |
  \tuplet 3/2 {d,16[( e f)} b8]-. \tuplet 3/2 {e,16[( f g)} c8]-. \tuplet 3/2 {f,16[( g a)} d,8]~ \slurDashed \tuplet 3/2 {d16\bracketizeSlur([ e f)} b,8]\trill |
  c8 r r4 r2 | R1 | g'1~\paren\f |
  g16 c,\paren\p e g \tuplet 3/2 {\once \undo \omit TupletNumber c16\bracketizeSlur( d e) d\bracketizeSlur( c b) c b a g\bracketizeSlur( a f) e\bracketizeSlur( d c) b\bracketizeSlur( c d)} \slurSolid |
  g,8 r r4 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 f g a( b! c) c( d e) e( d c)} |
  b8 gis a b c r r4 | R1 *2 |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 e f g f g c, g' a \slurDashed bes\bracketizeSlur( a g)} a2~ |
  \tuplet 3/2 {a16 fis g a g a d, a' b! c\bracketizeSlur( b a)} \slurSolid b2~ |
  b8 r r4 r2 | R1 | r2 r16. e,32[\paren\p gis,16. b32] e,8 r |
  r16. c''32[ e,16. b'32] dis,8 r r16. dis'32[ e16. b32] c8 r |
  a1~ | a4 r r16. dis,32[\paren\f e16. fis32] b,8 dis |
  \mark \default e8 a\paren\p gis b a[ e16. dis32] e8 e | c'1 | dis,8 r r4 r r8 dis'8_\brack\f |
  e2 d!~ | d16.[ c32 a16. c32] fis,16.[ a32 dis,16. fis32] b,16.[ b'32 g16. b32] e,16.[ g32 cis,16. e32] |
  a,8 dis \tuplet 3/2 {\once \override TupletNumber.transparent = ##f e16( fis g)} fis8~ \tuplet 3/2 {fis16 e fis b, cis dis e fis g a b c!} |
  \tuplet 3/2 {b16 a g \slurDashed fis\bracketizeSlur( g e)} b16.[ e32 fis16. dis32] e2~ |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f e16 c d! e d e a, e' fis g\bracketizeSlur( fis e)} fis2~ |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f fis16 dis e fis e fis b, fis' g a\bracketizeSlur( g fis) b\bracketizeSlur( a g) c\bracketizeSlur( b a)} \slurSolid g8 fis-\bracketify\trill |
  e8 r r4 r2 | r2 r16 a,16\paren\f c e \tuplet 3/2 {\once \override TupletNumber.transparent = ##f a16( b c) b( a gis)} |
  a8 r r4 r8 g16.\paren\f f32 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f e16( d c) d( e f)} |
  \tuplet 3/2 {e16( d c)} r8 r4 r2 |
  R1 * 2 | r2 r8 d16 e f a g d |
  \tuplet 3/2 {\slurDashed \once \override TupletNumber.transparent = ##f e16\bracketizeSlur( d cis)} bes'8~ \tuplet 3/2 {bes16 e, d cis\bracketizeSlur( b a) f'\bracketizeSlur( e d)} r8 r4 |
  r8 fis-.\paren\p g-. a-. bes r r4 | r2 r8 e,-. fis-. gis-. |
  a8 r r d c r r4 | r8 e,16_\brack\f f g bes a cis, d8 r r4 |
  r8 cis_\brack\p d e f g f e | d8 bes'\paren\f  a g f r r4 |
  R1 * 2 | r2 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 e\p f g f g c, g' a bes\bracketizeSlur( a g)} \slurSolid |
  a4( g f e) | d8 \phrasingSlurDashed \phrasingSlurDown g\bracketizeSlur\(( f\) cis)
  \footnote "*)" #'(0 . 1) \markup {"*)" \long_dotted_rhythm_footnote_A} d8.
  e16\paren\f e8.-\bracketify\trill d16 |
  \mark \default d1_\brack\p~ | d1 | c8 r r4 r2 |
  r8 a16\f b c e d b c a c e \tuplet 3/2 {\once \override TupletNumber.transparent = ##f a16( b c) b( a gis)} |
  a1_\brack\p~ | a1 | g8 r e(\paren\p dis) r4 b'8( c) |
  r2 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 gis\f a b a b e, gis a \slurDashed b\bracketizeSlur( a gis)} |
  a8 r r4 r8 e'16.( d32) \slurSolid \tuplet 3/2 {\once \override TupletNumber.transparent = ##f c16( b a) b( c d) | c( b a)}
  r8 r4 r8 d16.( c32) \tuplet 3/2 {\once \override TupletNumber.transparent = ##f b16( a g) a( b c) | b( a g)}
  r8 r4 r2 | b1\trill | a1\trill |
  g16\p d e fis \tuplet 3/2 {\once \override TupletNumber.transparent = ##f g16( a b) a( g fis)} g8 c b fis |
  r8 a-. g-. c,( b) e\paren\f-. d-. c-. |
  b8[-. \tuplet 3/2 {b'16\paren\p( a b])} fis,8[-. \tuplet 3/2 {c''16( b c])} g,8[-. \tuplet 3/2 {d''16( c d])} g,,8[-. \tuplet 3/2 {e''16( d e])} |
  c8[-. \tuplet 3/2 {a16( g a])} c8[-. \tuplet 3/2 {c,16( b c])} b8 d\f f! as |
  b4 r r16 c,16 \slurDashed g'\bracketizeSlur( a) \slurSolid bes d c g | a1 |
  b2 a8[ \tuplet 3/2 {\once \override TupletNumber.transparent = ##f d,16\paren\p( e f])} g8-. r |
  r8 \tuplet 3/2 {b,16( c d)} e8 r r \tuplet 3/2 {fis16( e fis)} d'8 r |
  r8 \tuplet 3/2 {b16( a gis)} a8 r r \tuplet 3/2 {c16( b a)} a8[ \tuplet 3/2 {d16( c b])} |
  \mark \default b8 r e,4 d c | b8 \tuplet 3/2 {b'16( c d)} f,8 f4 f8~ \tuplet 3/2 {\slurDashed f16( e d) \slurSolid c( b a)} |
  a8 gis r a r e' r fis | r8 gis a r d, e f4 |
  e4 d cis16.[ e32 a16. g32] f16.[ cis32 d8]~ | d8 d4 d8~ d b' r gis |
  r8 e r d r c r e' | r8 c r a r bes r g |
  r8 e r cis r d r f | r8 a r d r gis, r b |
  r8 e, r d' r cis r cis | r8 dis r dis r e r d |
  r8 c r c r b r b | \mark \default c8 r r gis a r r d, |
  c8 r r f\f e16 a, c e \tuplet 3/2 {\slurDashed \once \override TupletNumber.transparent = ##f a16( b c) b( a gis)} |
  a8 e\bracketizeSlur(\p a c) \slurSolid e2 | d8 r r4 r8 \tuplet 3/2 {\once \override TupletNumber.transparent = ##f b16( c d)} g,8 f |
  e8 r r4 r4 r16. d32[ f16. a32] |
  d8[ \tuplet 3/2 {\once \override TupletNumber.transparent = ##f c16( b a])} b8 a( gis)[ \tuplet 3/2 {\slurDashed a16( gis fis])} \slurSolid gis8 dis( |
  e8) \tuplet 3/2 {fis16( gis a)} gis8 c( b) dis( e) r |
  r8 e,( gis b) d2~ | d2~ d8[ c16.\f b32] a8[( gis16.) a32] |
  a8[ \tuplet 3/2 {\once \override TupletNumber.transparent = ##f g!16\paren\p( a bes])} e,8 r r \tuplet 3/2 {cis16( d e)} a,8 r |
  d1~ | d1~ | d8 r r4 r2 |
  \tag #'parts {
    <>_\markup \tiny {Violino I}
    \cueDuring "scoreAViolinI" #down {R1} |
  }
  \tag #'score {
    R1 |
  }
  r8 a16\f b c e d b c a c e \tuplet 3/2 {\once \override TupletNumber.transparent = ##f a16( b c) b( a gis)} |
  \tuplet 3/2 {a16( e) e f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) b( e d) c( b a)} |
  gis8 r r4 r2 |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f r16 e' f g f g a, e' f \slurDashed g\bracketizeSlur( f e) f d e f e f g, d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[ c16. e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \override TupletNumber.transparent = ##f \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\once \override TupletNumber.transparent = ##f c16( b a) f'( e d) c( b a) gis( a b)} \phrasingSlurUp e,8.\bracketizeSlur([ fis32 gis)] \tuplet 3/2 {\once \override TupletNumber.transparent = ##f a16 b c d e f!} |
  \tuplet 3/2 {e16 d c b( c a)} e16.[ a32 b16. gis32] a8 r r16. e'32[ e,16. gis32] |
  a4 r r2 \bar "|."|




}
