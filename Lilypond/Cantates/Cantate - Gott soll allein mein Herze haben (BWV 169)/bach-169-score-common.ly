\version "2.18.0"

\include "common-grand-score.ly"

\include "bach-169-1.ly"
\include "bach-169-2.ly"
\include "bach-169-3.ly"
\include "bach-169-4.ly"
\include "bach-169-5.ly"
\include "bach-169-6.ly"
\include "bach-169-7.ly"

\include "title.ly"
\include "bach-paged-title.ly"

#(define transpChorton (if (defined? 'transpChorton) transpChorton #{ c #}))

\paper {
    indent = 18
    short-indent = 8
    % ragged-last-bottom = ##f
}

\markup\null
\pageBreak

% #(set-global-staff-size 12)
#(set-global-staff-size 15)



% %{

\score {
    <<
	\new StaffGroup = mvtIwind <<
	    \transpose \transpObDAm c \transpose c a, \new GrandStaff = mvtIob <<
		\set GrandStaff.instrumentName = \markup{\center-column{ "Oboe" "d'Amore" }}
		\set GrandStaff.shortInstrumentName = "Ob d'A."

		\new Staff = mvtIobI <<
		    \set Staff.instrumentName = "I"
		    \set Staff.shortInstrumentName = "I"

		    % \mvtIbreaksAutograph
		    % \mvtIbreaks

		    \mvtIobI
		>>
		\new Staff = mvtIobII <<
		    \set Staff.instrumentName = "II"
		    \set Staff.shortInstrumentName = "II"

		    \mvtIobII
		>>
	    >>
	    \transpose \transpTaille c \new Staff = mvtItaille <<
		\set Staff.instrumentName = "Taille"
		\set Staff.shortInstrumentName = "Tll."

		\clefTaille \mvtItaille
	    >>
	>>
	\new StaffGroup = mvtIstr <<
	    \new GrandStaff = mvtIvln <<
		\set GrandStaff.instrumentName = "Violino"
		\set GrandStaff.shortInstrumentName = "Vln."

		\new Staff = mvtIvlnI <<
		    \set Staff.instrumentName = "I"
		    \set Staff.shortInstrumentName = "I"

		    \keepWithTag CANTATA \mvtIvlnI
		>>
		\new Staff = mvtIvlnII <<
		    \set Staff.instrumentName = "II"
		    \set Staff.shortInstrumentName = "II"

		    \keepWithTag CANTATA \mvtIvlnII
		>>
	    >>
	    \new Staff = mvtIvla <<
		\keepWithTag CANTATA \mvtIvla

		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla."
	    >>
	>>
	\transpose \transpChorton c \new PianoStaff = mvtIorg <<
            \set PianoStaff.instrumentName = "e"
            \set PianoStaff.shortInstrumentName = "e"

	    \new Staff = mvtIorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Organo" "obligato"}
                \set Staff.shortInstrumentName = "Org."

		\mvtIorgRH
	    >>
	    \new Staff = mvtIorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "B.C."

		\mvtIorgLH
		\mvtIfigs
	    >>
	>>
    >>

    \header {
	piece = \mvtIpiece
    }
}

% %}


% %{

\score {
    \new StaffGroup <<
        \new Staff = mvtIIalto <<
            \set Staff.instrumentName = \markup{\bold{Alto}}
            \set Staff.shortInstrumentName = \markup{\bold{A.}}

	    % \mvtIIbreaksAutograph

            \new Voice = mvtIIalto {
		\clefAlto \mvtIIalto
	    }
	    \new Lyrics \lyricsto mvtIIalto \mvtIIlyrics
        >>
        \new Staff = mvtIIbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{B.C.}

            \mvtIIbc
	    \mvtIIfigs
        >>
    >>

    \header {
	breakbefore = ##t
	piece = \mvtIIpiece
    }
}

% %}


