Global = {
  \key d \minor
  \time 3/4
}
textmordent = \markup { \musicglyph "scripts.mordent" }
Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral
  \override Rest.staff-position = #0
  | d8[ a' f d a' f]
  | d8[ a' f d a' f]
  | d[ bes' g d bes' g]
  | d[ bes' g d bes' g]
  | cis,[ g' e cis g' e]
  | cis[ bes' g e a g]
  | f[ d f a f a]
  | d[ a d f d f]
  | b[( f e d c b]
  | a[ gis fis  e) d' b]
  | <a c\mordent>4 r r
  | <a c\mordent>4 r r
  | a'8[( ees d c bes a]
  | g[ fis e  d) c' a]
  | bes[\mordent d bes g] g'4
  | r8 d[ c bes a\prall g]
  | a[ c a f] f'4
  | r8 c[ bes a g_\prall f]
  | g[ bes a g f e]
  | f[ d f a d g,]
  | \stemUp cis[\mordent e cis a e' cis]
  | \stemNeutral a8[ e' cis a bes a]
  | g[ e' cis g e' cis]
  | g[ e' cis g a g]
  | f[ d' bes f d' bes]
  | f[ d' bes f d' bes]
  | fis[ c' a fis c' a]
  | fis[ c' a fis c' a]
  | bes[ g fis g d g]
  | bes[ g d bes' g d]
  | ees[ g fis g bes g]
  | ees[ bes' g ees bes' g]
  | cis,[ bes' g cis, bes' g]
  | cis,[ bes' g cis, a' g]
  | f[ a f d a' f]
  | d[ a' f d cis d]
  | e[ g e bes g' e]
  | bes[ g' e cis a g']
    \break
  | f16[ d c! bes] s2
  | s2.
  | s4 s16 d[ f a] \stemDown d,[ f a] \stemUp d
  | f[ a f d]  f[ d b d]  gis,[ b a gis]
  | \stemNeutral <a e' g>4.\arpeggio a'8 <a, d f>4~
  | f'8[ e] \stemUp e4.\prall d8
  | d8[ c! a d bes g]
  | c[ a fis bes g e]
  | a[ fis d g e cis]
  |
    \omit Stem \grace {
      \hideNotes a4
      \once\override Staff.TextScript.extra-offset = #'(0 . -6)
      a^\textmordent^\markup { \hspace #-0.4 \teeny\sharp }
      \unHideNotes
    } \undo\omit Stem
    <a d fis>2.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}
Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  | s2.*43
  | s4 cis2
}
Bass = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  | d4\mordent r r
  | d, r r
  | d'\mordent r r
  | d, r r
  | d'\mordent r r
  | d, r r
  | d'8[ a d f d f]
  | a[ f a d a d]
  | gis,4 r r
  | e gis e
  | a8[ e' c a e' c]
  | g![ ees' c g ees' c]
  | fis,4 r r
  | d fis d
  | g\mordent r r8 f!
  | e4\prall r r
  | f\mordent r r8 e
  | d4\prall r8 f[ e d]
  | e[ d cis e d cis]
  | d4 c! bes
  | a a' a,
  | a a' a,
  | a a' a,
  | a a' a,
  | bes r r
  | bes bes' bes,
  | a r r
  | a d d,
  | g r r
  | g g' g,
  | g r r
  | g g' g,
  | a r r
  | a a' a,
  | a r r
  | a a' a,
  | cis, r r
  | cis cis' cis
  | d \once\stemUp a'16 g[ f e] f[ a d, f]
  | \once\stemDown a, d[ c bes] a \stemDown g[ f e] d[ f a d]
  | \stemUp f[ a] \stemDown d,[ f] a s8. s4
  | R1*3/4
  | \stemNeutral cis,8[ e cis a] d[ bes]
  | g[ g'] a[ g a g,]
  | d'4 d' d,
  | d r r
  | d, d' d,
  | d2.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
    \fine
}
\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
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
    composer = "Jean Sébastien Bach (1685-1750)"
    opus = "BWV 926"
    title = "3. Petit Prélude en Ré mineur"
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4. = 140
  }
}
