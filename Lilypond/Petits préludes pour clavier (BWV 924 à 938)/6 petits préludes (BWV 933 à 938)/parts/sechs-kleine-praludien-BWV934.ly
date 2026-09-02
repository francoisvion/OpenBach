Global = {
  \key c \minor
  \time 3/4
}
Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  | c8[ d es g, d' f,]
  | \appoggiatura f16 es8[ d c es g c]
  | f,[ es' d f as c,]
  | \appoggiatura c16 b8[ a g b d f]
    \break
  | es[ c g c e c]
  | f[ c g' c, as'! c,]
  | d[ bes f bes d bes]
  | es[ bes f' bes, g' bes,]
    \break
  | c[ as g as c es]
  | bes[ g f g bes es]
  | as,[ g f g as es]
  | d[ es f d bes as]
    \break
  | g[ bes es bes g bes]
  | as[ es' bes es c es]
  | bes[ es c es des es]
  | c4 es as~
  | as f d'!~
  | d4 bes g'~
  | g8[ f es d c d]
  | \stemUp es2.
    \pageBreak
  }
  \repeat volta 2 {
  | \stemNeutral
    g8[ as bes g bes f]
  | e[ d! c e g bes]
  | as[ f des g e c]
  | bes[ g as c f a,]
    \break
  | bes[ d! f as! g f]
  | g[ es d c b f']
  | es[ d c es a, g ]
  | fis[ g a fis d a']
    \break
  | d[ g, fis c' bes g]
  | c,[ fis g a es c]
  | bes[ d fis g a, fis']
  | g4 bes2-\mordent ~
    \break
  | bes8[ des e c g' bes,]
  | as![ bes c as f e]
  | f[ as b g d' f,]
  | es![ f g es c b]
  | c[ es fis d a' c,]
  | b[ d f as g b]
  | d[ f es c g b]
  | \stemUp c2.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}
Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \repeat volta 2 {
  | s2.*19
  | g8\rest bes8 g2
  }
  \repeat volta 2 {
    s2.*19
    f8\rest g8 es2
  }
}
Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  | c4 c' g
  | as as, r
  | as' f d
  | g g, r
  | c c' bes!
  | as! g f
  | bes, bes' as
  | g f es
  | as c f,
  | g bes es,
  | f as f
  | bes bes, d
  | es es, des'
  | c bes as
  | g f es
  | as8[ es' as g f es]
  | d![ f bes as g f]
  | g[ bes es des c bes]
  | as4 bes bes,
  | es4. bes'8 es4
  }
  \repeat volta 2 {
  | ees, es' des
  | c e, c
  | f bes, c
  | f, f' es!
  | d! bes d
  | es es' d
  | c a c
  | d d, c
  | bes a g
  | es' d c
  | d c d
  | g,8[ d' g bes des f,!]
  | e4 c e
  | f8[ g] as!4 r
  | b, g b
  | c8[ d] es!4 r
  | fis, d fis
  | g d' es
  | as,! f g
  | c4. g'8 c4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
}
\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = "Jean-Sébastien Bach (1685-1750)"
    opus = "BWV 934"
    title = \markup { "2. Petit Prélude en Do mineur" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 90
  }
}
