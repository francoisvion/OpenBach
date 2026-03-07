\version "2.18.0"

\include "common.ly"


mvtItimeLine = {
    \time 6/4
    \set Score.tempoHideNote = ##t
    \tempo 4 = 120

    s1.*72
    \bar "|."
}

mvtIvlaI = \relative c' <<
{
    \key bes \major
    \tag NOREC {
	r4 g4 g4 c,4 a'4 a4 | % bar 1
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
	g4 r4 r4
    }
    \tag REC {
	R1.*4 |
	r2.
    }
	a'2.~ | % bar 5
    a4 g8(  a8)  bes8(   g8) c2.~  | % bar 6
    c4 bes8( a8) g8( bes8) es,4 es'2~  | % bar 7
    es4 d8(  c8) bes8( a8) bes( c) c4.\trill d8 | % bar 8
    d4.(   es8)  d8(  es8) c4.(   d8)  c8(  d8) | % bar 9
    bes4.(   c8)  bes8(  c8) a4.(   bes8)  a8(  bes8) | % bar 10
    c2.~  c4 a8(   bes8) a8( bes8) | % bar 11
    c2~  c8 es8 d8( c8) bes4(   a8\trill) g8 | % bar 12
    g8\p( f8) es8( d8) c8 bes'8 a8(   g8) fis8(   e8) d8 c'8 | % bar 13
    bes8(   a8)  g8(  f8) es8 d'8 c8(   bes8) a8(   g8) fis8 g8 | % bar 14
    a2.~  a2.~  | % bar 15
    a8 d,8 fis8 a8 c8 d8 g,8. a16 fis4.\trill g8 | % bar 16
    g4
    \tag NOREC {
	g,4\f g4 c,4 a'4 a4 | % bar 17
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
	g4 r4 r4 e''2.~  | % bar 21
	e4
    }
    \tag REC {
	r4 r r2. |
	R1.*3 |
	r2.  e2.~\f  | % bar 21
	e4
    }
    d8(   c8)  bes8( a8)  bes4.(   d8) cis8(  d8) | % bar 22
    e4 a,4 r4 r8 d,8 f8 a8 d8 a8 | % bar 23
    bes4 d2~  d8 c,8 e8 g8 c8 g8 | % bar 24
    a4 c2~  c8 bes,8 d8 f8 bes8 f8 | % bar 25
    g2.~  g8 bes8  a8(  g8) f8(   e8) | % bar 26
    f4 d'2~  d8 f8 e8(   d8) cis8( d8) | % bar 27
    g,2.~  g4 e8( f8) e8( f8) | % bar 28
    g8( bes8) a8( g8) f8( e8) f8. g16 e4.\trill d8 | % bar 29
    d4 f4 bes4~  bes4 a8(   g8) f8(   es8) | % bar 30
    d4\trill bes4 r4 r2. | % bar 31
    r4 bes'4 es4~  es4 d8( c8) bes8( as8) | % bar 32
    g4 c2~  c4 b8( c8) d8( b8) | % bar 33
    es2.~  es4 d8( c8)  b8(  d8) | % bar 34
    g,4 g'2~  g4 f8( es8) d8( c8) | % bar 35
    b2. c8 d8 d4.\trill c8 | % bar 36
    b4 es2( ~  es8  f8)  d8(  es8) d4~(  | % bar 37
    d8 es8) c8( d8) c4~(  c8 d8) b8( c8) b8( c8) | % bar 38
    d2.~  d4 b8( c8)  b8(  c8) | % bar 39
    b2~  b8 d8 c8( d8) b4.\trill c8 | % bar 40
    c4 es2\p~  es4 d8(   c8) bes8( a8) | % bar 41
    bes2.~  bes4 a8(   g8) f8( es8) | % bar 42
    d4.(   f8) es8(   d8) g8 d8 c8( bes8) a8( g8) | % bar 43
    f8( es8) f8( g8) f8(   as8) g8( f8) g8( a8) g8( bes8) | % bar 44
    a8(  c8)  bes8( d8) c8( es8) d8( f8) es8( g8) f8(   as8) | % bar 45
    g8(   f8) g8( a8)  f8(  g8) a8( f8) bes8(   a8) g8(   f8) | % bar 46
    es2.~  es4 a8( bes8) a8( bes8) | % bar 47
    c2.~  c8 bes8 a8( c8) bes8( a8) | % bar 48
    bes8( c8) a4.\trill bes8 bes8(  a8)  g8( f8) e8( d8) | % bar 49
    c2 a'4~ a8 fis8 d8 fis8 g4~ | % bar 50
    g8 bes8 a8( g8)  f8(  g8) a8(   bes8) e,4.\trill d8 | % bar 51
    d4
    \tag NOREC {
	g,4\f g4 c,4 a'4 a4 | % bar 52
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
	g4 r4 r4
	a'2.~  | % bar 56
	a4
    }
    \tag REC {
	r4 r r2. |
	R1.*3 |
	r2.
	a2.~\f  | % bar 56
	a4
    }
	g8(   a8) bes8( g8) c2.~  | % bar 57
    c4 bes8( a8) g8( bes8) es,4 es'2~  | % bar 58
    es4 d8(   c8) bes8(   a8) bes( c) c4.\trill d8 | % bar 59
    d4.(   es8)  d8(  es8) c4.(   d8) c8(   d8) | % bar 60
    bes4.(   c8) bes8(   c8) a4.(  bes8)  a8(   bes8) | % bar 61
    c2.~  c4 a8(   bes8)  a8(  bes8) | % bar 62
    c2~  c8 es8 d8( c8) bes4( a8\trill) g8 | % bar 63
    g8\p( f8) es8( d8) c8 bes'8 a8(   g8) fis8(   e8) d8 c'8 | % bar 64
    bes8(   a8) g8(   f8) es8 d'8 c8(   bes8) a8( g8) fis8 g8 | % bar 65
    a2.~  a2.~  | % bar 66
    a8 d,8 fis8 a8 c8 d8 g,8. a16 fis4.\trill g8 | % bar 67
    g4
    \tag NOREC {
	g,4\f g4 c,4 a'4 a4 | % bar 68
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 71
	g4 r4 r4 r2. | % bar 72
    }
    \tag REC {
	r4 r r2. |
	R1.*4 |
    }
}
\mvtItimeLine
>>

