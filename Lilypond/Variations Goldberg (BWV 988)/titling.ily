%%
\bookpart {
\header {
	title=##f
	subtitle=##f
	composer =##f
	tagline = ##f
	} %header

\paper{
	oddFooterMarkup = \markup { \if \on-first-page 
		\fill-line { \fontsize #2 \override #'(baseline-skip . 3) {
						\column { "©2010 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}}}
	} %paper

%titling

\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \override #'(font-features . ("onum" "smcp")) "J o h a n n   S e b a s t i a n   B a c h" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #4
                         \fill-line { \abs-fontsize #18  "Goldberg Variationen"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #26 \bold \override #'(font-features . ("onum" "smcp")) "Aria"  }
                         \vspace #0.1
                         \fill-line { \abs-fontsize #24 \bold \override #'(font-features . ("onum" "smcp")) "mit verschiedenen Veraenderungen"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic \override #'(font-features . ("onum")) "Clavicimbal mit 2 Manualen"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 \override #'(font-features . ("onum" "smcp")) "BWV 988" }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "& Verschiedene Canones" }
                         %\vspace #0.1
                         \fill-line { \abs-fontsize #18 "über die ersteren acht Fundamental-Noten der Arie" }
                         \vspace #1
                         \fill-line { \abs-fontsize #18 \override #'(font-features . ("onum" "smcp")) "BWV 1087" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "nach J.S.Bach's Exempler des Erstdrucks" }
  						}}
	}%titling
}%bookpart
%%{
\bookpart{
	\header {
	title = ##f
	subtitle = ##f
	composer = ##f
	tagline = ##f
	}
	\markup{ " " }
	\paper{	oddFooterMarkup = ##f }
}
%}
