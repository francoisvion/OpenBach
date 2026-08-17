\version "2.27.1"

\language "english"

\header {
  
  title = "Partita pour clavier n° 3 en la mineur"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 827"
  piece = \markup {\larger "1. Prélude"}
  tagline = ##f
}
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_1._Prélude_Jean_Sébastien_Bach.ily"

\score
{
  \new PianoStaff
  <<
    \new Staff = "upperOne" \upperOne
    \new Staff = "lowerOne" \lowerOne
  >>
  \layout { }
  \midi   { }
}
