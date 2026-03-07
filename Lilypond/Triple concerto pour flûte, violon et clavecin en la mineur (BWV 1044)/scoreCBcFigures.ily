\version "2.22.0"

scoreCBcFigures = \figuremode {
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  \set figuredBassPlusDirection = #RIGHT
  \set figuredBassAlterationDirection = #RIGHT
  \override BassFigure.font-size = #-2

  s1 * 5 | s4 <6 5> <7 _+> <6 5\+> | <7 5>4  <6\\ 5> <_+> <4\+ 2> |
  <6>4 <6> <6 5> <6 5> | s4 <6 4 2> <6 _+> <6 4\+ 2> |
  <6>4 s8 <7 5> <5 4>4 <_+> | s4 <7 5> <6 4 2> <7 5> |
  <6 4 3>4 <7 5> <6\\ 4 3> <7 _+> | s4 <6> <5> <7 _+> |
  <_!>2 <6 _+>4 <5> | s4 <9 7> <7 5> <6 5> |
  s4 <3> <4> <_+> | s4 s <5\+ 3> <6\\> |
  <6 _+>4 <6> <7 _+> <4\+ 2> |
  <6>4 <4 2> <6 5> <4 2> | <6 5>4 <4 2> <7 5> <6> |
  <9 5>4 <8 6> <7 5> <6 5> | <9>4 s <5! 3> s |
  <7>4 <6> s <7 _+> | <9>4 <6> <4> <_+> |
  s1 * 12 |
  s4 <6> <7 _+> s | <6>4 <4 2> <6 5> <4 2> |
  <6 5>4 <4 2\+> <6 5>2 | s1 * 2 |
  s4 <6-> <6> <5> | s <_-> <6- 4 2> <7- 5> |
  <_->4 <7> <4> <_+> |
  s1 * 180 |
  s4 <6 4 2\+> <6 5>2 | s4 <6 5> <7 _+> <6 5\+> |
}