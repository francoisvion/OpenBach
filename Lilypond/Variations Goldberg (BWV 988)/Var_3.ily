%voices
rha=\relative h' {
  h4.~ h16 c d c d e a,4.~ a16 h c h c d
  g,4. g'~ g8 a16 g fis g a8 r r
  r8 d,16 c h a \once \override Beam.positions = #'(4 . 4) h8 c16 h a h \once \override Beam.positions = #'(5 . 4) g8 e' d c fis a
  h,4 g'8 g4 fis8 r r h a4 d,8~
  d16 e d c h8 e h d \once \override Beam.positions = #'(4 . 5) cis d e~ e cis a
  r8 r d \stemLen #4 g,4._~ \once \override Beam.positions = #'(4 . 4) g8 fis g \once \override Beam.positions = #'(4 . 3) e a16 g fis e
  \once \override Beam.positions = #'(2.5 . 3.5) d8 e16 fis g a h8 d cis d4.~ d8 cis r
  d4.~ \once \override Beam.positions = #'(4 . 3) d16 a g fis g e fis2.
  r4. a'~ a16 h c a h c h a g fis e dis
  e8 fis g_~ \once \override Beam.positions = #'(6 . 5.5) g fis e
  \stemLen #8 dis4._~ \stemLen #8 dis4 r8
  \restLtExt r4.
  \once\override Tie.staff-position = #-1 a4._~ a8 h16 a g fis g a h g a h
  e,8 fis16 g a h \once \override Beam.positions = #'(3 . 2) c8 e, dis e4. r
  e'4. ~ e16 fis g e fis g c, d e c d e a, h c a h c
  \once \override Beam.positions = #'(4.5 . 4.5) h16 c d h c d
  \once\override Tie.staff-position = #-1.5 g,4.~ g8 g'4~ g8 fis a~
  a8 g f e16 d c e d c h4 h'8 a4 c8
  h4 d8 g, a fis g2.
}
rhb=\relative h' {
  s1.
  h4.^~ h16 c d c d e a,4.~ a16 h c h c d
  g,4.
  \once\override Tie.staff-position = #9
  g'4.^~ \once \override Beam.positions = #'(-3 . -2) g8 a16 g fis g \stemLen #13 a8 r r
  r8 d,16 c h a h8 c16 h a h g8 e' d c fis a
  h,4 \stemLen #13 g'8 g4 \stemLen #10 fis8 r r \stemLen #12 h a4 \stemLen #11 d,8
  d16 e d c h8 \once \override Beam.positions = #'(-3 . -3.5) e h d \once \override Beam.positions = #'(-3.5 . -2.5) cis d e^~ \once \override Beam.positions = #'(-3.5 . -4) e cis a
  r8 r \stemLen #12 d g,4. ~ g8 fis g e a16 g fis e
  d8 e16 fis g a h8 d cis d2.
  R1.
  r4.
  a'4.^~ \once \override Beam.positions = #'(-2 . -2) a16 h c a h c
  \once \override Beam.positions = #'(-1.5 . -3) h16 a g fis e dis
  e8 fis g~ \once \override Beam.positions = #'(-2.5 . -3.5) g fis e
  \once\override Tie.staff-position = #-4
  dis4._~ dis4 r8
  r4.
  \once\override Tie.staff-position = #-1
  a4.^~ \once \override Beam.positions = #'(-4 . -5) a16 h c a g fis g a h g a h
  e,8 fis16 g a h c8 e, dis e4. r
  e'4.^~ \once \override Beam.positions = #'(-3 . -4) e16 fis g e fis g \once \override Beam.positions = #'(-3 . -3) c, d e c d e a, h c a h c
  h16 c d h c d g,4.~ g8 g'4~ g8 fis a
  a8 g f e16 d c e d c h2.
}
lhc=\relative c {
  g8 h d g h e, fis, a d fis a d,
  e,8 g h e h cis d, fis a d fis a,
  h16 a h c d8 ~ d16 g, a h c d e d c h c e fis, a g fis e d
  g16 fis g a h c d e a, h c a h a g fis g8 ~ g16 fis e d e fis
  g16 fis g a g fis e fis g e fis g a g a h a g fis fis' g fis e fis
  h,16 a h c d h cis d e d cis h a e' d cis d h cis a h cis d e
  fis16 h, cis d e fis g fis e d e ais, h cis d cis h a g fis g h a g
  fis16 a g fis e d g8 e a d,16 fis a d a fis d4.
  d'8 fis a d c16 h a g fis8 a d, g a h
  c16 d c h a g fis e fis g a fis h8 fis g a16 c h a g fis
  g16 a g fis e d c h a h c a h8 fis' h ~ h g e
  c'16 d c h a g fis e fis h a h e,8 g h e e, d
  c8 c' h a4. ~ a8 c a fis d d'
  g,16 a g f e d c8 e c a16 h c a h c d8 d, fis'
  g16 a h g a h c8 e a, d16 c h d c h c h a g fis a
  g16 fis e d c h c8 a d g,16 h d g d h g4.
}
%general stafflayout
rhlayout= {
  \time 12/8
  \repeat volta 2 { s1.*8 }
  %\mLineBreak
  \repeat volta 2 { s1.*8 }
}
lhlayout= {
}
%macros
staffUp = {\change Staff = up }
staffDown = {\change Staff = down }
global={
  \key g \major
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\score {
  \new PianoStaff
  <<
    \new Staff = "up"
    <<
      \new Voice {\rhlayout}
      \new Voice {\voiceOne \global \clef treble \rha}
      \new Voice {\voiceTwo \global \rhb}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \clef bass \lhc}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 3. Canone all' Unisuono. a 1 Clav." }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80/4) } \context { \Voice \remove "Dynamic_performer"}}
}



%{
convert-ly.py (GNU LilyPond) 2.19.32  convert-ly.py: Processing `'...
Applying conversion: 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22, 2.19.24,
2.19.28, 2.19.29, 2.19.32
%}
