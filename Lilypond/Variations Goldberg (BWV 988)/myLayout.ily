#(define is-letter? (string=? (ly:get-option 'paper-size ) "letter"))
#(set-global-staff-size (if is-letter? (- mystaffsize 1) (* mystaffsize )))

\paper{
%Page breaking
	%#(define page-breaking ly:minimal-breaking)

%Margins
	%two-sided = ##t
	inner-margin = 15 \mm
	outer-margin = 15 \mm
	top-margin = 10 \mm
	bottom-margin = 8 \mm

%global spacing  
%	between-system-space = 10 \mm
%	after-title-space = 5 \mm
%	before-title-space = 10 \mm
%	between-title-space = 2 \mm
%	between-system-padding = 4 \mm

%FootLine
	oddFooterMarkup = \markup { \fill-line { \tiny { {"published using lilypond"}
					\line {\fromproperty #'header:composer " - " \fromproperty #'header:title }
					\epsfile #X #10 #"./_common/by-sa.eps"} }}
}%paper

%global Layout Params
\layout{
	\context { \Score
% 	%alignBassFigureAccidentals = ##t
	figuredBassAlterationDirection = #RIGHT
	figuredBassPlusDirection = #RIGHT
	ignoreFiguredBassRest = ##f
	}
	\context { \FiguredBass 
% 	%alignBassFigureAccidentals = ##t
	figuredBassAlterationDirection = #RIGHT
	figuredBassPlusDirection = #RIGHT
	ignoreFiguredBassRest = ##f
	}
}
