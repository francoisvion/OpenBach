slideNotes = {
 \override NoteColumn.force-hshift = 0
 \override NoteHead.stencil = #(ly:make-stencil
   (list 'draw-line 0.15 -0.5 -0.4 2 0.4)
   '(-0.1 . 0.1) '(0.1 . 1))
 \override Stem.stencil = ##f
 \override Flag.stencil = ##f
}
