\version "2.24.4"

\header {
  title = "5. Bourrée"
  subtitle = "Suite française N° 5"
  opus = "BWV 816"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

Global = {
  
  \key g \major
  \override Staff.TimeSignature.style = #'C
  \time 2/2
  \partial 4
}

VoiceI =  \relative c'' {
  \repeat volta 2 {
    b8 d g4.\mordent a8 a4.\prall g16 a
    b4 a8 b g4 d8 b
    e4 c8 a fis4 d'8 a
    c b a b g a b d
    g4.\mordent a8 a4.\prallprall g16 a
    b4 a8 b g4 a8 c
    b4 e,8 g a4 b,8 d
    g4 cis,8 e fis4  d8 fis
    b4 a g8 fis g e d2.
  }
  \repeat volta 2 {
    a'8 fis
    d4. e16 fis fis4.\prallprall e16 fis
    g2. d8 g
    c4 dis,8 fis b4 e,8 g
    fis e dis cis b4 a'8 fis
    b,4 g'8 e ais,4 g'8 e
    a,4 fis'8 dis gis,4 f'8 dis
    e4 fis b, dis\turn
    e2. g8 e
    b4. c8 c4.\prallprall b16 c
    d4 b8 d g4 b8 g
    e4 a,8 c d4 gis,8 b
    c4 b8 c a4 d8 a 
    b4 g8 b e4 g8 b,
    c4 a8 c fis4 a8 c,
    d4 b8 d g4 b8 g
    a g fis e d4 g8 d
    e4 a,8 c d4 e,8 g
    c4 fis,8 a b4 g8 b
    d b g'4 b, a8\prall g
    g2.
  }
}

VoiceII =  \relative c' {
  \repeat volta 2 {
    r4
    r8 d b g fis c' a fis 
    g b g d b d b g
    c g e' c d a fis' d
    g4 d b d
    g,8 d'' b g fis c' a fis
    g b g d b g' d b
    g b cis e fis, a d4
    e,8 g a cis d e fis d
    g e fis d a'4 a,
    d8 a fis a d,4
  }
  \repeat volta 2 {
    r4
    r8 d'' a fis d a' fis d
    b b' g d b d b g
    a c a fis g b g e
    b'4 cis dis8 fis b dis,
    e g b d, cis e b' cis,
    dis fis a c b e, gis b
    c e c a b4 b,
    e8 b g b e,4 r
    r8 e'' b g e g c, e
    b b' g d b d g, b
    c e f4 b,8 d e4
    a,8 c e g fis a fis d
    g d b d g, b d e
    a e c e a, c fis a
    b g d g b, d g b
    d e d c b d b g
    c, e fis a b, d g4
    a,8 c d fis g d b d
    g d b g d'4 d,
    g2.
  }
}

\score {
  \context PianoStaff <<
    \context Staff = Upper {
      \Global
      \clef treble
      \context Voice = "i" \VoiceI
    }
    \context Staff = Lower {
      \Global
      \clef bass
      \context Voice = "ii" \VoiceII
    }
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
