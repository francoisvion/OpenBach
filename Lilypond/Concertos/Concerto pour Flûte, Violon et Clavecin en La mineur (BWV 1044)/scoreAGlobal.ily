\version "2.22.0"

scoreAGlobal = {
  \key a \minor
  \time 4/4
  \tempo "Allegro          "
  \override TupletBracket.bracket-visibility = ##f
  %   \override TupletNumber.transparent = ##t
  \tupletSpan 8
  \omit TupletNumber
  \set Timing.beamExceptions = \beamExceptions {
    \tuplet 3/2 {16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } |
    {8[ 8 8 8] 8[ 8 8 8] } |
    {16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16]}
  }
  \set Score.markFormatter = #format-mark-box-alphabet
  \compressEmptyMeasures
  \override ParenthesesItem.font-size = #0
  \override Score.FootnoteItem.annotation-line = ##f
}