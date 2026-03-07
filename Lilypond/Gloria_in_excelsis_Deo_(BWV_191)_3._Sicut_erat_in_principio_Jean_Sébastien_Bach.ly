\version "2.24.4"

#(ly:set-option 'point-and-click #f)

\include "italiano.ly"

\header {
   subtitle = "Gloria in excelsis Deo"
   title = "3. Sicut erat in principio"
   composer = "Jean Sébastien Bach (1685-1750)"
   opus = "BWV 191/3"
   tagline = ##f
}

globalMovI = {
    \key re \major
    \time 3/4
    \accidentalStyle default
    \tempo 4 = 84
    \override Score.MetronomeMark.transparent = ##t
}

scorBr = { \tag #'score \break }

PageXLLegni = { la4. si16 dod re mi fad re | \scorBr % page 41
 		si4 ~ si16 la sold la si dod re si | }
PageXLObI  = { fad8 la re la fad] | r re[ fad si fad re] | } 
PageXLObII = { re8 fad la fad re] | r si[ re fad re si] | }

PageXLIOboi = { la16 dod mi la8 r r4 | r16 mi dod la mi8 r r4 | \scorBr  }
PageXLIIOboi = \relative do'{ mi16 sold si mi8 r r4 | r16 si re sold si8 r r4 |
	r16 la mi dod la sold la si dod re mi dod | la' fad dod la fad mid fad sold la si dod la | \scorBr }

