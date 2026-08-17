\version "2.24.0"
\header {
	title = "Suite 5 for Cello Solo"
	opus = "BWV 1011"
	composer = "Johann Sebastian Bach"
	enteredby = "Hajo Dezelski"
	mutopiatitle = "Suite 5 for Cello Solo"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1011"
	mutopiainstrument = "Cello"
	source = "Werner Icking"
	style = "Baroque"
	maintainer = "Hajo Dezelski"
	maintainerEmail = "dl1sdz (at) gmail.com"
	maintainerWeb = "http://www.roxele.de/"
	lastupdated = "2017/Nov/28"
    moreinfo = "An edition for viola is also available in the zipped sources. See also <a href=\"http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=2215\">Piece 2215</a>"
	license = "Public Domain"
	footer = "Mutopia-2018/05/15-2219"
	copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url "http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url "http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url "http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
	tagline = ##f
}
\include "./bwv-1011-1_original.ly"
\include "./bwv-1011-2_original.ly"
\include "./bwv-1011-3_original.ly"
\include "./bwv-1011-4_original.ly"
\include "./bwv-1011-5-1_original.ly"
\include "./bwv-1011-5-2_original.ly"
\include "./bwv-1011-6_original.ly"
\paper {
	ragged-last-bottom = ##f
}
\book {
\score { { \clef "bass" \transpose c c { \prelude } }
	\layout { system-count = 39 }
	\header { piece = "Präludium" }
	\midi { \tempo 2 = 60}
}
\pageBreak
\score { { \clef "bass" \transpose c c { \allemande } }
	\layout {  }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 90 }
}
\pageBreak
\score { { \clef "bass" \transpose c c { \courante } }
	\layout { system-count = 8 }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 96 }
}
\score { { \clef "bass" \transpose c c { \sarabande } }
	\layout {  }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 50}
}
\pageBreak
\score { { \clef "bass" \transpose c c { \gavotteI } }
	\layout { system-count = 8 }
	\header { piece = "Gavotte 1" }
	\midi {\tempo 4 = 130 }
}
\score { { \clef "bass" \transpose c c { \gavotteII } }
	\layout {  }
	\header { piece = "Gavotte 2" }
	\midi {\tempo 2 = 65}
}
\score { { \clef "bass" \transpose c c { \gigue } }
	\layout {  }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 80}
}
}
