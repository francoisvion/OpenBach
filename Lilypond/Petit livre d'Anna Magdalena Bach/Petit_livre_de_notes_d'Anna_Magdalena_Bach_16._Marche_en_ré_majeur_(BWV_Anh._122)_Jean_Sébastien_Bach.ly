\version "2.24.4"

\paper{indent = 10}

\header {
  title = "16. Marche en ré majeur"
  subtitle = "Petit Livre de notes d'Anna Magdalena Bach"
  subsubtitle = "attribué à Carl Philipp Emanuel Bach (1714-1788)"
  opus = "BWV Anh. 114"
  composer = "Jean Sébastien Bach (1685-1750)"
 tagline = ##f
}
#(set-global-staff-size 19)

voiceone =  \relative c'' {
  \clef "treble"
  \time 2/2
  \key d \major
  \repeat volta 2 {
  \partial 4 a4
  d a2 b8 cis |
  d4 a2 b8 cis |
  d e fis g a g fis e |
  fis4 d2 fis8 e |
  fis4 d2 b8 a |
  b gis e'4~e8 d cis b |
  a4. d8 \appoggiatura {cis8} b4.\trill a8 |
  a4 e8 a cis a cis e |
  a2. }
  \repeat volta 2 {
  e4 |
  a e2 fis8 gis |
  a4 e2 fis8 gis |
  a4 g8 fis e fis g e |
  fis4 d~d8 a b c |
  b d e fis g b, cis d |
  cis e fis g? a c, d e |
  d g b a? g fis e d |
  cis4 a2 d8 a |
  b a g fis g b e b |
  cis a b cis d e fis g |
  a4 d, fis8 e d cis |
  d4 a8 d fis d fis a |
  d2. }
  }

voicetwo =  \relative c {
  \clef "bass"
  \time 2/2
  \key d \major
  \repeat volta 2 {
    r4 |
    d g fis e |
    d g fis e |
    fis d cis a |
    d, d'8 cis d4 d, |
    d d'8 cis d4 d, |
    d d'8 cis d4 d, |
    cis fis d e |
    a a8 a a a a a |
    a4 e' a }
  \repeat volta 2 {
    r4 |
    a d cis b |
    a d cis b |
    a b cis a |
    d d,8 e fis4 d |
    g r4 r4 gis |
    a r4 r4 ais |
    b g e g |
    a8 a, a' g fis e fis d |
    g,4 r r g' |
    a r r g |
    fis b g a |
    d, d,8 d d d d d |
    d4 a' d }
  }
  }
}

\paper{
}
  
\score {
   \context PianoStaff << 
    \context Staff = "one" \with {\accidentalStyle modern} <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>
  \layout{}
  \midi {\tempo 4 = 140}
}

