greyTextColor = #(x11-color "dimgray")
subjectColor = #(x11-color 'darkblue)
markWithColorExtended =
#(define-music-function (color music)
   (color? ly:music?)
   "Change the color of the given note."
   #{
     \override Accidental.color = #color
     \override Beam.color = #color
     \override Dots.color = #color
     \override NoteHead.color = #color
     \override Rest.color = #color
     \override Script.color = #color
     \override Stem.color = #color
     \override Tie.color = #color
     #music
     \revert Script.color
     \revert Rest.color
     \revert NoteHead.color
     \revert Dots.color
     \revert Accidental.color
     \unHighlightSubject
   #})
highlightSubject =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \subjectColor #music #})
unHighlightSubject = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}
