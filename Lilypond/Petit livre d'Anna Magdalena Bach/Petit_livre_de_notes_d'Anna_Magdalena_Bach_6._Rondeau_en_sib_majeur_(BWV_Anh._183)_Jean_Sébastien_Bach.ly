\version "2.24.4"
\paper{ indent = 20}
\header {
  title = "Rondeau en si♭ majeur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  subsubtitle     = "Pièces de clavecin - Livre 2 - 6ème ordre - Les Bergeries de François Couperin"
  opus      = "BWV Anh. 183"
  composer  = "Jean Sébastien Bach"
  tagline   = ##f
}
global = {
  \key bes \major
  \time 6/8
  \tempo "Naïvement"
}
mainDroite = \relative c'' {
  \mark \markup {
    \italic \concat { "1" \super "er" \hspace #0.3 "couplet" }
  }
  \repeat volta 2 {
  \partial 2 s8 \appoggiatura {d16 c} d4(  \appoggiatura {c16 d} c8)
  bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 |
  \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c |
  d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] |
  \alternative {\volta 1 {c4.} \volta 2 {c4.}}}|
  \repeat volta 2 {
   f4\< (\appoggiatura {bes,16 a} bes8)
   \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) |
   es ([d \appoggiatura {es16 d} es f d es]) \appoggiatura {f16 es} f8\! g16 (f) es (d)|
   \appoggiatura {d16 c d} c8\> (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] |
   \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es])} \volta 2 {<d, f bes>4.\p}}} |
  \repeat volta 2 {
    d'4\p (\appoggiatura {f16 es} f8)
    \appoggiatura {es16 d es} d8 (bes) c-! d ([\appoggiatura {es16 d} es8) f-!] |
    \appoggiatura {es16 d es} d8 (bes) c-! d ([\appoggiatura {es16 d} es8) f-!] |
    \appoggiatura {es16 d es} d8 (bes) c-! \appoggiatura {c16 d c} d8 [es16 d \appoggiatura {c16 d} c bes]
   \alternative {\volta 1 {<a c f>4.} \volta 2 {<a c f>4.}}}
  \repeat volta 2 {
    f'4\< (\appoggiatura {bes,16 a} bes8) |
    \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) |
    es ([d \appoggiatura {es16 d} es f\! d es]) \appoggiatura {f16 es} f8 g16 (f) es (d\>) |
    \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] |
    \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]} \volta 2 {<d, f bes>4.\p}}}
  \repeat volta 2 {
    f4\mf( \mark \markup {\italic \concat { \hspace #-10 "2" \super "e" \hspace #0.3 "couplet" }}
    bes8-!)|
    bes4 (g8) es4 (\appoggiatura {g16 f} g8) |
    f4 (bes,8) f'4 (bes8) |
    \appoggiatura {a16 g a} g4 (f8) g4 (a8-!) |
    \alternative {\volta 1 {\appoggiatura {a16 bes a} bes4 r8} \volta 2 {<d, f bes>4. \appoggiatura {d'16 c}\p d4_\markup {\hspace #2 \italic "dolce"} (\appoggiatura {c16 d} c8)}}} |
    bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 |
    \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c |
    d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] |
    \appoggiatura {d16 c d} c4. |
  \repeat volta 2 {
  f4\< (\appoggiatura {bes,16 a} bes8) |
  \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) |
  es ([d \appoggiatura {es16 d} es f d es\!]) \appoggiatura {f16 es} f8 g16 (f) es\> (d) |
  \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] |
  \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]} \volta 2 {<d, f bes>4.\p d'4\mf(
  \mark \markup {\italic \concat {\hspace #-10 "3" \super "e" \hspace #0.3 "couplet"}} ( \appoggiatura {es16 d} es8)}}} |
  d4 (\appoggiatura {es16 d} es8) d16 (es d c bes a) |
  \appoggiatura {a16 bes a} bes4 \appoggiatura {a8} g8 d'4\< (\appoggiatura {g16 fis} g8) ( |
  d4) (\appoggiatura {a'16 g} a8) ( d,4\!) ( \appoggiatura {bes'16 a} bes8) |
  d,4) (\appoggiatura {a'16 g} a8) ( d,4) ( \appoggiatura {bes'16 a} bes8) |
  d,16-.\> a' (bes a g f) \appoggiatura {f16 e f} e8. d16 { \once \set suggestAccidentals = ##t
    \once \override AccidentalSuggestion.outside-staff-priority = ##f
    \once \override AccidentalSuggestion.font-size = -3
    \once \override AccidentalSuggestion.alteration = 0
    \once \override AccidentalSuggestion.script-priority = -1 cis8\turn} |
  <fis, a d>4. d'4\p ( \appoggiatura {g16 f?} g8\<) |
  b,4 ( \appoggiatura {g'16 f} g8) ( g,4) ( g'8) |
  \appoggiatura {f16 es f} es4 (\appoggiatura {d8} c8) ( c4) ( \appoggiatura {f16 es} f8) ( |
  a,4) ( \appoggiatura {f'16 es} f8) ( f,4) (f'8) |
  \appoggiatura {es16 d es} d4\mf (\appoggiatura {c8} bes8) d16 (f es d c bes) |
  c\> (es d c bes a) \appoggiatura {bes16 a} bes (d c bes a g) |
  \appoggiatura {bes16 a bes} a4 \appoggiatura {g8}f8
  \repeat volta 2 {
    \appoggiatura {d'16 c} \bar "" d4\p_\markup {\hspace #2 \italic "dolce"} \appoggiatura {c16 d} c8 |
    bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 |
    \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c |
    d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] |
    \alternative {
      \volta 1 {\appoggiatura {d16 c d} c4.}
      \volta 2 {\appoggiatura {d16 c d} \bar "" c4.}
                 }
                  }
  \repeat volta 2 {
    f4\p_\markup {\hspace #2 \italic "dolce"} (\appoggiatura {bes,16 a} bes8) |
    \appoggiatura {d16 c d} c8.\< ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) |
    es ([d \appoggiatura {es16 d} es f d es\!]) \appoggiatura {f16 es} f8\> g16 (f) es (d) |
    \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] |
    \alternative {
      \volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]}
      \volta 2 {<d, f bes>4.\pp}
                 }
                  }
    \bar "|."
  }
