\version "2.24.0"
\include "english.ly"
RightHandNotes = {
  {
  \relative g'' {
  \partial 16*1 g16
  <g d b>8.\arpeggio fs32 e \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { c[ b a] }
        \tuplet 3/2 { b[ g a] } \tuplet 3/2 { b[ a g] } d'8.[ d16]\mordent
 \override TupletBracket.number-visibility
 = ##f
  \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { d,[ e f] } \tuplet 3/2 { e[ a b] } \tuplet 3/2 { c[ b a] }
        g8( fs16.)\prall g32 \appoggiatura g16 a4~
  \tuplet 3/2 { a16[ c, b] } \tuplet 3/2 { c[ b a] } b8[ a']~ \tuplet 3/2 { a16[ g a] } \tuplet 3/2 { b[ a g] }
        \tuplet 3/2 { fs[ e fs] } \tuplet 3/2 { g[ fs e] }
  \tuplet 3/2 { d[ cs d] } \tuplet 3/2 { e[ d cs] } b16( a) g'8~ \tuplet 3/2 { g16[ fs g] }
        \tuplet 3/2 { a[ g fs] } \tuplet 3/2 { e[ d e] } \tuplet 3/2 { fs[ e d] }
  \tuplet 3/2 { c[ b c] } \tuplet 3/2 { d[ c b] } a16 g f'8~ \tuplet 3/2 { f16[ e d] } \tuplet 3/2 { e[ d cs] }
        \tuplet 3/2 { d[ cs b] } gs'16.[( a32])
  d,8 cs~\prall  \tuplet 3/2 { cs16[ d e] }
           << {
              \override TupletBracket.number-visibility
 = ##f
                s8 e4~ e16.[ a,32 d16. c32]
                b4~ b16.[ g'32 fs16. g32] a,4~ a16.[ d32 e16. fs32]
                g,4~ g16.[ b32 a16. c32] b2~
                \tuplet 3/2 { b16[ cs d] }  \tuplet 3/2 { e[ d cs] } \tuplet 3/2 { d[ e fs] }
                  \tuplet 3/2 { g[ fs e] } a s
              }
           \\
              {
              \override TupletBracket.number-visibility
 = ##f
                g,16.[ g32~] g16.[ fs32 e16. a32] fs4~
                fs16.[ e32 fs16. a32] g4~ g16.[ fs32 e16. g32] fs4~
                \tuplet 3/2 { fs16[ fs e] }  \tuplet 3/2 { fs[ e ds] } e4~ \tuplet 3/2 { e16[ ds e] }
                    \tuplet 3/2 { fs[ e ds] } \tuplet 3/2 { e[ fs g] } \tuplet 3/2 { a[ g fs] }
                g2~ \tuplet 3/2 { g16[ a b] }
              }
           >>
 \tuplet 3/2 { cs16[ cs d] } \tuplet 3/2 { e[ e fs] } \tuplet 3/2 { g[ g a] }
  bf16. gs32 a8~ a16. cs32
      <<
         { d16. fs,32 gs16.\mordent a32 cs,16. d32 fs8\( e16\)\prall d }
        \\
              \override TupletBracket.number-visibility
 = ##f
         { \tuplet 3/2 { b,16[ cs d] } \tuplet 3/2 { e[ d cs] } \tuplet 3/2 { fs16[ e d] } a'8[ a,] }
      >>
  \tuplet 3/2 { d'16[ cs b] } \tuplet 3/2 { c[ b a] } \tuplet 3/2 { b[ a g] } \tuplet 3/2 { a[ g fs] } \tuplet 3/2 { g[ fs e] }
       fs16.[ d'32] e,16.[ g32 d'16. cs32]
  d8. a32 g \tuplet 3/2 { <a fs d>16[ fs e] } \tuplet 3/2 { <fs d a>[ d cs] } <d a fs>4.. \bar ":..:" a'16
  <a fs d>8. b32 cs \tuplet 3/2 { d16[ e fs] } \tuplet 3/2 { e[ fs g] } \tuplet 3/2 { fs[ e d] } a'16.[ c,32] b16.[ g'32 c,16. fs32]
  \tuplet 3/2 { d16[ g fs] } \tuplet 3/2 { g[ a b] } \tuplet 3/2 { e,[ c' b] } \tuplet 3/2 { a[ g fs] } e8[( ds])\prall b'4~\mordent
  \tuplet 3/2 { b16[ f e] } \tuplet 3/2 { f[ e d] } e16.[ b'32 d,8]~ \tuplet 3/2 { d16[ e, fs] } \tuplet 3/2 { gs[ a b] }
     \tuplet 3/2 { c[ a b] } \tuplet 3/2 { c[ d e] }
  \tuplet 3/2 { fs[ c b] } \tuplet 3/2 { c[ b a] } b16.[ fs'32 a,8]~ \tuplet 3/2 { a16[ b, cs] } \tuplet 3/2 { ds[ e fs] }
     \tuplet 3/2 { g[ e fs] } \tuplet 3/2 { g[ a b] }
  \tuplet 3/2 { c[ a gs] } \tuplet 3/2 { a[ f e] } f16[ f'8 e16] \tuplet 3/2 { ds16[ c b] } \tuplet 3/2 { c[ a gs] } \tuplet 3/2 { a[ b
     cs] } \tuplet 3/2 { ds[ e fs] }
  \tuplet 3/2 { e[ c b] } \tuplet 3/2 { c[ a gs] } a16[ a'8 g16] \tuplet 3/2 { fs[ c b] } \tuplet 3/2 { c[ a gs] } \tuplet 3/2 { a[ ds
     e] } \tuplet 3/2 { fs[ g a] }
  \tuplet 3/2 { g[ e ds] } \tuplet 3/2 { e[ c b] } c16[ c'8 b16]
    <<
              \override TupletBracket.number-visibility
 = ##f
      { as4 \tuplet 3/2 { r16 a[ b] } \tuplet 3/2 { c[ b a] }
             \tuplet 3/2 { b[ a g] } \tuplet 3/2 { fs[ g e~] } <e g>8 <ds fs>
      }
    \\
      {
              \override TupletBracket.number-visibility
 = ##f
          \tuplet 3/2 { r16 e[ fs] } \tuplet 3/2 { g[ fs e] } ds8 r
             r4 r16 b8 a16
      }
    >>
  <g b e>4~\arpeggio \tuplet 3/2 { e'16[ b a] } \tuplet 3/2 { g[ fs g] }
  cs16.[ g32 d'16. g,32] e'16.[ g,32 fs16. e32] fs16.[ d32 g16. d32] a'16. d,32 \tuplet 3/2 { cs'16[ b a] }
  b16.[ f32 c'16. f,32] d'16.[ f,32 e16. d32] e8.\mordent e16 c'4~
  \tuplet 3/2 { c16[ e, d] } \tuplet 3/2 { e[ d c] } d8[ c']~ \tuplet 3/2 { c16[ b c] } \tuplet 3/2 { d[ c b] } \tuplet 3/2 { a[ g a] }
     \tuplet 3/2 { b[ a g] }
  \tuplet 3/2 { f[ e f] } \tuplet 3/2 { g[ f e] } d c bf'8~ \tuplet 3/2 { bf16[ a g] } \tuplet 3/2 { a[ g fs] } \tuplet 3/2 { g[ fs e] }
     cs'16.[ d32]
  g,32 fs e fs g fs e16 d4~ \tuplet 3/2 { d16[ d e] } \tuplet 3/2 { fs[ fs g] } \tuplet 3/2 { a[ a b] } \tuplet 3/2 { c[ c d] }
  ef16. cs32 d8[~ d16. fs32 g16. b,32] cs16.[ d32 fs,16. g32] b8( a16.)\prall g32
  g16.[ e32 d16. g32] c,16.[ g'32 b,16. g'32] a,16.[ fs'32] \tuplet 3/2 { g16[ fs e] } \appoggiatura g16 fs8.[\prall g16]
  <<
    {
              \override TupletBracket.number-visibility
 = ##f
       g8. b32 a \tuplet 3/2 { b16[ d c] } \tuplet 3/2 { d[ g fs] } g4. \fermata }
   \\
              \override TupletBracket.number-visibility
 = ##f
    { s8 <b,, d>16 s <d g> s <g b> s <b d>4. }
  >>
  \bar ":|."
  }
 }
}
LeftHandNotes = {
  {
  \relative g {
  \partial 16*1 r16
 \override TupletBracket.number-visibility
 = ##t
  << { g4. fs8 } \\ { r8 g, b d } >> g8. fs32 e \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { c[ b a] }
 \override TupletBracket.number-visibility
 = ##f
  b8 g c a \tuplet 3/2 { d16[ a' b] } \tuplet 3/2 { c[ b a] } \tuplet 3/2 { g[ fs g] } \tuplet 3/2 { a[ g fs] }
  \appoggiatura e'16 ds4~ \tuplet 3/2 { ds16[ ds cs] } \tuplet 3/2 { ds[ cs b] } e8 e, g e
  a a,~ \tuplet 3/2 { a16[ cs b] } \tuplet 3/2 { cs[ b a] } d8 d, fs d
  g g'~ \tuplet 3/2 { g16[ g a] } \tuplet 3/2 { b[ b cs] } d8 gs, b e,
  <a, e' a>8.\arpeggio g'32 fs \tuplet 3/2 { e16[ d cs] } \tuplet 3/2 { d[ cs b] } \tuplet 3/2 { cs[ a b] } \tuplet 3/2 { cs[ b a] }
      \tuplet 3/2 { d[ fs e] } \tuplet 3/2 { d[ e fs] }
  \tuplet 3/2 { g[ a b] } \tuplet 3/2 { ds,[ e fs] } \tuplet 3/2 { e[ b' cs] } \tuplet 3/2 { d[ cs b] }
      \tuplet 3/2 { cs[ a b] } \tuplet 3/2 { cs[ b a] } \tuplet 3/2 { d[ cs b] } \tuplet 3/2 { a[ b c] }
  b4~ \tuplet 3/2 { b16[ a g] } \tuplet 3/2 { fs[ g a] } g4~ \tuplet 3/2 { g16[ fs e] } \tuplet 3/2 { ds[ e fs] }
  e4~ \tuplet 3/2 { e16[ d cs] } \tuplet 3/2 { b[ cs d] } cs8 a e cs
  \tuplet 3/2 { a16[ a' b] } \tuplet 3/2 { cs[ d e] } \tuplet 3/2 { fs[ g a] } s2 s8
  <<
    { b16. d32 a16. d32 g,16. d'32 fs,16. d'32 e,8[ a]~ a[ g~] }
    \\
    { b8 fs g b, cs d a4 }
  >>
  <<
    { g'16 fs32 e fs8 }
   \\
    { d4 }
  >>
  r4 \tuplet 3/2 { r16 d[ cs] } \tuplet 3/2 { d[ a fs] } d8. r16
  <<
    { d'4. cs8 }
    \\
    { r8 d, fs a }
  >>
  d8. e32 fs \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { a[ b c] }
  b8 g c fs, \tuplet 3/2 { b16[ fs g] } \tuplet 3/2 { a[ g fs] } \tuplet 3/2 { e[ ds e] } \tuplet 3/2 { fs[ e ds] }
  gs4~ \tuplet 3/2 { gs16[ e fs] } \tuplet 3/2 { gs[ fs e] } a8 e a, a'
  \appoggiatura e16 ds4~ \tuplet 3/2 { ds16[ b cs] } \tuplet 3/2 { ds[ cs b] } e8 b e, e'
  a, a, \tuplet 3/2 { r16 a''[ g] } \tuplet 3/2 { a[ g fs] } b8 fs ds b
  c c, \tuplet 3/2 { r16 c''[ b] } \tuplet 3/2 { c[ b a] } ds8 a fs ds
  e e, \tuplet 3/2 { r16 e''[ d] } \tuplet 3/2 { e[ d cs] } g'8 cs, fs fs,
  g a b b, \tuplet 3/2 { e16[ b a] } \tuplet 3/2 { g[ a b] } e,16 g b e
  \tuplet 3/2 { a,16[ b cs] } \tuplet 3/2 { b[ cs d] } \tuplet 3/2 { cs[ d e] } \tuplet 3/2 { a,[ b cs] }
     \tuplet 3/2 { d[ e fs] } \tuplet 3/2 { e[ fs g] } \tuplet 3/2 { fs[ g a] } \tuplet 3/2 { d,[ e fs] }
  \tuplet 3/2 { g[ a b] } \tuplet 3/2 { a[ b c] } \tuplet 3/2 { b[ c d] } \tuplet 3/2 { g,[ a b] }
     \tuplet 3/2 { c[ b a] } \tuplet 3/2 { gs[ a b] } \tuplet 3/2 { a[ gs fs] } \tuplet 3/2 { e[ fs gs] }
  fs4~ \tuplet 3/2 { fs16[ fs e] } \tuplet 3/2 { fs[ e d] } g8 g, b g
  c c,~ \tuplet 3/2 { c16[ c' d] } \tuplet 3/2 { e[ e fs] } g8 cs, e a,
  d, d'~ \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { a[ b c] } b,8 b'' a g
  \tuplet 3/2 { fs16[ d, e] } \tuplet 3/2 { fs[ g a] } \tuplet 3/2 { b[ c d] } \tuplet 3/2 { e[ fs g] } \tuplet 3/2 { a[ g fs] }
     \tuplet 3/2 { b[ a g] } d'8[ d,]
  \tuplet 3/2 { e16[ b g] } \tuplet 3/2 { e[ g b] } \tuplet 3/2 { e[ d c] } \tuplet 3/2 { d[ c b] } \tuplet 3/2 { c[ b a] }
     \tuplet 3/2 { b[ a g] } d'8[ d,]
  g r r4 \tuplet 3/2 { r16 g[ fs] } \tuplet 3/2 { g[ d b] } g8 _\fermata
  }
 }
}
\score {
  {
  \context PianoStaff
  << \context Staff = "up" {
       \key g \major
       \time 4/4
       \set Staff.midiInstrument = #"harpsichord"
       \context Voice
       \RightHandNotes
     }
     \context Staff = "down" {
       \key g \major
       \time 4/4
       \clef bass
       \set Staff.midiInstrument = #"harpsichord"
       \context Voice
       \LeftHandNotes
     }
  >>
  }
  \header {
    piece = "2. Allemande"
  }
  \midi {
    \tempo 8 = 75
    }
 \layout { }
}