% %{

\score {
    \new GrandStaff = mvtIII <<
	\new Staff = mvtIIIalto <<
	    \set Staff.instrumentName = \markup{\bold{Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{A.}}

	    % \mvtIIIbreaksAutograph

	    \new Voice = mvtIIIalto {
		\clefAlto \mvtIIIalto
	    }
	    \new Lyrics \lyricsto mvtIIIalto \mvtIIIlyrics
	>>
	\transpose \transpChorton c \new PianoStaff <<
            \set PianoStaff.instrumentName = "e"
            \set PianoStaff.shortInstrumentName = "e"

	    \new Staff = mvtIIIorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Organo" "obligato"}
                \set Staff.shortInstrumentName = "Org."

	        \mvtIIIorgRH
	    >>
	    \new Staff = mvtIIIorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "B.C."

		\keepWithTag ORGAN { \mvtIIIorgLH }
		\mvtIIIfigs
	    >>
	>>
    >>

    \header {
	% breakbefore = ##t
	piece = \mvtIIIpiece
    }
}

% %}


% %{

\score {
    \new StaffGroup <<
        \new Staff = mvtIValto <<
            \set Staff.instrumentName = \markup{\bold{Alto}}
            \set Staff.shortInstrumentName = \markup{\bold{A.}}

            \new Voice = mvtIValto {
		\clefAlto \mvtIValto
	    }
	    \new Lyrics \lyricsto mvtIValto \mvtIVlyrics
        >>
        \new Staff = mvtIVbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{B.C.}

            \mvtIVbc
	    \mvtIVfigs
        >>
    >>

    \header {
	breakbefore = ##t
	piece = \mvtIVpiece
    }
}

% %}


% %{

\score {
    \new StaffGroup <<
	\new GrandStaff <<
	    \set GrandStaff.instrumentName = "Violino"
	    \set GrandStaff.shortInstrumentName = "V"

	    \new Staff = mvtVvlnI <<
		\set Staff.instrumentName = "I"
		\set Staff.shortInstrumentName = "I"

		% \mvtVbreaksBGA
		% \mvtVbreaksAutograph

		\mvtVvlnI
	    >>
	    \new Staff = mvtVvlnII <<
		\set Staff.instrumentName = "II"
		\set Staff.shortInstrumentName = "II"

		\mvtVvlnII
	    >>
	>>
	\new Staff = mvtVvla <<
	    \set Staff.instrumentName = "Viola"
	    \set Staff.shortInstrumentName = "Vla"

	    \mvtVvla
	>>

	\new Staff = mvtValto <<
            \set Staff.instrumentName = \markup{\bold{Alto}}
            \set Staff.shortInstrumentName = \markup{\bold{A.}}

	    \new Voice = mvtValto {
		\clefAlto \mvtValto
	    }
	    \new Lyrics \lyricsto mvtValto \mvtVlyrics
	>>

        \transpose \transpChorton c \new PianoStaff <<
            \set PianoStaff.instrumentName = "e"
            \set PianoStaff.shortInstrumentName = "e"

	    \new Staff = mvtVorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Organo" "obligato"}
                \set Staff.shortInstrumentName = "Org."

	       \keepWithTag CANTATA \mvtVorgRH
	    >>
	    \new Staff = mvtVorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "B.C."

	       \mvtVorgLH
	       \mvtVfigs
	    >>
        >>
    >>

    \header {
	% breakbefore = ##t
	piece = \mvtVpiece
    }
}

% %}


% %{

\score {
    \new StaffGroup <<
        \new Staff = mvtVIalto <<
            \set Staff.instrumentName = \markup{\bold{Alto}}
            \set Staff.shortInstrumentName = \markup{\bold{A.}}

            \new Voice = mvtVIalto {
		\clefAlto \mvtVIalto
	    }
	    \new Lyrics \lyricsto mvtVIalto \mvtVIlyrics
        >>
        \new Staff = mvtVIbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{B.C.}

            \mvtVIbc
	    \mvtVIfigs
        >>
       
    >>

    \layout {
	ragged-right = ##f
    }

    \header {
	% breakbefore = ##t
	piece = \mvtVIpiece
    }
}

% %}

% %{

\score {
    \new StaffGroup <<
	\new ChoirStaff <<
	    \new Staff = mvtVIIsopr <<
		\set Staff.instrumentName = \markup{\center-column{\line{\bold{Soprano}} \line{Oboe I,II} \line{Vln I}}}
		\set Staff.shortInstrumentName = \markup{\bold{S.}}

		\new Voice = mvtVIIsopr {
		    \clefSoprano
		    \autoBeamOff
		    \mvtVIIsopr
		}
		\new Lyrics \lyricsto mvtVIIsopr {
		    \keepWithTag oneSyll {
			\mvtVIIlyrics
		    }
		}
	    >>
	    \new Staff = mvtVIIalto <<
		\set Staff.instrumentName = \markup{\center-column{\line{\bold{Alto}} \line{Vln II}}}
		\set Staff.shortInstrumentName = \markup{\bold{A.}}

		\new Voice = mvtVIIalto {
		    \clefAlto
		    \autoBeamOff
		    \mvtVIIalto
		}
		\new Lyrics \lyricsto mvtVIIalto {
		    \keepWithTag twoSyll {
			\mvtVIIlyrics
		    }
		}
	    >>
	    \new Staff = mvtVIItenor <<
		\set Staff.instrumentName = \markup{\center-column{\line{\bold{Tenore}} \line{Taille, Viola}}}
		\set Staff.shortInstrumentName = \markup{\bold{T.}}

		\new Voice = mvtVIItenor {
		    \clefTenor
		    \autoBeamOff
		    \mvtVIItenor
		}
		\new Lyrics \lyricsto mvtVIItenor {
		    \keepWithTag oneSyll {
			\mvtVIIlyrics
		    }
		}
	    >>
	    \new Staff = mvtVIIbasso <<
		\set Staff.instrumentName = \markup{\bold{Basso}}
		\set Staff.shortInstrumentName = \markup{\bold{B.}}

		\new Voice = mvtVIIbasso {
		    \autoBeamOff
		    \mvtVIIbasso
		}
		\new Lyrics \lyricsto mvtVIIbasso {
		    \keepWithTag twoSyll {
			\mvtVIIlyrics
		    }
		}
	    >>
	>>
        \new Staff = mvtVIIbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{B.C.}

            \new Voice = mvtVIIbc { \mvtVIIbc }
        >>
    >>

    \header {
	piece = \mvtVIIpiece
	breakbefore = ##t
    }
}

% %}
