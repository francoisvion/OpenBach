\version "2.25.80"

\header {
  title = "Prélude n° 3 en ré mineur"
  opus = "BWV 926"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

voiceone =  \relative c' {
  \key d \minor
  \time 3/4
   d8[ a' f d a' f]
   d8[ a' f d a' f]
   d[ bes' g d bes' g]
   d[ bes' g d bes' g]
   cis,[ g' e cis g' e]
   cis[ bes' g e a g]
   f[ d f a f a]
   d[ a d f d f]
   b[( f e d c b]
   a[ gis fis  e) d' b]
   <a c\mordent>4 r r
   <a c\mordent>4 r r
   a'8[( ees d c bes a]
   g[ fis e  d) c' a]
   bes[\mordent d bes g] g'4
   r8  d[ c bes a\prall g]
   a[ c a f] f'4
   r8  c[ bes a g\prall f]
   g[ bes a g f e]
   f[ d f a d g,]
  <<
    {\stemUp {  cis[\mordent e cis a e' cis] } \stemNeutral }
    {\context Voice = "ii" { << \stemDown a4 >> } }
  >>
   a8[ e' cis a bes a]
   g[ e' cis g e' cis]
   g[ e' cis g a g]
   f[ d' bes f d' bes]
   f[ d' bes f d' bes]
   fis[ c' a fis c' a]
   fis[ c' a fis c' a]
   bes[ g fis g d g]
   bes[ g d bes' g d]
   ees[ g fis g bes g]
   ees[ bes' g ees bes' g]
   cis,[ bes' g cis, bes' g]
   cis,[ bes' g cis, a' g]
   f[ a f d a' f]
   d[ a' f d cis d]
   e[ g e bes g' e]
   bes[ g' e cis a g']
   f16[ d c! bes] r4 r
   r r r
   r4 r16  d[ f a]  d,[ f a] d
   f[ a f d]  f[ d b d]  gis,[ b a gis]
   <a e' g>4.\arpeggio a'8 <a, d f>4~
   f'8[ e] <<
           { \stemUp { e4.\prall d8 } \stemNeutral }
           { \context Voice = "ii" { << \stemDown cis2 >> } }
         >> 
   d8[ c! a d bes g]
   c[ a fis bes g e]
   a[ fis d g e cis]
   <a d\mordent fis>2. \fine

}

  
voicetwo =  \relative c {
  \key d \minor
  \time 3/4
  \clef "bass"

  d4\mordent r r
  d, r r
  d'\mordent r r
  d, r r
  d'\mordent r r
  d, r r
  d'8[ a d f d f]
  a[ f a d a d]
  gis,4 r r
  e gis e
  a8[ e' c a e' c]
  g![ ees' c g ees' c]
  fis,4 r r
  d fis d
  g\mordent r r8 f!
  e4\prall r r
  f\mordent r r8 e
  d4\prall r8  f[ e d]
   e[ d cis e d cis]
  d4 c! bes
  a a' a,
  a a' a,
  a a' a,
  a a' a,
  bes r r
  bes bes' bes
  a r r
  a d d,
  g r r
  g g' g,
  g r r
  g g' g,
  a r r
  a \clef treble a' \clef bass a,
  a r r
  a \clef treble a' \clef bass a,
  cis, r r
  cis cis' cis
  d a'16  g[ f e]  f[ a d, f]
  a,  d[ c bes] a  g[ f e]  d[ f a d]
  f[ a]  d,[ f] a r r8 r4
  r r r
  cis,8[ e cis a]  d[ b]
  g[ \clef treble g']  a[ g a \clef bass g,]
  d'4 \clef treble d' \clef bass d,
  d r r
  d, d' d,
  d2. \fine
}

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{ line-width = 18.0 \cm }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #140/4
      }
    }
}