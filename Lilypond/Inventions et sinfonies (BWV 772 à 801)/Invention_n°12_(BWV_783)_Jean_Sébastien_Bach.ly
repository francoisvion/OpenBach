\version "2.24.4"
\header {
   title = "Invention 12"
   composer = "Jean-Sébastien Bach (1685-1750)"
   opus = "BWV 783"
   tagline = ""
}
global =  { \key a \major \time 12/8 }
voiceOne =
\relative c'' {
   a4^\mordent a8 a4^\mordent a8 b2.^\upmordent ~    |
   b16 a gis a b cis
   d cis d fis e d
   cis a cis e a fis
   dis b dis fis a fis                               |
   gis a gis fis e dis
   cis dis e dis cis b
   a cis e cis a cis
   fis, a cis a fis a                                |
   dis,8 fis dis
   b16 dis fis a gis fis
   e gis b e b gis e4 r8                             |
   e'4^\mordent e8 e4^\mordent e8
   e16 a e cis a cis
   e16 a e cis a cis                                 |
   d4  d8 d4 d8
   d16 b' gis d b d
   gis b gis d b d                                   |
   cis8 r r
   r16 d, fis a d cis
   b8 r r
   r16 cis, eis gis cis b                            |
   a8 r r
   r16 b, d fis b a
   gis fis b a gis fis eis gis cis b a gis           |
   fis8 \stemDown fis' \stemUp fis, \stemNeutral
   fis cis fis
   gis2.^\upmordent ~                                |
   gis16 fis eis fis gis a
   b a b d cis b
   a fis a cis fis dis
   bis gis bis dis fis dis                           |
   e fis e dis cis b
   a b cis b a gis
   fis a cis a fis a
   dis, fis a fis dis fis                            |
   bis,8 dis fis a gis bis
   cis16 e gis e cis e
   gis e cis e gis e                                 |
   cis e fis e cis e
   fis e cis e fis ais,
   b d fis d b d
   fis d b d fis d                                   |
   b d e d b d
   e d b d e gis,
   a4^\mordent a8 a4^\mordent a8                     |
   a16 dis b a fis a
   b dis b a fis a
   g4^\mordent g8 g4^\mordent g8                     |
   g16 e' cis g e g
   cis e cis g e g
   fis8 r r
   r16 gis, b d gis fis                              |
   e8 r r
   r16
   \change Staff = two \stemUp fis, a cis
   \change Staff = one \stemUp fis  e
   \stemNeutral
   d8 r r
   r16
   \change Staff = two \stemUp e, gis b
   \change Staff = one \stemUp e  d
   \stemNeutral                                      |
   cis a cis e a e
   cis' a cis e a fis
   d fis a fis d fis
   b, d fis d b d                                    |
   gis,8  b   d   fis(  e) b
   fis'(  e)   a,  e'(   d) gis,                     |
   d'(    cis) e,
   fis16 gis a b cis d
   gis, e gis b e b
   gis' e b' gis e gis                               |
   a8 e cis
   a16 d cis b e8 ~
   e16 fis cis8 b16 a
   a4.^\fermata                                      |
   \bar "|."
}
voiceTwo =
\relative c' {
   \clef "bass"
   a16 b cis b a gis
   fis gis a gis fis e
   d fis a fis d fis
   b, d fis d b d                                    |
   gis,8 b gis e fis gis a4 r8 r4.                   |
   e'4^\mordent e8 e4^\mordent e8 fis2.^\upmordent ~ |
   fis16 e dis e fis gis
   a gis a cis b  a
   gis e gis b e  b
   gis e gis b d! b                                  |
   cis d e d cis b
   a b cis b a gis
   fis8 fis' cis a fis a                             |
   b16 cis d cis b a
   gis a b a gis fis
   e8 b gis e4 r8                                    |
   r16 a' cis e a gis
   fis8 r r
   r16 gis, b dis gis fis
   eis8 r r                                          |
   r16 fis, a cis fis e
   d8 r r
   r16 b, d fis b a
   gis cis, eis gis cis b                            |
   a b a gis fis e
   d e fis e d cis
   b d fis d b d
   gis, b d b gis b                                  |
   eis,8 gis eis cis dis eis
   fis fis' dis gis fis gis                          |
   cis,4 cis8 cis4 cis8 dis2. ~                      |
   dis16 cis bis cis dis e
   fis e fis a gis fis
   e cis e gis cis gis
   e cis e gis cis b                                 |
   ais fis ais cis fis cis
   ais fis ais cis fis e
   d b, d fis b fis
   d b d fis b a                                     |
   gis e gis b e b
   gis e gis b e d
   cis d e d cis b
   a b cis b a gis                                   |
   fis8 a dis ~ dis cis b
   e16 fis g fis e d
   cis d e d cis b                                   |
   a8 e cis a4 r8
   r16 d fis a d cis b8 r r                          |
   r16 cis, e gis    cis b a8   r r
   r16 b, d   fis b    a gis8 r r                    |
   a,4^\mordent a8 a4^\mordent a8 b2.^\upmordent ~   |
   b16 a gis a b cis
   d cis d fis e d
   cis b cis e d cis
   b a b d cis b                                     |
   a gis a b cis a
   d4^\mordent d8 d2.^\upmordent                     |
   cis16 d cis b a gis
   fis fis' e d cis b
   cis d e8 e,
   a4._\fermata                                      |
   \bar "|."
}
\score {
   \context PianoStaff <<
      \context Staff = "one" <<
         \voiceOne
         \global
      >>
      \context Staff = "two" <<
         \voiceTwo
         \global
      >>
   >>
   \layout{ }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }
}