mvtIvlaII = \relative c' <<
{
    \key bes \major
    \tag NOREC {
	r4 g4 g4 c,4 a'4 a4 | % bar 1
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
	g4
    }
    \tag REC {
	R1.*4 |
	r4
    }
	g'2~  g4 fis8( g8) a8(   fis8) | % bar 5
    bes2.~  bes4 a8(   g8) f8(   a8) | % bar 6
    d,4 d'2~  d4 c8(   bes8)  a8(  g8) | % bar 7
    fis2. g8( a8) a4.\trill g8 | % bar 8
    fis4 bes2( ~  bes8  c8) a8( bes8) a4( ~  | % bar 9
    a8  bes8)  g8(  a8) g4( ~  g8  a8) fis8( g8) fis8( g8) | % bar 10
    a2.~  a4 fis8(   g8) fis8(   g8) | % bar 11
    fis2~  fis8 a8  g8(  a8) fis4.\trill g8 | % bar 12
    g4 g8\p(   f8) es8( d8) es8 bes'8 a8(   g8) fis8(   e8) | % bar 13
    fis8 c'8 bes8(   a8) g8( fis8) g8 d'8 c8( bes8) a8( g8) | % bar 14
    fis2.~  fis2.~  | % bar 15
    fis8 a,8 d8 fis8 a8 a,8 d4 d4.\trill c8 | % bar 16
    bes4
    \tag NOREC {
	g4\f g4 c,4 a'4 a4 | % bar 17
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
	g4 bes'2~ bes4
    }
    \tag REC {
	r4 r r2. |
	R1.*3 |
	r4 bes2\f~ bes4
    }
	a8(   g8)  f8(  e8) | % bar 21
    f2.~  f8 e8 g8( f8) e8(   d8) | % bar 22
    cis8 a8 cis8 e8 a8 e8 f4 a2~  | % bar 23
    a8 g,8 bes8 d8 g8 d8 e4 g2~ | % bar 24
    g8 f,8 a8 c8 f8 c8 d2.~  | % bar 25
    d8 a'8 g8(  f8)  e8(   d8) cis4 a'2~ | % bar 26
    a8 c8 bes8(   a8) g8(   f8) bes8 a8 g8(   f8) e8(   f8) | % bar 27
    e2.~  e4 cis8( d8)  cis8(  d8) | % bar 28
    e4 cis4.\trill cis8 d8. e16 cis4.\trill d8 | % bar 29
    d4 r4 r4 r2. | % bar 30
    r4 d4 g4~  g4 fis8( e8) d8( c8) | % bar 31
    bes4\trill g4 r4 r4 f'4 bes4~  | % bar 32
    bes4 as8(  g8)  f8( es8) d2.~ | % bar 33
    d4 c8( d8) es8( c8) f2.~  | % bar 34
    f4 es8( d8) c8( es8) as,4 as'2~  | % bar 35
    as4 g8( f8) es8( d8) es8 f8 f4.\trill g8 | % bar 36
    g4.(   as8) g8( as8) f4.(  g8)  f8( g8) | % bar 37
    es4.(   f8)  es8( f8)  d4.(   es8)  d8(  es8) | % bar 38
    f2.~  f4 d8( es8) d8(   es8) | % bar 39
    f2~  f8 as8 g8( f8) es4( d8\trill) c8 | % bar 40
    c4 r4 r4 a'2.\p~  | % bar 41
    a4 g8( f8) es8(   d8)
    \tag NOREC {
	    c2.~ | % bar 42
	c4 bes8( a8) g8(  f8)  es8( f8) es8( d8) c8( es8) | % bar 43
	d8( c8) d8( es8) d8(   f8) es8( d8) es8(   f8) es8( g8) | % bar 44
	f8( a8) g8( bes8) a8(   c8) bes8( d8) c8(   es8) d8(   f8) | % bar 45
	es8( d8) es8(   f8) d8(   es8) f8( es8) d8( c8) bes8( as8) | % bar 46
	g2.~  g4 c8( d8)
    }
    \tag REC {
	    c2.~ | % bar 42
	c8 c' bes8( a8) g8(  f8)  es8( f8) es8( d8) c8( es8) | % bar 43
	d8( c8) d8( es8) d8(   f8) es8( d8) es8(   f8) es8( g8) | % bar 44
	f8( a8) g8( bes8) a8(   c8) bes8( d8) c8(   es8) d8(   f8) | % bar 45
	es8( d8) es8(   f8) d8(   es8) f8( es8) d8( c8) bes8( as8) | % bar 46
	g2.~  g4 c,8( d8)
    }
	c8( d8) | % bar 47
    es2.~  es8 g8 f8( es8)   d8( c8) | % bar 48
    d8( es16 f16) d4( c8\trill) bes8 c2~  c8 bes'8 | % bar 49
    a8( g8)  f8(  es8) d8(  c8)  bes4. d8 g,8 bes8 | % bar 50
    a2~  a8 cis8 d8( e8) cis4.\trill d8 | % bar 51
    d4
    \tag NOREC {
	g,4\f g4 c,4 a'4 a4 | % bar 52
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
	a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
	g4 g'2~  g4
    }
    \tag REC {
	r4 r r2. |
	R1.*3 |
	r4 g2~\f  g4
    }
	fis8( g8) a8( fis8) | % bar 56
    bes2.~  bes4 a8(   g8) f8( a8) | % bar 57
    d,4 d'2~  d4 c8(   bes8) a8( g8) | % bar 58
    fis2. g8(   a8) a4.\trill g8 | % bar 59
    fis4 bes2( ~  bes8  c8)  a8(  bes8) a4~(  | % bar 60
    a8  bes8)  g8(  a8) g4( ~  g8  a8) fis8(   g8) fis8(   g8) | % bar 61
    a2.~  a4 fis8(  g8)   fis8(  g8) | % bar 62
    fis2~  fis8 a8 g8(   a8) fis4.\trill g8 | % bar 63
    g4 g8\p( f8) es8(  d8)  es8 bes'8 a8( g8) fis8( e8) | % bar 64
    fis8 c'8  bes8(  a8) g8(   fis8) g8 d'8 c8(   bes8) a8( g8) | % bar 65
    fis2.~  fis2.~  | % bar 66
    fis8 a,8 d8 fis8 a8 a,8 d4 d4.\trill c8 | % bar 67
    bes4
    \tag NOREC {
	g4\f g4 c,4 a'4 a4 | % bar 68
	d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
	fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
	a8 c8 a8 fis8 d8 fis8 bes g d'4 d,4 | % bar 71
	g4 r4 r4 r2. | % bar 72
    }
    \tag REC {
	r4 r r2. |
	R1.*4 |
    }
}
\mvtItimeLine
>>

