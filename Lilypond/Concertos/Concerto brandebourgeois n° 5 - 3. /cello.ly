\version "2.24.0"
\include "header.ly"
cello = \relative c {
  \tempo "Allegro."
  \clef bass
  \key d \major
  \time 2/4
  R2*28 |
  \repeat unfold 2 {
    r4 fis,8 r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |
    fis8 r fis r |
    g8 r a r |
    b8 r a r |
    b8 r cis r |
    d8 r r4 |
    R2 |
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8( a) g fis( g) a } |
    \hide TupletNumber
    d,8 r e r |
    fis8 r fis, r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |
    fis8 r g r |
    a8 r b r |
    cis8. \noBeam a16 d8. a16 |
    \tuplet 3/2 {
      b8( a) g fis( g) a |
      d,8( fis) e d( e) fis |
    }
    g8 r a r |
    b8 r b, r |
    r4 b'8 r |
    fis8 r fis, r |
    r4 fis'8 r |
    gis8 r gis, r |
    r4 gis'8 r |
    a8 r fis r |
    b,8 r e r |
    a,8 r d r |
    g,4 r |
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8( a) g } a8. a16 |
    d,8 r fis r |
    g8 r c r |
    b8. \noBeam g'16 d'8. a16 |
    \tuplet 3/2 { b8( a) g fis( gis) a } |
    gis8 r gis, r |
    r4 gis'8 r |
    gis8 r gis, r |
    r4 gis'8 r |
    a8 r r r16 fis |
    b8 r r r16 g |
    cis8 r r r16 a |
    d8 r fis, r |
    g8 r a r |
    \tuplet 3/2 { b8( a) g } a8. a,16 |
  }
  \alternative {
    {
      \tuplet 3/2 { d8( fis) e d( e fis) } |
      b,8 r r4 |
      \repeat unfold 6 { b8 r r4 } |
      r8 r16 fis' \tuplet 3/2 {
        b8( d) cis |
        d8( cis) b ais( g) cis |
      }
      fis,4 ~ \tuplet 3/2 { fis8 g e } |
      \tuplet 3/2 { d8( cis b) } r4 |
      \repeat unfold 6 { b8 r r4 } |
      r8 r16 fis' \tuplet 3/2 {
        b8( a) gis |
        a8( gis) fis eis( fis) gis |
      }
      cis,4 ~ \tuplet 3/2 { cis8 d b } |
      \tuplet 3/2 { a8( gis fis) } r4 |
      \repeat unfold 7 { fis8 r r4 } |
      R2*21 |
      r4 a8_\forteB r |
      b8 r cis r |
      d8 r dis r |
      e8 r fis r |
      g8 r gis r |
      a8 r b r |
      cis8 r cis, r |
      d8 r e r |
      fis8 r fis, r |
      gis8 r gis' r |
      a8 r a, r |
      b8 r b' r |
      cis8 r cis, r |
      d8 r d' r |
      d8 r cis r |
      d8 r e r |
      \tuplet 3/2 { fis8( e) d cis( dis) e } |
      dis4 r8 b |
      e8. d!16 cis8. fis,16 |
      e8. d16 e8. e,16 |
      a8_\pianoB r a' r |
      \repeat unfold 6 { a,8 r a' r } |
      a,8 r r4 |
      R2 * 22 |
      r4 b |
      e,4 r |
      r4 a |
      d,4 r |
      R2 * 10 |
      r4 r8 a' |
      d8 r r4 |
      cis8 r r4 |
      b8 r r4 |
      a8 r r4 |
      gis8 r fis r |
      \repeat unfold 5 { cis'8 r r4 } |
      cis'8 r cis, r |
      fis8 r r4 |
      fis8 r fis, r |
      g8 r r4 |
      a8 r b r |
      e,8 r r4 |
      a8 r d r |
      b8 r g r |
      e8 r a r |
      d,8 r g r |
      d'8 r c r |
      b2 ~ |
      b8.\noBeam fis'16 b8. fis16 |
      g8. fis16 g8. e16 |
      fis2 ~ |
      fis2 ~ |
      \repeat unfold 3 { fis2 ~ } |
      fis8.\noBeam b,16 fis'8. a,16 |
      \tuplet 3/2 { b8( a) g ais( b) cis } |
      fis,4 ~ \tuplet 3/2 { fis8 fis' e } |
      d8 r r4 |
      R2*4 |
      r8 r16 g d8. e16 |
      fis8. e16 fis8. fis,16 |
      b4 r |
      d4 r |
      R2*27 |
    } {
      d2\fermata \bar "|."
    }
  }
}
