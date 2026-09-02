\version "2.24.4"
#(set-global-staff-size 19)
\language "deutsch"
\header {
  title = "Prélude en do mineur"
  instrument = "transposé en ré pour Luth"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 999"
  tagline = ##f
}
global =  {
	\clef "treble_8"
	\key d \minor
	\time 3/4
}
melody =  \relative c' {
	\global
	\voiceOne
	r16 d f a f d f d r d r d |
	r d f a f d f d r d r d |
	r d g b g d g d r d r d |
	r d g b g d g d r d r d |
	r cis e g e cis e cis r cis r cis |
	r cis e g e cis e cis r cis r cis |
	r a d f d a d a r a r a |
	r a d f d a d a r a r a |
	r a d f d a d a r a r a |
	r a d f d a d a r a r a |
	r h d f d h d h r h r h |
	r h d f d h d h r h r h |
	r h c e c h c h r h r h |
	r a c e c a c a r a r a |
	r c e a e c e c r c r c |
	r h f' a f h, f' h, r h r h |
	r h d gis d h d h r h r h |
	r h d gis d h d h r h r h |
	r c e a e c e c r c r c |
	r d gis h gis d gis d r d r d |
	r e a c a e a e r e r e |
	r e gis d' gis, e gis e r e r e |
	r dis a' c a dis, a' dis, r dis r dis |
	r d! f h f d f d r d r d |
	r c fis a fis c fis c r c r c |
	r h d a' d, h d h r h r h |
	r h d gis d h d h r h r h |
	r a c fis c a c a r a r a |
	r gis h f'! h, gis h gis r gis r gis |
	r a c e c a c a r a r a |
	r a h d h a h a r a r a |
	r gis h d h gis h gis r gis r gis |
	r gis h d h gis h gis r gis r gis |
	r a h d cis a cis a r a r a |
	r h d gis d h d h r h r h |
	r d gis h gis d gis d r d r d |
	r cis e a e cis e cis r cis r cis |
	r cis e g e cis e cis r cis r cis |
	r a d f d a d a r a r a |
	r gis d' f d gis, d' gis, r gis r gis |
	r gis d' f d gis, d' gis, r gis r gis |
	r a cis e cis a cis e f d h gis' |
	<a, cis a'>4^\fermata r r \bar "|."
}
bass =  \relative c {
	\global
	\voiceTwo
	d4 r a'8 f |
	d4 r a'8 f |
	d4 r b'8 g |
	d4 r b'8 g |
	d4 r b'8 g |
	d4 r b'8 g |
	d4 r f8 d |
	c4 r f8 d |
	b4 r f'8 d |
	a4 r f'8 d |
	gis,4 r f'8 d |
	gis,4 r gis'8 e |
	a,4 r e'8 c |
	a4 r c8 a |
	f4 r a'8 f |
	d4 r d8 h |
	e,4 r e'8 h |
	e,4 r e'8 h |
	e,4 r e'8 c |
	e,4 r f'8 d |
	e,4 r a'8 e |
	e,4 r h''8 gis |
	e,4 r a'8 f |
	e,4 r gis'8 e |
	e,4 r fis'8 dis |
	e,4 r f'!8 d! |
	e,4 r e'8 h |
	e,4 r dis'8 c |
	e,4 r d'!8 h |
	e,4 r c'8 a |
	e4 r f'8 d |
	e,4 r e'8 h |
	a4 r f'8 d |
	a4 r e'8 cis |
	a4 r f'8 d |
	a4 r f'8 d |
	a4 r a'8 e |
	a,4 r b'8 g |
	a,4 r f'8 d |
	a4 r f'8 d |
	a4 r f'8 d |
	a4 r r |
	<a e'>4_\fermata r r |
}
GuitarStaff = \context Staff <<
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\melody
	\bass
>>
\score {
	\GuitarStaff
  \midi {\tempo 4 = 80}
	\layout {}
}