mvtIvlaIII = \relative c' <<
{
    \key bes \major
    r4 g4 g4 c,4 a'4 a4 | % bar 1
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
    g4 r4 r4 r2.  | % bar 5
    R1.*3 | % bar 6
    r4 g4\p g4 c,4 a'4 a4 | % bar 9
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 10
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 11
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 12
    g4 r4 g'8(   f8) es8( d8) c4 a'8(   g8) | % bar 13
    fis8( e8) d4 bes'8( a8) g8( f8) es8( d8) c8(   bes8) | % bar 14
    c2.~  c2.~  | % bar 15
    c8 fis,8 a8 d8 fis8 fis,8 bes4 a4.\trill g8 | % bar 16
    g4 g4\f g4 c,4 a'4 a4 | % bar 17
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
    g4 r4 r4 r4 cis4 cis4 | % bar 21
    d4 r4 r4 r4 g4 g4 | % bar 22
    e4 r4 r4 r4 d4 d4 | % bar 23
    g,4 r4 r4 r4 e'4 e4 | % bar 24
    a,4 r4 r4 r4 f'4 f4 | % bar 25
    bes,4 r4 r4 r4 a4 a4 | % bar 26
    d,4 d'4 d4 g,4 g'4 g4 | % bar 27
    cis,8 bes'8 g8 e8 cis8 e8 a,8 cis8 e8 g8 bes8 g8 | % bar 28
    e8 g8 e8 cis8 a8 cis8 f8 d8 a4 a4 | % bar 29
    a4 d4 g4 c,4 f4 c4 | % bar 30
    bes4 bes4 es4 a,4 d4 a4 | % bar 31
    g4 g'4 c4 f,4 bes4 f4 | % bar 32
    es4 as,4 c4 f,4 g4 g'4 | % bar 33
    g4 c,4 bes?4 as4 b4 b4 | % bar 34
    es,4 c4 es4 f4 d4 f4 | % bar 35
    g4 b4 g4 c4 bes4 as4 | % bar 36
    g4 r4 es'4 d4 r4 f4 | % bar 37
    g4 r4 g4 f4 r4 r4 | % bar 38
    r4 d8(   es8)  d8(  es8) f2.~  | % bar 39
    f8 as8 g8(   f8) es8(   d8) es8(   d8) es8(  f8)  g8(   f8) | % bar 40
    es4 r4 r4 r4 d4\p d4 | % bar 41
    g,2. r4 f'4 f4 | % bar 42
    bes,2. r4 a'4 a4 | % bar 43
    d,2. r4 c'4 c4 | % bar 44
    f,2.~  f2 f4 | % bar 45
    es2 es4 d2 d4 | % bar 46
    c4.(   d8) c8( d8) es2.~  | % bar 47
    es4 c8(   d8) c8(   d8) es2~  es8 g8 | % bar 48
    f8( g8) f4 f4 g2. | % bar 49
    f2. fis2 d4 | % bar 50
    e2 d8 g8 f8(   e8) e4 a,4 | % bar 51
    a4 g4\f g4 c,4 a'4 a4 | % bar 52
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
    g4 r4 r4 r2. | % bar 56
    R1.*3 | % bar 57
    r4 g4\p g4 c,4 a'4 a4 | % bar 60
    c,4 bes'4 bes4 es,4 c'4 c4 | % bar 61
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 62
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 63
    g4 r4 g'8(   f8) es8(   d8) c4 a'8( g8) | % bar 64
    fis8(   e8) d4 bes'8(   a8) g8(   f8) es8(   d8) c8(   bes8) | % bar 65
    c2.~  c2.~  | % bar 66
    c8 fis,8 a8 d8 fis8 fis,8 bes4 a4.\trill g8 | % bar 67
    g4 g4\f g4 c,4 a'4 a4 | % bar 68
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
    a8 c8 a8 fis8 d8 fis8 bes g d'4 d,4 | % bar 71
    g4 r4 r4 r2. | % bar 72
}
\mvtItimeLine
>>