mainGaucheUn = \relative c' {
  \clef treble
  \repeat volta 2 {
  \partial 2 s8 r8 f8. f16~
  f8 f8. f16~f8 f8. f16~ |
  f8 (g a) \clef bass s4. |
  s2. |
    \alternative{
    \volta 1 {s4.}
    \volta 2 {s4.}
    }
  }
  \repeat volta 2 {
  s4. |
  s2. |
  s2. |
  s4. f,8 ([bes \appoggiatura {[a16 bes]} a8]) |
  \alternative {
  \volta 1 {bes s4}
  \volta 2 {bes4.}
               }
                  }
  \repeat volta 2 {
  s4.
  s2.
  s2.
  s2.
  \alternative {
  \volta 1 {s4.}
  \volta 2 {s4.}
               }
 }
 \repeat volta 2 {
   s4.
   s2.
   s2.
   s4. f8 ([bes \appoggiatura {[a16 bes]} a8]) |
  \alternative {
    \volta 1 {bes8 s4}
    \volta 2 {bes4.}
               }
                 }
 \repeat volta 2 {
   bes,16 (d f d bes f')
   bes,16 (es f es bes g') bes,16 (c es c bes es)
   bes16 (d f d bes f') bes,16 (d f d bes f')
   bes,16 (es f es bes f') bes,16 (c es c bes es)
   \alternative {
    \volta 1 {bes16 (d f d bes f')}
    \volta 2 {bes,16 (d f d bes f') \clef treble r8 f'8. f16~}
                }
                 }
   f8 f8. f16~f8 f8. f16
   f8 g a s4. |
   s2.
   s4.
  \repeat volta 2 {
  s4.
  s2.
  s2.
  s4. f,8 ([bes \appoggiatura {[a16 bes]} a8])
  \alternative {
  \volta 1 {bes s4}
  \volta 2 {bes4. \clef treble bes16 _(g' fis g c, a')}
               }
                  }
  bes,16 _(g' fis g c, a') bes,8 _([\appoggiatura {[c16 d]} c8 d]) |
  \clef bass g,4. \clef treble g'16 _(bes a bes g bes)
  fis _(a g a fis a) g _(bes a bes g bes)
  fis _(a g a fis a) g _(bes a bes g bes)
  f8 d'4 a~a8
  s2.
  s2.
  s2.
  s2.
  bes,4. bes8 (f' g)
  a, e' f g, d' e
  s4.
  \repeat volta 2 {
  \clef treble
  r8 f8. f16~
  f8 f8. f16~f8 f8. f16~ |
  f8 (g a) \clef bass s4. |
  s2. |
    \alternative {
    \volta 1 {s4.}
    \volta 2 {s4.}
                 }
                  }
  \repeat volta 2 {
     s4.
     s2.
     s2.
     s4. f,8 ([bes \appoggiatura {[a16 bes]} a8]) |
  \alternative {
  \volta 1 {bes s4}
  \volta 2 {bes4.}
               }
  }
  }
mainGaucheDeux = \relative c'' {
  \repeat volta 2 {
  \partial 2 s8 bes,4 (c8)
  d4 (c8) bes4 (a8) |
  bes4 f'8 bes,16 ^(c d bes a c) |
  bes ^(c d c bes a) g ^(bes a c bes bes,) |
  \alternative {
    \volta 1 {f' ^(es f g a f)}
    \volta 2 {f ^([es f g \appoggiatura {f16 g} f es])}
               }
                  }
  \repeat volta 2 {
  d (bes' a bes d, bes')
  es, ^(bes' a bes es, bes') f ^(bes a bes f bes)
  g ^(bes a bes g bes) d, ^(bes' a bes d, bes')
  es, ^(bes' a bes es, bes') f4. |
  \alternative {
    \volta 1 {bes8 bes, (c)}
    \volta 2 {bes'8 (f~ <bes, f'>)}
               }
                  }
 \repeat volta 2 {
 bes'16 ^(f' es f a, f')
 bes,16 ^(f' es f f, f') bes,16 ^(f' es f a, f')
 bes,16 ^(f' es f f, f') bes,16 ^(f' es f a, f')
 bes,16 ^(f' es f f, f') bes,8 ^([\appoggiatura {a16 bes} a8) g]
 \alternative {
 \volta 1 {f16 ^(es f g a f)}
 \volta 2 {f16 ^([es f g \appoggiatura {f16 g} f es])}
              }
                 }
 \repeat volta 2 {
   d ^(bes' a bes d, bes')
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes)
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes')
   es, ^(bes' a bes d, bes') f4. |
  \alternative {
    \volta 1 {bes8 bes, (c)}
    \volta 2 {bes'8 (f~ <bes, f'>)}
               }
                 }
 \repeat volta 2 {
   bes4 bes8
   bes4 bes8 bes4 bes8
   bes4 bes8 bes4 bes8
   bes4 bes8 bes4 bes8
   \alternative {
     \volta 1 {bes4 bes8 }
     \volta 2 {bes4 bes8 \clef treble bes'4 (c8)}
                }
                 }
   d4 c8 bes4 a8
   bes4 f'8 \clef bass bes,16 ^(c d bes a c) |
   bes ^(c d c bes a) g ^(bes a c bes bes,) |
   f' ^([es f g \appoggiatura {f16 g} f es])
   \repeat volta 2 {
   d ^(bes' a bes d, bes')
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes)
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes')
   es, ^(bes' a bes es, bes') f4. |
   \alternative {
    \volta 1 {bes8 bes, (c)}
    \volta 2 {bes'8 (f~ <bes, f'>) s4.}
                }
                   }
   s2.
   g'8 d~ <g, d'> s4.
   s2.
   s2.
   f''4 g8 a4 a,8
   \clef bass d16 ^(c d es d c) b ^(d c d b d)
   g, ^(g' f g d g) b, ^(d c d b d)
   c ^(b c d c bes) a ^(c bes c a c)
   f, ^(f' es f c f) a, ^(c bes c f, c')
   bes8 f~<bes, f'> bes'4.
   a4. g
   f16 ^(es? f g a f)
   \repeat volta 2 {
   \clef treble
   bes4 (c8)
   d4 (c8) bes4 (a8) |
   bes4 f'8 bes,16 ^(c d bes a c) |
   bes ^(c d c bes a) g ^(bes a c bes bes,) |
   \alternative {
    \volta 1 {f' ^(es f g a f)}
    \volta 2 {f ^([es f g \appoggiatura {f16 g} f es])}
                }
                   }
    \repeat volta 2 {
     d ^(bes' a bes d, bes')
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes)
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes')
   es, ^(bes' a bes es, bes') f4. |
  \alternative {
    \volta 1 {bes8 bes, (c)}
    \volta 2 {bes'8 (f~ <bes, f'>)}
               }
                    }
}
\score {
  \new PianoStaff \with {
    instrumentName      = \markup { \large  \smallCaps "Rondeau " }
    \accidentalStyle modern
  }
  <<
    \new Staff = "droite" {
      \global
      \clef treble
      \mainDroite
    }
    \new Staff = "gauche" {
      \global
      \clef bass
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      <<
        \new Voice = "mgUn" {
          \voiceOne
          \mainGaucheUn
        }
        \new Voice = "mgDeux" {
          \voiceTwo
          \mainGaucheDeux
        }
      >>
    }
  >>
  \layout {
    \context {
      \Score
     }
    \context {
      \Staff
    }
  }
  \midi {
    \context {
      \Staff
      midiInstrument = "harpsichord"
    }
  }
}
