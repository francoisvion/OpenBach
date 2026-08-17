\version "2.24.4"
\header {
  title = "Toccata et fugue en ré mineur"
  opus = "BWV 565"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
staffChurchOrgan = <<
	\new PianoStaff {
		\set PianoStaff.midiInstrument = #"church organ"
		\set PianoStaff.instrumentName = #"Manual"
		\set Score.connectArpeggios = ##t
		<<
			\time 4/4
			\context Staff = "RH" {
				\clef treble
				\key d \minor
				<< {
						\relative c''' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					\tempo Adagio
					a8 \fermata \prall b,32 \rest g'64 f e d cis32 d16 b \rest b8 \rest \fermata
					a \fermata \prall b32 \rest e, f cis d16 b' \rest b8 \rest \fermata \noBreak
					s2. <bes, cis e>4 ~ \arpeggio \break
					<bes cis e>4 d b'4 \rest b8 \rest b16 \rest cis,16 \noBreak
					\tempo Prestissimo
					\scaleDurations #'(2 . 3) {
					d16[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] \noBreak
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b \rest \fermata b4 \rest
					b8 \rest b16 \rest cis \break
					\scaleDurations #'(2 . 3) {
					d[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] \noBreak
					\stemDown
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b, \rest \fermata b4 \rest b8 \rest b16 \rest a' \break
					\scaleDurations #'(2 . 3) {
					g[ bes e,] g[ bes e,] f[ a d,] f[ a d,] e[ g c,] e[ g c,] d[ f bes,] d[ f bes,] \noBreak
					\stemDown
					c[ e a,] c[ e a,] bes[ d g,] bes[ d g,]
					\stemUp a[ c f,] a[ c f,] g[ bes e,] g[ bes e,] \pageBreak
					\tieDown
					f[ a d,] f[ a d,] e[ g cis,] e[ g cis,] } b'4 \rest
					\stemDown <cis, e g> ~ \noBreak
					<cis e g> s2. \noBreak
					\stemUp
					f4 \fermata b8 \rest b16 \rest a
					\stemDown
					d e f d e f g e \break
					f g a f g a bes g a f g e f d e cis \noBreak
					\stemUp
					d a bes g a f g e f d g e f d e cis \noBreak
					\clef bass
					\stemDown
					d a bes g a f g e f d g e f d e cis \break
					d8
					\stemUp
					\clef treble
					s32 f' bes f s e a e s d g d s16 e32 a s16 <f bes> s <e a> s <d g> \noBreak
					<e a>8 s32 f bes f s e a e s d g d s16 e32 a s16 <bes f> s <a e> s <g d> \break
					<e a>4 ~ a32[ g f e]
					\stemDown
					d[ cis b cis] a[ b cis d]
					\stemUp
					e[ f g a g f e f]
					\stemDown
					d[ f]
					\stemUp
					a[ cis] \noBreak
					d \noBeam
					\stemDown
					a[ b cis] d \noBeam
					\stemUp
					e[ f64 g a32 bes8] s16 <bes f> s <a e> s <g d> <a e cis>8 s32 f bes f \break
					s e a e s d g d s16 e32 a s16 <bes f> s <a e> s <g d> <cis, e a>8 <f, b> \noBreak
					cis'8. b16
					\stemDown
					a[ cis]
					\stemUp
					e32[ g bes16]
					\stemDown
					a32[ g f e f e d cis] d[ c bes a]
					\stemUp
					g[ f e d] \pageBreak
					<cis' e>2 ~
					\scaleDurations #'(2 . 3) { \tempo Prestissimo
					cis16[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] \noBreak
					cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] g[ bes g] e[ g e] g[ bes g] e[ g bes] \break
					g[ bes g] e[ g e] g[ bes g] e[ g e] cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] \noBreak
					cis[ e cis] bes[ cis bes] cis[ e cis] bes[ cis bes] cis[ e cis] e[ g e] cis[ e cis] e[ g e] \break
					cis[ e cis] e[ g e] cis[ e cis] e[ g e] g[ bes g] bes[ g bes] g[ bes g] bes[ g bes] \noBreak
					cis[ bes cis] e[ cis e] cis[ e cis] e[ cis e] } <a, cis e a>4 <a d f a> \break
					<bes d g> b \rest <a cis e g> bes \rest \noBreak
					bes \rest bes8 \rest bes16 \rest <a cis> <f a d>8 f e4 \noBreak
					d2 b' \rest \break
					R1 \noBreak
					b2 \rest b16 \rest d c d bes d a d \noBreak
					g, d' fis, d' g, d' a d bes d d, d' e, d' fis, d' \break
					g, d' fis, d' g, d' a d bes8-. d-. bes-. d-. \noBreak
					ees g, ees' g, c a c a \noBreak
					d f, d' f, bes g bes g \pageBreak
					cis e, cis' e, a f a f \noBreak
					g cis, g' cis, f d f d \noBreak
					e bes e bes b'16 \rest
					\stemDown
					a' g a f a e a \break
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					d, a' cis, a' d, a' e a f a e a d, a' c, a' \noBreak
					bes, a' c, a' d, g bes, g' e g d g c, g' bes, g' \break
					a, g' bes, g' c, f a, f' d f c f bes, f' a, f' \noBreak
					g, f' a, f' bes, e g, e' cis e bes e a, e' g, e' \noBreak
					\stemUp
					f, e' g, e' a, d f, d' e, e' e, e' f, d' f, d' \break
					bes cis bes cis a d f, d' e, e' e, e' f, d' f, d' \noBreak
					b16 \rest d cis d b d cis b cis4 r \noBreak
					r16 d cis d f d cis b cis4 e ~ \break
					e8[ d] ~ d[ cis] c4 bes \noBreak
					a a g g \noBreak
					fis8 a4 ees'8 d4 r8 g ~ \pageBreak
					g fis g4 bes,8 d d d \noBreak
					d d d d d d d d \noBreak
					d16 g f g e f d e c a' g a f g e f \break
					d bes' a bes g a f g e c' bes c a bes g a \noBreak
					f ees d c d c bes a bes d bes a g bes g f \noBreak
					e f g a bes d c bes a4 c8 bes \break
					a g a bes c e, f g \noBreak
					a g a bes c16 bes a g f \noBeam
					\stemDown
					ees[ d c] \noBreak
					\stemUp
					d' c bes a g \noBeam
					\stemDown
					f[ e d]
					\stemUp
					e' d c bes a \noBeam
					\stemDown
					g[ f e] \break
					\stemUp
					f' e d c bes \noBeam
					\stemDown
					a[ g f]
					\stemUp
					g' f e d c \noBeam
					\stemDown
					bes[ a g] \noBreak
					\stemUp
					a' f e f c f e f a f e f c f e f \noBreak
					g e d e c e d e g e d e c e d e \break
					a f e f c f e f a f e f c f e f \noBreak
					g e d e c e d e g e d e c e d e \noBreak
					f g f e d \noBeam
					\stemDown
					c[ b a] b g b d
					\stemUp
					f a f d \pageBreak
					\stemDown
					b g b d
					\stemUp
					f a f d
					\stemDown
					bes g bes c
					\stemUp
					e g e c \noBreak
					\stemDown
					bes g bes c
					\stemUp
					e g e c
					\stemDown
					a f a c
					\stemUp
					d f d bes \noBreak
					\stemDown
					a f a c
					\stemUp
					d f d bes
					\stemDown
					g e g bes
					\stemUp
					cis e cis bes \break
					\stemDown
					g e g bes
					\stemUp
					cis e cis bes r a' g a f a e a \noBreak
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					d, a' cis, a' d,8[ e] d[ c] bes[ a] \break
					bes16 a g f e d cis b s2 |
					s1*11
					s4 b'16 \rest f16 e d a' s8. b16 \rest
					\stemDown
					e d cis |
					d ees32 d c bes a g
					\stemUp
					fis8[ a] ~ a g c b |
					\stemDown
					ees d ees b c b c d |
					ees d ees f g2 \startTrillSpan ~ |
					g1 ~ |
					g2 ~ g16 \stopTrillSpan g f g ees f d ees |
					c f ees f d ees c d bes ees d ees c d bes c |
					a d c d bes c a bes
					\stemUp
					g bes a bes c bes a g |
					fis8 a d16 g, c fis, bes g d' a bes g a fis |
					g d' fis, d' g, d' a d bes g d' a bes g c a |
					\stemDown
					d c bes a
					\stemUp
					bes a bes g
					\stemDown
					a bes c d ees d c d |
					\stemUp
					bes c a bes g8 b
					\stemDown
					c16 ees f g aes g f g |
					ees f d ees c8[ bes]
					\stemUp
					a[ bes] ~ bes[ a] ~ |
					a[ g] ~ g[ fis] f[ ees] ~ ees[ d16 bes'] |
					a16 bes a g
					\stemDown
					fis ees' d c bes a' g fis g8. f16 |
					\stemUp
					ees f d ees cis4 d c |
					bes a8[ cis] d[ e] f4 |
					e2 d4. f8 |
					g d cis d e d cis d |
					e d cis d e g f d |
					bes e d d cis4 d8 e |
					\stemDown
					f e f cis d cis d e |
					f e f g a16 bes g a f g e f |
					d a cis a d a e' a, f' a, e' a, f' a, g' a, |
					a' a, e' a, f' a, g' a, a'4 b, \rest |
					s4.. s32 b1*17/32 \rest |
					b2 \rest b16 \rest e d cis d8 b16 \rest f' |
					e f g a bes a g a f8 e d16 e f ees |
					d c bes a
					\stemUp
					g a bes c a4 b8 \rest
					\stemDown
					c ~ |
					c bes b \rest g' ees16 f d ees
					\stemUp
					c bes a g |
					a4 s2. |
					s1 |
					s4 c,16 ees c bes s4 c16 ees c bes |
					s4 g'16 bes g d s4 g16 bes g d |
					s4 fis16 a fis ees s4 fis16 a fis ees |
					d8 b' \rest d c bes4 c8 d |
					ees4 f8 g a4 f8 ees |
					d16 ees d c bes c bes a g c bes a g a g fis |
					g f e d cis8 e f16 g a b
					\stemDown
					cis d e f |
					g8 f16 e d8 cis d e f g |
					a cis, d e f e f d |
					\stemUp
					e d d cis d f e4 |
					<bes d>2 \fermata b32*1/2 \rest s64^\markup { \bold "Recitativo"}
					f'32[ g a] bes s8 c,32[ d ees] f s16. |
					s32 a,[ bes c] d s8 g,32[ a bes] c s8 f,32[ g a] bes s8 c,32[ d ees] f s16. \break \noPageBreak
					\change Staff = "LH" s32 a,[ bes c] d s8
					\change Staff = "RH" bes32[ c d] ees s8 c32[ d e] fis s8 fis32 g a
					<< { \stemDown bes8 \noBeam } \\ { \stemUp s32 c d g, } >> \noBreak
					\tieUp
					\stemUp
					<bes e>2^\markup { \bold "Adagissimo" } ~ <bes e>4 <a d> ~ \noBreak
					<b d>2 b2 \rest \break \noPageBreak
					b4 \rest b8 \rest <b d> << { a4. g16 f } \\ { \stemUp c'2 ~ } >> \noBreak
					c2 \fermata b32*1/2 \rest s64^\markup { \bold "Presto"}
					g32[ f g] e s8 a32[ g a] f s16. \break \noPageBreak
					s32 b[ a b] g s8 c32[ b c] s d c d s e d e s f e f s g[ f g] e s16. \break
					s32 d[ c d] b s8 c32[ b c] a s8 b32[ a b] s a g a s gis[ fis gis] e s16. \break
					s32 d c b s e d c s f e d s g f e s a g f s g a b c4^\markup { \bold "Adagio Vivave" } |
					cis8 s cis cis d s d d |
					b s b b c s c c |
					a s a a bes s bes bes |
					bes s bes bes a s a a ~ |
					a4^\markup { \bold "Molto Adagio" }  g2 f4 |
					e2 d ~ |
					d1 \fermata |
				} } \\ { \relative c'' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
				\shiftOn
					a8 \fermata \prall s32 g64 f e d cis32 d16 s8. s2 |
					s1
					s4 a s2 |
					s1*6
					\stemUp
					\tieUp
					s2. bes'4  ~ |
					bes ~ bes32[ a g f e] d[ cis b] cis16[ a cis] e32[ g] f8.^\trill e16 |
					\stemDown
					d4 s2. |
					s1*5
					cis4 s2. |
					s4 s8 d'16 s a s bes s e,8 \noBeam d'32 s16. |
					c32 s16. bes32 s16. a32 cis s16 d16 s a s bes s e,8
					\change Staff = "LH"
					<b d> |
					\change Staff = "RH"
					a'4 s2. bes2 s2 |
					s1*4
					s2 <cis, e>4 <d f> |
					<d g> s <cis e> s |
					\tieDown
					s4.. e16 d8[ d] ~ d[ cis] |
					s1*17
					\stemDown
					s2 r16 a' g a e g f e |
					f4 d a16 a' g a cis, g' f e |
					f4 e d8[ a'] ~ a[ g] ~ |
					g4 fis f ees ~ |
					ees8 d fis c' ~ c bes16 a bes8 bes |
					a4 d8 c bes a bes fis |
					g fis g a bes a bes fis |
					g16 bes a bes g a f g e c' bes c a bes g a |
					f d' c d bes c a bes g e' d e c d bes c |
					a8 f bes16 a g f g bes g f e g e d |
					c d e f g8 e f4 s4 |
					s1*2
					bes,8 s4. c8 s4. |
					d8 s4. e8 s4. |
					f8 s c' s f, s c' s |
					e, s c' s e, s c' s |
					f, s c' s f, s c' s |
					e, s c' s e, s c' s |
					d, s8 s2. |
					s1*5
					s2 d'8 a g fis |
					g s2.. |
					s1*26
					r4 r16 bes a g a4 fis |
					g16 f ees d cis8[ e] f[ g] s \stemUp d' ~ |
					\stemDown
					d4 cis a16 bes g a f8[ a] |
					g a g f g f e a |
					bes a g f a e' d a |
					g g a f s2 |
					s1*14
					s4 g8 fis g4 g8 b |
					c4 c8 e f4 bes,8 a |
					bes8 s4. s2 |
					s1*3
					s8 a bes a a d d c |
					f,2 s8 s32 a[ bes c] d s8 f,32[ g a] |
					bes s8 a32[ g f] ees s8 g32[ f ees] d s8
					\change Staff = "LH" a32[ bes c] d s8 f,32[ g a] |
					bes s8 c32[ bes a] g s8 d'32[ c bes] a s8
					\change Staff = "RH" ees'32[ d c] bes s8.. |
					\stemDown
					<e g>2 ~ <e g>4 f |
					<d f>2 s2 |
					s4. <e gis>8 \stemDown e2 |
					e s8 s32 e[ d e] c s8 f32[ e f] |
					d32 s8 g32[ f g] e s16. a32 s16. b32 s16. c32 s16. d32 s8 c32[ b c] |
					a32 s8 gis32[ fis gis] e s8 f32[ e f] d s16. c32 s16. b32 s8
					\change Staff = "LH"
					c32 b a |
					gis32 s16. a32 s16. b32 s16. c32 s16.
					\change Staff = "RH" d32 s16. e32 s16. e8 \rest <c e g> |
					<e a>8 \change Staff = "LH"
					a,32[ \change Staff= "RH" cis e] \stemUp a e8 \rest \stemDown <e a>
					<f a>8 \change Staff = "LH"
					a,32[ \change Staff= "RH" d f] \stemUp a e8 \rest \stemDown <f a> |
					<d g>8 \change Staff = "LH"
					g,32[ b \change Staff= "RH" d] \stemUp g e8 \rest \stemDown <d g>
					<e g>8 \change Staff = "LH"
					g,32[ \change Staff= "RH" c e] \stemUp g e8 \rest \stemDown <e g> |
					<c f>8 \change Staff = "LH"
					f,32[ a \change Staff= "RH" c] \stemUp f e8 \rest \stemDown <c f>
					<d f>8 \change Staff = "LH"
					f,32[ bes \change Staff= "RH" d] \stemUp f e8 \rest \stemDown <d f> |
					<e g>8 \change Staff = "LH"
					e,32[ g bes] \change Staff= "RH" \stemUp cis e8 \rest \stemDown <cis e g>
					<d fis>8 \change Staff = "LH"
					d,32[ a' \change Staff= "RH" d] \stemUp fis e8 \rest \stemDown <d fis> |
					<bes d>2 <cis e>4 d ~ |
					d c ~ c bes |
					a1 \bar "|."
				} } >>
			}
			\context Staff = "LH" {
				\clef bass
				\key d \minor
				<< {
				\relative c' {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					\stemDown
					s2 a8 \fermata \prall d,32 \rest e f cis d16 d \rest d8 \rest \fermata |
					\stemUp
					a'8 \fermata \prall d,32 \rest g64 f e d cis32 d16 d16 \rest d8 \rest \fermata d4 \rest <cis e g>4 ~ \arpeggio |
					<cis e g> ~ g'16 e fis8 d4 \rest d8 \rest d16 \rest cis |
					\stemDown
					\scaleDurations #'(2 . 3) {
					d16[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] |
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a d, \rest \fermata d4 \rest d8 \rest d16 \rest
					\clef treble \stemUp
					cis' |
					\scaleDurations #'(2 . 3) {
					d[ e cis] d[ e cis] d[ e cis] } d[ e]
					\scaleDurations #'(2 . 3) {
					f[ g e] f[ g e] f[ g e] } f[ g] |
					\scaleDurations #'(2 . 3) {
					a[ bes g] a[ bes g] a[ bes g] } a b \rest \fermata b4 \rest b8 \rest b16 \rest a |
					\scaleDurations #'(2 . 3) {
					g[ bes e,] g[ bes e,] f[ a d,] f[ a d,] e[ g c,] e[ g c,] d[ f bes,] d[ f bes,]
					\clef bass |
					\stemDown
					c[ e a,] c[ e a,] bes[ d g,] bes[ d g,] a[ c f,] a[ c f,] g[ bes e,] g[ bes e,] |
					\tieDown
					f[ a d,] f[ a d,] e[ g cis,] e[ g cis,] } d4 \rest <cis e> ~ |
					<cis e> d4 \rest d2 \rest |
					d4 d \rest
					\clef treble
					b''32 \rest a16[ a a a] a[ a a a32] |
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					b32 \rest a16[ a a a] a[ a a a] a[ a a a] a[ a a a32] |
					\clef bass
					d,,8 \rest
					\change Staff = "RH"
					d'32 s16. c32 s16.
					\change Staff = "LH"
					bes32 s16. a32
					\change Staff = "RH"
					cis s16 d s
					\change Staff = "LH"
					a s bes s |
					\change Staff = "RH"
					cis8 \noBeam
					d32 s16. c32 s16.
					\change Staff = "LH"
					bes32 s16. a32
					\change Staff = "RH"
					cis s16 d s
					\change Staff = "LH"
					a s bes s |
					e,4 s2. |
					s1*2
					\stemUp
					e'4 s2. |
					\clef treble
					<e g>2 ~
					\scaleDurations #'(2 . 3) {
					e16[ g e] cis[ e cis] e[ g e] cis[ e cis] |
					e[ g e] cis[ e cis] e[ g e] cis[ e cis]
					\clef bass
					\stemDown
					bes[ cis bes] g[ bes g] bes[ cis bes] g[ bes g] |
					bes[ cis bes] g[ bes g] bes[ cis bes] g[ bes g] e[ g e] cis[ e cis] e[ g e] cis[ e cis] |
					e[ g e] cis[ e cis] e[ g e] cis[ e cis] e[ g e] g[ bes g] e[ g e] g[ bes g] |
					e[ g e] g[ bes g] e[ g e] g[ bes g] e[ g e] g[ e g] bes[ cis bes] cis[ bes cis] |
					e[ cis e] cis[ e cis] e[ cis e] cis[ e cis] } a4 a |
					s1 |
					\tieUp
					d,4 \rest d8 \rest d16 \rest a'16 a8[ a] ~ a8.[ g16] ~ |
					\stemUp
					<< { g8[ f16 e] f4 } \\ { d2 } \\ { a'2 } >>
					\clef treble
					b'16 \rest a g a f a e a |
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' |
					d, a' cis, a' d, a' e a f8 fis g c, |
					\clef bass
					\stemDown
					bes a bes c d fis, g a |
					bes a bes fis g16 g' g, g' d g d g |
					c, ees c ees c ees c ees c f c f c f c f |
					bes, d bes d bes d bes d bes e bes e bes e bes e |
					a, cis a cis a cis a cis f, d' f, d' f, d' f, d' |
					e, bes' e, bes' e, bes' e, bes' d, a' d, a' d, a' d, a' |
					e g e g e g e g f8 e d g |
					f e f cis d cis d e |
					f e f cis d4 f |
					g d \rest c e |
					f d \rest bes d |
					e d \rest a cis |
					d d8 \rest f bes bes a a |
					g4 d8 \rest a' bes bes a a |
					gis4 d \rest d2 \rest |
					R1 |
					d16 \rest d' cis d a a g a fis d' cis d g, f' ees d |
					cis e a, cis d, ees' d c b d g, b c, d' c bes |
					a c fis, a d, c' bes a
					\clef treble
					\stemUp
					bes a' g fis g bes, a g |
					d'4 b'8 \rest d, d d d c |
					bes d d c bes d d c |
					bes4 b' \rest b2 \rest |
					s1*2
					b2 \rest
					\clef bass
					\stemDown
					d,,16 \rest c' bes c a c g c |
					f, c' e, c' f, c' g c a c c, c' d, c' e, c' |
					f, c' e, c' f, c' g c a4 s |
					s1*10
					\clef treble
					\stemUp
					s2 a'8 cis d g, |
					f a b cis d cis d e |
					f e f cis b16 \rest fis e fis
					\clef bass
					\stemDown
					d, \rest d' c d |
					bes c bes a g f e d cis a cis e
					\stemUp
					g bes g e \noBreak
					\stemDown
					cis a cis e
					\stemUp
					g bes g e
					\stemDown
					d a d f
					\stemUp
					a d a f \noBreak
					\stemDown
					d a d f
					\stemUp
					a d a f
					\stemDown
					cis a cis e
					\stemUp
					g bes g e \break
					\stemDown
					cis a cis e
					\stemUp
					g bes g e
					\stemDown
					d a d f
					\stemUp
					a d a f \noBreak
					\stemDown
					d a d f
					\stemUp
					a d a f
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g \noBreak
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a \break
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g \noBreak
					\stemDown
					e cis e g
					\stemUp
					bes cis bes g
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a \noBreak
					\stemDown
					f d f a
					\stemUp
					\change Staff = "RH" d f d \change Staff = "LH" a
					\stemDown
					g e g bes
					\stemUp
					\change Staff = "RH" cis e cis bes \pageBreak
					\change Staff = "LH"
					\stemDown
					g e g bes
					\change Staff = "RH"
					\stemUp
					cis e cis bes
					\change Staff = "LH"
					\stemDown
					a f a cis
					\change Staff = "RH"
					\stemUp
					d[ f d]
					\change Staff = "LH"
					\stemDown
					a \noBreak
					bes \noBeam
					\change Staff = "RH"
					\stemUp
					d[ bes]
					\change Staff = "LH"
					\stemDown
					g[ f]
					\stemUp
					a[ f]
					\stemDown
					d[ a]
					\stemUp
					d[ a]
					\stemDown
					f[ d]
					\stemUp
					d'[ cis b] \noBreak
					s bes' a g s g f e s bes' a g s g f e \break
					\stemDown
					d e32 f g a b cis d16 s8.
					\clef treble
					\stemUp
					a16 b32 cis d e f g a16 g f e \noBreak
					f8 b \rest b16 \rest ees, d c bes8 b c g' \break
					g1 \startTrillSpan ~ \noBreak
					g2 ~ g16 \stopTrillSpan g f g ees g d g \noBreak
					c, g' b, g' c, g' d g ees g g, g' a, g' b, g' \break
					c, g' b, g' c, g' d d ees8 d g16 aes f g \noBreak
					ees8 c f16 g ees f d8 bes ees16 f d ees \noBreak
					c8 fis g16 a f g ees g fis g a g fis e \break
					\clef bass
					\stemDown
					d, \rest d' c d bes d a d g, d' fis, d' g, d' a d \noBreak
					bes d d, d' e, d' fis, d' g, d' fis, d' g, d' a d \noBreak
					bes8 a g2 fis4 \pageBreak
					g8 a bes16 a g f ees8 ees' d4 \noBreak
					c8 d ees16 f d ees c ees d f g f ees f \noBreak
					d bes ees d cis a d c b g c bes a f bes d \break
					c d c bes a c bes a g c bes a bes c bes a \noBreak
					g a f g e4
					\stemUp
					e'16 \rest ees d c d c bes a \break
					g4
					\stemDown
					a16 bes a g f g e a
					\change Staff = "RH"
					a' g a f \noBreak
					\change Staff = "LH"
					\clef treble
					g a g a bes a g a f g e f \clef bass d c bes a \break
					bes a g f e f e d cis a d a e' a, f' a, \noBreak
					g' a, f' a, e' a, d a cis a' a, a' d, a' f d' \noBreak
					f, d' e, cis' f, d' d, d'
					\clef treble
					\stemUp
					e a g a f a e a \break
					d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' \noBreak
					d, a' cis, a' d, a' e a f8 e d g \noBreak
					f e f cis d cis d b \pageBreak
					cis g' f d cis4 b' \rest \noBreak
					s4.. s32 b1*17/32 \rest \noBreak
					b2 \rest b16 \rest g16 f e f cis d8 ~ \break
					d4 cis d16 a' b cis
					\stemDown
					d8 c \noBreak
					\stemUp
					f,4. \clef bass
					\stemDown
					ees8 ~ ees16 c a f a c ees c \noBreak
					d bes g d g bes d g c, d bes c a g fis e \break
					fis d fis g
					\stemUp
					a d a g
					\stemDown
					fis d fis g
					\stemUp
					a d a fis \noBreak
					\stemDown
					g d g a
					\stemUp
					bes d bes a
					\stemDown
					g d g a
					\stemUp
					bes d c bes \noBreak
					\stemDown
					a fis a bes s4 a16 fis a bes s4 \break
					a16 bes d fis s4 bes,16 g bes d s4 \noBreak
					c16 a c ees s4 c16 a c ees s4 \noBreak
					fis,8 d \rest g a bes4 ees8 b \break
					g4 c8 bes a4 bes8 c \noBreak
					d16 g f ees d ees d c bes ees d c bes c bes a \noBreak
					bes a g f e8 g a16 b cis d \clef treble
					\stemUp
					e f g a \pageBreak
					bes8 a16 g f a e a d, a' cis, a' d, a' e a \noBreak
					f a a, a' b, a' cis, a' d, a' cis, a' d, a' b, a' \noBreak
					cis,8 d g e f a bes a \break \noPageBreak
					\clef bass
					<bes, d>2 \fermata s2 \noBreak
					s1*2
					\stemDown
					cis2 ~ cis4 d |
					b2 d, \rest |
					d4 \rest d8 \rest \stemUp <gis b> <a c>2 ~ |
					<g c> \fermata s2 |
					s1*2
					s2. d8 \rest
					\stemDown g |
					a s d, \rest a' a s d, \rest a' |
					b s d, \rest g g s d \rest g |
					a s d, \rest f f s d \rest f |
					e s d \rest e fis s d \rest fis |
					g2 bes 4 a |
					a2 f4 g |
					f1 \fermata |
				} } \\ { \relative c {
				\override Accidental #'hide-tied-accidental-after-break = ##t
					s1
					a8 \fermata \prall s32 g64 f e d cis32 d16 s8. s2 |
					s4 d'4 s2 |
					s1*6
					\stemUp
					\tieUp
					s2. <g bes>4 ~ |
					<g bes> s2. |
					s1*5
					\stemDown
					e8 s8 s4 s2 |
					s1*3
					a4 d, \rest d2 \rest |
					cis'2 s2 |
					s1*16
					\stemUp
					s2 a8 a a a |
					a a a a a a a a |
					a a a a a4 d |
					d s c c |
					c s bes bes |
					bes s a a |
					a s8 d cis cis d d |
					e4 s8 d cis cis d d |
					e4 s2. |
					s1*24 |
					\stemDown
					s4 r16 a g a s2  |
					s1*11
					cis,,16 s8. f16 s8. d16 s8. f16 s8. |
					s1*15
					s2 fis4 d |
					g s2 d4 |
					s1*3
					s2 a'2 ~ |
					a1 ~ |
					a1 ~ |
					a1 ~ |
					a2 ~ a4 s4 |
					s1*17
					\stemDown f2 s |
					s1*4
					\stemDown
					s4. e8 e2 ~ |
					e2 s |
					s1*10
				} } >>
			}
		>>
	}
	\new Staff {
		\set Staff.instrumentName = #"Pédalier"
		\set Staff.midiInstrument = #"church organ"
		\clef bass
		\key d \minor
		\relative c, {
			R1 |
			r2  d ~ |
			d r2 |
			R1*6
			r2 d2 ~ |
			d4 r4 r2 |
			d4 \fermata r4 r2
			R1*3
			r2 r8 d' c bes |
			a r r4 r8 d c bes |
			a4 r r2 |
			r4 r8 d c[ bes a] r |
			r4 r8 d c[ bes a gis] |
			g4 r4 r2 |
			g' r2 |
			R1*4
			r2 g4 f |
			bes4. a16 g a8. e16 f d e cis |
			d b cis a bes gis a g' f8 d a4 |
			d,2 r |
			R1*21
			r16 d' c d bes d a d g, d' fis, d' g, d' a d |
			bes d d, d' e, d' fis, d' g, d' fis, d' g, d' a d |
			bes4 r8 b c4 r8 cis8 |
			d4 r8 d8 e4 r8 e8 |
			f a, bes d g,4 r8 bes ~ |
			bes a g c f,4 r |
			R1*28
			r2 r16 g' f g ees g d g |
			c, g' b, g' c, g' d g ees g g, g' a, g' b, g' |
			c, g' b, g' c, g' d g ees8 d c b |
			c d ees f g b, c d |
			ees d ees f g b, c d |
			ees a, bes c d g, a bes |
			c d g d ees bes a c |
			d1 ~ d ~ |
			d4 r8 g, c a d d, |
			g4 r8 g c4. b8 |
			c4 r r2 |
			R1*11
			r2 r16 a' g a f a e a |
			d, a' cis, a' d, a' e a f a a, a' b, a' cis, a' |
			d, a' cis, a' d, a' e a f4 r8 f |
			g e a a, d4 r8 a |
			bes g c c, f4 r8 a |
			bes4 r8 bes c4 r8 a |
			\unfoldRepeats {
			\repeat volta 5 {
			d4 r d r } } |
			r16 d c d bes d a d g, g' f g ees g d g |
			c, c bes c a c g c f, f' ees f d f c f |
			bes,8 ees f f, g c d d, |
			g4 r16 a g a f8 d a'4 |
			d,1 ~ |
			d2 r4 r8 d' |
			a f g a f d g a |
			bes2 \fermata r2 |
			R1*2
			cis2 f4. d8 |
			gis,2 r16 gis' b f gis d f b, |
			d gis, a8 e2. ~ |
			e2 \fermata r2 |
			R1*2
			r2 r4 r8 e' |
			g r r g f r r f |
			f r r f e r r e |
			e r r e d r r d |
			cis r r cis c r r c |
			g4 bes e, f |
			a2 bes4 g |
			<d d'>1 \fermata |
		}
	}
>>
\score {
	<<
		\staffChurchOrgan
	>>
	\midi {
	}
  \layout {
  }
}
\paper {
}