mvtIvlaIV = \relative c' <<
{
    \key bes \major
    r4 g4 g4 c,4 a'4 a4 | % bar 1
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
    g4 r4 r4 r2.  | % bar 5
    R1.*3 | % bar 6
    r4 g4\p g4 c,4 a'4 a4 | % bar 9
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 10
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 11
    a8 c8 a8 fis8 d8 fis8 bes g d'4 d,4 | % bar 12
    g4 bes4 bes4 c4 c4 c4 | % bar 13
    d4 d4 d4 es4 es4 es4 | % bar 14
    es2.~  es2.~  | % bar 15
    es8 d8 c8 a8 fis8 a8 g8 d8 d4 d4 | % bar 16
    d4 g4\f g4 c,4 a'4 a4 | % bar 17
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
    g4 r4 r4 r4 a4 a4 | % bar 21
    a4 r4 r4 r4 g4 bes4 | % bar 22
    a4 r4 r4 r4 d4 d4 | % bar 23
    g,4 r4 r4 r4 e'4 e4 | % bar 24
    a,4 r4 r4 r4 f'4 f4 | % bar 25
    bes,4 r4 r4 r4 a4 a4 | % bar 26
    d,4 d'4 d4 g,4 g'4 g4 | % bar 27
    cis,8 bes'8 g8 e8 cis8 e8 a,8 cis8 e8 g8 bes8 g8 | % bar 28
    e8 g8 e8 cis8 a8 cis8 f8 bes,8 a4 e4 | % bar 29
    f4 d'4 g4 c,4 c4 a4 | % bar 30
    f4 bes4 es4 a,4 a4 fis4 | % bar 31
    d4 g'4 c4 f,4 f4 d4 | % bar 32
    bes4 as4 c4 f,4 g4 b4 | % bar 33
    g4 c4 bes4 as4 b4 b4 | % bar 34
    es,4 c4 es4 f4 d4 f4 | % bar 35
    g4 b4 g4 c4 bes4 as4 | % bar 36
    g4 r4 c4 as4 r4 d4 | % bar 37
    b4 r4 c4 f,4 r4 r4 | % bar 38
    r4 b8(   c8) b8( c8) d2.~  | % bar 39
    d8 c8 b8(   d8)  c8(  b8) c8 as8 g4 g4 | % bar 40
    g4 c4\p c4 fis,2. | % bar 41
    r4 es'4 es4 a,2. | % bar 42
    r4 g'4 g4 c,2. | % bar 43
    r4 bes'4 bes4 es,2.~  | % bar 44
    es2. d2.~  | % bar 45
    d4 c2~  c4 bes2~ | % bar 46
    bes4 a8( bes8) a8( bes8) c2.~  | % bar 47
    c4 a8( bes) a( bes)  a2~  a8 c8 | % bar 48
    d8( c8) d8(   es8) f8(   d8) c2.~  | % bar 49
    c2. d2 bes4 | % bar 50
    e,4 a4. g8 f8(   e8) a4 e4 | % bar 51
    fis4 g4\f g4 c,4 a'4 a4 | % bar 52
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
    g4 r4 r4 r2. | % bar 56
    R1.*3 | % bar 57
    r4 g4\p g4 c,4 a'4 a4 | % bar 60
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 61
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 62
    a8 c8 a8 fis8 d8 fis8 bes g d'4 d,4 | % bar 63
    g4 bes4 bes4 c4 c4 c4 | % bar 64
    d4 d4 d4 es4 es4 es4 | % bar 65
    es2.~  es2.~  | % bar 66
    es8 d8 c8 a8 fis8 a8 g8 d8 d4 d4 | % bar 67
    d4 g4\f g4 c,4 a'4 a4 | % bar 68
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
    a8 c8 a8 fis8 d8 fis8 bes g d'4 d,4 | % bar 71
    g4 r4 r4 r2. | % bar 72
}
\mvtItimeLine
>>

