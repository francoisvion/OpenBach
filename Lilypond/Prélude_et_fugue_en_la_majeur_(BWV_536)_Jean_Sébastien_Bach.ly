\version "2.27.0"

\language "italiano" 

\header {
  title = "Prélude et fugue en la majeur"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 536"
  tagline = ##f
}

adjustSlash = { \once \override TextScript.extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket.bracket-visibility = ##f }
hideTripletNumber = { \override TupletNumber.text = #"" }
mmrestdown = { \once \override MultiMeasureRest.staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest.staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest.staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest.staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest.staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest.staff-position = #10 }
noflag = { \once \override Stem.flag = #no-flag }
restdownnn = { \once \override MultiMeasureRest.extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest.extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script.extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script.extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script.extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script.extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket.bracket-visibility = ##t }
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }

% macros de Roland Goretzki
#(use-modules (ice-9 optargs))
#(define-public (mus:make-context context element operations id)
  "Base function for building ContextSpeccedMusic objects."
  (let ((music (make-music 'ContextSpeccedMusic
                           'context-type context
                           'element element)))
    (if (pair? operations) (ly:music-set-property! music 'property-operations operations))
    (if id (ly:music-set-property! music 'context-id id))
    music))

#(define-public (mus:override context layout property val once)
  (let ((ovr (make-music 'OverrideProperty
                         'symbol layout
                         'grob-property property
                         'grob-value val)))
    (if once (ly:music-set-property! ovr 'once #t))
    (mus:make-context context ovr '() #f)))

#(define (BogenKurve dy once)
  (mus:override 'Bottom 'Slur 'height-limit dy once))

#(define (Bogen dx dy once)
  (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once))

#(define (HalteBogenKurve dy once)
  (mus:override 'Bottom 'Tie 'height-limit dy once))

#(define (Tie dx dy once)
  (mus:override 'Bottom 'Tie 'extra-offset (cons dx dy) once))

#(define (silun dx dy once)
  (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once))

#(define (silaa dx once)
  (mus:override 'Bottom 'MultiMeasureRest 'staff-position dx once))

#(define (modifpostexte dx dy once)
  (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once))

globalPrelude = {
  \key la \major
  \time 4/4
}

sopranoPrelude = \relative do''{
  \tempo Prélude
  \once\override Score.RehearsalMark.extra-offset = #'(0 . 3)
  \override Score.RehearsalMark.self-alignment-X = #'-1
  \globalPrelude\halsup
  %%  1 :
  r16 la16 dod16 mi16 la16 mi16 dod16 mi16 la,16 mi16 dod16 mi16 \staffdown la,16 mi16 dod16 mi16 
  \staffup r2 r16 la'16 re16 fad16 la16 fad16 re16 fad16 
  \stemUp la,16 fad16 re16 fad16 \staffdown la,16 fad16 re16 fad16 la,8 r8 r4
  \staffup r16 \stemNeutral si''16 re16 sold16 si16 sold16 re16 sold16 \stemUp si,16 sold16 re16 sold16 r16 re'16 sold,16 re'16 
  %% 5 :
  dod16 mi16 dod16 la16 fad'16 re16 la16 re16 dod16 mi16 dod16 la16 re16 si16 fad16 si16 
  la16 dod16 la16 mi16 si'16 sold16 re16 sold16 mi16 la16 mi16 dod16 sold'16 re16 si16 re16 
  dod16 mi16 dod16 la16 re16 si16 sold16 si16 dod16 mi16 dod16 la16 sold'16 re16 si16 re16 
  mi16 la16 mi16 dod16 si'16 sold16 re16 sold16 la16 dod16 la16 mi16 re'16 si16 sold16 si16 
  dod16 mi16 dod16 la16 sold'16 re16 si16 re16 mi16 la16 mi16 dod16 si'16 sold16 re16 sold16 
  %% 10 :
  la4 r4 r2
  %% 11 :
  s4 s4 s4 r16 si16 fad16 la16 
  sold16 si16 sold16 mi16 sold16 mi16 si16 re!16 dod16 mi16 dod16 la16 fad'16 red!16 la16 dod16 
  si16 red16 si16 sold16 mi'16 dod16 sold16 si16 la16 dod16 la16 fad16 red'!16 la16 fad16 la16 
  << { \voiceOne r16 mi'16 si16 sold16 \stemDown mi16 \staffdown \stemUp si16 sold16 mi16 \staffup \stemUp \tieUp r16 mi'16 sold16 si16 mi16 si16 sold16 si16 } \\ { \voiceTwo sold8 s8 s4 s2 } >> 
  %% 15 :
  la16 dod16 la16 fad16 si16 fad16 re!16 fad16 sold16 si16 sold16 mi16 la4 ~
  la4 sold4 la4 r4 
  \stemDown r16 si16 red16 fad16 si16 sold16 mi16 sold16 la4 r16 si16 fad16 la16 
  sold4 r16 la16 mi16 sold16 fad4 r16 sold16 red16 fad16 
  mid16 dod16 mid16 sold16 \stemUp la4 sold2 ~
  %% 20 :
  sold4 fad2 mi!4 ~ 
  mi4 re2 dod4 ~
  dod4 r16 si16 fad16 la16 sold!16 mi16 sold16 si16 mi4
  re4 ~ re16 mi16 si16 re16 dod4 r16 la'16 mi16 sol16 
  fad4 r16 si16 fad16 la16 sold!4 la4 ~
  %% 25 :
  la4 sold4 ~ sold16 la16 mi16 sold16 fad4 ~
  fad4 mi4 ~ mi16 fad16 dod16 mi16 re4 ~
  re4 dod2 r16 si16 fad16 la16 
  sold16 mi16 sold16 si16 mi16 dod16 la16 dod16 re4 ~ re16 si16 sold16 mi16 
  << { \voiceOne dod'4 red4 mi4 r4 } \\ { \voiceTwo la,4 la4 si4 r4 } >> 
  %% 30 :
  r16 la16 dod16 mi16 la16 fad16 red16 fad16 << { \voiceOne sold16 mi16 la8 ~ la16 la16 sold8 } \\ { \voiceTwo r16 re8. ~ re16 re8. } >> 
  << { \voiceOne la'16 la,16 dod16 mi16 } \\ { \voiceTwo \shiftOn dod4 } >> la'16 mi16 dod16 mi16 fad16 re16 si16 re16 sold,8. sold16 
  la1 ^\fermata
  \bar "|."
}

altoPrelude = \relative do {
  \globalPrelude \halsdown
  %%  1 :
  s1
  \staffdown la8 r8 r4 r2 
  s1
  s4 s4 s4 r8 re'8 
  %%  5 :
  r8 mi8 r8 fad8 r8 mi8 r8 re8 
  r8 dod8 r8 si8 r8 la8 r8 sold8 
  r8 mi8 r8 re8 r8 mi8 r8 sold8 
  r8 la8 r8 si8 r8 dod8 r8 re8 
  \staffup r8 mi8 r8 sold8 r8 la8 r8 si8 
  %% 10 :
  << { s4 } \\ { \voiceTwo \stemUp \shiftOn dod4 } >> r4 r2 
  s4 s4 r4 si4
  si4 \staffdown r8 sold8 r8 sold8 r8 fad8 
  r8 fad8 r8 mi8 r8 mi8 r8 red8 
  mi8 r8 s4 s4 s4 
  %% 15 :
  \staffup r2 r4 r16 mi16 dod16 mi16 
  re16 fad16 re16 si16 r16 mi16 si16 re16 dod4 r16 fad16 dod16 mi16 
  \staffdown red4 mi4 r16 fad16 dod16 mi16 red!4 
  r16 mi16 si16 re!16 dod4 r16 re16 la16 dod16 si4 ~
  si4 la16 \staffup re'!16 la16 dod16 si16 re16 si16 sold16 dod4 ~
  %% 20 :
  dod2 si16 re16 si16 sold16 ~ sold4 
  fad2 r16 si16 sold16 mi16 r16 la16 mi16 sol16 
  fad2 mi4 r16 dod'16 la16 dod16 ~
  dod4 si4 ~ si4 la8 mi'8 ~
  mi4 re4 ~ re16 mi16 si16 re16 dod4 
  %% 25 :
  r16 fad16 re16 si16 ~ si4 la2 
  sold2 fad2 
  r16 si16 sold16 mi16 ~ mi4 fad2
  mi2 fad4 sold4 
  \stemDown mi4 fad4 mi4 r4
  %% 30 :
  \voiceTwo r4 r8 si'8 ~ si8 [ dod8 ] si4 
  la4 r4 r4 r16 mi16 si16 re16 
  dod1 
}

tenorPrelude = \relative do' {
  \globalPrelude
  %%  1 :
  s1 
  s1 
  s1
  \stemDown s4 s4 s4 si4 
  %%  5 :
  la4 la4 sol4 fad4 
  mi4 re4 dod4 si4 
  la4 sold8 si8 la4 si4 
  dod4 re4 mi4 sold8 si8 
  la4 si4 dod4 re4 
  %% 10 :
  \staffup mi4 r4 r2 
  \staffdown r16 si,32 [ dod32 red32 mi32 fad32 sold32 ] \stemUp la32 [ fad32 sold32 la32 si32 dod32 \staffup \stemUp red32 mi32 ] \stemDown fad16 si,16 red!16 fad16 ~ fad4 
  mi4 \staffdown \stemDown si4 la4 la4 
  sold4 sold4 fad4 fad4 
  mi4 s4 r4 sold4 
  %% 15 :
  fad2 mi2 
  fad4 mi4 r16 la,16 dod16 mi16 \tieDown la4 ~
  la4 sold4 fad4 si4 
  mi,4 la4 re,4 sold4 
  dod,4 fad4 r4 r16 dod'16 sold16 si16 
  %% 20 :
  la16 dod16 la16 fad16 re'2 dod4 
  r16 dod16 lad16 fad16 si2 la!4 
  r16 la16 fad16 re16 re'8 dod8 si4 la4 ~
  la16 fad16 la16 dod16 mi4 ~ mi16 la,16 dod16 mi16 \clef violin \stemUp la4 ~
  la16 la16 fad16 re16 si'2 la16 fad16 dod16 mi16 
  %% 25 :
  re4 mi2 re4 
  \clef "bass" \stemDown r16 re16 si16 sold16 dod2 si4 ~
  si4 la4 ~ la16 re,16 fad16 la16 re4 ~
  re4 dod4 ~ dod16 re16 la16 dod16 si4 
  r16 la,16 dod16 mi16 la16 fad16 red16 fad16 sold16 mi16 sold16 si16 re!16 si16 sold16 si16 
  %% 30 :
  dod4 red4 mi2 ~
  mi4 r4 r4 mi,4 ~
  mi1 ^\fermata
}

pedalePrelude = \relative do { 
  \globalPrelude \clef bass
  %%  1 :
  R1*4
  %%  5 :
  la1 ~
  la1 ~
  la1 ~
  la1 ~
  la1 ~
  %% 10 :
  la4 r16 la'16 dod16 la16 mi'16 si16 dod16 sold16 la16 mi16 fad16 dod16 
  red1 
  mi1 ~
  mi1 ~
  mi2 mi,4 mi'4 ~
  %% 15 :
  mi4 re!2 dod4 
  si4 mi4 la,4 r4 
  R1*2
  r4 fad'2 mid4 
  %% 20 :
  fad4 r16 si16 fad16 la16 sold4 r16 dod16 sold16 si16 
  lad4 r16 si16 fad16 la!16 sold4 la8 la,8 
  re2 ~ re4 dod4 
  fad,4 sold4 la4 dod4 
  re2 mi4 fad4 
  %% 25 :
  si,4 r16 mi'16 si16 re16 dod4 r16 re16 la16 dod16 
  si4 r16 dod16 sold16 si16 lad4 r16 si16 fad16 la!16 
  sold4 r16 la16 la,16 dod16 re,2 
  mi1 ~
  %% 30 :
  mi1 ~
  mi1 
  la1 ~
  la1^\fermata
}

globalFugue = {
  \key la \major
  \time 3/4
}

sopranoFugue = \relative do'' {
  \tempo Fugue
  \once\override Score.RehearsalMark.extra-offset = #'(0 . 3)
  \override Score.RehearsalMark.self-alignment-X = #'-1
  \halsup
  %%  1 :
  R2.*8
  R2.*12
  %% 21 :
  r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %% 25 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la2 si8 la8
  %% 30 :
  sold4. la8 si4 
  dod4. red8 mi8 dod8 
  fad4 si,4 mi4 ~
  mi4 red4 mi4 
  red4 dod4 fad4 ~
  %% 35 :
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  si,4  #(Tie +0 +0.8 #t) mi2 ~
  %% 40 :
  mi2 red4 
  mi4. re!8 dod8 si8 
  \once \override NoteColumn.force-hshift = #+1.5 la4. la8 si8 dod8 
  #(Tie +0 +0.8 #t) re2. ~
  re8 dod8 re8 dod8 si8 la8 
  %% 45 :
  sold4 r4 r4 
  R2.
  r4 mi'4 fad4 
  mi4 re2 
  dod8 mi8 la,8 mi'8 la4 ~
  %% 50 :
  la8 sold8 r8 la8 fad8 la8 
  si4. si8 fad8 sold8 
  r8 fad8 r8 si8 mi,8 sold8 
  la4. la8 fad8 si8 
  sold4 r8 mi8 la4 
  %% 55 :
  red,8 si'4 la8 sold8 fad8 
  mi8 sold8 la2 
  sold4 r8 la8 fad8 re!8 
  la'8 la,8 r8 la8 fad8 sold8 
  la4 r8 mi'8 si8 sold8 
  %% 60 :
  la8 fad'8 sold8 mi8 fad8 dod8 
  re8 fad8 si,4. re8 
  dod8 mi8 la,8 dod8 si8 re8 
  sold,8 si8 mi,4 ~ mi8 mi'8 
  re8 dod8 re8 fad8 mi8 re8 
  %% 65 :
  dod4 mi4 fad4 
  mi4 re2 
  dod2 re4 
  dod4 si2 
  la4 la4 dod4 
  %% 70 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 75 :
  la4 sold8 fad8 sold4 ~
  sold8 dod8 fad,2 
  \once\override Staff.NoteCollision.merge-differently-dotted = ##t mi8 si'8 mi4. re!8 ~
  re8 dod8 r8 fad8 re8 si8 
  mi4 r8 mi8 si8 dod8 ~
  %% 80 :   
  dod8 si8 r8 mi8 dod8 la8 
  re4 r8 dod8 re8 mi8 
  dod2 si4
  r8 si8 dod8 re8 mi8 dod8 
  la4 si8 dod8 re4 ~
  %% 85 :
  re8 dod8 re8 mi8 fad4 
  mi8 la4 sold8 fad4 
  mid4 fad8 sold8 dod,4 
  si8 dod8 \once\override TextScript.extra-offset = #'(-0.5 . -0.5) la4.^\markup{"(" \hspace #-0.3 \raise #0.8 \musicglyph #"scripts.prall" \hspace #-1.1 ")"} sold8 
  fad4 la4 si4 
  %% 90 :
  la4 red,4 sold4 ~
  sold4 fad4 mi!4 
  re!4 dod4 fad4 ~
  fad4 mi2 ~
  mi4 red4 sold4 
  %% 95 :
  dod,4 fad2 ~
  fad2 \once\override TextScript.extra-offset = #'(-0.7 . -0.5) mid4^\markup{"(" \hspace #-0.0 \raise #0.0 \musicglyph #"scripts.trill" \hspace #-1.1 ")"}
  fad8 fad'8 lad,8 dod8 si8 re8 
  dod2. ~
  dod8 re8 si8 dod8 lad8 dod8 
  %% 100 :
  si2. ~
  si8 re8 dod8 re8 si8 dod8 
  lad8 si8 sold8 si8 lad8 dod8 
  si4 dod2 ~
  dod8 dod8 si8 lad8 si4 ~
  %% 105 :
  si8 lad8 si8 dod8 re8 mi8 
  fad2.
  mi8 re8 dod8 re8 mi8 re8 
  dod8 re8 si8 lad8 si8 re8 
  dod8 re8 mi8 sol8 fad8 mi8 
  %% 110 :
  re8 mi8 fad8 la8 sol8 fad8 
  mi4 la2 ~
  la4 sol2 ~
  sol4. sol8 fad8 la8 
  si8 mi,8 mi4. re8 
  %% 115 :
  re4 la'4 si4 
  la4 sol2 
  fad2 la4 
  sol4 fad2 
  mi2 la4 
  %% 120 :
  re,4 sol2 ~
  sol4 fad8 mi8 fad8 sol8 
  la8 si8 mi,4. re8 
  re8 la8 re8 dod8 si8 la8 
  sold!4 la4. si8 ~
  %% 125 :
  si8 mi,8 la8 si8 dod4 ~
  dod8 si4 mi,8 la4 ~
  la8 la8 sold8 fad8 sold8 la8 
  fad2 si4 ~
  si8 si8 la8 sold8 la8 dod8 
  %% 130 :
  si8 la8 sold8 fad'8 mi8 re8 
  dod2. ~
  dod8 dod8 si8 la8 si8 dod8 
  la4 fad'8 sold8 la4 ~
  la8 la8 sold8 fad8 mi4 ~
  %% 135 :
  mi8 sold8 fad8 mi8 red4 
  mi4 r4 r4 
  R2.*8
  %% 145 :
  r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  %% 150 :
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la8 mi'8 fad8 sold8 la4 ~
  la4 sold2 ~
  %% 155 :
  sold4 fad2 ~
  sold4 mi2 ~
  mi4 re2 ~
  re4 dod2 ~
  dod4. dod8 si8 la8 
  %% 160 :
  sold4 la8 sold8 la8 si8 
  sold8 si8 mi4 re4 ~
  re8 dod8 fad4 si4 ~
  si4 la4 sold4 
  fad4 mi4 la4 ~
  %% 165 :
  la4 sold2 ~ 
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  la8 sold8 fad8 mi8 re8 dod8 
  %% 170 :
  fad8 mi8 re8 dod8 si8 la8 
  sold4. sold8 la8 si8 
  dod8 re8 mi8 fad8 sold8 la8 
  si2 ~ si8 la8 
  r8 sold8 r8 sold8 r8 fad8 
  %% 175 :
  r8 mi8 r8 mi8 r8 re!8 
  r8 dod8 r8 si8 r8 la8 
  sold4 r4 r4 
  R2.
  r8 mi'8 r8 re8 r8 dod8 
  %% 180:
  r8 si8 r8 la8 r8 sold8 
  r8 la8 r8 re,8 la'8 sold8 
  \once\override TextScript.extra-offset = #'(1.2 . 0.4) la8^\markup{\musicglyph #"scripts.ufermata"} r8 r4 r4 \bar "|."
}

altoFugue = \relative do'' {
  \globalFugue \halsdown
  %%  1 :
  R2.*8
  r4 la4 dod4 
  %% 10 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 15 :
  la4 sold8 fad8 sold4 
  dod4 fad,2 
  mi4 sold4 dod4 
  fad,4 si2 ~
  si4 mi,4 la4 ~
  %% 20 :
  la4 sold2
  la2 re4 
  dod4 fad,4 si4 ~
  si4 mi,4 sol4 
  fad4 mi4 la4 ~
  %% 25 :
  la4 sold!2 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 ~
  sold4 fad2 ~
  %% 30 :
  fad4 mi2 ~
  mi4 la2 ~
  la4 sold8 fad8 sold8 la8 
  si4. la8 sold8 la8 
  si4 r4 fad4 
  %% 35 :
  si4. sold8 fad8 sold8 
  la4 r4 mi4 
  la4. sold8 fad8 la8 
  sold4 la8 sold8 fad8 mi8 
  fad4 si4. la8 
  %% 40 :
  sold4 la2 ~
  la2 sold4 ~
  sold8 sold8 fad2 
  la8 fad8 sold8 la8 si4 
  mi,4 fad8 mi8 re8 dod8 
  %% 45 :
  \staffdown si8 mi8 mi,8 mi'8 la,8 re8 
  sold,8 dod8 fad,8 si8 la8 si8 
  dod8 mi8 la,8 \staffup la'8 re,8 la'8 
  \staffdown la,8 \staffup la'8 si,8 sold'8 fad8 sold8 
  la4 r4 r8 mi'8 
  %% 50 :
  re4 dod4 fad4 ~
  fad8 fad8 mi4 re4 
  dod4 si4 mi4 ~
  mi8 mi8 red2 ~
  red8 red8 dod4. fad8 
  %% 55 :
  si,4 mi2 ~
  mi4. fad8 red4 
  mi4 \staffdown mi,4 fad4 
  mi4 re2 
  dod2 mi4 
  %% 60 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 65 :
  la4 r4 r4 
  \staffup R2.
  r4 mi'4 fad4 
  mi4 re2 
  dod4 r4 la'4 
  %% 70 :
  sold4 dod,4 fad4 ~
  fad4 mi4 re!4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 75 :
  si,4 mi2 ~
  mi2 ~ mi8 red8 
  mi4. sold8 la4 
  r8 mi8 la4 r4 
  r8 mi8 la4 r4 
  %% 80 :
  r8 re,8 la'4 r4 
  r8 fad8 si2 
  la4 r8 fad8 sold!8 la8 
  sold4 mi2 ~
  mi8 fad8 re4 si'4 
  %% 85 :
  mi,8 la4 sol8 fad8 sold8 
  la8 dod4 si8 la8 si8 
  dod8 re8 dod8 si8 la4 
  sold4. fad8 mid4 
  fad4 r4 r4 
  %% 90 :
  R2.*7
  R2.*5
  %% 102 :
  fad2 sol4 
  fad4 mi2 
  re2 fad4 
  %% 105 :
  mi4 \staffdown re2 
  dod2 fad4 
  si,4 mi2 ~
  mi4 re8 dod8 re4 
  sol!4 dod,2 
  %% 110 :
  si8 dod8 re8 fad8 mi8 re8 
  dod4 \staffup mi'8 sol8 fad8 mi8 
  re8 dod8 si8 fad'8 mi8 re8 
  dod8 si8 la4 ~ la8 \staffdown fad8 
  mi8 re8 ~ re4 dod4 
  %% 115 :
  re4 \staffup r4 r4 
  R2.
  r4 re'4 fad4 
  mi4 re2 ~
  re4 dod2 ~
  %% 120 :
  dod4 si4 mi4 
  la,4 dod4 re8 mi8 
  fad8 re4 si8 dod4 
  re4 re,4 fad4 
  mi4 re2 
  %% 125 :
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  %% 130 :
  fad4 \staffdown si,2 ~ 
  si8 \staffup si'8 la8 sold8 la4 ~
  la8 \staffdown la8 sold8 fad8 sold4 
  fad8 sold8 la8 sold8 fad4
  \staffup si4. la8 sold4 ~
  %% 135 :
  sold8 si8 la8 sold8 fad8 la8 
  sold4 si4 dod4 
  si4 la2 
  sold2 si4 
  la4 sold2
  %% 140 :
  fad2 la4 
  re,4 sold2 ~
  sold4 fad8 mi8 fad4 
  si4 mi,4. re8 
  dod8 mi8 re8 dod8 re8 mi8 
  %% 145 :
  dod4 r8 mi8 la4 
  r8 si8 la8 dod8 si8 la8 
  sold4 r8 la8 si4 
  r8 la8 sold8 si8 la8 sold8 
  fad4 sold8 la8 si4 
  %% 150 :
  r8 mi,8 fad8 sold8 la8 si8 
  sold4 la8 sold8 la8 sold8 
  fad4 r8 fad8 mi4 ~
  mi4 r4 r8 si'8 
  dod8 re8 mi2 ~
  %% 155 :
  mi4. dod8 re4 ~
  re4. si8 dod4 ~
  dod8 la8 si2 ~
  si8 sold8 la2 ~
  la8 sold8 fad2 
  %% 160 :
  mi2. ~
  %% 161 :
  mi4 r8 mi8 la4 
  sold4 \staffdown r8 la8 fad4 
  mi8 \staffup mi'8 dod4 si8 dod8 
  re4 la8 si8 dod8 la8 
  %% 165 :
  re8 mi8 re8 dod8 si8 re8 
  dod8 si8 \staffdown la8 sold8 fad4 
  sold8 fad8 mi8 re8 mi4 ~
  mi8 mi8 re8 dod8 re8 mi8 
  dod4 re4 mi4 
  %% 170 :
  re2.
  \staffup r8 fad8 mi4 fad8 sold8 
  la8 si8 dod8 re8 mi8 fad8 ~
  fad8 fad8 mi8 re8 dod4
  si4 la4 la4 
  %% 175 :
  sold4 fad4 mi4 
  mi4 mi4 fad4 
  mi4 r4 r4 
  s2.
  r4 <fad la>4 <mi sold>4 
  %% 180 :
  <re fad>4 <dod mi>4 <si re>4 
  do4 si4 re4 
  dod!8 r8 r4 r4 
}

tenorFugue = \relative do' {
  \globalFugue
  %%  1 :
  mi2 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %%  5 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la4 r4 \clef violin la'4 
  %% 10 :
  sold4 dod,4 fad4 ~
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 15 :
  si,4 mi2 ~
  mi2 red4 
  mi2. ~
  mi4 re!4 si4 
  dod2 la4
  %% 20 :
  re4 si4 mi4 
  dod4. \clef bass dod8 re4 
  la4. si8 la8 sold8 
  la4. si8 dod4 ~
  dod8 si8 dod4. re8 
  %% 25 :
  mi4. re8 mi8 dod8 
  fad8 mi8 re8 dod8 si8 la8 
  sold4 la8 sold8 fad8 mi8 
  re4 mi4. dod8 
  re4. mi8 red4 
  %% 30 :
  mi4. fad8 sold8 mi8 
  la4. si8 dod4 
  red4 mi2 
  fad2 mi4 
  fad4. mi8 red8 dod8 
  %% 35 :
  si2 si4 
  mi4. red8 dod8 si8 
  la4 fad'2 
  mi2 dod4 
  red8 dod8 si8 la8 si4 
  %% 40 :
  mi8 red8 dod8 si8 la8 si8 
  dod8 re!8 si4 mi4 
  dod4 r4 r4 
  R2.*2
  %% 45 : 
  R2.*4
  r4 la4 dod4 
  %% 50 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 55 :
  la4 sold8 fad8 sold4 
  \tieDown dod4 fad,4. si8 
  mi,8 mi'8 dod8 la8 re4 
  dod4 fad,4 si4 ~
  si8 si8 la4 sold4 
  %% 60 :
  fad4 mi4 la4 ~
  la4. la8 sold4 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  %% 65 :
  la8 la,8 dod8 la'8 re,8 la'8 
  \tieUp dod,8 la'8 si,8 sold'8 fad8 sold8 
  la8 la,8 dod8 mi8 re,8 re'8 
  la8 la'8 si,8 la'8 mi8 sold8 
  fad,8 fad'8 mi8 re8 dod8 re8 
  %% 70 :
  mi8 mi,8 mi'8 fad8 mi8 red8 
  mi8 si8 mi8 fad8 sold8 mi8 
  la8 fad8 sold8 fad8 sold8 la8 
  si8 la8 si8 dod8 la8 si8 
  dod8 si8 la8 sold8 fad8 mi8 
  %% 75 :
  red8 fad8 mi8 red8 dod8 si8 
  la4 si8 la8 si4 
  mi,4 r4 la'4 
  sold4 fad4 si4 ~
  si4 la4 sold4 
  %% 80 :
  fad4 mi4 la4 ~
  la4 sold2 ~
  sold8 sol8 fad4 si4 
  mi,4 la2 ~
  la2 ~ la8 sold8 
  %% 85 :
  la4 si8 dod8 re4 ~
  re8 dod8 re8 mi8 fad4 
  sold2 fad8 mi!8 
  re4 dod4 si4 
  la4 dod4 re4 
  %% 90 :
  dod4 si2 
  la2 dod4 
  si4 la2 
  sold2 dod4 
  fad,4 si2 ~
  %% 95 :
  si4 la8 sold8 la4 
  re4 \once\override TextScript.extra-offset = #'(-1.0 . -0.5) sold,2^\markup{"(" \hspace #-0.0 \raise #0.0 \musicglyph #"scripts.trill" \hspace #-1.1 ")"}
  lad4 dod4 re4 
  mi2. ~
  mi8 fad8 re8 mi8 dod8 mi8 
  %% 100 :
  re2. ~
  %% 101 :
  re8 fad8 mi8 fad8 re8 mi8 
  dod8 re8 si8 re8 dod4 
  re8 si4 dod8 si8 lad8 
  si2 ~ si8 la!8 
  %% 105 :
  sol4 \tieDown fad4 si4 ~
  si8 si8 lad4 si8 la8 
  sol2 dod8 si8 
  lad4 fad4 si4 ~
  si2 lad4 
  %% 110 :
  si4 fad4 sol4 
  \tieUp la8 si8 dod8 mi8 re8 dod8 
  si4 mi4 mi,4 
  la4 dod4 re4 
  sol,4 la2 
  %% 115 :
  re,8 re'8 fad,8 re'8 sol,8 re'8 
  fad,8 re'8 mi,8 dod'8 si8 dod8 
  re8 la8 fad8 la8 re,8 re'8 
  mi8 mi,8 fad8 mi'8 fad8 sol8 
  \clef violin la8 si8 la8 sol8 fad8 la8 
  %% 120 :
  si8 la8 sol8 fad8 mi8 re8 
  \clef "bass" dod8 si8 la8 sol8 fad8 mi8 
  re8 sol8 la4 la,4 
  re4 r4 re,4 
  mi8 mi'8 fad8 mi8 fad8 sold!8 
  %% 125 :
  la2 ~ la8 la8 si8 si,8 
  dod8 si8 dod8 re8 mi2. ~
  mi8 mi8 re8 dod8 re8 mi8 
  dod4 fad4. mi8 
  %% 130 :
  re4 mi4 sold4 
  \tieDown la2 ~
  la8 la8 \clef violin \stemDown mi'2. ~
  mi2 ~ mi8 red8 
  mi4 \clef "bass" \tieUp \stemNeutral si4 dod8 sold8 
  %% 135 :
  la4 fad4 si4 
  mi,8 mi'8 sold,8 mi'8 la,8 mi'8 sold,8 mi'8 
  fad,8 red'8 dod8 red8 mi8 sold,8 si8 mi8 
  sold,8 si8 mi,8 re!8 mi8 fad8 
  sold8 mi8 la8 sold8 la8 si8 
  %% 140 :
  dod8 la8 re8 dod8 si8 la8 
  si8 re8 dod8 si8 la8 sold8 
  la8 si8 sold8 mi8 la8 sold8 
  la4 ~ la2 sold4 
  %% 145 :
  la8 si8 dod4 r8 dod8 
  si4 \clef violin fad'8 la8 sold8 fad8 
  mi8 dod8 fad4 r8 si,8 
  la4 mi'8 sold8 fad8 mi8 
  re8 si8 mi4 r8 si8 
  %% 150 :
  dod4 la4 r8 fad'8 
  mi8 fad8 mi8 re8 mi4 
  re8 dod8 re4. re8 
  dod8 dod8 re8 mi8 \tieDown fad4 ~
  fad4 mi8 fad8 sold8 la8 
  %% 155 :
  si2 fad8 sold8 
  la2 ~ la8 mi8 
  fad4. mi8 fad4 ~
  fad4. mid8 fad4 
  mi!4 re2 ~
  %% 160 :
  re8 re8 dod8 si8 dod8 re8 
  si4 sold4 r8 la8 
  mi'4 \stemDown la,4 r8 si8 
  dod4 \stemNeutral r8 mi8 sold8 sold,8 
  la8 si8 dod8 re8 mi4 
  %% 165 :
  fad4 re4 mi4 ~
  mi4 \stemDown fad8 mi8 re8 dod8 
  si4 dod4. si8 
  la4 si2 
  la2. 
  %% 170 :
  fad4 sold4 la4 
  si4. \clef "bass" re8 dod8 si8 
  << { \voiceOne la8 sold8 fad8 mi8 re8 dod8 si2 dod8 red8 mi4 mi4 fad4 %% 174
       sold4 la4 si4 dod4 dod4 red4 si4 r4 r4 R2. } \\ 
     { \voiceTwo r8 mi,8 re8 dod8 si8 la8 sold2 la4 si4 dod4 red4 %% 174 bis
       mi4 fad4 sold4 la4 sold4 fad4 mi4 r4 r4 R2. } >> 
  r8 mi,8 fad8 sold8 la8 si8 
  %% 180 :
  dod8 si8 dod8 re8 mi4 
  << { \voiceOne la4 mi4 si'4 la8^\fermata r8 r4 r4 } \\ { \voiceTwo fad4 mi2 mi8 r8 r4 r4 } >>
}

pedaleFugue = \relative do { 
  \globalFugue \clef bass
  %%  1 :
  R2.*32
  si2 dod4 si4 la2 
  %% 35 :
  sold2 si4 la4 sold2 
  fad2 si4 mi,4 la2 ~
  la4 sold8 fad8 sold4 dod4 
  fad,2 mi2 
  mi4 fad4. la8 
  %% 41 :
  re,8 fad8 si,4. re8 
  sold,8 si8 la4 re,2 
  mi4 mi'4 fad4 mi4 
  re2 dod2 
  re4 dod4 si2 
  la4 r4 r4 
  R2.*27 
  %% 77 :
  r4 mi'4 fad4 mi4 
  re2 dod2 
  mi4 re4 dod2 
  %% 80 :
  si2 mi4 la,4 
  re2 ~ re4 dod8 si8 
  dod4 fad4 si,2 
  la2. ~
  la4 si8 dod8 re4 
  %% 85 :
  dod4 red8 mid8 fad4 
  si,4 dod2 
  fad,4. \stemUp fad'8 si,8 fad'8 \stemNeutral 
  %% 90 :
  fad,8 fad'8 sold,8 fad'8 mid8 dod8 
  fad8 fad,8 r8 fad'8 lad,8 fad'8 
  si,8 fad'8 fad,8 fad'8 re8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  lad8 dod8 si8 sold'8 fad8 sold8 
  %% 95 :
  mid8 sold8 fad4 re!8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  fad,4 r4 r4 
  r8 dod''8 lad8 dod8 fad,8 lad8 
  si,2. ~ 
  %% 100 :
  si8 si'8 sol8 la8 fad8 sol8 
  mi2. 
  fad4 r4 mi4 
  re4 dod4 fad4 
  si,4. dod8 re4 
  %% 105 :
  mi4 si2 
  fad'4. mi8 re4 
  mi2 dod4 
  re2 re,4 
  mi4 fad2 
  %% 110 :
  si4 r4 r4 
  R2.*26 
  %% 137 :
  r4 red4 fad4 
  mi4 re!2 
  dod2 mi4 
  %% 140 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 145 :
  la2 la'4 
  sold4 fad4 si4
}

\book {
  \score {
    <<
      \new PianoStaff <<
        \new Staff = "dessus" << 
          \sopranoPrelude \\
          \altoPrelude
        >>
        \new Staff = "basse" { 
          \clef "bass" 
          \tenorPrelude
        }
      >>
      \new Staff = "pedale" {
        \pedalePrelude
      }
    >>
    \header { piece = "Prélude" }
    \layout {
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##f
        % Fusion automatique des silences
        \consists "Merge_rests_engraver"
      }
    }
  }
  
  \score { 
    <<
      \new PianoStaff <<
        \new Staff = "dessus" << 
          \sopranoFugue \\
          \altoFugue
        >>
        \new Staff = "basse" { 
          \clef "bass" 
          \tenorFugue
        }
      >>
      \new Staff = "pedale" {
        \pedaleFugue
      }
    >>
    \header { piece = "Fugue" }
    \layout {
      \compressEmptyMeasures
      \context {
        \Staff
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##f
        % Fusion automatique des silences
        \consists "Merge_rests_engraver"
      }
    }
    \midi {
      \tempo 4 = 108
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.27.0  convert-ly: Processing `'...
Applying conversion: 2.25.0, 2.25.1, 2.25.2, 2.25.3, 2.25.4, 2.25.5,
2.25.6, 2.25.8, 2.25.9, 2.25.11, 2.25.12, 2.25.13, 2.25.18, 2.25.22,
2.25.23, 2.25.24, 2.25.25, 2.25.26, 2.25.28, 2.25.30, 2.25.31,
2.25.32, 2.25.33, 2.25.34, 2.25.35, 2.25.80, 2.26.0, 2.27.0
%}
