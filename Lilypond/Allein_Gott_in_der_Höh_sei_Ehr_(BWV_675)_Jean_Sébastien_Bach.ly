\version "2.24.4"
\language "deutsch"
\header {
  title = "Allein Gott in der Höh sei Ehr"
  opus = "BWV 675"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
#(set-global-staff-size 18)
global = {
  \key f \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 1,1,1
  #(set-accidental-style 'default)
  \override Score.MetronomeMark.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
}
halsup     = { \stemUp \tieUp \slurUp \dotsUp }
halsdown   = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
staffup    = { \change Staff = "right" }
staffdown  = { \change Staff = "left" }
triolen = { \set Timing.beamExceptions = #'() }
duolen = { \set Timing.beamExceptions = #'() }
showTripletNumber = { \revert TupletNumber.text }
hideTripletNumber = { \override TupletNumber.text = #"" }
sopran = {
  \new Voice \relative f' {
    \global
    \halsup \once \override TextScript.extra-offset = #'( -4 . 0 )
    r4^\markup{ "Cantus firmus à l'alto" \tiny "(à 3 voix)" } f g
    a4. b16 c \tuplet 3/2 {b [a g]} \tuplet 3/2 {a [g f]}
    \repeat volta 2 {
      c'8 c, c'4. b8~
      b8 a16 g a8 d g, c
      a16 b c8~ \tuplet 3/2 {c16 [b a]} f'8~ \tuplet 3/2 {f16 [e d]} \tuplet 3/2 {e [f g~]}
      g16 c, d e f g a8~ \tuplet 3/2 {a16 [g f]} \tuplet 3/2 {g [a b~]}
      b8 a16 g f8 a d, g
      cis,8 d~ \tuplet 3/2 {d16 [e f]} \tuplet 3/2 {e [d cis!]} \tuplet 3/2 {d [e f]} \tuplet 3/2 {e [f g~]}
      g8. f32 e \tuplet 3/2 {f16 [e d]} \tuplet 3/2 {e [d cis]} \tuplet 3/2 {d [c b!]} \tuplet 3/2 {c [b a]}
      \tuplet 3/2 {b16 [a g]} a8~ \tuplet 3/2 {a16 [a' g]} \tuplet 3/2 {f [e d~]} \tuplet 3/2 {d [g f]} \tuplet 3/2 {e [d cis]}
      \tuplet 3/2 {d16 [c! b]} \tuplet 3/2 {a [g f]} \tuplet 3/2 {b [a g]} \tuplet 3/2 {f [e d]} << \new Voice {\stemDown a16 e' g cis \stemUp d8 d16 c!}
      \new Voice { s8 g \stemUp \shiftOn f8 s } >> d'8 f b, es~
      es16 d g8~ \tuplet 3/2 {g16 [f e!]} \tuplet 3/2 {d [cis d~]} \tuplet 3/2 {d [e d]} \tuplet 3/2 {c [h c]~}
      c8 b!16 a b8 d g, c
      \once \override Slur.extra-offset = #'( -0.1 . 0.5 ) \appoggiatura b16 a8 d16 c b8 es c f
      \tuplet 3/2 {  b,16 a b }  g'8~ \tuplet 3/2 {g16 [a, b]} \tuplet 3/2 {c [d e!]} \tuplet 3/2 {f [e d]} \tuplet 3/2 {c [b a]}
      \tuplet 3/2 {d16 [c b]} \tuplet 3/2 {a [g f]} \tuplet 3/2 {b [a g]} \tuplet 3/2 {f [e d]} \tuplet 3/2 {c [g' a]} \tuplet 3/2 {b [a g]}
      \tuplet 3/2 {a16 [g f]}  \tuplet 3/2 {g [f e]} \tuplet 3/2 {f [a g]} \tuplet 3/2 {f [e d]} \staffdown \tuplet 3/2 {c [b a]} \tuplet 3/2 {b [a g]}
      \alternative {
        {
          a8 f \staffup f'4 g
          a4. b16 c \tuplet 3/2 {b [a g]} \tuplet 3/2 {a [g f]}
        }
        {
          \staffdown a,8 f \staffup r4 r
        }
      }
    }
    r4 g' a
    b4. c16 d \tuplet 3/2 {c [b a]} \tuplet 3/2 {b [a g]}
    a8 d, d'4. cis8
    f8 b,16 a b8 es a, d
    g,4~ \tuplet 3/2 {g16 [a b]} \tuplet 3/2 {c [b a]}  f'8[ f,~]
    \tuplet 3/2 {f16 [g a]} \tuplet 3/2 {b [a g]}  es'16 es, es'8~ \tuplet 3/2 {es16 [c b]} \tuplet 3/2 {a [b c]}
    d8 b a f d d'~
    d16 c b a b8 es a, d
    d,16 f es d es8 es'~ \tuplet 3/2 {es16 [f es]} \tuplet 3/2 {d [c d]~}
    \tuplet 3/2 {d16 [es d]} \tuplet 3/2 {c [b c]~} \tuplet 3/2 {c [c b]} \tuplet 3/2 {a [g a]~} \tuplet 3/2 {a [c d]} \tuplet 3/2 {es! [d c]}
    b8 es8~ \tuplet 3/2 {es16 [d c]} \tuplet 3/2 {h [c d]} \tuplet 3/2 {c [d es]} \tuplet 3/2 {f [es d]}
    \tuplet 3/2 {as'16 g f}  e!8~ \tuplet 3/2 {e16 [fis g]} \tuplet 3/2 {c,[h c]~} \tuplet 3/2 {c [c' b!]} \tuplet 3/2 {a [g fis!]}
    \tuplet 3/2 {g16 [f! es]} \tuplet 3/2 {d [c b]} \tuplet 3/2 {es [d c]} \tuplet 3/2 {b [a g]}  d a' c fis
    \tuplet 3/2 {g16 [d, e]} \tuplet 3/2 {fis [g a]}  b4~ \tuplet 3/2 {\stemDown b16 b c} \tuplet 3/2 {d [c b] \stemNeutral}
    \stemDown a8 f \stemNeutral r2
    r8 \stemDown f16 e f8 a d, g \stemNeutral
    \stemDown c,8 f~ f[ e16 d] e4\prall
    f8 f\rest d16 cis d8 g cis,! \stemNeutral
    f8 b, es4~ \tuplet 3/2 {es16 [c! b]} \tuplet 3/2 {a [b c]}
    d8 \staffdown d,~ \tuplet 3/2 {d16 [e! f]} \tuplet 3/2 {g [f e]}  c'16 c, c' b
    \stemUp c8 f b, es \tuplet 3/2 {a,16 [b c]} \tuplet 3/2 {d [c d]}
    \once \override Slur.extra-offset = #'( -0.1 . 0.5 ) \appoggiatura c16 h8 c16 d \staffup \stemDown es f g8~ \tuplet 3/2 {g16 [a g]} \tuplet 3/2 {f [e f]~}
    \tuplet 3/2 {f16 [g f]} \tuplet 3/2 {e [f g]} cis,8[ f b,! e]
    \staffdown \stemUp a,8 g16 a b8 d g,16 a b8~
    \tuplet 3/2 {b16 [a g]} \tuplet 3/2 {a [b c]~} \tuplet 3/2 {c [b a]} \tuplet 3/2 {b [c d]~} \tuplet 3/2 {d [c b]} \tuplet 3/2 {c [d es]~}
    \stemUp \tuplet 3/2 {es16 [c d]}  \staffup b'8~ \tuplet 3/2 {b16 [c, d]} \tuplet 3/2 {e! [f g]} \tuplet 3/2 {a [g f]} \tuplet 3/2 {e [d c]}
    \tuplet 3/2 {f16 [e d]} \tuplet 3/2 {c [b a]} \staffdown \tuplet 3/2 {d [c b]} \tuplet 3/2 {a [g f]} \tuplet 3/2 {e [g a]} \tuplet 3/2 {b [a g]}
    \tuplet 3/2 {a16 [g f]} \tuplet 3/2 {g [f e]} \tuplet 3/2 {f [a g]} \tuplet 3/2 {f [e d]} \tuplet 3/2 {c [b a]} \tuplet 3/2 {b [a g]}
    a4\mordent \fine
    \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
    \mark \markup { \musicglyph #"scripts.ufermata" }
  }
}
alt = {
  \new Voice \relative f' {
    \global
    \halsdown
    s2.
    s2.
    \repeat volta 2 {
      s2.
      s2.
      f2 g4
      a2 b4
      c2 b4
      a4 g2
      a2.
      s2.
      s2 \stemUp a4
      a2 \stemDown g8 a
      b4 a g
      f4 d e
      f2.
      s2.
      s2.
      s2.
      \alternative {
        {
          s2.
          s2.
        }
        {
          s2.
        }
      }
    }
    s2. * 5
    s2.
    s2 f4
    g2 a4
    \tieUp b4~ \tuplet 3/2 {b16 [c b]} \tuplet 3/2 {a [b g]}  a4
    g4 fis2
    g2.
    s2.
    s2.
    s2 \stemUp g'4 \stemNeutral
    \stemUp a2 b4 \stemNeutral
    \stemUp c2 b4
    a4 g2
    a2 r4 \stemNeutral
    s2.
    s2.
    r2 \stemUp f4
    g2 a4
    b!4 a g
    f4 d e
    f2. \stemNeutral
    s2.
    s2.
    s2.
    s4 \fine
  }
}
tenor = {
  \new Voice \relative c' {
    \global
    R2.
    r4 c d
    \repeat volta 2 {
      e4. f16 g \tuplet 3/2 {f [e d]} \tuplet 3/2 {e [d c]}
      f8 f, f'4. e8
      f8 a,16 g a8 d g, c
      f,4 r r
      r16 a, b c d e f8~ \tuplet 3/2 {f16 [e d]} \tuplet 3/2 {e [f g~]}
      \tuplet 3/2 {g16 [f e]} \tuplet 3/2 {f [g a]}  b,8 [b'16 a] b8 d,
      cis16 a' h cis d e f8~ \tuplet 3/2 {f16 [e d]} \tuplet 3/2 {e [f g]}
      cis,8 f,16 e f8 b! e, a
      f8 d' g, gis a a,
      d16 f g! a b c d8~ \tuplet 3/2 {d16 [c b]} \tuplet 3/2 {c [d es]}
      g,8 f16 e! f8 b e, a
      d,16 d, e f g a b8~ \tuplet 3/2 {b16 [a g]} \tuplet 3/2 {a [b c]~}
      \tuplet 3/2 {c16 [b a]} \tuplet 3/2 {b [c d]~} \tuplet 3/2 {d [c b]} \tuplet 3/2 {c [d es]~} \tuplet 3/2 {es [d c]} \tuplet 3/2 {d [es f]~}
      f16 e! d c f8 a d, f
      b8 d g, b e, c
      \halsdown f8 c16 b a8 d g, c
      \alternative {
        {
          f,4~ \tuplet 3/2 {f16 [g a]} \tuplet 3/2 {b [c d]} \tuplet 3/2 {e [f g]} \tuplet 3/2 {a [b c]}
          \halsneutral f,8 f, c''4 d
        }
        {
          \set Score.currentBarNumber = #19
          \halsdown f,,4 c' d
        }
      }
    }
    \halsneutral es4. f16 g \tuplet 3/2 {f [es d]} \tuplet 3/2 {es [d c]}
    d8 g, \once \override Tie.staff-position = #4 g'2~
    g8 f16 e! f8 b e, a
    d,8 d'~ d8[ c16 b] c8 f
    b,8 es a, a,~ \tuplet 3/2 {a16 [b c]} \tuplet 3/2 {d [c b]}
    g'8 g,~ \tuplet 3/2 {g16 [a b]} \tuplet 3/2 {c [b a]}  f'16 f, f'8~
    \tuplet 3/2 {f16 [b c]} \tuplet 3/2 {d [c b]} \tuplet 3/2 {f' [f, g]} \tuplet 3/2 {a [g f]} \tuplet 3/2 {b [d, c]} \tuplet 3/2 {b [c d]}  \showTripletNumber
    es4~ \tuplet 3/2 {es16 [d c]} \tuplet 3/2 {b [a g]} \tuplet 3/2 {fis [a g]} \tuplet 3/2 {fis [e! d]}
    g8 g'16 fis g8 c f, b
    es,8 es' a,[ d16 c] d8 d,
    g,16 g' a b c d es8~ \tuplet 3/2 {es16 [d c]} \tuplet 3/2 {d [es f]}
    h,8 b,!16 a! b8 es a, d
    b8 g' c cis d d,
    g, r \tuplet 3/2 {r16 g' a} \tuplet 3/2 {b [c d]} e,!8[c]
    f,16 c' d e f g a8~ \tuplet 3/2 {a16 [g f]} \tuplet 3/2 {g [a b]~}
    \tuplet 3/2 {b16 [a g]} \tuplet 3/2 {a [b c]} \tuplet 3/2 {f, [a g]} \tuplet 3/2 {f [e f]~} \tuplet 3/2 {f [g f]} \tuplet 3/2 {e [d e]}
    f16 e d c b a b8~ \tuplet 3/2 {b16 [a g]} \tuplet 3/2 {a [b c]}
    f,8 f'16 e f8 b e, a
    d,4~ \tuplet 3/2 {d16 [es f]} \tuplet 3/2 {g [f es]}  c'!8[ c,~]
    \tuplet 3/2 {c16 [d es]} \tuplet 3/2 {f [es d]}  \stemUp b'16 b, b'8~ \tuplet 3/2 {b16 [g f]} \tuplet 3/2 {e [f g]}
    \stemDown \tuplet 3/2 {a16 [f e]} \tuplet 3/2 {d [e f]} \tuplet 3/2 {g [es d]} \tuplet 3/2 {c [d es]} f16 f, f'8~
    f8 es16 d c8 es a, d
    g,8 g'~ \tuplet 3/2 {g16 [f e!]} \tuplet 3/2 {d [cis d]~} \tuplet 3/2 {d [e d]} \tuplet 3/2 {cis! [h cis]}
    d16 d, e f g a b8~ \tuplet 3/2 {b16 [c! b]} \tuplet 3/2 {a [b c]}
    f,8 f'16 es! d8 g c, f
    b,8 g'16 f e!8 c f, g
    \stemDown a8 f' b, d g, e'
    f8 c16 b a8 b c c,
    f4
    \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
    \override Staff.RehearsalMark.direction = #-1
    \mark \markup { \musicglyph #"scripts.dfermata" }
  }
}
right = {
  \clef "treble"
  <<
    \sopran
    \alt
  >>
}
left = {
  \clef "bass"
  \tenor
}
\score {
  \new PianoStaff {
    <<
      \context Staff = right {
        \context Voice = right \right
      }
      \context Staff = left {
        \context Voice = left \left
      }
    >>
  }
  \layout{
    indent = 1.0\cm
    \context {
      \Score
      \remove "Mark_engraver"
    }
    \context {
      \Staff
      \consists "Mark_engraver"
    }
  }
}
\score {
  \unfoldRepeats {
    <<
      \context Staff = right {
        \set Staff.midiInstrument = "church organ"
        \right
      }
      \context Staff = left {
        \set Staff.midiInstrument = "church organ"
        \left
      }
    >>
  }
  \midi {\tempo 4 = 68}
  }