mvtIfag = \relative c' <<
{
    \key bes \major
    \clef F
    r4 g4 g4 c,4 a'4 a4 | % bar 1
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
    g4 r4 r4 r2. | % bar 5
    R1.*3 | % bar 6
    r4 g4\p g4 c,4 a'4 a4 | % bar 9
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 10
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 11
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 12
    g4 g,4 g4 c,4 a'4 a4 | % bar 13
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 14
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 bes8 | % bar 15
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 16
    g4 g'4\f g4 c,4 a'4 a4 | % bar 17
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
    g,4 r4 r4 r4 a'4 a4 | % bar 21
    d,4 r4 r4 r4 e4 e4 | % bar 22
    a,4 r4 r4 r4 d4 f4 | % bar 23
    g4 r4 r4 r4 c,4 e4 | % bar 24
    f4 r4 r4 r4 bes,4 d4 | % bar 25
    e4 r4 r4 r4 a,4 cis4 | % bar 26
    d4 g8( f8) e8( d8) e8( f8) g8(   a8) bes8(   g8) | % bar 27
    a4 a,4 a4 a2 r4 | % bar 28
    r4 a4 a4 d8 g8 a4 a,4 | % bar 29
    d,4 r4 r4 r4 f'4 f4 | % bar 30
    bes,4 r4 r4 r4 d4 d4 | % bar 31
    g,4 r4 r4 r4 bes4 bes4 | % bar 32
    es,4 r4 r4 r4 g4 g4 | % bar 33
    c,4 r4 r4 r2. | % bar 34
    R1.*2 | % bar 35
    r4 c'4 c4 f,4 d'4 d4 | % bar 37
    g,4 es'4 es4 as,4 f'4 f4 | % bar 38
    b,8 as'8 f8 d8 b8 d8 g,8 b8 d8 f8 as8 f8 | % bar 39
    d8 f8 d8 b8 g8 b8 es8 c8 g'4 g,4 | % bar 40
    c,4 r4 r4 r2. | % bar 41
    R1.*3 | % bar 42
    r2. r4 bes'4\p bes4 | % bar 45
    es,4 c'4 c4 f,4 d'4 d4 | % bar 46
    g,4 es'4 es4 a,8 g'8 es8 c8 a8 c8 | % bar 47
    f,8 a8 c8 es8 g8 es8 c8 es8 c8 a8 f8 a8 | % bar 48
    d8 bes8 f'4 f,4 e2. | % bar 49
    es2. d2. | % bar 50
    cis4. cis8 d8 e8 f8 g8 a4 a4 | % bar 51
    d,4 g'4\f g4 c,4 a'4 a4 | % bar 52
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
    g4 r4 r4 r2. | % bar 56
    R1.*3 | % bar 57
    r4 g4\p g4 c,4 a'4 a4 | % bar 60
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 61
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 62
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 63
    g4 g,4 g4 c,4 a'4 a4 | % bar 64
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 65
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 66
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 67
    g4 g'4\f g4 c,4 a'4 a4 | % bar 68
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 71
    g,4 r4 r4 r2. | % bar 72
}
\mvtItimeLine
>>

