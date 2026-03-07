\version "2.24.4"

\include "italiano.ly" 

\header{
  title = "Da Jesus an dem Kreuze stund"
  subtitle = "Petit livre d'orgue"
  opus = "BWV 621"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "dessus" \halsdown
}

staffdown = {
   \change Staff = "basse" \halsup
}

global = {
  \key la \minor
  \time 4/4
}

choral =  \relative do'' {
  \global
  \clef "violin"
  \partial 2 si2 
  %  1 :
  do4 si4 la4 si8. do16 
  re4 do4 \once\override Voice.TextScript #'extra-offset = #'(1.2 . 0.0) si4^\markup{\musicglyph #"scripts.ufermata"} do4 
  re8. do16 si4 do8. sib16 la4 
  la8. sol16 fa4 mi4 re4 
  %  5 :
  mi8. fad16 sol4 sol4 sol8. fa16 
  mi4 fad4 \once\override Voice.TextScript #'extra-offset = #'(1.2 . 0.0) sol4^\markup{\musicglyph #"scripts.ufermata"} si4 
  do4 si4 la4 sol4 
  la8. sol16 fa4 \once\override Voice.TextScript #'extra-offset = #'(1.2 . 0.0) mi4^\markup{\musicglyph #"scripts.ufermata"} re8. mi16 
  fa4 sol4 la4 la4 
  % 10 :
  sol4 fa4 mi2 ~
  \partial 2 \once\override Voice.TextScript #'extra-offset = #'(1.2 . 0.0) mi2^\markup{\musicglyph #"scripts.ufermata"} \bar "|."
}
alto = \relative do' {
  \global
 
  \partial 2 r8 mi4 re8
  %  1 :
  sol8 la16 sol16 fa8 sol16 fa16 mi8 re16 do!16 si16 re16 sol8 ~
  sol8 [ fa8 ] mi8 la16 sol16 fa8 sol16 fa16 mi8 la16 sol16 
  fa16 sol16 fa16 mi16 re4 do8 [ sol'8 ] do,8 fa8 
  mi4 ~ mi8 re16 do!16 sib8 do16 sib16 la8 sib16 la16 
  %  5 :
  sol8 do8 ~ do16 si!16 do16 re16 mi4 re4 
  do4 ~ do16 do16 si16 la16 sol16 re'16 mi16 fad!16 sol16 la16 fad16 sold16 
  la8. sol!16 fa!8 sol16 fa16 mi8 fa16 mi16 re8 dod16 re16 
  mi4 ~ mi8 re16 do!16 sib8 do16 sib16 la8 sib8 
  do16 la16 re16 do16 sib16 sol16 do16 sib16 la16 dod16 re16 mi16 re16 mi16 fa16 mi16 
  % 10 :
  re8 mi16 re16 do8 re16 do16 si!8 la16 sold16 la16 si16 do8 
  \partial 2 si2 
}

tenor = \relative do  { 
  \global
  \clef "bass"
  \partial 2 r16 mi16 sol16 la16 si16 do16 re16 si16 
  %  1 :
  mi16 do16 fa16 mi16 re16 si16 mi16 re16 dod16 la8. sol4 
  la16 re,16 fa16 sol16 la16 si16 do16 la16 re16 si16 mi16 re16 do16 si16 la8 ~
  la4 ~ la16 la16 sol16 fa16 sol16 do,16 re16 mi16 fa16 sol16 la16 sib16 
  mi,16 la,16 si!16 dod16 re16 mi16 fa16 re16 sol16 mi16 la16 sol16 fa16 re16 sol16 fa16 
  %  5 :
  fa16 mi16 re8 re16 sol,16 la16 si16 do16 re16 mi16 fa16 sol16 re16 sol8 ~
  sol16 sol16 la16 si16 la8 re,8 ~ re4 ~ re8 re'8 
  mi16 do16 fa!16 mi16 re16 si16 mi16 re16 dod16 la16 re16 do16 sib16 la16 sol16 fa16 
  mi16 la,16 si16 dod16 re16 mi16 fa16 re16 sol16 mi16 la16 sol16 fad16 re16 sol8 
  do,16 sol'16 fa!16 mi16 re16 fa16 mi16 re16 dod16 mi16 fa16 sol16 la16 re,16 re'16 do!16 
  % 10 :
  si!16 sol16 do16 sib16 la16 fa16 sib!16 la16 sold16 fad16 mi8 ~ mi8. la16 ~
  \partial 2 la16 la16 sold!16 fad!16 \once \override Script #'padding = # 1 sold4^\fermata
}
pedale = \relative do {
  \global
  \clef "bass"
  \partial 2 r8 mi8 si8 si'8 ~
  %  1 :
  si8 la4 sol4 fa4 mi8
  fa8 re8 la8 la'4 sol4 fa16 mi16 
  fa8 re8 sol,8 fa'4 mi4 re8 
  dod8 la8 re,8 re'4 do!4 sib8 ~
  %  5 :
  sib8 la8 si8 sol8 do,8 do'4 si8 ~
  si8 la16 sol16 la8 do8 ~ do8 si16 la16 si8 si'8 ~
  si8 la4 sol4 fa4 mi16 re16 
  dod8 la8 re,8 \stemUp re'4 \stemNeutral do4 sib8 ~
  sib8 la4 sol4 fa16 [ mi16 fa8 fa'8 ] ~
  % 10 :
  fa8 mi4 re4 do16 [ si16 do8 la8 ] 
  \partial 2 mi'4 \once \override Script #'padding = # 1 mi,4_\fermata 
}
\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 2\mm
}


