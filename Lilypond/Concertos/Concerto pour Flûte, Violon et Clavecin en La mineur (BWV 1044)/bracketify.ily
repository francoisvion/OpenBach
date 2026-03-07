\version "2.22.0"

#(define-public (parentheses-item::calc-bracket-stencils grob)
   (let* ((parent (ly:grob-parent grob Y))
          (y-extent (ly:grob-extent parent parent Y))
          (details (ly:grob-property grob 'details))
          (thick (assoc-get 'bracket-thickness details 0.1))
          (bracket-vertical-padding
           (assoc-get 'bracket-vertical-padding details 0.1))
          (bracket-protrusion
           (assoc-get 'bracket-protrusion details 0.25))
          (pad-y-extent (interval-widen y-extent bracket-vertical-padding))
          (lp
           (ly:stencil-aligned-to
            (ly:stencil-aligned-to
             (ly:bracket Y pad-y-extent thick bracket-protrusion)
             Y CENTER)
            X RIGHT))
          (rp
           (ly:stencil-aligned-to
            (ly:stencil-aligned-to
             (ly:bracket Y pad-y-extent thick (- bracket-protrusion))
             Y CENTER)
            X LEFT)))
     (list lp rp)))


bracketify =
\tweak ParenthesesItem.stencils #parentheses-item::calc-bracket-stencils
\tweak ParenthesesItem.padding #0.3
% \tweak ParenthesesItem.details.bracket-vertical-padding #0
\tweak ParenthesesItem.details.bracket-thickness #0.2
% \tweak ParenthesesItem.details.bracket-protrusion #0.5
\parenthesize \etc