mvtIvc = \relative c' <<
{
    \key bes \major
    \clef F
    r4 g4 g4 c,4 a'4 a4 | % bar 1
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
    g4 es4 d4 c4 d4 d,4 | % bar 5
    g4 g'4 f4 es4 f4 f,4 | % bar 6
    bes4 g4 bes4 c4 a4 c4 | % bar 7
    d4 fis4 d4 g4 f4 es4 | % bar 8
    d4 g4\p g4 c,4 a'4 a4 | % bar 9
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 10
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 11
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 12
    g,4 g'4 g4 c,4 a'4 a4 | % bar 13
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 14
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 15
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 16
    g,4 g'4\f g4 c,4 a'4 a4 | % bar 17
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
    g,4 g'4 g4 cis,4 a'4 a4 | % bar 21
    d,4 d'4 d4 g,4 e'4 e4 | % bar 22
    a,4 a,4 cis4 d4 d'4 f,4 | % bar 23
    g4 g,4 bes4 c4 c'4 e,4 | % bar 24
    f4 f,4 a4 bes4 bes'4 d,4 | % bar 25
    e4 e,4 g4 a4 a'4 cis,4 | % bar 26
    d4 g8(   f8) e8( d8) e8(   f8) g8( a8) bes8( g8) | % bar 27
    a4 a,4 a4 a2 r4 | % bar 28
    r4 a4 a4 d8 g8 a4 a,4 | % bar 29
    d,4 r4 r4 r4 f'4 f4 | % bar 30
    bes,4 r4 r4 r4 d4 d4 | % bar 31
    g,4 r4 r4 r4 bes4 bes4 | % bar 32
    es,4 r4 r4 r4 g4 g4 | % bar 33
    c,4 r4 r4 r2. | % bar 34
    R1.*2 | % bar 35
    r4 c' c f, d' d | % bar 37
    g,4 es'4 es4 as,4 f'4 f4 | % bar 38
    b,8 as'8 f8 d8 b8 d8 g,8 b8 d8 f8 as8 f8 | % bar 39
    d8 f8 d8 b8 g8 b8 es8 c8 g'4 g,4 | % bar 40
    c,4 r4 r4 r2. | % bar 41
    R1.*3 | % bar 42
    r4 f'4\p f4 bes,4 bes4 bes4 | % bar 45
    es,4 c'4 c4 f,4 d'4 d4 | % bar 46
    g,4 es'4 es4 a,8 g'8 es8 c8 a8 c8 | % bar 47
    f,8 a8 c8 es8 g8 es8 c8 es8 c8 a8 f8 a8 | % bar 48
    d8 bes8 f'4 f,4 e2. | % bar 49
    es2. d2. | % bar 50
    cis4. cis8 d8 e8 f8 g8 a4 a4 | % bar 51
    d,4 g'4\f g4 c,4 a'4 a4 | % bar 52
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
    g4 es4 d4 c4 d4 d,4 | % bar 56
    g4 g'4 f4 es4 f4 f,4 | % bar 57
    bes4 g4 bes4 c4 a4 c4 | % bar 58
    d4 fis4 d4 g4 f4 es4 | % bar 59
    d4 g4\p g4 c,4 a'4 a4 | % bar 60
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 61
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 62
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 63
    g,4 g'4 g4 c,4 a'4 a4 | % bar 64
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 65
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 66
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 67
    g,4 g'4\f g4 c,4 a'4 a4 | % bar 68
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 71
    g,4 r4 r4 r2. | % bar 72
}
\mvtItimeLine
>>

