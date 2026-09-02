\version "2.24.4"
#(set-global-staff-size 20)
\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
}
\header {
    title = "N° 26 : Gott, wie gross ist deine Güte"
    composer = "Jean-Sébastien Bach (1685-1750)"
    subtitle = "Schmellis Gesangbuch"
    opus = "BWV 462"
    tagline = ##f
}
global = {
  \key bes \major
  \time 4/4
}
melody={
  \repeat volta 2 \relative c'' {
    d4 d8 (c8) c4 c4 |
    f8 [ (g) ] f (ees) d4 d4 |
    ees4. f8 d8 [(c)] d (ees) |
    c4. bes8 bes2
  } \break
  \relative c'' {
    d4 d bes4. bes8 |
    ees8 [(d)] c (bes) a4 a |
    d4 d bes4. c8 |
    a4 d4 b2 |
  } \break
  \relative c'' {
    d4. d8 ees4 ees |
    ees8 [(c)] d (ees) c4 c |
    f4. g8 ees8 [(d)] ees (f) |
    d4. c8 c2 |
  } \break
  \relative c'' {
    ees4 ees ees8 [(d)] ees (f) |
    d4. d8 d8 [(c)] d (ees) |
    c4. c8 c8 [(ees)] d (c) |
    c4. bes8 bes4 bes |
  } \break
}
hymnA=\lyricmode {
  {
    Gott, wie gross ist dei -- ne Gü -- te die mein Herz auf Er -- den schmeckt
  }
}
hymnB=\lyricmode{
  Ach, wie labt sich mein Ge -- mü -- the, wenn mich Noth un Tod er -- schreckt
  Wenn mich et -- was will be -- trü -- ben, wenn mich mei -- ne Sün -- de presst,
  zei -- get sie von dei -- nem Lie -- ben, das mich nicht ver -- za -- gen lässt;
  drauf ich mich zu -- frie -- den stel -- le und Trotz bie -- ten kann der Höl -- le.
}
bass={
  \repeat volta 2 {
    \relative c' {
        bes4 bes, f'8 g f ees |
        d4 d g8 a bes g |
        c8 bes a f bes4 ees, |
        f8 ees f f, bes2
    }
  }
  \relative c {
    bes8 c d bes ees8 f ees d |
    c4 g d'8 ees d c |
    bes8 a g fis g4 c4 |
    d4 d,4 g8 d' g a |
  }
  \relative c' {
    b8 d g, b  c8 bes a g |
    f4 bes, f'8 g f ees |
    d8 c b g c4 f |
    g8 f g g, c2
  }
  \relative c' {
    c8 d c bes a4 f |
    bes8 c bes a g4 f |
    ees8 c d ees f4 bes, |
    f'8 ees f f, bes2
  }
}
bassfigures = \figuremode {
  \repeat volta 2{
    s1
    s1
    s4 <6 5>4 s4 <7 5>4 |
    <4>4 <3>4 s2
  }
  {
    s4 <6>4 <9>8 <7>16 <6> <8>4 |
    s4 <4>8 <3>8 <4>4 <_+>4 |
    <6>4 <5 2>4 <9>8 <8>16 <7\\>16 <7 5>4 |
    <4>4 <_+>4 <_!>2
  }
  {
    <6>4 <_!>4 s4 <6 5>8 <6>8 |
    <7 5>4 s4 <4>4 <3>4 |
    <6\\ 5->4 <6 5>4 s4 <7 5 _->8 <6>8 |
    <5 4>4 <_!>4 s2
  }
  {
    s2 <6 5>4 <7> |
    <9>8 <7>16 <6> <8>4 s4 <6 4 2>4 |
    <6 5>2 s4 s4 |
    <4>4 <3>4 s2 |
  }
}
\score {
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "upper" { \clef treble \global \new Voice = "melody" \melody }
    \new Lyrics \lyricsto "melody" { \hymnA }
    \new Lyrics \lyricsto "melody" { \hymnB }
    \new Staff = "lower" { \clef bass \global \bass }
    \new FiguredBass{ \bassfigures }
  >>
  \layout{ }
  \midi  { \tempo 4 = 70 }
}
