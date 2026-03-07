\version "2.24.4"

\language "deutsch"

#(set-default-paper-size "a4" 'landscape)

\header {
  title = "Erbarm dich mein, o Herre Gott"
  opus = "BWV 721"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

global = {
  \key h \minor
  \time 2/2
}

sv = \relative c' {
  \repeat volta 2 {
    R1 | r2 fis | a ais | h cis | d cis |
    h r | r a | d cis | d h | a g |
    fis1 |
  }
  R1 | r2 fis | h h | a d |
  cis 4 c h2 | a r |
  r a | d a | h fis | a g | fis r |
  r fis | h h | a fis | g e | d r |
  r d | a' h | cis d | h a | h g | fis1 ~ | fis |
}

av = \relative c' {
  \repeat volta 2 {
    cis8 cis cis cis d d d d |
    e e e e e e d d |
    cis cis cis cis fis fis e e |
    d d d d e e a g |
    fis fis g g g g <a d,> q |
    q <a dis,> <g e> q <fis c> q <fis h,> q |
    q q <e cis> <e h> e e d d |
    d d e e e e fis e |
    d d fis fis g g g g |
    g g fis fis d d e e |
    e e d d cis cis cis cis |
  }
  d d e e cis cis d d |
  e e e e e e d d |
  fis fis fis fis <fis h,> <e h> <e d> q |
  <e cis> q q q <fis d> q d d |
  e e fis fis h, h e e |
  e e <fis d> q d d d d |
  cis cis cis cis d d d d |
  d d d d e e d d |
  d d d d d d cis cis |
  dis dis h h h h cis cis |
  cis cis d d h h h h |
  ais ais h h cis cis cis cis |
  dis dis e e fis fis g g |
  <e c> q q q <e cis> q <dis h> q |
  <e h> q <d h> q q q cis cis |
  cis cis h h a a d d |
  h h e e a, a h h |
  cis? cis d d d d e e |
  gis gis fis fis fis fis fis fis |
  fis fis e e e e d d |
  <fis h,> q dis dis h h e e |
  cis cis d d cis cis cis cis |
  d d d d cis2 |
}

tv = \relative c {
  \repeat volta 2 {
    <a' fis>8 q q q q q <g d> q |
    <a g> q q q <a fis> a h h |
    a a g g fis fis cis' cis |
    fis, fis h h a a a ais |
    h h h h h h a a |
    h h h h a a a a |
    g g g g a a a a |
    a a g g g g fis fis |
    fis fis h h h h d d |
    cis cis <cis fis,> q fis, fis  <a e> q |
    <a fis> <ais fis> <h g> <h gis> h h a gis |
  }
  a a h h <h g> q a a |
  a a <a g> q <a fis> q h h |
  h h a a g g h h |
  a a a a a a a a |
  gis gis a a a a gis gis |
  a a <a fis> q <h g> q <h gis> q |
  <h e,> <a e> q q <a fis> q a a |
  <a fis> q g g g g fis fis |
  g g g g a a a a |
  fis fis fis fis g g <a e> q |
  <fis e> q <fis d> q fis fis e e |
  e e d d e e fis fis |
  fis fis <h g> q h a <h g> q |
  g g fis fis fis fis fis fis |
  e e e e e e fis fis |
  fis fis g g g fis fis fis |
  g g g g fis fis g g |
  g g fis fis g g gis gis |
  <h gis> q a a a a <a fis> q |
  <h g?> <h g> h h <a g> q <a fis> q |
  a a <a fis> q g g e e |
  fis fis fis gis ais ais ais ais |
  h h <h gis> q <ais fis>2 |
}

bv = \relative c {
  \repeat volta 2 {
    fis,8 fis a a h h h h |
    cis cis cis cis d d h h |
    fis' fis e e d d cis cis |
    h h g' g g g fis e |
    d d h h e e fis fis |
    g g e e e e dis dis |
    e e e e fis fis fis fis |
    h, h e e a, a ais ais |
    h h d d e e g, g |
    a a a a h h cis cis |
    d d h h fis' fis fis fis |
  }
  fis fis g g e e fis fis |
  cis cis cis cis d d d d |
  dis dis dis dis e e gis gis |
  a a g g fis fis f f |
  e e dis dis e e d d |
  cis cis c c h h e e |
  a, a g g fis fis fis' fis |
  h, h h h cis cis d d |
  g, g h h d d fis fis |
  h, h dis dis e e a, a |
  ais ais h h gis gis g g |
  fis fis h h h h ais ais |
  a? a g g dis' dis e e |
  c c a a ais ais h h |
  e, e g g gis gis ais ais |
  h h g g d' d h h |
  e e c c c c h h | 
  a a d d g, g e' e |
  eis eis fis fis d d h h |
  e e g g cis, cis d d |
  dis dis h h e e c c |
  ais ais h h fis fis e' e |
 d d eis, eis fis2 |
}

\new PianoStaff <<
  \new Staff {
    \global
    \clef treble
    << { \sv } \\ { \av } >>
    \bar "|."
  }
  \new Staff {
    \global
    \clef bass
    << { \tv } \\ { \bv } >>
    \bar "|."
  }
>>

\markup \column {
  \wordwrap {
    C'est uneœuvre précoce pour orgue de Bach.
    Selon Malcolm Boyd : composé entre 1703 et 1709.
  }
  \combine \null \vspace #0.3
  \wordwrap {
    Source :
    Jean Sébastien Bach : Œuvres pour Orgue.
    Volume 3.
    Les Chorals Transmis Individuellement.
    Édité par Hans Klotz.
    Bärenreiter BA 5173, 1961.
    Pages 28–29.
    Klotz indique “Manualiter”.
  }
}