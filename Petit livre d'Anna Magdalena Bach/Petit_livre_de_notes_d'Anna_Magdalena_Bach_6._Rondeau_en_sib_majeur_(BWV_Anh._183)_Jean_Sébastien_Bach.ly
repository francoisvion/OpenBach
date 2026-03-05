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
  \partial 2 s8 \appoggiatura {d16 c} d4(  \appoggiatura {c16 d} c8) %anacrouse
  bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 | %1
  \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c | %2
  d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] | %3
  \alternative {\volta 1 {c4.} \volta 2 {c4.}}}| %4
  \repeat volta 2 {
   f4\< (\appoggiatura {bes,16 a} bes8) %4
   \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) | %5
   es ([d \appoggiatura {es16 d} es f d es]) \appoggiatura {f16 es} f8\! g16 (f) es (d)| %6
   \appoggiatura {d16 c d} c8\> (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] | %7 
   \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es])} \volta 2 {<d, f bes>4.\p}}} | %8
  \repeat volta 2 {
    d'4\p (\appoggiatura {f16 es} f8)%8
    \appoggiatura {es16 d es} d8 (bes) c-! d ([\appoggiatura {es16 d} es8) f-!] | %9
    \appoggiatura {es16 d es} d8 (bes) c-! d ([\appoggiatura {es16 d} es8) f-!] | %10
    \appoggiatura {es16 d es} d8 (bes) c-! \appoggiatura {c16 d c} d8 [es16 d \appoggiatura {c16 d} c bes] % 11
   \alternative {\volta 1 {<a c f>4.} \volta 2 {<a c f>4.}}} %12
  \repeat volta 2 {
    f'4\< (\appoggiatura {bes,16 a} bes8) | %12
    \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) | %13
    es ([d \appoggiatura {es16 d} es f\! d es]) \appoggiatura {f16 es} f8 g16 (f) es (d\>) | %14
    \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] | %15
    \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]} \volta 2 {<d, f bes>4.\p}}} %16
  \repeat volta 2 {
    
    f4\mf( \mark \markup {\italic \concat { \hspace #-10 "2" \super "e" \hspace #0.3 "couplet" }}
    bes8-!)| %16
    bes4 (g8) es4 (\appoggiatura {g16 f} g8) | %17
    f4 (bes,8) f'4 (bes8) | %18
    \appoggiatura {a16 g a} g4 (f8) g4 (a8-!) | %19
    \alternative {\volta 1 {\appoggiatura {a16 bes a} bes4 r8} \volta 2 {<d, f bes>4. \appoggiatura {d'16 c}\p d4_\markup {\hspace #2 \italic "dolce"} (\appoggiatura {c16 d} c8)}}} | %20
    bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 | %21
    \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c | %22
    d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] | %23
    \appoggiatura {d16 c d} c4. | %24
  \repeat volta 2 {
  f4\< (\appoggiatura {bes,16 a} bes8) | %24
  \appoggiatura {d16 c d} c8. ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) | %25
  es ([d \appoggiatura {es16 d} es f d es\!]) \appoggiatura {f16 es} f8 g16 (f) es\> (d) | %26
  \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] | %27
  \alternative {\volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]} \volta 2 {<d, f bes>4.\p d'4\mf(
  \mark \markup {\italic \concat {\hspace #-10 "3" \super "e" \hspace #0.3 "couplet"}} ( \appoggiatura {es16 d} es8)}}} | %28
  d4 (\appoggiatura {es16 d} es8) d16 (es d c bes a) | %29
  \appoggiatura {a16 bes a} bes4 \appoggiatura {a8} g8 d'4\< (\appoggiatura {g16 fis} g8) ( | %30
  d4) (\appoggiatura {a'16 g} a8) ( d,4\!) ( \appoggiatura {bes'16 a} bes8) | %31
  d,4) (\appoggiatura {a'16 g} a8) ( d,4) ( \appoggiatura {bes'16 a} bes8) | %32
  d,16-.\> a' (bes a g f) \appoggiatura {f16 e f} e8. d16 { \once \set suggestAccidentals = ##t
    \once \override AccidentalSuggestion.outside-staff-priority = ##f
    %\once \override AccidentalSuggestion.avoid-slur = #'inside
    \once \override AccidentalSuggestion.font-size = -3
    \once \override AccidentalSuggestion.alteration = 0
    \once \override AccidentalSuggestion.script-priority = -1 cis8\turn} | %33
  <fis, a d>4. d'4\p ( \appoggiatura {g16 f?} g8\<) | %34
  b,4 ( \appoggiatura {g'16 f} g8) ( g,4) ( g'8) | %35
  \appoggiatura {f16 es f} es4 (\appoggiatura {d8} c8) ( c4) ( \appoggiatura {f16 es} f8) ( | %36
  a,4) ( \appoggiatura {f'16 es} f8) ( f,4) (f'8) | %37
  \appoggiatura {es16 d es} d4\mf (\appoggiatura {c8} bes8) d16 (f es d c bes) | %39
  c\> (es d c bes a) \appoggiatura {bes16 a} bes (d c bes a g) | %39
  \appoggiatura {bes16 a bes} a4 \appoggiatura {g8}f8 %40
  
  \repeat volta 2 {
    \appoggiatura {d'16 c} \bar "" d4\p_\markup {\hspace #2 \italic "dolce"} \appoggiatura {c16 d} c8 | %40
    bes16 ([a \appoggiatura {bes16 a} bes c bes c]) \appoggiatura {c16 d c} d4 \appoggiatura {c16 d} es8 | %41
    \appoggiatura {es16 d es} d4 (\appoggiatura {c16 d} c8) d16 (es f8) c | %42
    d16 (es f8) \appoggiatura {es8} d \appoggiatura {c8} bes [\appoggiatura {c16 d} es8 \appoggiatura {d16 es} d8] | %43
    \alternative {
      \volta 1 {\appoggiatura {d16 c d} c4.}
      \volta 2 {\appoggiatura {d16 c d} \bar "" c4.}
                 }
                  } %44
  \repeat volta 2 {
    f4\p_\markup {\hspace #2 \italic "dolce"} (\appoggiatura {bes,16 a} bes8) | %44
    \appoggiatura {d16 c d} c8.\< ([bes16 \appoggiatura {c16 bes} c d]) c (bes c d c d) | %45
    es ([d \appoggiatura {es16 d} es f d es\!]) \appoggiatura {f16 es} f8\> g16 (f) es (d) | %46
    \appoggiatura {d16 c d} c8 (bes) c-! \appoggiatura {c16 d c} d8. [es16 \appoggiatura {d16 c d} c8] | %47
    \alternative {
      \volta 1 {bes16 ([a \appoggiatura {bes16 a}\p bes c d es)]}
      \volta 2 {<d, f bes>4.\pp}
                 }
                  } %48
    \bar "|."
  }

mainGaucheUn = \relative c' {
  \clef treble
  \repeat volta 2 {
  \partial 2 s8 r8 f8. f16~ %anacrouse
  f8 f8. f16~f8 f8. f16~ | %1
  f8 (g a) \clef bass s4. | %2
  s2. | %3
    \alternative{
    \volta 1 {s4.} %4
    \volta 2 {s4.} %4
    }
  }
  \repeat volta 2 {
  s4. | %4
  s2. | %5
  s2. | %6
  s4. f,8 ([bes \appoggiatura {[a16 bes]} a8]) | %7
  \alternative {
  \volta 1 {bes s4} %8
  \volta 2 {bes4.} %8
               }
                  }
  \repeat volta 2 {
  s4. %8
  s2. %9
  s2. %10
  s2. %11
  \alternative {
  \volta 1 {s4.} %12
  \volta 2 {s4.} %12
               }
 }
 \repeat volta 2 {
   s4. %12
   s2. %13
   s2. %14
   s4. f8 ([bes \appoggiatura {[a16 bes]} a8]) | %7
  \alternative {
    \volta 1 {bes8 s4} %16
    \volta 2 {bes4.}
               } %16
                 }
 \repeat volta 2 {
   bes,16 (d f d bes f') %16
   bes,16 (es f es bes g') bes,16 (c es c bes es) %17
   bes16 (d f d bes f') bes,16 (d f d bes f') %18
   bes,16 (es f es bes f') bes,16 (c es c bes es) %19
   \alternative {
    \volta 1 {bes16 (d f d bes f')} %20
    \volta 2 {bes,16 (d f d bes f') \clef treble r8 f'8. f16~} %20
                }
                 }
   f8 f8. f16~f8 f8. f16 %21
   f8 g a s4. | %22
   s2. %23
   s4. %24
  \repeat volta 2 {
  s4. %24
  s2. %25
  s2. %26
  s4. f,8 ([bes \appoggiatura {[a16 bes]} a8]) %27
  \alternative {
  \volta 1 {bes s4} %28
  \volta 2 {bes4. \clef treble bes16 _(g' fis g c, a')} %28
               }
                  }
  bes,16 _(g' fis g c, a') bes,8 _([\appoggiatura {[c16 d]} c8 d]) | %29
  \clef bass g,4. \clef treble g'16 _(bes a bes g bes) %30
  fis _(a g a fis a) g _(bes a bes g bes) %31
  fis _(a g a fis a) g _(bes a bes g bes) %32
  f8 d'4 a~a8 %33
  s2. %34
  s2. %35
  s2. %36
  s2. %37
  bes,4. bes8 (f' g) %38
  a, e' f g, d' e %39
  s4. %40
  \repeat volta 2 {
  \clef treble
  r8 f8. f16~ %40
  f8 f8. f16~f8 f8. f16~ | %41
  f8 (g a) \clef bass s4. | %42
  s2. | %43
    \alternative {
    \volta 1 {s4.} %44
    \volta 2 {s4.} %44
                 }
                  }
  \repeat volta 2 {
     s4. %44
     s2. %45
     s2. %46
     s4. f,8 ([bes \appoggiatura {[a16 bes]} a8]) | %47
  \alternative {
  \volta 1 {bes s4} %8
  \volta 2 {bes4.} %8
               }
  }
  } 

mainGaucheDeux = \relative c'' {
  \repeat volta 2 {
  \partial 2 s8 bes,4 (c8) %anacrouse
  d4 (c8) bes4 (a8) | %1
  bes4 f'8 bes,16 ^(c d bes a c) | %2
  bes ^(c d c bes a) g ^(bes a c bes bes,) | %3
  \alternative {
    \volta 1 {f' ^(es f g a f)} %4
    \volta 2 {f ^([es f g \appoggiatura {f16 g} f es])} %4
               }
                  }
  \repeat volta 2 {
  d (bes' a bes d, bes') %4
  es, ^(bes' a bes es, bes') f ^(bes a bes f bes)  %5
  g ^(bes a bes g bes) d, ^(bes' a bes d, bes') %6
  es, ^(bes' a bes es, bes') f4. | %7
  \alternative {
    \volta 1 {bes8 bes, (c)} %8
    \volta 2 {bes'8 (f~ <bes, f'>)}
               } %8
                  }
 \repeat volta 2 {
 bes'16 ^(f' es f a, f') %8
 bes,16 ^(f' es f f, f') bes,16 ^(f' es f a, f') %9
 bes,16 ^(f' es f f, f') bes,16 ^(f' es f a, f') %10
 bes,16 ^(f' es f f, f') bes,8 ^([\appoggiatura {a16 bes} a8) g] %11
 \alternative {
 \volta 1 {f16 ^(es f g a f)} %12
 \volta 2 {f16 ^([es f g \appoggiatura {f16 g} f es])} %12
              }
                 }
 \repeat volta 2 {
   d ^(bes' a bes d, bes') %12
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes) %13
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes') %14
   es, ^(bes' a bes d, bes') f4. | %15
  \alternative {
    \volta 1 {bes8 bes, (c)} %16
    \volta 2 {bes'8 (f~ <bes, f'>)}
               } %16
                 }
 \repeat volta 2 {
   bes4 bes8 %16
   bes4 bes8 bes4 bes8 %17
   bes4 bes8 bes4 bes8 %18
   bes4 bes8 bes4 bes8 %19
   \alternative {
     \volta 1 {bes4 bes8 } %20
     \volta 2 {bes4 bes8 \clef treble bes'4 (c8)} %20
                } 
                 }
   d4 c8 bes4 a8 %21
   bes4 f'8 \clef bass bes,16 ^(c d bes a c) | %22
   bes ^(c d c bes a) g ^(bes a c bes bes,) | %23
   f' ^([es f g \appoggiatura {f16 g} f es]) %24
   \repeat volta 2 {
   d ^(bes' a bes d, bes') %24
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes)  %25
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes') %26
   es, ^(bes' a bes es, bes') f4. | %27
   \alternative {
    \volta 1 {bes8 bes, (c)} %82
    \volta 2 {bes'8 (f~ <bes, f'>) s4.}
                } %28
                   }
   s2. %29
   g'8 d~ <g, d'> s4. %30
   s2. %31
   s2. %32
   f''4 g8 a4 a,8 %33
   \clef bass d16 ^(c d es d c) b ^(d c d b d) %34
   g, ^(g' f g d g) b, ^(d c d b d) %35
   c ^(b c d c bes) a ^(c bes c a c) %36
   f, ^(f' es f c f) a, ^(c bes c f, c') %37
   bes8 f~<bes, f'> bes'4. %38
   a4. g %39
   f16 ^(es? f g a f) %40
   \repeat volta 2 {
   \clef treble
   bes4 (c8) %40
   d4 (c8) bes4 (a8) | %41
   bes4 f'8 bes,16 ^(c d bes a c) | %42
   bes ^(c d c bes a) g ^(bes a c bes bes,) | %43
   \alternative {
    \volta 1 {f' ^(es f g a f)} %44
    \volta 2 {f ^([es f g \appoggiatura {f16 g} f es])} %44
                }
                   }
    \repeat volta 2 {
     d ^(bes' a bes d, bes') %12
   es, ^(bes' a bes es, bes') f ^(bes a bes f bes) %13
   g ^(bes a bes g bes) d, ^(bes' a bes d, bes') %14
   es, ^(bes' a bes es, bes') f4. | %15
  \alternative {
    \volta 1 {bes8 bes, (c)} %16
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