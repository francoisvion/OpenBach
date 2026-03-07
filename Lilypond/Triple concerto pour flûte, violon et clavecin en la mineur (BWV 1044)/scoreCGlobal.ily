\version "2.22.0"

scoreCGlobal = {
  \key a \minor
  \time 2/2
  \tempo "Tempo di Allabreve"
  \override TupletBracket.bracket-visibility = ##f
%   \override TupletNumber.transparent = ##t
  \tupletSpan 4
  \omit TupletNumber
  \set Timing.beamExceptions = \beamExceptions {
    \tuplet 3/2 {8[ 8 8] 8[ 8 8] 8[ 8 8] 8[ 8 8]} |
    {8[ 8 8 8] 8[ 8 8 8] } |
    {16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16]}
  }
  \set Score.markFormatter = #format-mark-box-alphabet
  \compressEmptyMeasures
  \override ParenthesesItem.font-size = #0
  \override Score.FootnoteItem.annotation-line = ##f
}