mvtIbasso = \relative c' <<
{
    \key bes \major
    \clef F
    r4 g4^"tasto solo" g4 c,4 a'4 a4 | % bar 1
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 2
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 3
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 4
    g4 es4 d4 c4 d4 d,4 | % bar 5
    g4 g'4 f4 es4 f4 f,4 | % bar 6
    bes4 g4 bes4 c4 a4 c4 | % bar 7
    d4 fis4 d4 g4 f4 es4 | % bar 8
    d4 g4\p g4 c,4 a'4 a4 | % bar 9
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 10
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 11
    a8 c8 a8 fis8 d8 fis8 b g d'4 d,4 | % bar 12
    g4 g,4 g4 c,4 a'4 a4 | % bar 13
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 14
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 15
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 16
    g4 g'4\f^"tasto solo" g4 c,4 a'4 a4 | % bar 17
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 18
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 19
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 20
    g,4 g'4 g4 cis,4 a'4 a4 | % bar 21
    d,4 d'4 d4 g,4 e4 e4 | % bar 22
    a4 a,4 cis4 d4 d'4 f,4 | % bar 23
    g4 g,4 bes4 c4 c'4 e,4 | % bar 24
    f4 f,4 a4 bes4 bes'4 d,4 | % bar 25
    e4 e,4 g4 a4 a'4 cis,4 | % bar 26
    d4 g8(   f8) e8( d8) e8(   f8) g8( a8) bes8(   g8) | % bar 27
    a4 a,4 a4 a2 r4 | % bar 28
    r4 a4 a4 d8 g8 a4 a,4 | % bar 29
    d,4 r4 r4 r4 f'4 f4 | % bar 30
    bes,4 r4 r4 r4 d4 d4 | % bar 31
    g,4 r4 r4 r4 bes4 bes4 | % bar 32
    es,4 r4 r4 r4 g4 g4 | % bar 33
    c,4 r4 r4 r2. | % bar 34
    R1.*2 | % bar 35
    r4 c'4 c4 f,4 d'4 d4 | % bar 37
    g,4 es'4 es4 as,4 f'4 f4 | % bar 38
    b,8 as'8 f8 d8 b8 d8 g,8 b8 d8 f8 as8 f8 | % bar 39
    d8 f8 d8 b8 g8 b8 es8 c8 g'4 g,4 | % bar 40
    c4 r4 r4 r2. | % bar 41
    R1.*3 | % bar 42
    r2. r4 bes4\p bes4 | % bar 45
    es,4 c'4 c4 f,4 d'4 d4 | % bar 46
    g,4 es'4 es4 a,8 g'8 es8 c8 a8 c8 | % bar 47
    f,8 a8 c8 es8 g8 es8 c8 es8 c8 a8 f8 a8 | % bar 48
    d8 bes8 f'4 f,4 e2. | % bar 49
    es2. d2. | % bar 50
    cis4. cis8 d8 e8 f8 g8 a4 a4 | % bar 51
    d,4 g'4\f^"tasto solo" g4 c,4 a'4 a4 | % bar 52
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 53
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 54
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 55
    g4 es4 d4 c4 d4 d,4 | % bar 56
    g4 g'4 f4 es4 f4 f,4 | % bar 57
    bes4 g4 bes4 c4 a4 c4 | % bar 58
    d4 fis4 d4 g4 f4 es4 | % bar 59
    d4 g4\p g4 c,4 a'4 a4 | % bar 60
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 61
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 62
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 63
    g4 g,4 g4 c,4 a'4 a4 | % bar 64
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 65
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 66
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 67
    g4 g'4\f^"tasto solo" g4 c,4 a'4 a4 | % bar 68
    d,4 bes'4 bes4 es,4 c'4 c4 | % bar 69
    fis,8 es'8 c8 a8 fis8 a8 d,8 fis8 a8 c8 es8 c8 | % bar 70
    a8 c8 a8 fis8 d8 fis8 bes8 g8 d'4 d,4 | % bar 71
    g,4 r4 r4 r2. | % bar 72
}
\mvtItimeLine
>>

