\version "2.24.4"

pocofMarkup = \markup{\normal-text poco \dynamic f}
pocof = #(make-dynamic-script pocofMarkup)

commonMusic = {
    \compressEmptyMeasures

    \accidentalStyle modern-cautionary

    \override Staff.TextScript.font-shape = #'italic

    \set Staff.soloText = #"1."
    \set Staff.soloIIText = #"2."
}

commonScore = {
    \override Score.BarNumber.font-size = #3
}

#(define-public (parentheses-interface::calc-parenthesis-left-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list (ly:font-get-glyph font "accidentals.leftparen") empty-stencil)))

#(define-public (parentheses-interface::calc-parenthesis-right-stencils grob)
  (let* ((font (ly:grob-default-font grob)))
    (list empty-stencil (ly:font-get-glyph font "accidentals.rightparen"))))

parenthesizeLeft = #(define-music-function (arg) (ly:music?)
#{
  -\tweak Parentheses.stencils
#parentheses-interface::calc-parenthesis-left-stencils
  -\parenthesize $arg
#})
parenthesizeRight = #(define-music-function (arg) (ly:music?)
#{
  -\tweak Parentheses.stencils
#parentheses-interface::calc-parenthesis-right-stencils
  -\parenthesize $arg
#})

pKO = -\parenthesizeLeft-!
pKS = -\parenthesizeRight-!
pDO = -\parenthesizeLeft-.
pDS = -\parenthesizeRight-.

hairpinBetweenText =
#(define-music-function (leftText rightText) (markup? markup?)	
   #{
     \once \override Hairpin.stencil =
     #(lambda (grob)
        (ly:stencil-combine-at-edge
         (ly:stencil-combine-at-edge
          (ly:stencil-aligned-to (grob-interpret-markup grob leftText) Y CENTER)
          X RIGHT
          (ly:stencil-aligned-to (ly:hairpin::print grob) Y CENTER)
          0)
         X RIGHT
         (ly:stencil-aligned-to (grob-interpret-markup grob rightText) Y CENTER)
         0.6))
   #})

parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"