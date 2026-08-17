\version "2.25.0"

\language "deutsch"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4landscape")
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

\header {
  title = "Fantaisie et fugue"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 542"
  tagline = ##f
}

diffdot           = { \override Staff.NoteCollision.merge-differently-dotted = ##t }
forceshift        = { \once \override NoteColumn.force-hshift = #1 }
halsdown          = { \stemDown \tieDown \slurDown }
halsneutral       = { \stemNeutral \tieNeutral \slurNeutral }
halsup            = { \stemUp \tieUp \slurUp}
mmrestdow         = { \once \override MultiMeasureRest.extra-offset = #'(0 . -1) }
mmrestdown        = { \once \override MultiMeasureRest.staff-position = #-2 }
mmrestdownn       = { \once \override MultiMeasureRest.staff-position = #-4 }
mmrestdownnn      = { \once \override MultiMeasureRest.staff-position = #-6 }
mmrestdownnnn     = { \once \override MultiMeasureRest.staff-position = #-8 }
mmrestup          = { \once \override MultiMeasureRest.staff-position = #4 }
mmrestupp         = { \once \override MultiMeasureRest.staff-position = #6 }
mmrestuppp        = { \once \override MultiMeasureRest.staff-position = #8 }
staffdown         = { \change Staff = "left" \halsup }
staffup           = { \change Staff = "right" \halsdown }
shifttiedown      = { \once \override Tie.extra-offset = #'( 0 . -0.5 ) }
shifttieup        = { \once \override Tie.extra-offset = #'( 0 . 0.5 ) }
shifttieupp       = { \once \override Tie.extra-offset = #'( 0 . 1 ) }
shifttieuppp      = { \once \override Tie.extra-offset = #'( 0 . 1.5 ) }
shifttieupppp     = { \once \override Tie.extra-offset = #'( 0 . 2 ) }
oben              = { \staffup \halsup }
unten             = { \staffdown \halsdown }

global = {
   \key g \minor
   \time 4/4
   \accidentalStyle default
   \override DynamicText.transparent = ##t
   \override TupletNumber.transparent = ##t
   \override TupletBracket.transparent = ##t
}

sopranForte = {
   \new Voice \relative g'' {
      \global
      \once \override Script.extra-offset = #'(0 . 0.7) % Mordent etwas hoeher
      g8~[\mordent g32 b a g] fis[ g fis g g16.\prallprall \tuplet 3/2 { fis64 g a] }
               es8~[ es32 f es d] c[ d c d d16.\prallprall \tuplet 3/2 { c64 d es] }
      h8[ g32 h a! g] d'[ c h f' es d as' g] f8[ es32 d c h!] c[ g c d es c d es]
      g,8[ fis32 a c es] d[ c c'16~ c32 b! a g] fis[ g a c, d es a, b] c[ fis,! g a c, es d c] \break
      b32 \unten g[ fis g a b] \oben c d es c \unten g[ a h c] \oben d es f! d \unten g,[ h c d] \oben es f g es \unten c[ h! c]\oben es f g
      %%  5 
      as32 f d \halsdown c[ h] \halsup d' as g f[ d' g, f es] \halsdown d c h c \halsup fis[ c \staffdown b! a!] \halsdown g fis e fis \halsup a[ d, c b] \halsdown a g fis
      g32[ d e fis g a b c] b g b d g32 b a g \oben es'![ g, a h c d es f!] es \halsdown c[ es g] \halsup c[ es d c]
      a'32 \halsdown c,,[ d e] fis \halsup g[ a b] a \halsdown fis[ a c] es! \halsup fis[ g a] b[ a g f es d cis d] cis[ e g b a g fis e]
      fis32[ es! d c! a'8~] a g~ g2~
      g8 fis r4 r2
      %% 10 
      r1*4
      r4 r8 r32 a,,[ h cis! d e f g a b! a g] \shifttieupppp e'4~
      %% 15 
      e8[ d] r32 h[ ais h h16.\prallprall ais64 h ] d32[ h ais h h16.\prallprall ais64 h ] \shifttieupp as'4~
      as8[ g]~ g32[ f es d es g h,16] c32[ d c h c es g,16] as32[ b as g as c es16]
      r8 es \shifttieuppp d4~ d~ \override Stem.details.beamed-lengths = #'( 4.5 ) d8 c~ \revert Stem.details.beamed-lengths
      c4~ c16[ c' b32 a b c] fis,16[ es!8 d16] cis[ b' a32 g a b]
      es,16 d8 c!16 b8 r32 b a g cis8[ d] e[ g,~]
      %% 20 
      g8 fis r16 d32[ e fis!16 fis32 g] a16[ a32 b c!16 c32 d] r8 ges,~
      ges4~ ges8 f~ f8 es~ as4
      b4 as~ as8 ges16 f ges4~
      ges8 f~ f4~ f8. es16 g4~
      g8 f r16 f,32[ g as b! c d!] es![ d c h c fis g a!] g[ fis e d] d'16 fis,
      %% 25 
      fis8 g r4 r2
      r1 \break
      r1*3
      %% 30 
      r1 \break
      r4 a, b h
      c2~ c4 c
      des4 d es2~
      es2 des
      %% 35 
      fes4 r8 fes dis4 \shifttieup e~ \break
      \shifttieup e4~ \override Stem.details.beamed-lengths = #'( 3.9 ) e8 dis~ dis e~ e[ dis] \revert Stem.details.beamed-lengths
      e4 fis~ \override Stem.details.beamed-lengths = #'( 4.3 ) fis8 e16 dis \revert Stem.details.beamed-lengths e4~
      \override Stem.details.beamed-lengths = #'( 3.9 ) e8 d! fis4~ fis8 e16 fis gis4~
      gis16 g! f! as g f es! d \shifttieup es2~ \break
      %% 40 
      es4 d~ d16 c b d c b a g
      fis8 a g b~ b16[ \tieDown es~ es32 d c h] c[ b as g as c b as]
      g32[ fis es'8 d32 cis] \halsneutral b'[ as g fis g a fis g~] g[ a b16~ b32 a g fis ] \halsup g[ f e f es d cis! d~] \break
      d16[ c!32 h c8~] c32[ b a16 b32 a g16~] g32[ fis! e! fis g c a16] g8 fis16. g32
      g4 r32 e,![ dis e e16.\prallprall dis64 e ] b'!32[ e, dis e e16.\prallprall dis64 e ] des'4~
      %% 45 
      \override Stem.details.beamed-lengths = #'( 4.4 ) des8 c~ \revert Stem.details.beamed-lengths
            c32[ b as! g as c e,16] f32[ g f e f as c,16] des32[ es des c des f as16] \break
      r8 as \shifttieupppp g4~ g32[ f' es d es g h,16] c4~
      c32[ b! c d c es fis,16] g32[ b a g a c b a] b[ g a b c d e fis] \shifttieup g4~
      \shifttieup g4~ g8 r r4 r8 \once \override Stem.length = #'7.5 fis!
      g1
   }
}

sopranPiano = {
   \new Voice \relative f'' {
      \global
      \halsup
      s1*4
      %%  5 
      s1*4
      r4 r8 f16\f d h c d4.~
      %% 10 
      d8 c16 h c d es8~ \shifttieup es4~ es8 d16 c
      c8 b!16 a b8 g'16 es! cis d e8~ \shifttieup e4~
      e8 d16 cis d e f8~ f8 e16 d e cis! d8~
      d16 h cis e a,4~ a4 r16 f e! d
      d8[ cis] r4 r2
      %% 15 
      s1*5
      %% 20 
      s1*5
      %% 25 
      r4 r8 b'!16 g e f! g8 r4.
      c,16 e f8~ f16 g as8~ as4. g16 f
      f8 es!16 d es8 r r r16 a! fis g a8
      d,8 b'~ b16 a g f! es!2~
      es8 d16 c b c d8~ d8 c4.~
      %% 30 
      c4~ c16 c b a b fis! g b cis4
      d4
   }
}

altForte = {
   \new Voice \relative b' {
      \global
      \staffdown \voiceTwo
      b4 r a r
      as4 r c r
      es,4 r es r
      s1
      %%  5 
      s1*3
      \staffup \voiceOne s4 s32 \diffdot d'16.*1/2 \shiftOn d'8 ~ e2~
      e8[ d] \shiftOff \staffdown r4 r2
      %% 10 
      r1*4
      \staffup \voiceOne \shiftOn r2 r4 g,8\rest cis~
      %% 15 
      cis h r4 r r8 f!~
      f8 es! r4 r2
      r8 c b[ c] b4~ b8 a~
      a4 r4 r2
      \voiceTwo r4 r32 a' g fis g8 r32 b a g r32 b a g r8 \voiceOne es!~
      %% 20 
      es8 d r4 r r8 \voiceTwo es16 d
      es4~ \voiceTwo es8 d~ d es~ es[ d]
      es4 f~ f8 es16 d es4~
      es8 des16 c h4~ h16 h c8~ c des!~
      des8 c r4 r4 r8 r16 c'
      %% 25 
      c8 h r4 r2
      r1*4
      %% 30 
      r1
      r4 \shiftOn fis g2~
      g4 g as a
      b2~ b2
      \halsup as2~ as2
      %% 35 
      \shiftOn des4 r8 \halsup des a!4 ais
      h!4 a! g c!
      h!4 c~ \override Stem.details.beamed-lengths = #'( 4.0 ) c8 h \revert Stem.details.beamed-lengths ais4~
      ais8 h! r c! \tieDown h!4~ \halsdown h8 d~
      d2~ d16 c h d c b a! g
      %% 40 
      fis8 a~ a16 c b a g8 fis g es
      d2 es4 r8 es
      d8 \staffdown r r d cis e \staffup r8 g
      a8 fis d e d4~ d8. es16
      \halsup \shiftOn f!8 e! r4 r r8 b'~
      %% 45 
      b8 as r4 r2
      r8 f es[ f] es r r16 \halsdown f[ es d es g c,16]
      d4~ d8 d~ d fis! r \halsup \shiftOff es!16 d
      \shiftOn e4~ e8 r r4 r8 \shiftOn d
      \shiftOff d1
   }
}

altPiano = {
   \new Voice \relative as' {
      \global
      \halsup \voiceThree
      s1*4
      %%  5 
      s1*4
      \staffup r4 r8 as4\f g16 f
      %% 10 
      f8 es16 d es8 r r c'16 a fis g a8
      d,16 fis g8~ g8 r r g16 e cis d e8
      a,16 cis d8 r a'~ a g~ g4~
      g4~ g16 g f e f cis d f \staffdown h,4
      a4 r4 r2
      %% 15 
      s1*5
      %% 20 
      s1*5
      %% 25 
      r4 \staffup r8 des'4 c16 b!
      b8 as16 g as8 f'16 d! h c d4.~
      d8 c16 h c d es c fis, g a!8~ a4~
      a8 d16 b g a b8~ b16 g c8~ c16 b a g
      fis8 g16 a b4~ b8 a16 g a fis! g8~
      %% 30 
      g16 e fis a d,4~ d4 r16 b' a g~
      g16 e fis8
   }
}

altZweiForte = {
   \new Voice \relative g' {
      \global \voiceFour
      s1*4
      %%  5 
      s1*5
      %% 10 
      s1*4
      r2 r4 r8 g'~
      %% 15 
      g8 fis r4 r r8 h!~
      h8 c r4 r2
      r1*2
      r2 r4 a,8\rest cis~
      %% 20 
      cis8 \forceshift d r4 r2
      r1*4
      %% 25 
      r1*5
      %% 30 
      r1
      r1
      r1
      r1
      r4 es fes f
      %% 35 
      g!4 r8 g fis4 e8 fis
      g4~ g8 fis \staffdown e4 \staffup fis
      g4 << { \voiceOne \shiftOnn a~ \override Stem.details.beamed-lengths = #'( 4.0 ) a8[ e] \revert Stem.details.beamed-lengths } 
            \\ { \voiceTwo fis4 s4 } >> g4~
      g8 fis r a! gis4 r
      r1
      %% 40 
      r1*4
      \halsdown \forceshift d8 cis! r4 r r8 e!~
      %% 45 
      e8 f r4 r2
      c16 h8. c8 d c r r4
      r2 r4 r8 \halsup \halsdown b'~
      b16 a b a b8 r r4 r8 << { \voiceOne \shiftOnn c' } \\ { \voiceTwo a' } >>
      \shiftOff h1
   }
}

tenorForte = {
   \new Voice \relative g' {
      \global
      \halsup \shiftOn \voiceThree
      g4 r fis r
      f!4 r g r
      \clef "bass" c,4 r c r \shiftOff
      s1
      %%  5 
      s1*3
      \staffup r8 r32 c'' b a b[ d c b~ b8~] b2~
      b8 a r4 r2 \staffdown
      %% 10 
      r1*4
      r4 r r r8 << { \voiceOne \shiftOn g!8 s8 } \\ { \voiceOne b!8~ } >>
      %% 15 
      b8[ h] r4 r r8 d~
      d8[ c] r4 r2
      \staffup g'16 fis8. g8 a g fis g4
      fis4 r4 \staffdown r8 fis g r
      r8 a b r r4 r8 b~
      %% 20 
      b8 a r4 \staffup r es'!16 d \staffdown \clef"treble" c8
      b4 ces b as!
      ges \shifttieup f~ f8 ges! r a!
      b4 r16 as g! f g4 r8 e~
      e8 f r4 r r8 d
      %% 25 
      d4 r4 r2
      r1*4
      %% 30 
      r1
      r4 r r d
      es4 e f2~
      f4 f es b
      ces4 c des2~
      %% 35 
      d4 r4 r2
      r2. fis'4~
      fis8 e \staffdown <<
         { \voiceOne \halsup dis8 a16 c \staffup dis8 \forceshift g16 fis \staffdown e4 }
         \\
         { \voiceTwo \shiftOn a,~ \stemUp a r r cis8~ cis8[ h] }
      >> r8 fis' h, e! d!4~
      d4 r4 r2
      %% 40 
      r1*4
      r2 r4 r8 b
      %% 45 
      c4 r4 r2
      r1
      r2 r4 r8 \staffup \staffdown g'16 f!
      e4~ e8 r s4 r8 << { \stemUp d8 } \\ { \stemUp \shiftOn a8 } >>
      <d g,>1
   }
}

tenorPiano = {
   \new Voice \relative d {
      \global
      \halsup \voiceFour
      s1*4
      %%  5 
      s1*5
      %% 10 
      s1*3
      r2 r8 r16 d\f \shiftOn gis4
      \shiftOff \halsdown a4 r4 r2
      %% 15 
      s1*5
      %% 20 
      s1*5
      %% 25 
      s1*4
      %% 30 
      r2 \halsup g16 a b g e'4
      d4
   }
}

bassForte = {
   \new Voice \relative d' {
      \global
      \halsdown \voiceTwo
      d4 r c r
      d4 r c r
      a4 r a' r
      s1
      %%  5 
      s1
      s1
      s1
      r4 r8 r32 f''! es! d cis[ b! a g e' cis b a] g[ b a g cis e d cis]
      d4 r4 r2
      %% 10 
      r1
      r1
      r1
      r1
      r4 r r r8 e,!
      %% 15 
      e8 fis r4 r r8 f
      g4 r4 r2
      r8 c' d a b d16 c b g c d32 es
      a,4 r b,8\rest d e r
      r8 fis g r r4 r8 g~
      %% 20 
      g8 a r4 r2
      \clef "treble" r16 es'32[ f ges f es16] as4 ges! \shifttiedown f~
      f8 es~ es[ d16 es32 c] d8 es r es
      f2 r8 g,~ g16 as b!8~
      b8 as r4 r r8 \clef "bass" a!
      %% 25 
      g4 r4 r2
      r1*4
      %% 30 
      r1
      r4 r r2
      R1
      r4 f' ges g
      as2~ as2
      %% 35 
      b4 r4 r2
      r16 e32[ fis g fis e16] c'4 h a~
      a8 g fis4~ r4 r8 e!
      fis4 r8 fis gis4~ gis16 g f es! d4 r4 \halsneutral c'~
      %% 40 
      c16 b a c b a g fis g4. c8~
      c16 b a c b a g fis g4 r8 c
      a8 fis r b e, g r b
      a4~ a8 g16 a b8 a16 g a b c8
      h8 b r4 r r8 \halsdown g'~
      %% 45 
      g8 as r4 r2
      r8 f g d es r r4
      r4 r8 a g a r g~
      g16 fis g fis g8 r8 r4 r8 d
      d1 \bar "|."
   }
}

bassPiano = {
   \new Voice \relative f' {
      \global
      \halsdown \voiceFour
      s1*4
      %%  5 
      s1*4
      r4 r r8 \tieNeutral f16\f d h c d8
      %% 10 
      g,16 h c8~ c c16 a fis g a8~ a4~
      a8 g16 fis g a b!8~ b4. a16 g~
      g8 f!16 e f g a f d f g8~ g16 a b g
      e8 a16 g f e d cis d e f \tieDown d~ d4
      e4 r4 r2
      %% 15 
      s1*5
      %% 20 
      s1*5
      %% 25 
      r4 r8 \clef "treble" \halsneutral b''!16 g e f! g8~ g4~
      g8 f16 e f8 r r f16 d h c d8
      \clef "bass" g,16 h c8~ c g c es~ es[ d16 c]
      d2~ d8 es16 c a b c8~
      c16 a d8~ d16 c b a g b c8~ c16 d es c
      %% 30 
      a8 d16 c b a g fis \halsdown g4~ g16 g fis g
      a4
   }
}

pedalForte = {
   \new Voice \relative g, {
      \global
      \clef "bass"
      g4 r g r
      g4 r g r
      g4 r g r
      g1~
      %%  5 
      g1~
      g1~
      g1
      d'1~
      d4 r4 r2
      %% 10 
      r1
      r1
      r1
      r1
      r4 r r r8 b
      %% 15 
      d,4 r r r8 d'
      es4 r r2
      r8 a b fis g d es4
      d1~
      d1~
      %% 20 
      d4 r r r8 a
      b1~
      b2 ces4 c
      des4 d es e
      as,4 r r r8 d,
      %% 25 
      g4 r4 r2
      r1*4
      %% 30 
      r1
      r4 d''8 c b a g f!
      es8 d c' b as g f es
      des8 c b' as ges f es des!
      ces b as' ges fes es des ces!
      %% 35 
      b4 r8 b c!4 cis
      h1~
      h2 c4 cis
      d4 dis e eis8 f
      h,8 d h g c d es! c
      %% 40 
      d8 fis g b,! es4. c8
      d4 r8 g, c2~
      c4 r8 b a cis, e g
      fis8 d g cis, d2
      g4 r r r8 g c,4 r r2
      %% 45 
      r8 d' es h c g as c
      fis, a'! b fis g d es g
      cis,4~ cis16 d es! e f! fis g cis,! d8 d,
      g1
   }
}

pedalPiano = {
   \new Voice \relative d' {
      \global
      s1*4
      %%  5 
      s1*4
      r4 d~\f d8 h g h
      %% 10 
      es,8 g es c a fis' d fis
      b,!8 d b g e cis' a cis
      f,8 a f d b'2
      \shifttiedown a1~
      a4 r4 r2
      %% 15 
      s1*5
      %% 20 
      s1*5
      %% 25 
      r4 \shifttieup g'~ g8 e c e
      as,8 c as f d' h g h
      es,8 g es c a'! fis d fis
      b8 g e g c a fis a
      d8 b g b es,!2
      %% 30 
      d1~
      d4
   }
}

globalFuga = {
   \key g \minor
   \time 4/4
   \accidentalStyle default
   \tupletSpan 8
   \override TupletBracket.bracket-visibility = #'if-no-beam
}

sopranFuga = {
   \new Voice \relative d'' {
      \globalFuga
      \halsup
      r4 r8 d b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g a b c d8 e f16 g f g
      %%  5 
      a8 e f2 e!4~
      e4 d2 cis4
      d4 r8 d c!16 d b c a b c d
      b16 c a b g a b c a b g a fis a g b
      a16 c b d c es! d f! e fis g8~ g16 g fis8
      %% 10 
      g4 r8 b a g fis g
      c,16 d es!8~ es16 es d c b c d8~ d16 d c b
      a16 b c8~ c16 c b a g8 d' g4~
      g8 f! b4~ b8 a~ a g~
      g8 g fis4 g r8 d16 e
      %% 15 
      f!8 g a b a4~ a16 g f e!
      d4 r8 e f4~ f16 f g a
      b16 a g f e8.^\markup{ \hspace #1 \bracket { \musicglyph "scripts.prall" } } d16 d4 r4
      \mmrestup R1
      \mmrestup R1
      %% 20 
      \mmrestup R1
      r2 r4 r8 d
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g a h cis
      %% 25 
      d8 e f16 g f g a8 e f4~
      f4 e2 d4~
      d4 cis d r8 d
      c!4 f b, r16 g' fis g
      a,8 es' d16 c b a g8 a b16 c b c
      %% 30 
      d4 \halsneutral r16 d es d c d es8~ es16 es d c
      b16c d8~ d16 d c b a b c8~ c16 c b a
      b8 c d16 e d e f2~
      f2~ f16 g es! f d es f g
      es2~ es16 f d es c d es f
      %% 35 
      d2~ d16 es c d \halsup b a g b
      a16 b g a b d c d32 es d16 c b c a c b a
      b8 c d16 es d es c d b c a8 d~
      d4 c2 b4~
      b4 a r8 f b b
      %% 40 
      a4 b8 h c g c c
      b8 h c cis d a d d
      cis4 d2 cis!4
      d8 f g, e' f,16 a d8 cis16 e a8
      f16 g e f d f e d cis d h cis a8 d16 a
      %% 45 
      \halsneutral b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d f a d
      cis16 d h cis a cis e g f g e f d f a c!
      b!16 c a b g a f g e f d e c e g b
      a16 b g a f g e f d e c d b d f a
      %% 50 
      g16 a f g e f d e cis d h cis a cis e a
      d,16 f a, d f, a d, h' a cis e g f a d, f
      g,16 b! d f e g c, e f, a c e d f b, d
      e,16 g b d cis e a, cis d f a, d f, a d, a'
      b16 c! a b g8 b c16 e g, c e, g c, g'
      %% 55 
      a8 b c d g, g'~ g16 e c a'
      b16 c, d8~ d16 d c b a' b, c8~ c16 c b a
      g'16 a, b8~ b16 b a g f4 r
      r8 c' f e f16 es d f es c h d
      c8 r r4 r8 g' c h
      %% 60 
      c16 b! a c b g fis a g8 d g fis
      g16 a fis a g a f g es f d f es f d es
      c16 d b d c d b c a b g b a b g a
      fis16 g e fis d8 d' b16 c a b g8 g'
      fis16 g e fis d a' c, a' b, c a b g b es g,
      %% 65 
      \halsup fis16 a d8~ d16 c b a b d g8~ g16 cis, e8
      d4 b'2 a4~
      a4 g2 fis4
      g8 d g fis g d b c
      d8 d d d d es f! g
      %% 70 
      es8 g c h c g es f
      g8 g g g g4 r
      r4 r8 g es16 f d es c8 c'
      h16 c a h g8 c16 g as8 f b, b'
      g16 as f g es8 as16 es f8 d g, g'
      %% 75 
      es16 f d es c es d c h c a! h g f' es d
      c16 g d' g, es' g, f' g, g' g, a' g, h'8 g
      g1~ ^\markup{ \hspace #1 \bracket { \musicglyph "scripts.prall" } }
      g16 es f g as4~ as16 d, es f g4~
      g16 b as g f es d es d8 f b, d
      %% 80 
      es4~ es16 f g a! b2
      r16 es, f g as g f as g2
      r16 c, d es f es d f b,8 d es r
      r8 b es d es f g r
      r2 r8 f b a!
      %% 85 
      b8 r r4 r2
      r2 c~
      c4 b8 as b2~
      b4 as8 g as2~
      as4 g8 f es16 f d es c es d f
      %% 90 
      es16 f d es c es d f es f d es c es d f
      e16 g fis a \halsneutral g b a c b c a b g b a c
      b16 c a b g b a c b c a b g b a c
      b16 c b a g b a g fis8 d r d
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      %% 95 
      es8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g b a g
      fis16 g e fis d fis a c b c a b g b d f!
      es!16 f d es c d b c \halsup a b g a f a c es
      d16 es c d b c a b g a f g es g b d
      %% 100 
      c16 d b c a b g a fis g e fis d fis a d
      g,16 b d g b, d g, b d, fis a c b d g, b
      c,16 es g b a c f, a b, d f a g b es, g
      a,16 c e g fis a d, fis g8 a b16 c b c
      d4 r8 b c16 d es8~ es16 es d c
      %% 105 
      b16 c d8~ d16 d c b a b c8~ c16 c b a
      g8 a b c d2~
      d16 es c d b c d es c2~
      c16 d b c a b c d b2~
      b16 c! a b g b a g fis g e fis g b a c
      %% 110 
      b16 a g a fis8.\prallprall g16 g8 r r es' \break
      d4 r8 d g16 f! es d c8 d16 es
      f16 g es f d8 b es16 d c b a8 b16 c
      d16 es c d b8 fis' g c, b fis'
      g8 c, b fis' << { \stemUp g a d, fis! g4.^\fermata }
                      \\ { \stemUp \shiftOn s4. d8 d4. }
                      \\ { \stemUp \shiftOnn s4. c8 h4. }
                      \\ { \stemDown r8 c b a g4. }
                   >> \bar "|."
   }
}

altFuga = {
   \new Voice \relative g' {
      \globalFuga
      \halsdown
      \mmrestdownn R1
      \mmrestdownn R1
      \mmrestdownn R1
      r4 r8 g f16 g e f d8 d'
      %%  5 
      cis16 d h cis a8 d16 a b8 g c,! c'!
      a16 b g a f8 b16 f g8 e a, a'
      f16 g e f d e f g a8 g fis d
      g8 f! es! d c es d e
      fis8 g a b c8. b16 a8. a16
      %% 10 
      g8 a b16 c b c d8 a b4~
      b4 a2 g4~
      g4 fis g4 r8 d'
      a4 r8 f' c4 b
      a4. a8 g a b4
      %% 15 
      a8 cis d f e d cis! d
      g,16 a b8~ b16 b a g f g a8~ a16 a g f
      e16 f g8~ g16 g f e a4 r16 d c! d
      b16 c a b g8 b c4 r16 c b c
      a16 b g a f8 a b4 r16 b a b
      %% 20 
      g4~ g16 b a b c4~ c16 b c a
      b16 d g, b a c fis, a g8 b c, a'
      b,8 c d16 d' c es a,8 fis g4~
      g4 r8 a' b4 r
      r2 r4 r8 g
      %% 25 
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d e f g
      es!16 f d es c d es f d es c d b c d es
      c16 d b c a8 d~ d16 es c d b es d es
      %% 30 
      \staffdown a,16 b g a b2 a4~
      a4 g2 fis4
      g8 a b16 c b c a b g a b c d es!
      c16 d b c a b c a b2~
      b16 c a b g a b c a2~
      %% 35 
      a16 b g a f g a f b8 c \staffup d e
      \shifttiedown f2~ f16 es! d es c8. d16
      d8 es f2 r8 f
      es16 f g8~ g16 g f es d es f8~ f16 f es d
      c16 d es8~ es16 es d c b4 r
      %% 40 
      r8 c f f es e f fis
      g8 d g g f! fis g gis
      a16 b! g! a f! g a b g a f g e f g a
      f16 a d, f e g cis, e d f a, d e g a, cis
      d16 f a, d \staffdown f, a d, f a, cis e g f a d, f
      %% 45 
      g,16 b! d f e g c, e f, a c e d f b, d
      e,16 g b d cis e a, cis \halsneutral d,8 e f d
      a'8 h cis a d e f d
      g8 a b g c d e c
      \clef "treble" f g a f b16 c a b g a f g
      %% 50 
      e16 f d e cis d h cis \clef "bass" a b! g a f g e g
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d8 f
      g16 b d, g b, d g, d' e f d e c8 e
      %% 55 
      f8 g a16 b a b c d b c \stemUp a8 \clef "treble" a'~
      \stemNeutral a4 g2 \shifttiedown f4~
      f4 e r8 c f e
      f4 r8 b, c16 g' g, g' g, g' g, g'
      g,8 g' c h c4 r8 f,
      %% 60 
      g16 d' d, d' d, d' d, d' d,8 c b c
      d16 d' c es d es c d b c a c b c a b
      g16 a f a g a f g es f d f es f d es
      \clef "bass" c16 d b c a c fis, a g b d, g b, d g, c
      \halsup d16 a e' a, fis' g e fis g d a' d, b' d, c' d,
      %% 65 
      \staffup d'8. e16 fis!4 g8. a16 \dotsDown b8. \dotsNeutral cis,16
      << { \stemDown a'4 } \\ { \stemUp \shiftOn d,4 } >> r8 d' g16 f! es! d c es d c
      b4 r8 b es16 d c b a c b a
      g4 r r8 d g fis
      g8 fis b16 g a d, g8 g g h
      %% 70 
      g4 r r8 g c h
      c8 h es16 c d g, c h! c es d es d c
      h16 a! h c d c d h c8 h c g'
      g8 r r4 r2
      \mmrestdown R1
      %% 75 
      \mmrestdownn R1
      \mmrestdownn R1
      R1
      R1
      r2 r4 r8 b,
      %% 80 
      g16 as f g es8 es' d16 es c d b8 es16 b
      c8 as d, d' b16 c as b g8 c16 g
      as8 f b, as' g16 as f g es g f as
      g16 as f g es g f as g as f g es g f as
      g16 b a! c b d c es d es c d b d c es
      %% 85 
      d16 es c d b d c es d es c d b d c es
      d16 f e g f as g b as b g as f g es f
      des2 g16 as f g es f des es
      c2 f16 g es f des es c des
      h4 c8 d! g,4 r8 g
      %% 90 
      g8 g c h c h g g
      g4 \staffdown r8 d d r r d'
      d8 d g fis g fis d d
      d4 r8 es d a r4
      \clef "bass" \mmrestup R1
      %% 95 
      \mmrestuppp R1
      \mmrestupp R1
      \mmrestupp R1
      \staffup \mmrestdownn R1
      \mmrestdownn R1
      %% 100 
      \mmrestdownnn R1
      \mmrestdownnnn R1
      \once \override MultiMeasureRest.staff-position = #-8 \once \override MultiMeasureRest.extra-offset = #'(-1 . 0) R1
      r4 r8 d, \staffdown b16 c a b g8 \staffup g'
      fis16 g e fis d8 g16 d es8 c \staffdown f,! \staffup f'!
      %% 105 
      d16 es c d b8 es16 b c8 \staffdown a d, \staffup d'16 c
      \staffdown b16 c b a g b a g fis g fis e d \staffup r16 fis'8
      g2~ g16 a f! g es f g a
      f2~ f16 g es f d e fis g
      cis,2 d8 c b d~
      %% 110 
      d16 c b c \staffdown a8. g16 g8 r \staffup r b'
      a4 r8 b b4~ b16 b a g
      a4~ a16 a g fis g4~ g16 g fis! e
      d8 fis g es! d fis g es
      d8 fis g es d \staffdown es b d
      %% 115 
      d4.
   }
}

tenorFuga = {
   \new Voice \relative d' {
      \globalFuga
      \halsneutral
      R1*4
      %%  5 
      R1*4
      r2 r4 r8 d
      %% 10 
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es!8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g a b c
      d16 es c d b c d es f g es f d f es d
      c16 d b c a b c d b c a b g a b c
      %% 15 
      d8 e \clef "treble" f16 g f g a8 e! \shifttiedown f4~
      f4 e2 d4~
      d4 cis d \clef "bass" r16 f es! f
      d16 es c d b8 d g,4 r16 es' d es
      c16 d b c a8 c f,4 \clef "treble" r16 d' c d
      %% 20 
      b16 d c d es4~ es16 g fis g a g a fis
      g8 d \clef "bass" c16 es a, c b d g, b a c fis, a
      g4. es' 8 d c b g
      c16 d es8~ es16 es d c b c d8~ d16 d c b
      a16 b c8~ c16 c b a g8 a b[ a16 g]
      %% 25 
      a4. d,8 e a d, f
      g16 a b8~ b16 b a g f g a8~ a16 a g f
      e16 f g8~ g16 g f e d8 f b4~
      b4 a2 g4~
      g4 fis g r
      %% 30 
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      %% 35 
      \mmrestdow R1
      r2 r4 r8 f
      d16 es c d b8 b' a16 b g a f8 b16 f
      g8 es a, a' f16 g es f d8 g16 d
      es8 c f, f' d16 es c d b c d es
      %% 40 
      f16 g es f d es f g c, d b c a b c d
      g,16 a f g e f g a d, d' c! d h c d e
      a,8 a' b d, e g a a,
      d8 r r4 r2
      \mmrestdownnn R1
      %% 45 
      \mmrestdownnn R1
      s1
      s1
      s1
      s1
      %% 50 
      s1*5
      %% 55 
      s1*5
      %% 60 
      s1
      s1
      s1
      s1
      \mmrestdownn R1
      %% 65 
      r4 r8 d' b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g b a c b c a b g b a c
      b16 c a b g b a c \clef "treble" b d c es d f es d
      %% 70 
      c16 d h d c es d f es f d es c es d f
      es16 f d es c es d f es d es g as g f es
      d16 c d es f d g8~ g4~ g16 g f es
      d es c d es2 d4~
      d4 c2 h4
      %% 75 
      c4 r16 g' f es d4~ d16 as' g f
      es16 f d es c es d c h c a h g h a h
      c16 g d' g, es' g, f' g, g' g, a' g, h' g a h
      c4~ c16 f, g as b4~ b16 es, f g
      \shifttiedown as2~ as16 c b as g as f g
      %% 80 
      es16 f d es c8 f \clef "bass" b,16 c as b g4~
      g4 f2 es4~
      es4 d es8 f g b
      b8 r r4 r8 d b b
      b8 es d f f r r4
      %% 85 
      r8 f, b a b a d f
      b,2 \clef "treble" f'8 g as f
      b16 c as b g as f g es8 f g es
      as16 b g as f g es f des8 es f des
      g8 d! es h c g c h
      %% 90 
      c4 r8 g' g f es g,
      c4 r8 a! g d' g fis
      g4 r8 d' d c b d,
      g4 r8 c16 b a g fis e d c b a
      \clef "bass" g f! es! d c b a g d'8 d, r16 g' a b
      %% 95 
      c,16 es g b a c f, a b, d f a g b es, g
      a,16 c es g fis a d, fis g,8 a b g
      d'8 e fis d g a b g
      c8 d es c f,! g a f
      b8 c d b es16 f d es c d b c
      %% 100 
      a16 b g a fis g e fis d es c d b c a c
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es!8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' g f! es!4
      d4 b'2 a4~
      %% 105 
      a4 g2 fis4
      g4 r r r16 d'' c d
      b16 c a b g a f! g es f d es c c' b c
      a16 b g a f g es f d es c d b b' a b
      g16 a fis g e8 a d,4 e8 fis
      %% 110 
      g8 c, d4 d8 r r g'
      d4 r8 d c2
      b2 a2
      b8 c d c g a d c
      g8 a d c g c d a
      %% 115 
      g4._\fermata
   }
}

pedalFuga = {
   \new Voice \relative g {
      \globalFuga
      \clef "bass"
      R1*4
      %%  5 
      R1*5
      %% 10 
      R1*4
      r2 r4 r8 g
      %% 15 
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d8 f
      g4 r16 g f g es! f d es c8 es
      f4 r16 f es f d es c d b8 d
      %% 20 
      es8 d c b a g fis d
      g8 b c d g,4 r8 d
      g8 a b c d a b4~
      b4 a2 g4~
      g4 fis g8 f e e'
      %% 25 
      d8 c b4 a r
      R1
      R1
      R1
      r4 r8 d b16 c a b g8 g'
      %% 30 
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g8 g' f16 g es! f d8 b'
      a16 b g a f g es f d es c d b b' a b
      g16 a f g es f d es c d b c a a' g a
      %% 35 
      f16 g es f d es c d b c a b g c b c
      f,8 f' g a b es, f f,
      b4 r r2
      R1
      R1
      %% 40 
      R1*5
      %% 45 
      R1*5
      %% 50 
      R1
      R1
      R1
      R1
      r2 r4 r8 c
      %% 55 
      a16 b g a f8 f' e16 f d e c8 f16 c
      d8 b e, e' c16 d b c a8 d16 a
      b8 g c, c' a16 b g a f a g b
      a16 b g a f a g b a c h d c es! d f
      es16 f d es c es d f es16 f d es c es d f
      %% 60 
      e16 g fis a g b a c b c a b g b a c
      b16 c a c b c a b g a fis a g a f g
      es16 f d f es f d es c d b d c d b c
      a16 b g a fis8 d g f es!4
      d1~
      %% 65 
      d1~
      d8 fis g b c es f! a,
      b8 d es g, a c d d,
      g4 r8 d g4 r8 d
      g d' g fis g es h g
      %% 70 
      c4 r8 g' c,4 r8 g
      c8 g' c h c as f d
      g8 d h g c g es c
      g'8 g' c, es f16 c as'8~ as16 b, d b
      es16 b g'8~ g16 as, c as d as f'8~ f16 g, h g
      %% 75 
      c16 g d' g, es' g, f' g, g' g, a' g, h' g, g' g,
      c'4 r r r16 g f g
      es16 f d es c d c d h c a h g8 g'
      es8 c f es d b es d
      c8 b c as b4 r8 b
      %% 80 
      es,4 r r2
      R1
      r2 r8 b' es d
      es4 r r8 b es d
      es8 f g a! b r r4
      %% 85 
      r2 r8 f, b a
      b8 c d e f4 r
      b,8 c des b es4 r
      as,8 b c as des4 r
      g16 as f g es f d! es c4 r8 g
      %% 90 
      c4 r8 g c, g' c h
      c8 d e fis g4 r8 d
      g4 r8 d g, d' g fis
      g8 a b c d d, r4
      R1
      %% 95 
      R1*5
      %% 100 
      R1*5
      %% 105 
      R1*5
      %% 110 
      r4 r8 d b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g b a c b c a b g b a c
      b16 c a b g b a c b d c es d8 d,
      %% 115 
      g4._\fermata
   }
}

right = {
   \clef treble
   <<
      \sopranFuga
      \altFuga
   >>
}

left = {
   \clef bass
   <<
      \tenorFuga
   >>
}

% print
\score {
   <<
      \new PianoStaff
      {
         <<
            \context Staff = right {
                <<
                  \sopranForte
                  \sopranPiano
                  \altForte
                  \altPiano
                  \altZweiForte
                >>
            }
            \context Staff = left {
               <<
                  \tenorForte
                  \tenorPiano
                  \bassForte
                  \bassPiano
               >>
            }
         >>
      }
      \context Staff = pedal {
         <<
            \pedalForte
            \pedalPiano
         >>
      }
   >>

   \layout {
      \context {
         \Score
         \remove "Dynamic_engraver"
         \remove "Dynamic_align_engraver"
      }
      \context {
         \Voice
         % Remplacement natif et moderne du script Scheme obsolète
         \override Script.avoid-slur = #'outside
      }
      indent = 0.6\cm
   }
}

% midi
\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "church organ"
               \set Staff.midiMinimumVolume = #1
               \set Staff.midiMaximumVolume = #1
               <<
                  \sopranForte
                  \altForte
                  \altZweiForte
               >>
            }
            \context Staff = left {
               \set Staff.midiInstrument = "church organ"
               \set Staff.midiMinimumVolume = #1
               \set Staff.midiMaximumVolume = #1
               <<
                  \tenorForte
                  \bassForte
               >>
            }
         >>
      }

      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "pan flute"
               \set Staff.midiMinimumVolume = #0.4
               \set Staff.midiMaximumVolume = #0.4
               <<
                  \sopranPiano
                  \altPiano>>
            }
            \context Staff = left {
               \set Staff.midiInstrument = "pan flute"
               \set Staff.midiMinimumVolume = #0.4
               \set Staff.midiMaximumVolume = #0.4
               <<
                  \tenorPiano
                  \bassPiano
               >>
            }
         >>
      }

      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \set Staff.midiMinimumVolume = #1
         \set Staff.midiMaximumVolume = #1
         \transpose c c, \pedalForte
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \set Staff.midiMinimumVolume = #1
         \set Staff.midiMaximumVolume = #1
         \transpose c c, \pedalForte
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \set Staff.midiMinimumVolume = #0.6
         \set Staff.midiMaximumVolume = #0.6
         \transpose c c, \pedalPiano
      }
   >>

  \midi {
    \tempo 4 = 36
    }
}

\score {
   <<
      \new PianoStaff
      {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedalFuga {
         \context Voice = pedalFuga \pedalFuga
      }
   >>

   \layout{
      indent = 0.6\cm
   }
}

\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }

      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \context Voice = left \left
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \left
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedalFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedalFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedalFuga
      }
   >>

  \midi {
    \tempo 4 = 80
    }
}