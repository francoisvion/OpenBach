\version "2.22.0"

scoreBGlobal = {
  \key c \major
  \numericTimeSignature
  \time 6/8
  \tempo "Adagio ma non tanto e dolce"
  \set Score.markFormatter = #format-mark-box-alphabet
  \override ParenthesesItem.font-size = #0
}