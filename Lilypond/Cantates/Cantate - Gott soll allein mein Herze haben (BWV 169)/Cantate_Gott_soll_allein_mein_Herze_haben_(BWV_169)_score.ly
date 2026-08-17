\version "2.27.1"

transpChorton = d

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_1._Sinfonie.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_2._Air.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_3._Air_avec_orgue_obligé.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_4._Récitatif.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_5._Air.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_6._Récitatif.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_7._Choral.ly"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_title.ly"

clefSoprano  = \clef soprano
clefMezzo    = \clef mezzosoprano
clefAlto     = \clef alto
clefTenor    = \clef tenor
clefBaritone = \clef baritone
clefObDAm    = \clef treble
transpObDAm  = c
clefObDaC    = \clef alto
transpObDaC  = c
clefTaille   = \clef alto
transpTaille = c

\header{instrument = "Score"}

\paper {
  system-separator-markup = \markup {
        \center-align
        \vcenter \combine
        \beam #4.0 #0.5 #0.96
        \raise #1.4 \beam #4.0 #0.5 #0.96
    }
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \bold \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fromproperty #'header:subtitle
      }
      \vspace #1
      \fill-line {
        \large \bold \fromproperty #'header:instrument
      }
      \vspace #0.5
      \fill-line {
        \null
        \fromproperty #'header:composer
      }
    \fill-line {
        \null
        \fromproperty #'header:opus
      }}
    }
  }

\layout {
  indent = 1.6\cm
  short-indent = 1\cm
    ragged-last-bottom = ##f
    \context {
	\Score {
	    \override Score.BarNumber.font-size = #3
	}
    }
    \context {
    \Staff
    \RemoveEmptyStaves
  }
}

#(set-global-staff-size 16)

\score {
    <<
	\new StaffGroup = mvtIwind <<
	    \transpose \transpObDAm c \transpose c a, \new GrandStaff = mvtIob <<
		\set GrandStaff.instrumentName = \markup{\center-column{ "Hautbois" "d'amour" }}
		\set GrandStaff.shortInstrumentName = "Htb a."

		\new Staff = mvtIobI <<
		    \set Staff.instrumentName = "I"
		    \set Staff.shortInstrumentName = "I"
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
		\set GrandStaff.instrumentName = "Violon"
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

		\set Staff.instrumentName = "Alto"
		\set Staff.shortInstrumentName = "Vla."
	    >>
	>>
	\transpose \transpChorton c \new PianoStaff = mvtIorg <<
            \set PianoStaff.instrumentName = "et"
            \set PianoStaff.shortInstrumentName = "et"

	    \new Staff = mvtIorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Orgue" "obligatoire"}
                \set Staff.shortInstrumentName = "Org."

		\mvtIorgRH
	    >>
	    \new Staff = mvtIorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "Cont."

		\mvtIorgLH
		\mvtIfigs
	    >>
	>>
    >>

    \header {
	piece = \mvtIpiece
    }
}

\score {
    \new StaffGroup <<
        \new Staff = mvtIIalto <<
            \set Staff.instrumentName = \markup{{Alto}}
            \set Staff.shortInstrumentName = \markup{{A.}}

            \new Voice = mvtIIalto {
		\clefAlto \mvtIIalto
	    }
	    \new Lyrics \lyricsto mvtIIalto \mvtIIlyrics
        >>
        \new Staff = mvtIIbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{Cont.}

            \mvtIIbc
	    \mvtIIfigs
        >>
    >>

    \header {
	breakbefore = ##t
	piece = \mvtIIpiece
    }
}

\score {
    \new GrandStaff = mvtIII <<
	\new Staff = mvtIIIalto <<
	    \set Staff.instrumentName = \markup{{Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{A.}}

	    \new Voice = mvtIIIalto {
		\clefAlto \mvtIIIalto
	    }
	    \new Lyrics \lyricsto mvtIIIalto \mvtIIIlyrics
	>>
	\transpose \transpChorton c \new PianoStaff <<
            \set PianoStaff.instrumentName = "et"
            \set PianoStaff.shortInstrumentName = "et"

	    \new Staff = mvtIIIorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Orgue" "obligatoire"}
                \set Staff.shortInstrumentName = "Org."

	        \mvtIIIorgRH
	    >>
	    \new Staff = mvtIIIorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "Cont."

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

\score {
    \new StaffGroup <<
        \new Staff = mvtIValto <<
            \set Staff.instrumentName = \markup{{Alto}}
            \set Staff.shortInstrumentName = \markup{\bold{A.}}

            \new Voice = mvtIValto {
		\clefAlto \mvtIValto
	    }
	    \new Lyrics \lyricsto mvtIValto \mvtIVlyrics
        >>
        \new Staff = mvtIVbc <<
            \set Staff.instrumentName = \markup{Continuo}
            \set Staff.shortInstrumentName = \markup{Cont.}

            \mvtIVbc
	    \mvtIVfigs
        >>
    >>

    \header {
	breakbefore = ##t
	piece = \mvtIVpiece
    }
}

\score {
    \new StaffGroup <<
	\new GrandStaff <<
	    \set GrandStaff.instrumentName = "Violon"
	    \set GrandStaff.shortInstrumentName = "Vln."

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
	    \set Staff.instrumentName = "Alto"
	    \set Staff.shortInstrumentName = "Alt."

	    \mvtVvla
	>>

	\new Staff = mvtValto <<
            \set Staff.instrumentName = \markup\center-column{"Alto" "(voix)"}
            \set Staff.shortInstrumentName = \markup\center-column{"Alt." "v."}

	    \new Voice = mvtValto {
		\clefAlto \mvtValto
	    }
	    \new Lyrics \lyricsto mvtValto \mvtVlyrics
	>>

        \transpose \transpChorton c \new PianoStaff <<
            \set PianoStaff.instrumentName = "et"
            \set PianoStaff.shortInstrumentName = "et"

	    \new Staff = mvtVorgRH <<
                \set Staff.instrumentName = \markup\center-column{"Orgue" "obligatoire"}
                \set Staff.shortInstrumentName = "Org."

	       \keepWithTag CANTATA \mvtVorgRH
	    >>
	    \new Staff = mvtVorgLH <<
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "Cont."

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

\score {
    \new StaffGroup <<
        \new Staff = mvtVIalto <<
            \set Staff.instrumentName = \markup{{Alto}}
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

\score {
    \new StaffGroup <<
	\new ChoirStaff <<
	    \new Staff = mvtVIIsopr <<
		\set Staff.instrumentName = \markup{\center-column{\line{{Soprano}} \line{Hautbois I,II} \line{Vln. I}}}
		\set Staff.shortInstrumentName = \markup{{S.}}

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
		\set Staff.instrumentName = \markup{\center-column{\line{{Alto}} \line{Vln. II}}}
		\set Staff.shortInstrumentName = \markup{{A.}}

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
		\set Staff.instrumentName = \markup{\center-column{\line{{Ténor}} \line{Taille, Alto}}}
		\set Staff.shortInstrumentName = \markup{{T.}}

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
		\set Staff.instrumentName = \markup{{Basse}}
		\set Staff.shortInstrumentName = \markup{{B.}}

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
            \set Staff.shortInstrumentName = \markup{Cont.}

            \new Voice = mvtVIIbc { \mvtVIIbc }
        >>
    >>

    \header {
	piece = \mvtVIIpiece
	breakbefore = ##t
    }
}
