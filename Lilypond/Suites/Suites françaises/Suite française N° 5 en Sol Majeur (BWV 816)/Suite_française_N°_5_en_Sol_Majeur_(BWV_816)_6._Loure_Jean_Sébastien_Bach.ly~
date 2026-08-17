\version "2.24.4"

\header {
  title= "6. Loure"
  subtitle = "Suite française N° 5"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 816"
  tagline = ##f
  }

Global = {
  
  \key g \major
  \time 6/4
  \partial 8*3
  \set PianoStaff.connectArpeggios = ##t
}

StaffUp = {
  \change Staff = Upper
  \stemDown
}

StaffDown = {
  \change Staff = Lower
  \stemUp
}

NoCut = {
  \override Grace.Flag.stroke-style = #'()
}
VoiceI =  \relative c'' { \voiceOne
  \repeat volta 2 {
    d8 b4
    \grace {
\override Flag.stroke-style = #"grace"
   \NoCut a8
  \revert Flag.stroke-style }
 g2.~ g4. a8 b4
    a2.~ a4. b8 c4
    d4. g8 e4 c4.\prall b8 c16 a b8
    b4.\prall a8 g4 g4.\arpeggio b8 d4
    g4.\mordent a8 b4 \grace {
\override Flag.stroke-style = #"grace"
   \NoCut d,8
  \revert Flag.stroke-style }
 c4. e8 a4
    dis,16 e fis g a c b a g a fis8 g2.~
    g4. e8 fis 4 a, b cis 
    d2.~ d4.
  }
  \repeat volta 2 {
    a'8 fis4
    \grace {
\override Flag.stroke-style = #"grace"
   \NoCut e8
  \revert Flag.stroke-style }
 d2.~ d4. e8 fis4
    g2.~ g4. a8 b4
    c16 b a gis a8. e16 f4 \grace {
\override Flag.stroke-style = #"grace"
   \NoCut c8
  \revert Flag.stroke-style }
 b4. f'8 e4
    c4.\prall b8 a4 a4~ a16 c b a e'4
    fis,4. a8 c4~ <c d,>~ d,16 fis e d b'4
    a4. e'8 a4~ a~ a16 a g fis g4
    c,16 b a g fis e' d c d4 d, e fis g2.~ g4.
  }
}

VoiceXa =  \relative c' {
  \shiftOn
  \repeat volta 2 {
   s4.
    s1.*3
    s2. d4.\arpeggio s4.
    s2. a'2 s4
    s1.*2
    a2.~ a4.
  }
  \repeat volta 2 {
    s4.
    s1.
    \stemUp \tieUp \shiftOff
    b8 \rest  d8[ b g] s1
    \revert Rest.extra-offset
    s1.*5
    \shiftOn
    d2.~ d4.
  }
}
VoiceXb =  \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s4
    \override Stem.thickness = #0.0
    \override NoteHead.transparent  = ##t
    b4 ~
    \revert Stem.thickness
    \revert NoteHead.transparent
    \shiftOnn
    b~ b4  s2
    s1.*5
    s1 s8
  }
}

VoiceXc =  \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s8
    \override Stem.thickness = #0.0
    \override NoteHead.transparent  = ##t
    \override Dots.transparent = ##t
    d4.~
    \revert Stem.thickness
    \revert NoteHead.transparent
    \revert Dots.transparent
    \shiftOn
    d4~ d4 s2
    s1.*5
    s1 s8
    }
}
VoiceII =  \relative c' { \voiceTwo
  \repeat volta 2 {
    s4.
    \StaffDown \stemDown r4 r8 d8 b4 \grace {
\override Flag.stroke-style = #"grace"
   \NoCut a8
  \revert Flag.stroke-style }
 g4. fis8 g16 b \StaffUp d g
    fis2.~ fis4. g8 a4~
    a g2~ g4 fis 2
    g2. b,4.\arpeggio s
    s2. e2 s4
    s2. r4 r8 e'8 cis4 \grace {
\override Flag.stroke-style = #"grace"
   \NoCut b8
  \revert Flag.stroke-style }
 a2. g4 fis e
    fis2.~ fis4.
  }
  \repeat volta 2 {
     s4.
     r4 r8 a fis4~ fis4. g8 a4
     \tieDown
     d,4. g8~ g4~ g4 s2
     \tieNeutral
     r4 r a~ a2 gis4
     a2 s1
     s1.
     s2. b2.
     s2. c,4 b a
     b2.~ b4.
   }
}

VoiceIII =  \relative c { \voiceThree
  \repeat volta 2 {
    r8 r4
    s1.
    r4 r8
    a fis4 \grace {
\override Flag.stroke-style = #"grace"
   \NoCut e8
  \revert Flag.stroke-style }
 d4. d'8 c4
    b e c a16 c b a d4 d,4
    g b d g2 r4
    r16 g, a b c d e fis g b a g g4~ g16 b a g fis g e8
    fis4 dis b \stemDown r16 e g fis e d cis d e cis d e
     fis,2 s4 s \stemNeutral g a
    d4. a8 fis4 d4.
  }
  \repeat volta 2 { \stemDown
  s4.
  s1.
  s2. f'2.
  e4 f d e2.
  r4 e c a b c
  \stemNeutral
  d,8 a' d e16 fis e8 fis16 g fis8 g16 a d,8 fis \stemDown \tieDown g4~
  g8[ g fis e dis e] dis e16 fis s2
  r4 r8 fis c4 b c d
  g,4. b8 d4 g4.

  }
}

VoiceXd =  \relative c {
  \stemUp
  \repeat volta 2 {
  s4.
  s1.*6
  r8  a[ b cis d e] fis4 s2
  s1 s8
  }
  \repeat volta2 {
    r8 r4
    \stemUp \tieUp
    s2. c'2.
    b4. d8 d4~ d4. c8 d4~
    d c b~ b b e
    a,2. s2.
    s1 s4 r8 b
    c4 s2. b,8 dis e fis16 g
    a2.~ a4 g s
    s1 s8
  }
}


\score {
  \context PianoStaff <<
    \context Staff = Upper <<
      \Global
      \clef treble
      \context Voice = "i" \VoiceI
      \context Voice = "ia" \VoiceXa
      \context Voice = "ib" \VoiceXb
      \context Voice = "ic" \VoiceXc
      \context Voice = "ii" \VoiceII
    >>
    \context Staff = Lower <<
      \Global
      \clef bass
      \context Voice = "iiia" \VoiceIII
      \context Voice = "iiib" \VoiceXd
    >>
  >>
  \layout { }
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.25.33  convert-ly: Processing `'...
Applying conversion: 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
2.17.27, 2.17.29, 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16,
2.19.22, 2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40,
2.19.46, 2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2,
2.23.3, 2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10,
2.23.11, 2.23.12, 2.23.13, 2.23.14, 2.24.0, 2.25.0, 2.25.1, 2.25.2,
2.25.3, 2.25.4, 2.25.5, 2.25.6, 2.25.8, 2.25.9, 2.25.11, 2.25.12,
2.25.13, 2.25.18, 2.25.22, 2.25.23, 2.25.24, 2.25.25, 2.25.26,
2.25.28, 2.25.30, 2.25.31, 2.25.32, 2.25.33
%}