mvtIfigs = \figuremode {
    % p3
    s1.*4^"tasto solo" |
    s2. <6 5>4 <_+>2 |

    <9>4 <8> s <6 5>2. |
    <9>4 s <6> <9> <5-> <6>8 <5> |
    <9- _+>4 <6>8 <5> <6> <5> s4 <5> <6> |
    <_+>2. <7>4 <8> s |
    <6 5> <6> s <6 4 3> <6 4+> s |

    % p4
    <7- 5>2. <7 _+> |
    <6\\> <6>4 <6 _+> <5> |
    s <6> <5> <6> <6\\ 4 3> s |
    <6 _+> <6> s <6> <6> s |

    <7- 5>2. <7 _+> |
    <6\\> <6> |
    s4 s2^"tasto solo" s2. |
    s1.*3 |

    % p5
    s2. <7->4 <8 _+> s |
    <9!> <8> <7> <7> <7 5-> s |
    <_+> s <6> s s <6> |
    <9> <8> <6> <7 _!> s <6 5-> |

    <9> <8> <6> <9> <8> <6> |
    <7> s2 <7 _+>4 s <6 5> |
    s2. <7 5->2 <6 4! 2+>8 <7 5> |
    <7 _+>4 s2 s2. |

    % p6
    s4 <7 _+> s s8 <7 5> <_+>4 s |
    s1. |
    s2. s4 <_+> s |
    s1. |
    s2. s4 <_!> s |

    s1.*3 |
    s2. <7 _->4 <8> s |
    <6 5 _!> <6> s <6 4 3> <6 4!> s |

    % p7
    <7- 5>2. <7 _!> |
    <6!> <6>4 <6 _!> <5> |
    s1.*5 |

    <7>4 <8> s <6 5> <6> s |

    % p8
    <6 4 3>4 <6 4 3> s <7 5>2. |
    <7> s |
    <6> <6 5-> |
    <6 4 2> <7 5 _+>2 <6 4>4 |

    <6 5>2 s8 <6\\> <6> <6! 5> <_+>4 s |
    <_+> s2^"tasto solo" s2. |
    s1.*3 |

    % p9
    s2. <6 5>4 <_+> s |
    <9> <8> s <6 5> s s |
    <9> s <6> <9> <5-> <6>8 <5> |
    <9- _+>4 <6>8 <5> <6> <5> s4 <5> <6> |

    <_+> s s <7> <8> s |
    <6 5> <6> s <6 4 3> <6 4+> s |
    <7- 5>2. <7 _+> |
    <6\\> <6>4 <6 _+> <5> |

    % p10
    s <6> <5> <6> <6\\ 4 3> s |
    <6 _+> <6> s <6> <6> s |
    <7- 5>2. <7 _+> |
    <6\\> <6> |
    s4 s2^"tasto solo" s2. |
    s1.*4
}
