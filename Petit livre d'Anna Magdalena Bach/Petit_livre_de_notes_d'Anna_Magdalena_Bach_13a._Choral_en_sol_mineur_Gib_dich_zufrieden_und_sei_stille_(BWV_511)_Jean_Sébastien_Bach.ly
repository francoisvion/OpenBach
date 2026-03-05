\version "2.24.4"

\include "english.ly"

\header {
  title = "13a. Choral en sol mineur : Gib dich zufrieden und sei stille"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus= "BWV 511"
  composer = "Jean Sébastien Bach (1685-1750)"
 tagline =  ##f
}


upper = \relative c''
{
  \clef treble 
  \key g \minor

  \repeat volta 2
  {
    \partial 8 d8
                                                                    	|
    bf4 c8 \melisma d16 ef \melismaEnd d4. c8 		  	    	|           
    bf4 a8( bf16 c) bf8 \melisma a \melismaEnd g4\fermata 	    	|
    ef'4 d g f                                		  	    	|   
    a,8[ \melisma ef'] \melismaEnd d[ \melisma c] \melismaEnd c4 bf8 s8 |
  }

  \partial 8 d8	                                                                                     	   |
  c4 d8( bf) c4 d8( ef)                                                                              	   |
  f4 ef8 \melisma d \melismaEnd ef[ \melisma d] \melismaEnd c\noBeam\fermata ef                      	   |
  a,4 g'8 \melisma fs \melismaEnd g[ \melisma f] \melismaEnd ef([ d)]                                	   |
  c8[ \melisma bf'] \melismaEnd a[ \melisma g] \melismaEnd fs[ \melisma e!] \melismaEnd d\noBeam\fermata g |
  \appoggiatura f8 ef4 d8( c) d[ \melisma fs,] \melismaEnd g\noBeam c                                  	   |
  bf4( a8 \trill g) g4.\fermata s8                                                                   	   |
  \bar "|."
}

lower = \relative f
{
  \clef bass
  \key d \minor
  
  \repeat volta 2
  {
    \partial 8 g,8	    |
    g'8 fs g a bf a bf c    |
    d8 c d d, g2_\fermata   |
    g,8 g'4 f8 ef, ef'4 d8  |
    c4 bf f bf8 s8          % barcheck fails here
  }

  \partial 8 bf8	    |
  f'8 a bf bf, f' g f ef    |
  d4  g c,4._\fermata c'8   | 
  fs,8 a d, c' bf d g, bf   |
  ef,4 c d4._\fermata bf8   |
  c4 f bf,8 a bf ef         |
  d8 c d d, g4._\fermata s8 |
}

verseone = \lyricmode
{
  Gieb dich zu __ frie -- den und sei __ stil __ le
  in dem Got -- te dei __ nes Le -- bens.
  Er ist dein Quell und dei -- ne __ Son __ ne,
  scheint tag -- lich __ hell __ zu __ dei __ ner __ Won __ ne.
  Geib dich zu -- frie __ den, zu -- frie __ den
} 

versetwo = \lyricmode
{
  In ihm ruht __ al -- ler Freu -- den __ Ful __ le,
  ohn' ihn muhst du dich ver __ ge bens.
}

\score 
{
  \new GrandStaff 
  <<
    \new Staff = upper
    {
      \new Voice = "singer" \upper
    }
    \new Lyrics \lyricsto "singer" \verseone
    \new Lyrics \lyricsto "singer" \versetwo
    \new Staff = lower \lower
  >>
  
  \layout
  {
    \context { \GrandStaff \accepts "Lyrics"   }
  }

  \midi 
  {
  }
}