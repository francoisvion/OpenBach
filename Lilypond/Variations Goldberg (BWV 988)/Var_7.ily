%voices
rha=\relative c'' {
  h8. a16 h8 d,8. g16 h8
  a8. \prall g16 a8 d4.
  g8. \mordent fis16 g8 a,8. e'16 g8
  fis8. \prall e16 fis8 d4.~
  d4 e32 ( fis g a h8. ) g16 d8
  e4 fis32 g a h c8. a16 e8
  fis8. d16 g8 a,8. h16 c8
  \grace c8 h4.~ h8. a16 g fis
  g4 d'8 g4.~ \prallmordent
  g8 a16 g fis e fis4.~\prallmordent
  fis8. g16 fis8 e8. cis16 d8
  cis8. \prall d16 e8 a,4.~
  a4 h32 ( cis d e fis8. ) d16 a8
  h4 cis32( d e fis g8.) e16 h8
  cis8. a16 a'8 d,8. e16 cis8
  \grace cis8 d4.~ d
  fis8. e16 fis8 a,8. d16 fis8
  g8. fis16 g8 h4.
  e,4 fis32 ( g a h c16 ) h a g fis e
  dis8. \prall cis16 dis8 h4.~
  h8. h'16 fis8 g8. dis16 e8
  c8. e16 gis8 a4 h32 ( a g fis )
  g8. a16 h8 e,8. fis16 dis8
  e8. h16 g8 e4 h'8
  h8. gis16 a8 d e16 d c h
  c8. e16 d8 e8. g16 fis8
  g8 a16 g fis e a8. h16 g8
  fis8. \prall e16 fis8 d4.~
  d4 e32 ( fis g a h8.) g16 d8
  e4 fis32 ( g a h c8. ) a16 e8
  fis8. d16 d'8 g,8. a16 fis8
  g4.~ g
}
lhb=\relative c' {
  g4 \prallmordent g,8 g'4.~ \prallmordent
  g4. fis8. \prall e16 d8
  e4 d'8 cis4 a8
  d4.~ d8. e16 c8
  h8. c16 a8 g8. a16 h8
  c8. d16 h8 a8. h16 c8
  d8. c16 h8 c4 d8
  g,8. fis16 g8 d8. a'16 c8
  h8. \prall a16 h8 e,8. h'16 d8
  cis8. \prall h16 a8 d8. cis16 d8
  g,8. h16 d8
  \clef treble g4.~
  g8 a16 g fis e fis8. g16 a8 \clef bass
  d,8. a16 fis8 d8. e16 fis8
  g8. a16 fis8 e8. fis16 g8
  a8. g16 fis8 h8. g16 a8
  d,8. fis16 a8 d4.
  d4 d,8 d'4 c8
  h8. \prall a16 h8 g8. a16 h8
  c8. d16 h8 a8. h16 c8
  h4 h,8 h'8. a16 h8
  g4 a32 h cis dis e8. h16 g8
  a4 h32 c d e f8. e16 dis8
  e4 g,8 c8. a16 h8
  e,4.~ e8. e'16 d8
  c8. \prall h16 c8 gis8. h16 e,8
  a8. c16 h8 c8. h16 a8
  h8. e16 d8 cis8. \prall h16 cis8
  d4.~ d8. e16 c8
  h8. c16 a8 g8. a16 h8
  c8. d16 h8 a8. h16 c8
  d8. c16 h8 e8. c16 d8
  g,8. d16 h8 g4.
}
%general stafflayout
rhlayout= {
  \time 6/8
  \repeat volta 2 { s2.*16 }
  \mLineBreak
  \repeat volta 2 { s2.*16 }
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
      \new Voice {\global \clef treble \rha}
    >>
    \new Staff = "down" \with { \consists "Mark_engraver" }
    <<
      \new Voice {\lhlayout}
      \new Voice {\global \clef bass \lhb}
    >>
  >>

  \header { piece = \markup \fontsize #2 \bold "Variatio 7. a 1 ô vero 2 Clav. al tempo di Giga" }
  \layout {
    \context {
      \Score
      \override RehearsalMark.break-visibility = #begin-of-line-invisible
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } \context { \Voice \remove "Dynamic_performer"}}
}
