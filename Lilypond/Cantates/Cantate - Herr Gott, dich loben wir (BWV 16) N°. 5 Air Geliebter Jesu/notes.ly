\version "2.27.1"

\include "definitions.ly"

mBreak = { \tag #'score \break }
nBreak = { \tag #'score \noBreak }
turnPage = { \tag #'score \pageBreak }
noTurnPage = { \tag #'score \noPageBreak }
endline = | { \nBreak }
global = { }

\header {
 title = "Air : Geliebter Jesu"
 subtitle = "tiré de la Cantate n° 16 : Herr Gott, dich loben wir"
 composer = "Jean Sébastien Bach (1685-1750)"
 opus = "BWV 16"
 tagline = ##f
}

OboeDaCacciaNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\tag #'OboeDaCacciaPart \set Score.skipBars = ##t
	\tag #'OboeDaCacciaTPart \set Score.skipBars = ##t
		 r4 r8 c8 a16 (f') d bes= \endline
		 c16 e f8~ f16 c d bes a f' d bes= \endline
		 c16 a f8~ f f'16 (g32 a) g16 c, (b c=') \endline
		 f16 (d e g) b (c) e, (g) f (d) e (a=') \endline
		\mBreak
		 fis8 g~ g16 c, (b c) f16 (d) e (c=') \endline
		 a16 (g f) d' b (c) f (d) d8. \trill c='16 \endline
		 c4 r8 g'16 (f32 e) c'16 f,16 (g a=') \endline
		 ees8 d~ d16 c fis (g) a d, a' (bes=') \endline
		\mBreak
		 c8 (bes) r8 bes16 (a32 g) d'16 \staccato g, (a bes=') \endline
		 bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline
		 bes4~ bes16 g16 (a c) e (f) c f=' \endline
		 a8 g~ g16 b, (c e) g (a) c, g'=' \endline
		\mBreak
		 bes8 a~ a16 e (f a) c (d) f, a=' \endline
		 b8 c~ c16 f, (e f) bes (g) a (f=') \endline
		 ees16 (c d) g e (f) bes (g) g8. \trill f='16 \endline
		 f8 bes,~ bes16 g (a d) c (bes32 a) bes16 (a32 g= ) \endline
		\mBreak
		 f= 4 r4 r4 \endline \mark \markup { \musicglyph "scripts.segno" }
		 R1*3/4 \endline
		 r4 r8 c'8 \p a16 (f' d bes= ) \endline
		 c16 e f8~ f16 c d bes a f' d bes= \endline
		\mBreak
		 c16 a f8~ f a' bes16 (c32 d) c16 bes=' \endline
		 a16 bes c8~ c16 f, (e f) bes (g) a='8 \staccato \endline
		 a16 (f e f) c='2~ \endline
		 c16 f e g f='8 r8 r4 \endline
		\mBreak
		 r4 r8 f16 (g32 a) g16 c, (b c=') \endline
		 f16 (d e g) b (c) e, (g) f (d e) a=' \endline
		 fis8 g~ g16 c, (b c) f (d) e (c=') \endline
		 a16 (g f) d' b (c) f (e) d8. \trill c='16 \endline
		\mBreak
		 c16 \staccato e (f g) g \staccato c, (d e) e \staccato a, (b c=') \endline
		 c16 (a b d) g='2~ \endline
		 g16 b,(c e) g (a f e) d (c b c=') \endline
		 c16 (a b d) g,= 2 \endline
		\mBreak
		 R1*3/4 \endline
		 r4 r8 g'8 \f e16 (c') a f=' \endline
		 g16 b c8~ c16 g a f e c' a f=' \endline
		 g16 e c8~ c16 d (e g) a (e) f a=' \endline
		\mBreak
		 d8 f,8~ f16 d (e a) g (f32 e) f16 (e32 d=') \endline
		 c4 r8 e8 \p f16 (g32 a g16 f=') \endline
		 f8 e~ e16 b (c e) g (a) c, g'=' \endline
		 bes8 a~ a a, bes16 (c32 d c16 bes= ) \endline
		\mBreak
		 bes16 (g) a4 a'16 (g32 f) c'16 f, (g a=') \endline
		 ees8 d~ d=' r8 r4 \endline
		 r4 r8 bes'16 (a32 g) d'16 \staccato g, (a bes=') \endline
		 bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline
		\mBreak
		 bes4~ bes16 g (a c) e (f) c f=' \endline
		 a8 g~ g16 b, (c e) g (a) c, g'=' \endline
		 bes8 a~ a16 e (f a) c (d) f, a=' \endline
		 b8 c=''4 r8 r4 \endline
		\mBreak
		 R1*3/4*2
		 r4 bes4 a16 \trill (g) a='8 \endline
		 a8 g='4 r8 r4 \endline
		\mBreak
		 R1*3/4*2 \endline
		 r4 r8 c,8 \f a16 (f' d bes= ) \endline
		 c16 e f8~ f16 c d bes a f' d bes= \endline
		\mBreak
		 c16 a f8~ f f'16 (g32 a) g16 c, (b c=') \endline
		 f16 (d e g) b (c) e, (g) f (d) e (a=') \endline
		 fis8 g~ g16 c, (b c) f (d) e (c=') \endline
		 a16 (g f) d' b (c) f (d) d8. \trill c='16 \endline
		\mBreak
		 c4 r8 g'16 (f32 e) c'16 f, (g a=') \endline
		 ees8 d~ d16 c fis (g) a d, a' (bes=') \endline
		 c8 (bes) r8 bes16 (a32 g) d'16 \staccato g, (a bes=') \endline
		 bes16 \staccato e, (f g) g \staccato c, (d e) e \staccato g, (a bes= ) \endline
		\mBreak
		 bes4~ bes16 g (a c) e (f) c f=' \endline
		 a8 g~ g16 b, (c e) g (a) c, g'=' \endline
		 bes8 a~ a16 e (f a) c (d) f, a=' \endline
		 b8 c~ c16 f, (e f) bes (g) a (f=') \endline
		\mBreak
		 ees16 (c d ) g e (f) bes (g) g8. \trill f='16 \endline
		 f8 bes,~ bes16 g (a d) c (bes32 a) bes16 (a32 g= ) \endline
		 f= 4 \fermata r4 r4 \endline
		 r8 d'16 \p (cis d='8) r8 r4 \endline
		\mBreak
		 r8 e16 (d e='8) r8 r4 \endline
		 r8 f16 (e f='8) r8 r4 \endline
		 r4 r8 a8 \f f16 (d') bes g=' \endline
		 a16 cis d8~ d16 a bes g e a f d=' \endline
		\mBreak
		 e16 cis a= 8 r4 r4 \endline
		 r16 e'16 \p (f a) d=''8 r8 r4 \endline
		 r16 d,16 (e g) c=''8 r8 r4 \endline
		 r16 c,16 (d f) bes='8 r8 r4 \endline
		\mBreak
		 r4 r8 g16 (a32 bes) a16 d, (cis d=') \endline
		 g16 (e f a) cis (d) f, (a) g (e) f (bes=') \endline
		 gis8 a~ a16 d, (cis d) g (e) f (d=') \endline
		 bes16 (a g= ) r16 r4 r4 \endline
		\mBreak
		 r4 r8 a8 \f f16 (d') bes g= \endline
		 a16 cis d8~ d16 a bes g a d bes g= \endline
		 cis16 e g8~ g16 e f d e g bes d,=' \endline
		 cis16 e a, g f a d e e8. \trill d='16 \endline
		\mBreak
		 d='4 r4 r4 \endline
		 R1*3/4*6
		 R1*3/4
				 \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
				 \mark "Dal Segno."
				 \bar "||"
	}}
OboeDaCacciaTNotes = \transpose f c' {\OboeDaCacciaNotes}
TenoreNotes = \new Voice = "TenoreVoice" { \relative c' {
	\key f \major
	\time 3/4
	\tag #'TenoreGermanTPart \set Score.skipBars = ##t
	\tag #'TenoreGermanPart \set Score.skipBars = ##t
	\tag #'TenoreEnglishPart \set Score.skipBars = ##t
	\tag #'TenoreEnglishTPart \set Score.skipBars = ##t
		 R1*3/4*16
		 r4 r8 c8 bes16 [a32 g] a16 [f=] \endline \mark \markup { \musicglyph "scripts.segno" }
		 d'8 c4 bes16 [a] f'8 d16 \trill [c='] \endline
		 c=' 4 r4 r4 \endline
		 R1*3/4
		\mBreak
		 r4 r8 c8 d16 [e32 f] e16 [d='] \endline
		 c8 \appoggiatura bes8 a4 g16 [f] d' [bes] c='8 \endline
		 c4 r8 g8 a16 [g] bes= 8 \endline
		 a16 [d] c4 bes16 [a g f] bes= 8 \noBeam \endline
		\mBreak
		 g4 r8 d'16 [e32 f] e8 d=' \noBeam \endline
		 b8 \trill c4 g'8 \noBeam d16 [f] e [c='] \endline
		 c8 b4 \trill g8 a16 [f] g= 8 \noBeam \endline
		 d'16 e f8~ f16 [e] d [g] b,8. \trill c=' 16 \noBeam \endline
		\mBreak
		 c4 r8 g8 \noBeam c \noBeam e=' \endline
		 e8 \trill d r8 c16 [b] c [b] a [g=] \endline
		 f'16 [d] e4 d16 [c] b [a] fis'8 \endline
		 fis8 g4 f16 [e]d [b] c [e='] \endline
		\mBreak
		 a16 f g8~ g16 c, b [c] \appoggiatura d16 f8 e=' \noBeam \endline
		 \appoggiatura d8 c='4 r4 r4 \endline
		 R1*3/4*2 \endline
		\mBreak
		 R1*3/4 \endline
		 r4 r8 g8 a16 bes32 c bes16 a= \endline
		 a8 \trill g= 4 r8 r4 \endline
		 r4 r8 c8 d16 ees32 f ees16 d=' \endline
		\mBreak
		 d8 \trill c='4 r8 r4 \endline
		 r4 r8 c8 fis16 g32 a c,='8 \endline
		 c8 bes r8 d8 g \noBeam f=' \endline
		 e8 [d] c [bes] a16 [d] c='8 \noBeam \endline
		\mBreak
		 f,8 e r4 r8 f'='8 \endline
		 c16 a bes4 g8 e'16 [f] g='8 \noBeam \endline
		 g16 e f4 a8 d,8 \noBeam f=' \endline
		 f8 [e] g \noBeam bes,16 (a bes8) \noBeam g= 8 \endline
		\mBreak
		 a16 d c4 bes16 a g [f] g= 8 \endline
		 f4 f' ees16 \trill d ees='8 \endline
		 d4 r8 c8 ees d=' \noBeam \endline
		 c8 [bes16 a bes8] g e' f=' \noBeam \endline
		\mBreak
		 g8 bes, d c \noBeam bes16 g a d=' \endline
		 c [f e d] c [bes] a8 bes g= \noBeam \endline
		 f= 4 r4 r4 \endline
		 R1*3/4 \endline
		\mBreak
		 R1*3/4*14
		 r4 \fermata r8 a8 a a= \noBeam \endline
		 d8 [f16 e f8] a, a a= \noBeam \endline
		\mBreak
		 e'8 g16 [(f g8)] a, a a= \noBeam \endline
		 f'8 [a16 g a8] d, g e=' \noBeam \endline
		 cis8 b16 [(cis a= 8)] r8 r4 \endline
		 R1*3/4 \endline
		\mBreak
		 r4 r8 e'8 d16 [cis] b [a= ] \endline
		 f'8 \noBeam d4 c16 [bes a g] g'8 \noBeam \endline
		 e8 \appoggiatura d c4 bes16 [a] g [f] f'='8 \noBeam \endline
		 d16 [c] bes4 a16 [g] f [e] e'='8 \endline
		\mBreak
		 cis8 b16 ([cis a8]) e' f a,= \noBeam \endline
		 bes8 (a4) f'8 e d=' \noBeam \endline
		 d8 cis16 d \noBeam e8 f \noBeam g,= 4~ \endline
		 g8 d'16 [cis] \noBeam d8. \trill e16 \noBeam e8. \trill d='16 \endline
		\mBreak
		 d='4 r4 r4 \endline
		 R1*3/4*3
		\mBreak
		 r4 f4 r8 d='8 \endline
		 c16 [b] a [g] g'8 \noBeam f16 [e] f [d] e='8 \noBeam \endline
		 e4 r8 b8 \noBeam e16 [d] c [b= ] \endline
		 c16 [a c e f8] e8 \noBeam d16 [c] b [a= ] \endline
		\mBreak
		 gis4 r8 e8 a b= \noBeam \endline
		 c8 \noBeam d16 [e] d [c] b [a] f'8 \noBeam e16 [d='] \endline
		 c8 \noBeam d16 [c] b [a] g [f] e' [f] f='8 \trill \noBeam \endline
		 g4 r8 c,8 \noBeam bes16 [a32 g] a16 [f= ] \noBeam
				\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
				\mark "Dal Segno."
				\bar "||"
	}}
TenoreLyricsGerman = \new Lyrics \lyricsto "TenoreVoice" {
		 Ge -- leib -- _ _ ter _
		 Je -- su, du, _ du al -- _
		 lein,
		 ge -- leib -- _ _  ter _
		 Je -- su, du, _ du _ al --
		 lein sollst mei -- _ ner
		 See -- _ len Reich -- _ _ _ thum
		 sein, ge -- _ _ lieb -- ter
		 Jes -- su, du, du _ al -- _
		 lein __ _ sollst meiner _ _
		 See -- _ _ _ len _ Reichthum _
		 sein, du, du al --
		 lein, _ ge -- _ leib -- _ ter _
		 Je -- _ su, du, _ du _ al --
		 lein __ _ sollst _ mei -- _ ner _
		 See -- _ _ _ len _ Reichthum _
		 sein!
		 Ge -- leib -- _ _ ter _
		 Je -- su,
		 ge -- leib -- _ _ ter _
		 Je -- su,
		 du, du _ _ al --
		 lein _ sollst mei -- ner
		 See -- _ len _ Reichthum _ _
		 sein! _ Ge --
		 leibter, _ _ ge -- leibter _ _
		 Je -- _ su, du, du al --
		 lein _ sollst mei -- ner
		 See -- _ _ len _ Reichthum _ _
		 sein, du al -- _ _
		 lein, ge -- leib -- ter
		 Je -- _ _ _ su, du al --
		 lein sollst mei -- ner See -- _ _ _ _ _ _ _ _ _
		 len Reichthum _
		 sein!
		 Wir wol -- len
		 dich __ _ _ _ vor al -- len
		 Schät -- zen in un -- ser
		 treu -- _ _ _ es Her -- ze
		 set -- zen,
		 wir wol -- _ len _
		 dich vor al -- _ _ _ len
		 Schätzen _  in _ un -- _ ser
		 treu -- _ _ es _ Her -- _ ze
		 set -- zen, wir wol -- len
		 dich vor al -- len
		 Schätzen _ in un -- ser treu --
		 es _ Her -- ze set -- _
		 zen,
		 ja, ja,
		 wenn _ das _ Le -- bensband _ _ _ zer --
		 reisst, ja, wenn _ das _
		 Le -- _ _ _ _ bens -- band _ zer -- _
		 reisst, stimmt un -- ser
		 gott -- ver _ nüg _ ter _ Geist noch _
		 mit den _ Lip _ pen _ sebulich _ _
		 ein: Ge -- leib -- _ _ ter _
}
TenoreLyricsEnglish = \new Lyrics \lyricsto "TenoreVoice" {
		 Be -- lov -- _ _ ed __ _
		 Je -- su, thou, _ thou al -- _
		 lone,
		 Be -- lov -- _ _ ed __ _
		 Je -- su, thou _ thou _ a --
		 lone shall my __ _ _
		 soul's __ _ _ rich -- _ _ _ es
		 be, be -- _ _ lov -- ed
		 Je -- su, thou, thou _ a -- _
		 lone __ _ shall my __ _ _
		 soul's __ _ _ _ _ _ riches _
		 be, thou, thou a --
		 lone, _ be -- _ lov -- _ ed __ _
		 Je -- _ su,  thou, _ thou _ al --
		 lone __ _  shall _ my __ _ _ _
		 soul's __ _ _ _ _ _ rich -- es be!
		 Be -- lov -- _ _ ed __ _
		 Je -- su,
		  be -- lov -- _ _ ed __ _
		 Je -- su,
		 thou, thou _ _ al --
		 lone _ shall my __ _
		 soul's __ _ _ _ rich -- es _
		 be! __ _ Be --
		 lov -- _ ed, be -- lov -- _ ed
		 Je -- _ su, thou, thou al --
		 lone __ _ shall my __ _
		 soul's __ _ _ _ _ rich -- _ es
		 be, thou al -- _ _
		 lone, be -- lov -- ed
		 Je -- _ _ _ su, thou al --
		 lone shall my __ _ soul's __ _ _ _
		 _ _ _ _ _ _ _ rich -- es be!
		 We val -- ue
		 thou __ _ _ _ a -- bove all
		 treas -- ures in our __ _
		 tru -- _ _ _ ly faith -- ful
		 hearts, __ _
		 we val -- _ ue __ _
		 thou be -- fore __ _ _ _ all
		 treas -- ures in __ _ our __ _ _
		 tru -- _ _ ly __ _ faith -- _ ful
		 hearts, __ _ we val -- ue
		 thou be -- fore all
		 treas -- ures in our __ _ tru --
		 ly _ faith -- ful hearts, __ _
		 _
		 yes, yes,
		 when _ our _ lives __ _ _ _ _ be
		 done, yes when _ our _
		 lives __ _ _ _ _ _ _ _ be __ _
		 done, our spir -- its,
		 con -- ten -- _ ted _ in _ God shall _
		 with our _ lips __ _ _ _ sing _ as
		 one: Be -- lov -- _ _ ed __ _
}
ContinuoNotes = \new Voice { \relative c {
	\key f \major
	\time 3/4
	\clef bass
	\tag #'ContinuoPart \set Score.skipBars = ##t
		 f,8 f' e c f g= \endline
		 a8 g a bes c bes= \endline
		 a8 c a f e a= \endline
		 b8 c d, c b c= \endline
		\mBreak
		 a8 g g' a b c=' \endline
		 f,8 d g a f g= \endline
		 c,8 d c bes a g=, \endline
		 fis8 fis' g a d, fis= \endline
		\mBreak
		 g,8 d' g a bes g= \endline
		 c8 c, c c c c= \endline
		 c8 d e c a f=, \endline
		 c'8 d e g c, e= \endline
		\mBreak
		 f8 c f a f e= \endline
		 d8 c16 d e8 c f f,=, \endline
		 bes8 g a d bes c= \endline
		 d g e f a, c= \endline
		\mBreak
		 f,8 f' \p e c f f,=, \mark \markup { \musicglyph "scripts.segno" } \endline
		 bes8 a16 g a8 f a bes=, \endline
		 a8 f a c f g= \endline
		 a8 g a bes c bes= \endline
		\mBreak
		 a8 g a f bes bes,=, \endline
		 f8 f'16 e f8 a bes bes,=, \endline
		 f'8 f, a c f e= \endline
		 f8 bes, a c d bes=, \endline
		\mBreak
		 c8 c, c c c c=, \endline
		 c'8 c, c c' b c= \endline
		 g8 g' f e d a=, \endline
		 b8 d g, f g g=, \endline
		\mBreak
		 c,8 c' e g e c= \endline
		 g'8 g, b d g, b=, \endline
		 c8 g' c b c d=' \endline
		 g,8 d b g e' c= \endline
		\mBreak
		 f8 d e f g g,=, \endline
		 c,8 c' \f e g c f,= \endline
		 e'8 d, e f g f= \endline
		 e8 d e c f d= \endline
		\mBreak
		 b8 g c a e g=, \endline
		 c8 c, \p c c c c=, \endline
		 c'8 c, c e' c e= \endline
		 f8 f, f f f f=, \endline
		\mBreak
		 f'8 f, f f' a f= \endline
		 bes8 bes, bes' a16 g a8 d,= \endline
		 g8 g,16 fis g8 a bes g=, \endline
		 c8 c, c c c c=, \endline
		\mBreak
		 c'8 d e c a f=, \endline
		 c'8 d e g c, e= \endline
		 f8 c a c f, a=, \endline
		 c,8 c' e g c, e= \endline
		\mBreak
		 f8 bes, a f c' c,=, \endline
		 f8 g a g a f=, \endline
		 bes8 bes' g e fis d= \endline
		 g 8d g,=, r8 r4 \endline
		\mBreak
		 r8 g'8 f e d c= \endline
		 bes g a f c' c,=, \endline
		 f8 f' e c f g= \endline
		 a8 g a bes c bes= \endline
		\mBreak
		 a8 c a f e a= \endline
		 b8 c d, c b c= \endline
		 a8 g g' a b c=' \endline
		 f,8 d g a f g= \endline
		\mBreak
		 c,8 d c bes a g=, \endline
		 fis8 fis' g a d, fis= \endline
		 g,8 d' g a bes g= \endline
		 c8 c, c c c c= \endline
		\mBreak
		c8 d e c a f=, \endline
		c'8 d e g c, e= \endline
		f8 c f a f e= \endline
		d8 c16 d e8 c f f,=, \endline
		\mBreak
		bes8 g a d bes c= \endline
		 d8 g e f a, c= \endline
		 f,8 \fermata f'16 \p e f8 g a g= \endline
		 f8 a, a f' e d= \endline
		\mBreak
		 cis8 a a g' f e= \endline
		 d8 a a f' bes g= \endline
		 a8 a, a cis \f d g= \endline
		 f8 e f g cis, d= \endline
		\mBreak
		 a8 b cis a \p b cis= \endline
		 d8 c bes g a bes=, \endline
		 c8 bes a f g a=, \endline
		 bes8 a g e f g=, \endline
		\mBreak
		 a8 b cis a d f= \endline
		 cis8 d e d cis d= \endline
		 a'8 a,16 b cis8 d bes g=, \endline
		 cis8 a f' d a' a,=, \endline
		\mBreak
		 d8 e f cis \f d g= \endline
		 f8 e d e f g= \endline
		 a8 b cis d g, e= \endline
		 a8 cis, d bes g a=, \endline
		\mBreak
		 d8 \p a d, d' e f= \endline
		 g8 d b g a b=, \endline
		 gis8 b e d c e= \endline
		 a8 a, d e f d= \endline
		\mBreak
		 e8 e, a b c e= \endline
		 a8 a, b c d f= \endline
		 e8 c f a g f= \endline
		 c'8 c, d e f f,=, \endline
				\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
				 \mark "Dal Segno."
				 \bar "||"
	}}
music =  {
	<<
		\tag #'OboeDaCacciaTPart \new Staff { <<
			\set Staff.midiInstrument = "bassoon"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					 \hcenter-in # centerIndent  "Cor anglais."
				}
		 	 } \clef treble \OboeDaCacciaTNotes >>
		}
		\tag #'score \tag #'OboeDaCacciaPart \new Staff { <<
			\set Staff.midiInstrument = "bassoon"
			\global \set Staff.instrumentName = \markup {  \column {
				\center-column {
					 \hcenter-in # centerIndent  "Hautbois"
					 \hcenter-in # centerIndent  "de chasse."
					 \hcenter-in # centerIndent "o Violetta."
				}
				}
		 	 } \clef alto \OboeDaCacciaNotes >>
		}
		\tag #'TenoreGermanPart \new Staff { <<
			\set Staff.midiInstrument = "synth voice"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					\hcenter-in # centerIndent  "Ténor."
				}
		  	} \clef tenor \TenoreNotes \TenoreLyricsGerman >>
		}
		\tag #'score \tag #'TenoreGermanTPart \new Staff { <<
			\set Staff.midiInstrument = "synth voice"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					\hcenter-in # centerIndent  "Ténor."
				}
		  	} \clef "G_8" \TenoreNotes \TenoreLyricsGerman >>
		}
		\tag #'TenoreEnglishPart \new Staff { <<
			\set Staff.midiInstrument = "synth voice"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					\hcenter-in # centerIndent  "Ténor."
				}
		  	} \clef tenor \TenoreNotes \TenoreLyricsEnglish >>
		}
		\tag #'TenoreEnglishTPart \new Staff { <<
			\set Staff.midiInstrument = "synth voice"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					\hcenter-in # centerIndent  "Ténor."
				}
		  	} \clef "G_8" \TenoreNotes \TenoreLyricsEnglish >>
		}
		\tag #'score \tag #'ContinuoPart \new Staff { <<
			\set Staff.midiInstrument = "church organ"
			\global \set Staff.instrumentName = \markup {
				\center-column {
					\hcenter-in # centerIndent  "Continuo."
				}
			}\ContinuoNotes >>
		}
	>>
	}
