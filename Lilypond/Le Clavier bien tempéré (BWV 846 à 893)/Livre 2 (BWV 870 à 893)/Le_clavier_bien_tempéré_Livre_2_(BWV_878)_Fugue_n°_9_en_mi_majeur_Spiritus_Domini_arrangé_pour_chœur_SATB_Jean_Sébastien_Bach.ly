\version "2.24.4"
#(set-global-staff-size 18)
\header {
  subsubtitle = "Spiritus Domini"
  subtitle = "Le clavier bien tempéré - Livre 2"
  title = "Fugue n° 9"
  opus = "BWV 878"
  composer = "Jean Sébastien Bach (1685-1750)"
  piece = "Arrangement pour chœur SATB"
  tagline = ##f
}
global = {
\time 2/1
\set Staff.timeSignatureFraction = 2/2
\tempo Grave 2 = 48
\dynamicUp
\key e \major
}
Soprano = \relative c'' {
R1*8
r1 b |
cis2 e dis cis |
  b1 ~ b4 a8( gis) a2 ~ |
a2 gis( fis e) |
dis r2 r1 |
R1*2 |
e1 fis2 a |
gis fis4 fis eis4 fis gis a |
b4 fis b1 a2 |
gis1 ~ gis2. a8( b) |
cis4 bis cis dis( bis) cis2 bis4 |
cis1 r1 |
b1 cis2 e |
dis cis b cis |
fis,4( dis) gis2. fis8( e fis2 ~ |
fis4) e8( dis) e4 fis8( e) dis4 b' eis,2 ~ |
eis4 fis2 eis4 cis'2 b ~ |
b4 a2 gis2 fis( eis4) |
fis1 gis4 a b2 ~ |
b4 a gis2 fis e4( fis) |
gis2.( a4 gis) fis e2 |
r1. gis2 |
a4 cis b a gis2 ais |
b1 ~ b2. ais4 |
b4 gis a b cis dis e2 ~ |
e2. dis4( e) b2( ais4) |
b2 r4 fis'4 b, gis a( b) |
cis2 b a gis |
fis4( e') dis cis b2 ais ~ |
ais4 gis8( fisis) gis2( ~ gis2. fisis4) |
gis2 r4 b4 gis( e) fis( gis) |
a( b) cis( dis) e8( b e2 dis4 ~ |
dis) cis8( b cis2) b4 r e2 |
fis2 a gis fis |
e2 dis cis b( ~ |
b4 cis b a) gis2 r |
r e' dis cis |
b a gis8( fis gis a b4 a) |
gis2( fis) e1\fermata
\bar "|."
}
Alto = \relative c' {
R1*6
e1 fis2 a |
gis fis e r4 b |
e4( fis) gis( ais) b8( fis) b2 a4 ~ |
a gis8( fis) gis2 cis,2.( dis8 e) |
dis2( e2. dis4) cis2 |
<fis, \parenthesize b> b cis e |
dis2 cis b4 e2 dis4 ~ |
dis4 cis2 b8( ais b4) fis'2 e8( dis) |
e2.( dis4) cis1 |
b4 cis dis e fis cis fis2 ~ |
fis e dis1 |
cis4 dis e fis gis2 fis |
e1 fis2 a |
gis fis e4 cis gis'2 ~ |
gis4 fis8( eis) fis2. e8( dis) e4 fis8( e) |
dis2. <gis, \parenthesize gis'>4 a2. ais4 |
b2. ais4 b2 d |
cis1. gis'2 |
cis, b a gis |
a4( b) cis1 dis4 eis |
fis2.( e4) dis2 cis ~ |
cis4 d8( cis) bis2 cis4 dis <gis, \parenthesize gis'>2 |
dis'4 e8( dis) cis4 a' bis, cis2( b4) |
cis2 dis e4 gis fis e |
dis a' gis fis e( gis) fis e |
dis( e) fis gis a2.( gis4) |
fis4( e) fis2 e1 |
fis2 a gis fis |
e4 a2 gis4 fis d' cis b |
a4 fisis gis ais gis( fis) e2 |
dis2 cisis dis1 |
b2 b cis e |
dis cis b b' |
gis4 e gis ais b8( fis) b2 a4 ~ |
a4 dis,( e fis gis) cis( a) b |
gis4 a( fis gis e) fis( dis) e( ~ |
e dis8 cis) dis2 r4 e8( fis gis4) ais |
b8( fis) b2 a4 ~ a8( dis, gis2) fis4 ~ |
fis8( b, e2) dis4 e r r e |
e2 dis b1\fermata
\bar "|."
}
Tenor = \relative c' {
\clef "G_8"
R1*2
r1 b |
cis2 e dis cis |
b2. b4 a b cis dis |
e8( b) e2 d4 e2 gis,4( fis) |
gis2 e2 fis1 ~ |
fis4 <b, \parenthesize b'> e2. cis4 fis2 ~ |
fis4 e8( fis gis4 a b8 fis) b2( ais4) |
b2 r2 e,1 |
fis2 a gis fis |
e4 a2 gis4 fis e8( dis) e4 fis |
gis a b8( fis) a4 gis2 fis ~ |
fis e dis4 eis fis2 |
cis4 dis e fis gis dis gis2 ~ |
gis2 fis2. e4 dis2 |
cis4 gis' cis2. b8( ais) b2 ~ |
b4 a8( gis a4) b8( a gis2.) gis4 |
a2. ais4 b2. ais4 |
b4. a8( gis fis e dis) e2 r |
dis1 gis2 b |
a gis2. fis2 eis4 |
fis2 d cis1 ~ |
cis2. dis4( eis cis) gis'2 |
fis gis4 cis,2 bis4( cis) dis |
cis fis8( e dis1) e4 fis |
gis2. fis4 e2 dis |
e2 r r1 |
r2 b'2 cis4 e dis cis |
b d cis b a2 b4 b |
b2. a4 gis2 gis4 cis4 |
fis,4 dis e fis gis( b) cis( dis) |
gis, e fis gis a( b) cis2 ~ |
cis4 cis b ais( b) dis cis2 |
b2. ais8( gis ais4) b cis2 |
dis2 r2 e,1 |
fis2 a gis fis |
e r r r4 e |
dis4( b' cis dis) e8( b) e2 dis4 ~ |
dis8( gis, cis2) b4 ~ b8( e, a2) gis4 |
fis1 e4( gis cis) fis, ~ |
fis fis gis a b dis, e fis |
gis2 a b4 r r cis |
b2. a4 gis1\fermata
\bar "|."
}
Bass = \relative c {
\clef bass
e1 fis2 a |
gis fis e4( dis8[ cis] dis4) b |
e fis gis ais b8( fis) b2 a4 ~ |
a4 gis8( fis gis1 fis2) |
gis2( a4) b8( a gis4 fis e dis) |
cis1 b2 fis |
gis2. <e \parenthesize e'>4 a2. fis4 |
b\breve |
b2 r2 r1 |
r1 b1 |
cis2 e dis cis |
b1 b2 a |
gis2 gis fis4 gis a b |
cis gis cis1( b2) |
a1( gis) |
cis2 r4 cis d2. dis4 |
e2.( dis4) e2 cis |
fis2 e dis cis |
b2 b cis2 e |
dis cis b4 gis2 a8( b) |
cis2 b a gis |
fis b cis <cis, \parenthesize cis'> |
fis4( gis) a( fis) cis'2 b4 cis |
d( cis bis cis) fis,( gis) a2 |
gis1( ais4 bis) cis2( ~ |
cis4 b) a2 gis1 ~ |
gis2 fis <e \parenthesize e'>4( <cis \parenthesize cis'>) fis2 |
b r r fis' |
gis4 b a gis fis2 e |
b'2 b,2 cis4 e dis( cis) |
dis4 b cis dis e2. dis4 |
e4 cis dis eis fis2. eis4 |
fis4 dis eis fisis gis2.( fisis4) |
gis4 gis eis2 dis <dis, \parenthesize dis'> |
gis2 r2 r1 |
r1 b1 |
cis2 e dis cis |
b4 r r2 r1 |
R1*2 |
b1 cis2 e |
dis2 cis b a |
gis fis e4( fis) gis a |
b1 <e, \parenthesize e'>\fermata |
\bar "|."
}
Lyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
Al -- le -- lu -- ia,
et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
}
sopLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni. Et hoc quod con -- ti -- net o -- mni -- a,
sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a,
sci -- en -- ti -- am ha -- bet vo -- cis,
sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}
altLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum.
Et hoc quod con -- ti -- net o -- mni -- a,
et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am
ha -- bet vo -- cis, ha -- bet vo -- cis,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, con -- ti -- net o -- mni -- a,
sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia.
}
tenLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a, sci -- en -- ti -- am ha -- bet vo -- cis,
al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}
basLyrics = \lyricmode {
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni, al -- le -- lu -- ia.
Et hoc quod con -- ti -- net o -- mni -- a,
Et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum,
al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni re -- ple -- vit or -- bem ter -- ra -- rum
et hoc quod con -- ti -- net o -- mni -- a sci -- en -- ti -- am ha -- bet vo -- cis.
Al -- le -- lu -- ia.
Spi -- ri -- tus Do -- mi -- ni,
Spi -- ri -- tus Do -- mi -- ni,
al -- le -- lu -- ia, al -- le -- lu -- ia.
}
\score {
  <<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff {
			    \set Staff.instrumentName = "Soprano"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = sopVoice {
				\global
				\Soprano
			    }
			}
                        \new Lyrics = "sopmainlyrics" \lyricsto sopVoice \sopLyrics
			\new Staff = altStaff {
			    \set Staff.instrumentName = "Alto"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice {
				\global
				\Alto
			    }
			}
			\new Lyrics = "altmainlyrics" \lyricsto altVoice \altLyrics
			\new Staff = tenorStaff {
			    \set Staff.instrumentName = "Ténor"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenVoice {
				\global
				\Tenor
			    }
			}
			\new Lyrics = "tenmainlyrics" \lyricsto tenVoice \tenLyrics
			\new Staff = bassStaff {
			    \set Staff.instrumentName = "Basse"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice {
				\global
				\Bass
			    }
			}
			\new Lyrics = "basmainlyrics" \lyricsto basVoice \basLyrics
			>>
		}
  >>
  \layout {}
  \midi {
      \context {
      \Score
          tempoWholesPerMinute = #(ly:make-moment 48 2)
      }
  }
}
