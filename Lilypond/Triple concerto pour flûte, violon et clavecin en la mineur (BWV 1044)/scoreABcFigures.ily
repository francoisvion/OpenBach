\version "2.22.0"

scoreABcFigures = \figuremode {
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  \set figuredBassPlusDirection = #RIGHT
  \override BassFigure.font-size = #-2

  s2 s4 <6>8 <_+>8 | s2 s4 <6>8 <6 4\+>8 |
  <6>8 s s4 s8 <6>8 <6> s | <_+>8 s s4 s8 <6> <6> s |
  s1 * 3 | <6>8 <6 5> <6 4> <7 5 _+> s2 | s1 * 5 |
  s2 s8 <6> <6> s | s1 | s2 s4 <6 5>8 <7 _+> |
  s1 * 124 |
  s1 | s2 s4 <6>8 <6 4\+>8 | <6>8 s s4 s8 <6>8 <6> s |
  <_+>8 s s4 s2 | s1 * 3 |
  <6>8 <6 5> <6 4> <7 5 _+> s2 | s1 |
}
