\version "2.27.0"

\language "italiano"

% Définitions d'offsets et de mise en forme
ot = {\once \override TextScript.extra-offset = #'( 0 . 1 )}
ott = {\once \override TextScript.extra-offset = #'( 0 . 2 )}
otttt = {\once \override TextScript.extra-offset = #'( 0 . 4 )}
otm = {\once \override TextScript.extra-offset = #'( 0 . -1 )}
ottm = {\once \override TextScript.extra-offset = #'( 0 . -2 )}
of = {\once \override Fingering.extra-offset = #'( 0 . 1 )}
off = {\once \override Fingering.extra-offset = #'( 0 . 2 )}
offf = {\once \override Fingering.extra-offset = #'( 0 . 3 )}
ofm = {\once \override Fingering.extra-offset = #'( 0 . -1 )}
offm = {\once \override Fingering.extra-offset = #'( 0 . -2 )}
offfm = {\once \override Fingering.extra-offset = #'( 0 . -2.5 )}
offffm = {\once \override Fingering.extra-offset = #'( 0 . -4 )}
ofp = \override Fingering.extra-offset = #'( 0 . 1.5 )
ofr = \revert Fingering.extra-offset

\header{
 title =  "Prelude et fugue en do mineur - Prelude"
 composer = "Jean-Sebastien Bach (1685-1750)"
 opus = "BWV 549"
 subtitle = "a un clavier et pedalier"
 tagline = ##f
}

\paper {
  top-margin = 4.00
  head-separation = 0\mm
  page-top-space = 0\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  tagline = ##f
}

global = {
  \override Score.VerticalAxisGroup.remove-first = ##t
  \key do \minor
  \set Staff.midiInstrument = "church organ"
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)

fu = \override Fingering.direction = #UP
fd = \override Fingering.direction = #DOWN

hu = { \stemUp \tieUp }
hd = { \stemDown \tieDown }
su = { \change Staff = up \hd }
sd = { \change Staff = down \hu }

soprano = \relative do'' {
  \global
  s1*8
  \break
  |%9
  r16 sol-1 do-4 si-3 do4^\mordent^\markup { \natural }~do16 do-2 fa-5 mi-4 fa4-5~
  |%10 soprano
  fa8. fa16 mib!4^"1--2"^"4--5" ~mib16 \off mib-5 re^\prall \off do-3 \off re4-5~
  |%11
  re16 [\of re-5 \of do32-4 re \of si16-3 ] do4-1-5~do16-1-4 do re \of do-4 \of si!-3 do \of la-2 si
  |%12
  do2-1-4~do16-1 \of do-4 \of re-5 do sib? do la do
  |%13 soprano
  sib1-1^"3--5" ~
  |%14
  sib16 \of sib-5 la sol la sib \of mi,-2 \of sol-4 fad2-3
  |%15
  fa'16\rest re-2 mib re do mib re do-1 la'2-5
  |%16
  re,2-1-2 ~re16 re-2 mib-3 re-2 do-1 sib-2 la-1 sol_"1"
  |%17 soprano
  re'2^"4--1"^"5--2" sol4-1-5 ~ sol16^"2-1"^"5" \off sol-5 \of fa!-4 \of mib-3
  |%18
  \off re-2 \off mib-3 do-1-2 \off re-5 sib-2-4 \off do-5 la!-1-3 \off do-5 sib2-2-4~
  |%19
  sib16-1-4 \of sib-3 do-4 reb-5 sol,-1 lab!-3 sib-4 do-5 lab?2-1-4
  |%20 soprano
  <re, sol>8-1-3 <re sol> <re sol> <re sol>~sol16-1 \off sol-2 \off do8-5 ~ do16-1 \off do-3 \off mib8-5~
  |%21
  mib16-2 \off mib-4 \off sol-5 \off re-3 \off mib4-4~ mib2~
  |%22
  mib16-2-4 \off mib8-4 \off mib16-4~ mib16 \off mib-5 \off re-4 \off do-3 \off si-2 \off re-4 sol,-1 \off si-2 \off do8-3 \off do-3~
  |%23 soprano
  do16 \off do-3 \off si-2 \off re-3 \of sol-5 \of re-3 \of mib-4 \of si-2 \ott do2^"3--5"
  |%24
  <sol si>8-1-4 <sol si> <sol si> <sol si> <sol sib> <sol sib> <sol sib> <sol sib>-2-4
  |%25
  lab?4-1-3 r4 do^"2--1"^"4" ~ \ofp do16 do-2 mi-4 do-2
  |%26 soprano
  fa4-5 ~fa16 fa-5 do-2 reb-3 do4-2 \ofr la16 fa'-5 lab,!-1 sib
  |%27
  do2.-4 do16-2-4 \ofp sib-3 do-4 reb-5
  |%28
  do-4 reb-5 \ofr sib-1-3 \of do-4 \of lab8.-2 \of sol16-2 \of sol4-4 ~ sol16-1-3 \of do8-5 \of si16-4
  %29
  <mi, sol do>4 \fermata
}

alto = \relative do' {
  s1*8
  |%9
  r4 r16 mib_4 lab_1 sol_2 lab4_1 \fu r8 \off lab-1~
  |%10 alto
  lab16 \offf lab-2 \offf sol8-1~ sol4 \off fa-1~ fa8 \of sol16-1 \of lab-2
  |%11
  \off mib4-1~ mib16 mib-2 fa-1 sol-2 re2
  |%12
  mib2 re~
  |%13
  re2~ re16 fad-2 sol-3 fa-2 mi-1 fa-2 re-1 mi-2
  |%14 alto
  \of dod2-1 s
  |%15
  s2 \sd \hd fa16\rest do'-2 re-1 mib-2 re-1 do-2 sib-3 la-4
  |%16
  \su sib2 \sd \hu sol2-3-1 \su \hd
  |%17
  do2~do16 do sib la sib4~
  |%18 alto
  sib8 la! sol fad sol2~
  |%19
  sol2~ sol16 sol-3 fa-2 mi-1 fa4-2
  |%20
  s2 mib8. \of mib16-2 sol8. \of sol16-1
  |%21
  do4~ do16 \off si-1 \off do8-2~ do2~
  |%22 alto
  do8 \offf do-2 \sd fa,4-1 ~ fa8 fa \su r16 \of sol8.-1~
  |%23
  sol2~ sol16 sol-1 la-2 sol-1 fad4-2
  |%24
  s1
  |%25
  fa4 r16 \ofp do'-5 sol-1 sib-3 \ofr lab2~
  |%26 alto
  lab2~lab2
  |%27
  r16 sol-1 lab-2 sib-3 lab4-2 ~ lab8. sol16-1 lab4~
  |%28 alto
  lab8 sol r16 \of fa8.-1~ fa16 mi-2 re!-1 mi-2 mi8 \of fa-1
  %29
  s4
}

tenor = \relative do, {
  \global
  \clef bass
  s1*8
  |%9
  r2 r4 r16 fa'-5 lab-3 fa-5
  |%10
  \otttt do'4^\mordent_\markup{ \natural }~ do16 do,-5 lab'-2 sol-3 lab4~ lab16 lab-2 sol-3 \prall fa-4
  |%11 tenor
  sol4^\mordent~ sol16 sol fa mib-5 fa2-"4--5"
  |%12
  s16 si-2 do-1 sib-2 la-3 sib-2 sol-4 la-1 \hd fad2-3 \prall ~
  |%13
  fad16 la-1 sib-2 la-1 sol la fad la-1 sol2-2 \prall
  |%14 tenor
  mi-4 la-1
  |%15
  r2 \clef treble s2
  |%16
  sol'16\rest fad-2 sol-1 lab!-2 sol-1 fa-2 mib-3 re-4 mib2
  \hu \clef bass
  |%17 tenor
  fad2^"2--1" \ottm re^"5"^"2--1" ~
  |%18
  re8 [mib-2] re-1 [do-2] \ofm re2-1
  |%19 tenor
  \offm do-4-1 ~ \ofm do-5
  |%20
  s2. \hd mib8.-3 mib16-3
  |%21
  sol4-1 ~sol8. sol16 \tuplet 3/2 { mib-3 [fa-2 sol-1] } \tuplet 3/2 { do,-4 [re-3 mib-2] } sol,-5 [do-1] \tuplet 3/2 { mib fa sol }
  |%22
  \hu s2 s4 \ofm mib8. mib16
  |%23 tenor
  re8.-2 fa16-1 mib16-2 si do re-1 mib4-2~ mib16 mib-2 re-1 do-2
  |%24
  s1
  |%25
  do4 r4 r16 \hd fa16-1 mi-2 do-4 fa4-1~
  |%26
  fa16 fa-1 mi-2 do-4 fa4-1~ fa16 fa-1 mi?-2 do-4 fa4-1~
  |%27 tenor
  fa4 r16 mi-2 fa-1 si,-5 \hu r \offfm mi!-2 \offfm fa8-1~ fa4~
  |%28
  fa8. mi16 r8 s8 s4 s4
  %29
  do4
}

basse = \relative do {
  \clef "bass"
  s1*11
  |%12 basse
  \fu \of sol'4-4 s2.
  |%13
  s1
  |%14
  s1
  |%15
  s1
  |%16 basse
  s1
  |%17
  re16\rest la'-4 sib-3 do-2 sib-3 la!-4 sol-5 fad-4 sol2~
  |%18
  sol2 re16\rest sib'-3 do-2 re-1 sol,-5 la-3 sib-2 re,-5
  |%19
  mi2 do4 r16 mib-3 re-4 do-5
  |%20 basse
  \set fingeringOrientations = #'(up right)
  < si-5 re-4 sol-2 si-1>8 <si re sol si> <si re sol si> <si re sol si> < do-5 mib-4 sol-2 do-1~ >8 do'16 [do16-1] r4
  |%21
  s1
  |%22
  fa,2-5 sol ~
  |%23
  sol2. \off la4-4
  |%24 basse
  <sol re'>8-5-1 <sol re'> <sol re'> <sol re'>-2-1 <do, mi sol do> <do mi sol do> <do mi sol do> <do mi sol do>
  |%25
  <do fa>4 s2.
  |%26
  s1
  |%27
  s2 do'2-4 ~
  |%28 basse
  do4 r8 <si re!>-3-1 do4-2 ~ <sol do>8-4-2 <fa re'>^"5--4"^"1"
  %29
  <mi sol>4
}

os = {\once \override Script.extra-offset = #'( 0 . 1 )}

pieds = \relative do {
  \global
  \clef "bass"
  \set Staff.instrumentName = "Pedalier"
  
  do4_\markup { \small "P" }^\mordent r16 sol16 do si do4^\mordent r16 do mib re
  |%2
  mib4^\mordent r16 mib sol fa sol4^\mordent r16 sol do si
  |%3
  do4^\mordent r16 do sol sib! lab do fa, lab re, sib' lab sib
  |%4
  sol sib mib, sol do, lab' sol lab fa lab re, fa si, sol' fa sol
  |%5
  mib sol fa sol re sol fa sol mib sol do, fa re fa sib, mib
  |%6
  do mib la, re sib re sol, do lab do fa, sib sol sib mib, mib'
  |%7
  do mib lab, fa' re fa si, sol' mib sol do, la' re, si' mib, do'
  |%8
  fa, lab re, fa mib sol do, mib \stemDown fa, [lab' sol32 lab
  \once \override TextScript.Y-offset = #-5
  fa16_\markup { \sharp } 
  ]
  \stemNeutral
  sol8^\mordent sol,
  |%9
  do1~
  |%10
  do1~
  |%11
  do1~
  |%12
  do2 re~
  |%13
  re1
  |%14
  re,2~re16 re' mib! re do sib la sol
  |%15
  fad1
  |%16
  sol ~
  |%17
  sol~
  |%18
  sol
  |%19
  mi2 fa~
  |%20
  fa mib!~
  |%21
  mib1
  |%22
  lab?2 sol~
  |%23
  sol1~
  |%24
  sol2 mi
  |%25
  fa1~
  |%26
  fa1~
  |%27
  fa2 do2~
  |%28
  do1
  %29
  do'4 \fermata
  \bar "|."
}

\book {
  \score {
    \new StaffGroup \with { \remove System_start_delimiter_engraver }
    <<
      \new PianoStaff <<
        \new Staff = up << \soprano \\ \alto >>
        \new Staff = down << \tenor \\ \basse >>
      >>
      \new Staff \pieds
    >>
    \header { breakbefore = ##t }
    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
    \midi {
      \tempo 4 = 72
    }
  }
}