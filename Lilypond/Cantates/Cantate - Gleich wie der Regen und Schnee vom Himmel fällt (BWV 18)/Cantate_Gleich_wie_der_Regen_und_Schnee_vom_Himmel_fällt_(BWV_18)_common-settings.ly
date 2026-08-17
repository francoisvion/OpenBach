\version "2.27.1"

\layout {

    \context {
        \Score {
            \set quotedCueEventTypes = #'(note-event rest-event tie-event
                                          beam-event tuplet-span-event
                                          dynamic-event articulation-event
                                          slur-event)
        }
    }

    \context {
	\StaffGroup {
	    \override StaffGroup.SystemStartBracket.collapse-height = #4
	}
    }

    \context {
	\StaffGroup {
	    \override StaffGroup.SystemStartBracket.collapse-height = #4
	}
    }

    \context {
	\GrandStaff {
	    \override PianoStaff.SystemStartBrace.collapse-height = #4
	}
    }

    \context {
	\FiguredBass {
	    \set figuredBassAlterationDirection = #RIGHT
	    \set figuredBassPlusDirection = #RIGHT
            \set figuredBassCenterContinuations = ##t
	}
    }
    \context {
	\Staff {
            \bassFigureStaffAlignmentDown
	    \set figuredBassAlterationDirection = #RIGHT
	    \set figuredBassPlusDirection = #RIGHT
            \set figuredBassCenterContinuations = ##t
	}
    }

    \context {
	\Staff {
	    \override TextScript.font-shape = #'italic

	    \set soloText = #"1."
	    \set soloIIText = #"2."

	    \accidentalStyle modern-cautionary

	    \extendLV #3

	    \override RestCollision.positioning-done = #merge-rests-on-positioning

	    \override AccidentalSuggestion.avoid-slur = #'inside
	}
    }

    \context {
	\RhythmicStaff {
	    \override TextScript.font-shape = #'italic
	}
    }

    \context {
	\Voice {
	}
    }
    \compressEmptyMeasures
}
