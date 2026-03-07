\paper{
%fonts
  #(define fonts
    (set-global-fonts
    #:music "paganini"
    #:brace "emmentaler"
    #:roman "Minion Pro"
    #:sans "Myriad Pro"
    #:typewriter "Courier"
    #:factor (/ staff-height pt 20)
  ))
}%paper

%	bass figures settings
\layout{
	\context { \Score
	\override BassFigure.font-size = #+1
	\override BassFigure.font-name = #'"Minion Pro"
	}
	\context { \FiguredBass 
	\override BassFigure.font-size = #+1
	\override BassFigure.font-name = #'"Minion Pro"
	}
}