PageXLIIIObI  = \relative do'' { mi8[ dod mi la mi dod] | r si[ fad' la fad si,] | }
PageXLIIIObII = \relative do'' { mi8[ mi, la dod la mi] | r fad[ red' fad si, fad] | }

PageXLIVObI  = \relative do'' { r8 dod16( re32 mi) mi8 dod16( re32 mi) mi8 re16 dod | re8 re,16( mi) }
PageXLIVObII = \relative do' { r8 mi16( fad32 sol!) sol8 mi16( fad32 sol) sol8 fad16 mi | fad mi re mi }
PageXLIVLegni = \relative do' { fad16( sold la sold) si( la sold fad) | sold fad mi fad sold la si la dod si la sold |
	la sold fad sold la si dod si re dod si la | si la sold la si dod re dod mi re dod si | \scorBr }

PageXLVILegni = \relative do' { r16 mi fad sold la si dod re mi fad sol! mi | fad mi re dod si la sold la si dod re si |
	mi re dod si la sold fad sold la si dod la | re mi, fad sold la fad sold la si dod re si | \scorBr
	sold mi' re dod si la sold fad mi fad sold mi | la si dod re mi( re) fad( mi) re( dod) si( dod) | la4 r r | }

PageLIIIOboi = \relative do' { fad8[ lad dod dod dod dod] | fad8. dod16 dod4 r | }
PageLIVOboi = { fad4. sold16 la si dod re si | sold4 ~ sold16 fad mid fad sold! la si sold | \scorBr }
PageLVIOboi = { la16 sold la si dod8[ la dod  la] | fad[ la16 sold fad8 la si re] |
	sold,[ si16 la sold8 si dod mi] | lad,[ dod16 si lad8 dod fad, fad'] | re dod16 re si8 r r16 mi re dod | \scorBr
	si16 lad si dod \repeat unfold 3 { re16 dod si dod } re16 mi fad( mi) sol( fad) mi( re) |
	mi16 re dod re mi( fad) sol( fad) la( sol) fad( mi) | fad mi red mi fad sold la sold si la sold fad | mi8 si }
PageLVIIOboi = { sold16 fad mi fad sold fad sold la | \scorBr 
	si8[ si mi si] sold16 la si8 ~ | si16 la sold la si mi re mi dod4 ~ | dod16 la re mi fad sol mi fad re4 ~ |
	re16 dod si dod re dod si la }   

PageLIXObI = { dod16 si dod re mi8[ dod mi dod] | la[ dod16 si la8 dod re fad] | si,[ re16 dod si8 re mi sol] |
	dod,[ mi16 re dod8 mi la, la'] | }

PageLIXObII = { fad16 sol la8 ~ |  \scorBr
	la16 sol fad mi re8 la'4 la8 ~ | la re16 dod re8 do si4 ~ | si8 mi16 red mi8 re do4 ~ |
	do16 si la si do! si la sol fad la sol fad | sol8 sol' ~ sol16 fad mi re mi re dod! si | \scorBr
	dod2. ~ | dod8 fad ~ fad16 mi re dod re dod si la | si2. ~ | si8 mi,16 fad } 

PageLXObI = { fad16 sol la sol si la sol fad | sol fad mi fad sol la si la do si la sol |
	la sol fad sol la si do si re do! si la | sol fad sol la si2 ~ |  \scorBr
	si8[ si16 la sol8 si dod! mi] | la,16 sol fad sol la2 ~ | la8[ la16 sol fad8 la si fad] |
	sol16 fad mi fad }
PageLXILegni = { sol16 la si dod re dod si re | dod si la si dod re mi fad sol fad mi sol  | \scorBr }

PageLXIIIObI = \relative do' { fad16 sol la si do si re do si la | si la sol la si dod! re dod mi re dod si |
	dod si la si dod re mi re fad mi re dod | re dod si dod re mi fad mi sol fad mi re |
	mi re dod re mi fad sol fad la sol fad mi | }
OboeIFinale = { dod16 la' sol fad mi re dod si la si dod la | re mi fad sol la sol si la sol fad mi fad | re4 r r | }

PageIXLFlauti = { re16 fad la re8 r r4 | r16 la fad re la8 r r4 | }
PageXLFlauti = { la16 dod mi la8 r r4 | r16 mi la dod mi8 r r4 | }
PageXLIFlauti = { dod8 r r4 r | r8 la16 si dod re mi fad sold si la sold | }
PageXLIIAFlauti = \relative do'' { r8 si'16 la sold fad mi re dod mi dod la }
PageXLIIBFlauti = { r8 la16 si dod re mi dod | la'8 la, r fad16 sold la si dod la | \scorBr }
PageXLVFlauti = { dod,8 la'16 mi dod8 mi16 la dod8 la16 dod | mi8[ la, dod mi dod la] |
	r8 do[ la fad la do] | r do[ la mi la do] | r do[ la fad la si] | \scorBr 
	r8 si,[ mi sold si sold] | }
PageLVIIFlauti = { r8 fad[ si fad] re16 mi fad8 | \scorBr 
	fad4 r r | r8 fad si4 ~ si16 re dod si | dod si lad si dod re dod re dod si la dod |
	si2. ~ | si8[ si mi si] sold16 la si8 | \scorBr
	si4 r8 si, mi4 ~ | mi16 re dod re mi8 re16 mi dod8 mi | fad16 mi re mi fad sol mi fad re4 ~ | 
	re16 dod si dod re dod si la si8 la'16 sold | }
FlautiFinale = { fad8[ la, re fad la do] | \scorBr 
	si[ sol, dod mi sol si] | la[ fad, si re fad la] | sol si16 la sol8 sol16 fad mi8 mi16 re | }


FlautoTraversoIMovI = {
    \globalMovI
    \clef treble
    \relative do'' {
% page 39
	fad16 la re la fad sol mi sol fad sol mi sol | fad \PageIXLFlauti dod16 mi la mi dod re si re dod re si re | \scorBr
% page 40
	dod16 \PageXLFlauti r8 fad,[ la re la fad] |  r re[ fad si fad re] | \PageXLLegni
% page 41
		\PageXLIFlauti la8[ la dod mi] dod si16 la | \scorBr
% page 42
	sold8 r r4 r | \PageXLIIAFlauti mi8[ mi sold si] re, dod16 si | dod4  \PageXLIIBFlauti
% page 43
	\PageXLIIIObI si'4 r r | r8 \repeat unfold 2 { si16( dod32 re) re8 } r8 | r fad,[ dod dod'] la r | \scorBr
% page 44
	\PageXLIVObI \PageXLIVLegni
% page 45
	\PageXLVFlauti
% page 46
	\PageXLVILegni
% page 47
	\repeat unfold 2 { r8 la[ dod la] r4 | } r8 sol[ si sol] r4 | \scorBr
% page 48
	r8 mi[ la mi] r4 | r8 fad[ la fad] r4 | r8 la[ re la] r4 | r8 sol[ si sol] r4  | r8 la[ re la] r4 | \scorBr
% page 49
	r8 si[ re si] r4 | r16 mi, fad sol la8 r r4 | r8 mi[ la mi] r4 | r8 fad[ la fad] r4 | r8 la[ mi la] r4 | \scorBr
% page 50
	r8 la[ fad dod] r4 | r8 si'[ sol re] r4 | r8 dod'[ la dod] r4 | r8 re[ re, mi] r4 | r8 la[ re la] r4 | \scorBr
% page 51
	r8 fad[ la re,] r4 | r8 si'[ sol mi] r4 | r8 la[ re, fad] r4 | r8 si[ mi, dod'] r4 | r8 dod[ fad, dod'] r4 | \scorBr
% page 52
	r8 si[ mi, sol] r4 | r8 dod[ fad, mi] r4 | r8 si'16[ lad si8 mi,] dod4 | 
	re16 fad si fad re mi dod mi re mi dod mi | re16 re fad si re8 r r4 | \scorBr
% page 53
	r8 re,[ fad si] fad mi16 re | dod8 r r4 r | r8 dod'4 si16 lad si8. dod32 re | dod8 r r4 r | 
	r8 si16( dod32 re) re8 si16( dod32 re) \tuplet 3/2 { re16([ dod si)] } \tuplet 3/2 { si([ la! sold)] } | \scorBr
% page 54
	sold8 r r4 r | dod2. ~ | dod | si ~ | si | \scorBr
% page 55
	\repeat unfold 2 { la16 sold la si dod8 r r4 | } \repeat unfold 3 { la16 sold la sold la8 r r4 | }
	dod16 re dod re dod8 r r4 | \scorBr
% page 56
	dod16 re dod re dod8 r r4 | dod16 re dod si la8 r r4 | la16 sold fad sold la8 r r4 | mi16 fad sold fad mi8 r r4 |
	mi16 re dod re mi8 r r4 | \PageLVIIFlauti
% page 58
					la4 r8 mi[ la mi] | \scorBr 
% page  59
	\PageLIXObI fad8 mi16 fad re8 la'4 la8 ~ | \scorBr 
% page 60
	la16 si la sol fad8 fad4 fad8 ~ | fad re,16 mi \PageLXObI 
% page 61
	\PageLXILegni 
% page 62
	\repeat unfold 2 { fad16 mi fad sol la8 r r4 | } si16 la si dod re8 r r4 | fa,16 mi fa sol la8 r r4 |
	re,16 dod! re mi fa8 r r4 | dod!16 si dod re mi8 r r4  | \scorBr 
% page 63
	r8 \PageLXIIIObI 
% page 64
	\FlautiFinale \OboeIFinale \bar "|." 
    }
}

FlautoTraversoIiMovI = {
    \globalMovI
    \clef treble
    \relative do'' {
% page 39
	re16 fad la fad re mi dod mi re mi dod mi | re \PageIXLFlauti la16 dod mi dod la si sold si la si sold si | \scorBr
% page 40
	la16 \PageXLFlauti r8 re,[ fad la fad re] | r si[ re fad re si] | \PageXLLegni
% page 41
		\PageXLIFlauti la8[ dod, mi la] mi re16 dod | \scorBr
% page 42
	si8 r r4 r | \PageXLIIAFlauti mi8[ si mi sold] si, la16 sold! | la4 \PageXLIIBFlauti
% page 43
	\PageXLIIIObII mi'4 r r | r8 \repeat unfold 2 { sold16( la32 si) si8 } r8 | r fad[ dod dod'] la r | \scorBr
% page 44
	\PageXLIVObII \PageXLIVLegni
% page 45
	\PageXLVFlauti
% page 46
	\PageXLVILegni
% page 47
		r8 mi[ la mi] r4 | r8 fad[ la fad] r4 | r8 si,[ re si] r4 | \scorBr
% page 48
	r8 dod[ mi dod]r4 | r8 la[ re la] r4 | r8 re[ la re] r4 | r8 si[ mi si] r4 | r8 re[ fad mi] r4 | \scorBr
% page 49
	r8 mi[ si sold] r4 | r r16 dod re mi re8 r | r sol,[ mi la] r4 | r8 re[ la re] r4 | r8 dod[ la dod] r4 | \scorBr
% page 50
	r8 fad[ dod la] r4 | r8 sol'[ re si] r4 | r8 la'[ mi dod] r4 | r8 re[ la dod] r4 | r8 re[ la re] r4 | \scorBr
% page 51
	r8 la[ fad la] r4 | r8 si[ mi si] r4 | r8 fad[ la do] r4 | r8 re,[ sol mi] r4 | r8 fad[ lad mi'] r4 | \scorBr
% page 52
	r8 mi[ si re] r4 | r8 lad[ dod fad,] r4 | r8 re'16[ mi fad8 mi] dod4 | 
	si16 re fad re si dod lad dod si dod lad dod | si si re fad si8 r r4 | \scorBr
% page 53
	r8 si,[ re fad] re dod16 si | lad8 r r4 r | r8 mi'4 re16 dod re8. mi32 fad | lad,8 r r4 r | 
	r8 re16( mi32 fad) fad8 re16( mi32 fad) \tuplet 3/2 { fad16([ mi re)] } \tuplet 3/2 { re([ dod si)] } | \scorBr
% page 54
	si8 r r4 r | la'2. ~ | la ~ | la | sold | \scorBr
% page 55
	fad16 mid fad sold la8 r r4 | fad16 dod fad sold la8 r r4 | \repeat unfold 3 { fad16 mid fad mid fad8 r r4 | }
	mid16 fad mid fad mid8 r r4 | \scorBr
% page 56
	la16 si sold si la8 r r4 | la16 si la sold fad8 r r4 | fad16 mi re mi fad8 r r4 | si,16 la sold la si8 r r4 |
	fad16 sold lad si dod8 r r4 | \PageLVIIFlauti
% page 58
					la4 r8 mi[ la mi] | \scorBr 
% page 59
	\PageLIXObI fad8[ la, re la] \PageLIXObII
% page 61
	\PageLXILegni 
% page 62
	fad16 dod re mi fad8 r r4 | re16 dod re mi fad8 r r4 | sold16 fad sold la si8 r r4 | 
	re,16 dod! re mi fa8 r r4 | si,16 la si dod re8 r r4 | la16 sold la si dod8 r r4 | \scorBr 
% page 63
	r8 \PageLXIIIObI 
% page 64
	\FlautiFinale \OboeIFinale \bar "|." 
    }
}

OboeIMovI = {
    \globalMovI
    \clef treble
    \relative do'' {
% page 39
	R2.*2 | r4 r8 la re mi16 fad | mi8 r r4 r | \scorBr
% page 40
	r8 mi16 re dod si la sol fad la fad re | la'8 r r la mi' fad16 sol | fad8[ \PageXLObI \PageXLLegni 
% page 41
	dod16 mi la mi \repeat unfold 2 { dod re si re } | dod16 \PageXLIOboi 	
% page  42
	mi' sold si sold \repeat unfold 2 { mi fad red fad } | mi \PageXLIIOboi
% page  43
	\PageXLIIIObI r8 sold4 fad16 mi fad8. sold32 la | sold2 r4 | r8 la,16( si32 dod) dod8 la16( si32 dod) dod8 r | \scorBr
% page  44
	\PageXLIVObI \PageXLIVLegni
% page  45
	\repeat unfold 2 { dod16 si dod re mi8 r r4 | } fad16 mi fad sold la8 r r4 | la16 sold la si do8 r r4 | 
	fad,16 mi fad sold la8 r r4 | \scorBr
% page  46
	mi16 re mi fad sold8 r r4 | \PageXLVILegni
% page  47
		r4 r r8 mi | la r r4 r8 fad | re r r4 r8 sol | \scorBr
% page  48
	mi8 r r4 r8 mi | re r r4 r8 re | fad r r4 r8 la | fad r r4 r8 mi | fad r r4 r8 fad | \scorBr
% page  49
	mi8 r r4 r8 mi | mi r r4 r8 fad | mi r r4 r8 mi | re r r4 r8 mi | dod r r4 r8 dod | \scorBr
% page  50
	la r r4 r8 fad' | si, r r4 r8 sol' | dod, r r4 r8 la' | fad r r4 r8 mi | la r r4 r8 la | \scorBr
% page  51
	re8 r r4 r8 re, | sol r r4 r8 mi | la r r4 r8 la | re, r r4 r8 dod | lad r r4 r8 fad | \scorBr
% page  52
	si8 r r4 r8 mi | mi r r4 r8 dod| re16 dod re mi fad8 si, lad4 | si8 r r4 r | r8 fad'4 mi16 re mi8.( fad32 sol) | \scorBr
% page  53
	fad8 r r4 r | \PageLIIIOboi | r8 mi[ lad dod] mi, re16 dod | re8[ fad, si re si fad] | \scorBr
% page  54
	re'8 r r4 r | r8 dod[ mi la mi dod] | r la[ dod fad dod la] | \PageLIVOboi
% page  55
	la8[ dod fad la fad dod] | r fad[ la dod la fad] | r la[ fad red fad la] | r la[ fad dod fad la] | 
	r la[ fad red fad sold] | r sold[ mid dod mid sold] | \scorBr
% page  56-57
	r8 dod,[ la dod8 fad dod] | \PageLVIOboi 
% page  57-58
	\PageLVIIOboi si8 la'16 sold | la4 r8 mi[ la mi] | \scorBr 	
% page  59
	\PageLIXObI fad8 mi16 fad re4 r16 sol, fad mi | \scorBr 
% page 60
	re16 mi re mi \repeat unfold 3 { fad16 mi re mi } \PageLXObI 
% page 61
		\PageLXILegni 
% page 62
	fad8[ la, re fad re la] | r re[ fad la fad re] | r fa[ re si re fa] | r fa[ re la re fa] | 
	r fa[ re si re mi] | r mi[ dod la dod mi] | \scorBr
% page 63
	la8 \PageLXIIIObI fad8 fad16 mi fad2 ~ | \scorBr
% page 64
	fad8 mi16 re mi2 ~ | mi8 re16 dod re2 ~ | re16 dod si dod re si dod re mi fad sol mi | \OboeIFinale 
	\bar "|."
    }
}

OboeIiMovI = {
    \globalMovI
    \clef treble
    \relative do' {
% page 39
	R2. | r8 re16 mi fad sol la si dod mi re dod | re8 r r fad,16 sol la si dod re | dod8 r r4 r | \scorBr
% page 40
	R2. | r4 r8 dod16 re mi8 la, | la[ \PageXLObII \PageXLLegni
% page 41
	la16 dod mi dod \repeat unfold 2 { la si sold si } | la16 \PageXLIOboi 	
% page  42
	sold16 si mi si \repeat unfold 2 { sold la fad la } | sold \PageXLIIOboi
% page  43
	\PageXLIIIObII r8 si4 la16 sold la8. si32 dod | si2 r4 | r8 fad16( sold32 la) la8 fad16( sold32 la) la8 r | \scorBr
% page  44
	\PageXLIVObII \PageXLIVLegni
% page  45
	la16 sold la si dod8 r r4 | la16 sold la si la8 r r4 | red16 dod red mi fad8 r r4 | do16 si do re mi8 r r4 |
	la,16 sold la si do8 r r4 | \scorBr
% page  46
	sold16 fad sold la si8 r r4 | \PageXLVILegni
% page  47
		r4 r r8 dod | dod r r4 r8 re | si r r4 r8 mi | \scorBr 
% page  48
	dod8 r r4 r8 dod | la r r4 r8 fad | la r r4 r8 la | si r r4 r8 la | la r r4 r8 si | \scorBr
% page  49
	si8 r r4 r8 sold | la r r4 r8 fad | si r r4 r8 mi, | fad r r4 r8 sold | mi r r4 r8 mi | \scorBr
% page  50
	fad8 r r4 r8 re | re' r r4 r8 mi, | mi' r r4 r8 la, | la' r r4 r8 dod, | re r r4 r8 fad | \scorBr
% page  51
	la8 r r4 r8 sol, | si r r4 r8 la | do r r4 r8 re | sol r r4 r8 mi | mi r r4 r8 re | \scorBr
% page  52
	re8 r r4 r8 dod | dod r r4 r8 fad, ~ | fad si ~ si[ sol fad mi] | re r r4 r | r8 re'4 dod16 si dod8.( re32 mi) | \scorBr
% page  53
	re8 r r4 r | \PageLIIIOboi | r8 lad[ dod mi] dod si16 lad! | si8[ fad si re si fad] | \scorBr
% page  54
	mi8 r r4 r | r8 la[ dod mi dod la] | r fad[ la dod la fad] | \PageLIVOboi
% page  55
	la4 r8 dod[ fad la] | fad dod r fad[ la dod] | la fad r la[ fad red] | fad la r la[ fad dod] | 
	fad la r la[ fad red] | fad sold r sold[ mid dod] |  \scorBr
% page 56
	fad8 dod r dod8[ fad dod] | \PageLVIOboi
% page  57-58
	\PageLVIIOboi si16 dod la si | dod8[ mi la mi] dod16 re mi8 | \scorBr
% page  59
	mi4 r8 mi, la4 ~ | la16 sol! fad sol la si sol la fad sol la fad | si la sol la si do la si sol4 ~ |
	sol16 fad mi fad sol fad mi re mi8 re'16 dod | re8[ la re la] \PageLIXObII
% page 60, 61
		\PageLXILegni
% page 62
	fad4 r8 la,[ re fad] | re la r re[ fad la] | sold re r fa[ re si] | re fa r fa[ re la] | 
	re fa r fa[ re si] | dod! mi r mi dod la ~ | \scorBr
% page 63
	la8 re16 dod re2 ~ | re8 mi16 re mi2 ~ | mi8 fad16 mi fad2 ~ | fad8 sol16 fad sol2 ~ |
	sol8 la16 sol la2 ~ | la8 re,16 dod re2 ~ | \scorBr
% page 64
	re8 mi16 si dod2 ~ | dod8 re16 la si2 ~ | si16 la sol la si sol la si dod re mi8 ~ | 
	mi mi16 re mi8[ sol fad mi] | re[ re re re re dod] | re4 r r \bar "|." 
    }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MIDI %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% MIDI mov. I %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \score {
        <<
             \new Staff = "Flauto Traverso I" {
                 \set Staff.midiInstrument = #"flute"
                 \unfoldRepeats \FlautoTraversoIMovI }
             \new Staff = "Flauto Traverso II" {
                 \set Staff.midiInstrument = #"flute"
                 \unfoldRepeats \FlautoTraversoIiMovI }
             \new Staff = "Oboe I" {
                 \set Staff.midiInstrument = #"oboe"
                 \unfoldRepeats \OboeIMovI }
             \new Staff = "Oboe II" {
                 \set Staff.midiInstrument = #"oboe"
                 \unfoldRepeats \OboeIiMovI }
        >>
        \midi {}
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SCORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 14)

% showLastLength = R1*10

\book {
    \score {
        <<
           \new GrandStaff <<
             \new Staff = "Flauto Traverso I" {
                 \set Staff.instrumentName = "Flûte Traversière I"
                 \removeWithTag #'part \FlautoTraversoIMovI
             }
             \new Staff = "Flauto Traverso II" {
                 \set Staff.instrumentName = "Flûte Traversière II"
                 \removeWithTag #'part \FlautoTraversoIiMovI
             }
           >>
           \new GrandStaff <<
             \new Staff = "Oboe I" {
                 \set Staff.instrumentName = "Hautbois I"
                 \removeWithTag #'part \OboeIMovI
             }
             \new Staff = "Oboe II" {
                 \set Staff.instrumentName = "Hautbois II"
                 \removeWithTag #'part \OboeIiMovI
             }
           >>
        >>
%        \header { piece = "3. Comme il en était au début" }
        \layout{}
    }
}


#(set-global-staff-size 19)

\paper{
    #(define page-breaking ly:page-turn-breaking)
}

\book {
    \header{ instrument = "Flûte Traversière I" }
    \score{
        \context Staff \with {
             \consists "Page_turn_engraver" } {
             \set Score.skipBars = ##t
             \context Voice = FlautoTraversoI \removeWithTag #'score \FlautoTraversoIMovI
        }
        \layout{}
%        \header { piece = \markup \huge \bold "3. Comme il en était au début" }
    }
}

\book {
    \header{ instrument = "Flûte Traversière II" }
    \score{
        \context Staff \with {
             \consists "Page_turn_engraver" } {
             \set Score.skipBars = ##t
             \context Voice = FlautoTraversoIi \removeWithTag #'score \FlautoTraversoIiMovI
        }
        \layout{}
%        \header { piece = \markup \huge \bold "3. Comme il en était au début" }
    }
}

\book {
    \header{ instrument = "Hautbois I" }
    \score{
        \context Staff \with {
             \consists "Page_turn_engraver" } {
             \set Score.skipBars = ##t
             \context Voice = OboeI \removeWithTag #'score \OboeIMovI
        }
        \layout{}
        \header { piece = \markup \huge \bold "3. Comme il en était au début" }
    }
}

\book {
    \header{ instrument = "Hautbois II" }
    \score{
        \context Staff \with {
             \consists "Page_turn_engraver" } {
             \set Score.skipBars = ##t
             \context Voice = OboeIi \removeWithTag #'score \OboeIiMovI
        }
        \layout{}
        \header { piece = \markup \huge \bold "3. Comme il en était au début" }
    }
}