\score{
\new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<

 \new PianoStaff <<
   \new Staff = "dessus" << 
     \choral \\
     \alto 
   >>
   \new Staff = "basse" { 
     \clef "bass" 
     \tenor
   }
 >>
 \new Staff = "pedale" {
   \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 6)
   \pedale
 }
>>
\layout{}
}

choralmidi =  \relative do'' {
  \global
  \partial 2 si2 
  %  1 :
  do4 si4 la4 si8. do16 
  re4 do4 si8. r16 do4 
  re8. do16 si4 do8. sib16 la8. r16 
  la8. sol16 fa4 mi8. r16 re4 
  %  5 :
  mi8. fad16 sol8. r16 sol8. r16 sol8. fa16 
  mi4 fad4 sol8. r16 si4 
  do4 si4 la4 sol4 
  la8. sol16 fa4 mi8. r16 re8. mi16 
  fa4 sol4 la8. r16 la4 
  % 10 :
  sol4 fa4 mi2 ~
  \partial 2  mi2
}
altomidi = \relative do' {
  \global
  \partial 2 r8 mi4 re8
  %  1 :
  sol8 la16 sol16 fa8 sol16 fa16 mi8 re16 do!16 si16 re16 sol8 ~
  sol8 [ fa8 ] mi8 la16 sol16 fa8 sol16 fa16 mi8 la16 sol16 
  fa16 sol16 fa16 mi16 re4 do8 [ sol'8 ] do,8 fa8 
  mi4 ~ mi8 re16 do!16 sib8 do16 sib16 la8 sib16 la16 
  %  5 :
  sol8 do8 ~ do16 si!16 do16 re16 mi4 re4 
  do4 r16 do16 si16 la16 sol16 re'16 mi16 fad!16 sol16 la16 fad16 sold16 
  la8. sol!16 fa!8 sol16 fa16 mi8 fa16 mi16 re8 dod16 re16 
  mi4 ~ mi8 re16 do!16 sib8 do16 sib16 la8 sib8 
  do16 la16 re16 do16 sib16 sol16 do16 sib16 la16 dod16 re16 mi16 re16 mi16 fa16 mi16 
  % 10 :
  re8 mi16 re16 do8 re16 do16 si!8 la16 sold16 la16 si16 do8 
  \partial 2 si2 
}
tenormidi = \relative do  { 
  \global
  \partial 2 r16 mi16 sol16 la16 si16 do16 re16 si16 
  %  1 :
  mi16 do16 fa16 mi16 re16 si16 mi16 re16 dod16 la8. sol4 
  la16 re,16 fa16 sol16 la16 si16 do16 la16 re16 si16 mi16 re16 do16 si16 la8 ~
  la4 r16 la16 sol16 fa16 sol16 do,16 re16 mi16 fa16 sol16 la16 sib16 
  mi,16 la,16 si!16 dod16 re16 mi16 fa16 re16 sol16 mi16 la16 sol16 fa16 re16 sol16 fa16 
  %  5 :
  fa16 mi16 re8 re16 sol,16 la16 si16 do16 re16 mi16 fa16 sol16 re16 sol8 
  r16 sol16 la16 si16 la8 re,8 ~ re4 ~ re8 re'8 
  mi16 do16 fa!16 mi16 re16 si16 mi16 re16 dod16 la16 re16 do16 sib16 la16 sol16 fa16 
  mi16 la,16 si16 dod16 re16 mi16 fa16 re16 sol16 mi16 la16 sol16 fad16 re16 sol8 
  do,16 sol'16 fa!16 mi16 re16 fa16 mi16 re16 dod16 mi16 fa16 sol16 la16 re,16 re'16 do!16 
  % 10 :
  si!16 sol16 do16 sib16 la16 fa16 sib!16 la16 sold16 fad16 mi8 ~ mi8. la16 
  \partial 2 r16 la16 sold!16 fad!16 \once \override Script #'padding = # 1 sold4^\fermata
}
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \choralmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \pedale
    }
  >>
  \midi{ \tempo 8 = 66 }
}
