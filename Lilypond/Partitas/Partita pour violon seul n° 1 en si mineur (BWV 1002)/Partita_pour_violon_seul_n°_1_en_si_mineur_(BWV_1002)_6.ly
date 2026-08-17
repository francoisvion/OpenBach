\version "2.24.0"
viA =   {
  b'8  d''8  fis''8  g''8  e''8  d''8  cis''8  a''8  g''8  |
  fis''8  d''8  cis''8  d''8  a'8  fis'8  d'8  d''8  cis''8  |
  b'8  g'8  fis'8  e'8  e''8  d''8  eis'8  cis''8  b'8  |
  ais'8  fis''8  cis''8  ais'8  g'8  fis'8  e'8  d'8  cis'8 |
  d'8  fis'8  b'8  cis'8  b'8  a'8  b8  a'8  g'8  |
  a8  cis'8  e'8  g'8  cis''8  e''8  ais'8  fis''8  e''8  |
  d''8  b'8  a'8  g'8  e''8  d''8  cis''8  ais'8  b'8  |
  fis'8  ais'8  cis''8  fis''8  g''8  fis''8  e''8  d''8 cis''8
  fis''8  cis''8  ais'8  fis'2.
  fis'8  cis''8  ais''8  ais''8  cis''8  fis'8  e'8  d'8 cis'8  |
  d'8  fis'8  b'8  d''8  fis''8  b''8  a''!8  gis''8  fis''8  |
  e''8  gis'8  d''8  cis''8  a'8  fis''8  d''8  b'8  gis''8  |
  a''8  e''8  cis''8  a'8  cis''8  e''8  g''!8  fis''8  e''8  |
  dis''8  a'8  c'''8  b''8  e''8  g'8  fis'8  dis''8  a''8  |
  c''8  a'8  e'8  dis'8  b'8  a''8  g''8  dis''8  e''8  |
  a'8  g''8  fis''8  b'8  g'8  e''8  fis'8  a'8  dis''8  |
  e''8  b'8  g'8  e'8  g'8  b'8  e''8  fis''8  g''8  |
  a''8  e''8  d''8  cis''8  b'8  a'8  g'8  fis'8  e'8  |
  fis'8  a'8  cis''8  d''8  fis''8  e''8  fis''8  a'8  d'8 |
  g8  d'8  b'8  cis''8  b''8  a''8  g''8  e''8  fis''8  |
  e''8  cis''8  b'8  cis''8  a'8  gis'8  a'8  e'8  g'8  |
  ais'8  cis''8  e''8  g''8  fis''8  e''8  d''8  e''8  cis''8 |
  d''8  b'8  cis''8  d''8  fis''8  e''8  fis''8  a'8  fis'8  |
  g'8  b'8  fis''8  e''8  cis''8  d''8  cis''8  ais'8  b'8  |
  ais'8  cis''8  b'8  ais'8  gis'8  fis'8  e'8  d'8  cis'8  |
  d'8  fis'8  b'8  b'8  ais'8  cis''8  cis''8  b'8  d''8  |
  d''8  b'8  gis'8  e'8  gis'8  b'8  d''8  gis''8  b''8  |
  e'8  g'!8  cis''8  cis''8  b'8  d''8  d''8  cis''8  e''8  |
  e''8  cis''8  ais'8  fis'8  ais'8  cis''8  e''8  ais''8 cis'''8  |
  d''8  b''8  fis'8  cis''8  a''!8  e'8  b'8  g''8  d'8  |
  cis'8  e'8  g'8  ais'8  cis''8  e''8  g''8  fis''8  e''8  |
  ais''8  b''8  eis''8  fis''8  cis''8  d''8  fis'8  b'8  ais'8
  b'8  fis'8  d'8  b8  d'8  fis'8  b'8  cis''8  d''8
  b8  d'8  fis'8  b'8  d''8  fis''8  b''4.
}
viStaff = \context Staff <<
  \context Voice=A \viA
>>
