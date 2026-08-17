\version "2.24.0"
vA =  {
  \stemUp
  fis''4  g''  fis''8  e''8  |
  fis''4.   e''8[  d''8  cis''8]  |
  b'8  e''8  d''8  cis''8  d''8  b'8  |
  ais'4.   g'8[  fis'8  e'!8]  |
  \stemDown
  d'4  cis'4  b4  |
  <g' b>2  <fis' ais>4  |
  <b fis'>4 g'2
  fis'4. s8*3
  fis'2.
  s2.
  d'8 s8*5 | s2.*2 |
  a'4.  g'8  fis'4  |
  e'4  dis'4  <b' e'>  |
  <c'' a' a>4  <b' g' b>  <a' fis' b>  |
  e'4.   d'8[  cis'8  b8]  |
  a4  r4  g'4  |
  fis'4  e'4  d'4  |
  <d' g>4  e'4  d'4  |
  a'2  e''8(   cis''8)  |
  <e' cis'>4  s2  |
  <fis' b>2  <fis' a>4  |
  <g' g>4  r4  e'4  |
  fis'4.  s8*3 | s2. |
  e'8( gis'8   b'8)  d''8  gis''8  d''8  |
  e'4  d'4  cis'4  |
  \stemDown
   ais'8[( b'8   cis''8)  e''8  ais''8  e''8]  |
  \stemNeutral
  <b'' d'' fis'>4  <a''! cis'' e'>  <g'' b' d'> |
  \stemUp
   ais'8[  g''8  fis''8  e''8] <d'' fis'>4  |
  r8  cis''8  cis''4.  b'8  |
  <b' fis'>2.
}
vB =  {
  \stemDown
  <d'' fis' b>4  <d'' e'>  <cis'' a'>  |
  <d'' d'>4. s8*3 |
  g'4 e' eis' |
  fis'4. s8*3 |
  \stemUp
  <b' fis'>4  <a' e'>  g'16  fis'16(   g'8) |
  cis''4.  d''8  e''4  |
  e''8  d''8  e''8  d''8  cis''8  b'8  |
  <fis'' cis''>4.  e'8[  d'8  cis'8]
  <fis'' cis''>2.
  \stemUp
  < ais'' cis'' fis'>4 <ais'' cis'' e'> <ais'' cis'' fis'> |
  \stemUp
  b'8(  fis''8   b''8)  a''!8  gis''8  fis''8  |
  \stemNeutral
  <e'' b' gis' d'>4  <fis'' cis'' a' cis'>  <gis'' e'' d' b>4 |
  <a'' cis'' e' a>4.   g''!8[  fis''8  e''8]  |
  \stemUp
   dis''8[  c'''8  b''8  e''8]   dis''8[  a''8]  |
  c''16(  b'16  c''16   a'16)  b'8  a''8  g''4  |
  g''8  fis''8  fis''8  e''8  e''8  dis''8  |
  e''4.  s8*3  |
  <e'' cis'' g'>4  d''8  cis''8  b'8  a'8  |
  d''4.  e''8  <fis'' a'>4 |
  <b'' b'>4  <g'' cis''> <fis'' d''>  |
  <e'' cis''>4.  <fis'' d''>8  g''4  |
  b'8(   ais'16)  g''16  fis''8(   e''8)  d''8(   cis''8)  |
  d''4.  e''8  <fis'' cis''>4  |
  <fis'' b'>4  e''8(   d''8)  cis''8(   b'8)  |
  ais'4.   g'8[  fis'8  e'8]  |
  <b' fis' d'>4 <cis'' ais' cis'>4  <d'' b' b>  |
  d''8 s8*5
   cis''16[ b'16(  cis''8)]  d''16[ cis''16(  d''8)] <e'' b' e'>4 |
  \stemUp <e'' fis'>4 s2 | s2. |
  \stemDown
  <e' cis'>8 s8*3 b4  |
  e'4  fis'2  |
  b2.
}
vStaff = \context Staff <<
  \context Voice=A \vA
  \context Voice=B \vB
>>
