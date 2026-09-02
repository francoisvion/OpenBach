\version "2.27.1"

celloSolo = \relative c {
  \clef tenor \key g \major \time 4/4 \tempo "Adagio" 8=63
  \repeat volta 2 { 
    b'~^"con suono"_\markup {\dynamic mf \italic{molto espressivo} } 
    b16 c(d e) a,4~  a16 b(c d)
    g,8\<  g'16(e) c4~\!  c16 a'(fis d) c8 b16(d)
    b8(\>  a16 g)\!  r4 g'4~\p\downbow g16 e(fis g)
    a,4~ a16 cis(\<  e g)\! fis4~\>  fis16(\! d  b a)
    g4~ g16  b(\< d fis)\! e4~\>  e16\! cis(a g)
    fis(g) cis(d) d4~\<  d16 e(g b)\!  cis,8.(d16)
    \alternative{ 
      { d4~\>  d8\!  r8 }  
      { d4~\> d8\! r8 } 
    }
  }
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1/2)  
    f4~\downbow f16 d(b a) \crescTextCresc
    gis4~ gis16\< a(b c) d(e) f gis b8(\! d,)
    c b16(a) c'4~\f c16 b(a b32 gis) a4~
    a16_\markup { \italic {con molta espressione} } 
    g(f e) d(c) b(gis')		      
    a([ b32 a gis) a16.(] \grace{b16[ c]} b8. a16)
    a4. r8 c,4~\mp c16 b(a c)
    b4~ b16\< g(a b) c(d) e^\markup { \italic largamente } 
    f g[ f32(e) f8]\!
    f8(\> e)\! r16(a,\p b c) \tuplet 3/2 {fis,([\< e fis)]} 
    \tuplet 3/2 {g([ fis g)]} \tuplet 3/2 {a([ g a)]} 
    \tuplet 3/2 {b([ a b)]\!} \crescHairpin %13
    \tuplet 3/2 {c([\f b c)]\<} a'8~\! 
    a16\> b,(c\! a) b(_\markup { \italic {poco rit.} } 
    d) g e d(c) fis(g)
    b,8(\> a)\! r4 b~^\markup { \italic {a tempo} }\pp 
    b16 c(d e)
    a,4~ a16 b(c d) g,8 g'16(e) c4~(
    c16 a') fis d c8(b16 c) b(\< d b g) 
    \clef bass f8(e16 f)\! \crescTextCresc
    e4~(\< e16 fis) fis(g) g(fis) g e fis8.(g16)\!
    \alternative{
      { g4~\f g16 b,(e cis)_\markup { \italic allargando } d(g) c b 
        \grace{\tuplet 3/2 {g16[(a b]}} a8. g16)
        \set Timing.measurePosition = #(ly:make-moment -1/2) 
        g4~\>^\markup { \italic {a tempo} } g8 r8 }
      { g4~\f g16_\markup { \italic {molto rit.} } b,(e cis) e(g) c, b 
        \grace{\tuplet 3/2 {g16[(a b]}} a8.\fermata g16) 
        g1 \fine} 
    }
  }
}

pianorighthand = \relative c'' { 
  \clef treble 
  \key g \major 
  \time 4/4 
  \repeat volta 2 {
    r8\mf <d, g b>8_.(<g b d>_.) r8 r8 <d a'>_.(<fis a d>_.) r8
    r8 <d g>8_.(<c g' c>8_.) r8 r8 <fis a c>^.(<c' fis a>^.) r8
    r8\> <g' d b>^.(<b, g d>^.) r8\! r8\p <e, g b>_.(<g b e>_.) r8
    r8 <g a e'>_.(<e g a>_.) r8 r8 <d fis a>_.(<fis a d>_.) r8
    r8 <d g>_.(<g, d' fis>_.) r8 r8 <e' a>_.(<a, e' g>_.) r8
    r8 <g' a>_.(<fis a d>_. <d a' dis>_. \< <d g b>^. <g b e g>^.)
    << { c4\! } \\ { <fis, a>8(<e g>) } >>
    \alternative{
      { r8\> << {<g a>8(\! <fis d'> <c' a>)} \\ {d,4 d8} >> }
      { r8\> <a' g d>([ <d fis, d>)] r8\! }
    }
  }
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1/2)
    r8\mf <f d a>8^.(<d a f>^.) r8 \crescTextCresc
    r8 <b f d>_.(<d b f>_.) r8\< r8 <d b f>_.(<e, d b>_.) r8\!
    r8\f <c' a e>_._- <a e c>4~ <a e c>8[ <e' c a>] <a, e c>4~
    <a e c>8 <a' d, b>_._- <b, a f>_.[\(<d gis, d>_.] 
    <c a e>_.[ <b f>_.]\) << {e,4} \\ {<b a>8(<d gis,>)} >> %10
    r8\> <e c g>_.(<c e a>_.) r8\! r8\p <e a c>_.(<d c g>_.) r8
    r8 <d b>_.(<g d b>_.) r8 r8\< <g c, g>_.(<a g c,> <b g d>_.)\!
    r8\> <c g e>_.(<e c g>_.)\! r8\p r8 <g,\< c, g>_.(
    <fis c a>_. <e c b>_.\!
    <d c a>_. <e' a, c,>_. <d a d,>_. <c a fis>_. 
    <b g d>_._\markup { \italic { poco rit.} } 
    <g' d g,>_. <g c, g>_. <g, e g,>_.)
    r8\> <g d a>_.(<fis d a>_.)\! r8 \crescHairpin
    r8^\markup{ \italic {a tempo} }\pp <b g d>_.(<d b g>_.) r8
    r8 <a d,>_.(<d a fis>_.) r8 r8 <g, d>_.(<c g c,>_.) r8
    r8 <c a fis>_.(<a' fis c>_.) r8 r8 <b, g d>_.(\< <f d b>_.) r8\!
    \crescTextCresc r8\< <e c g>_.(<a e a,>_.) r8 r8 <g a,> 
    << { <f d>4\! } \\ { b,8(c) } >>
    \alternative{
      { r8\f <g' b,>_.(_\markup { \italic alargando } 
        <d' g, d>_. <cis g e>_. <d g, d>_. <g, e>_.)
        << { d4 } \\ { <c g>8(fis,) } >> 
        \set Timing.measurePosition = #(ly:make-moment -1/2) 
        r8^\markup{ \italic{a tempo} } <d' b g>_.(<g d b>_.) r8 }
      { r8\f <g b,> <d' g, d>_\markup{ \italic{molto rit.} } 
        <cis g e> <d g, d> <g, e>
        << { d4\fermata } \\ { <c! g>8(a)\fermata } >>
        r8 << { <e' c>16(<d b> <c a> <d b> <e c>8 <d b>2) \fine} \\ 
              { g,4.(g2) } >> }
    }
  }
}
    
pianolefthand = \relative c {
  \clef bass
  \key g \major
  \time 4/4
  \repeat volta 2 {
    <g g'>4. <g g'>8_._- <fis fis'>4. <fis fis'>8_._-
    <e e'>4. <e e'>8_._- <d d'>4. <d d'>8_._-
    <g g'>4. <fis fis'>8_._- <e e'>4. <d d'>8_._-
    <cis cis'>4. <cis cis'>8_._- <d d'>4. <cis cis'>8_._-
    <b b'>4. <b b'>8_._- <cis cis'>4. <cis cis'>8_._-
    <d d'>4. <fis fis'>8_.(<g g'>_. <e e'>_. <a a'>_. <a, a'>_.)
    \alternative{
      { d2 }
      { <d d'>4. <c c'>8 }
    }
  }
  \repeat volta 2 { 
    \set Timing.measurePosition = #(ly:make-moment -1/2)
    <<
      {
        r8 <b'' d>8_.(<a b>_.) r8
        r8 <gis b>8_.(<b d>_.) r8 r8 <gis b>_.(<gis e>_.) r8
        r8 <a c> <a e> r8 r8 <c e> <a e> r8
        r8 <b d a'> <a fis b>
      }
      \\
      {
        <b, b,>4. <b b,>8_._- 	
        <e e,>4. <f f,>8_._- <gis, gis,>4. <e e,>8
        <a a,>4. <a a'>8_._- <g g'>4. <g g'>8
        <f f'>4.
      } 
    >>
    <f f'>8_.\(<e e'>_. <d d'>_. <e e'>_. e_.\)
    << { r8 <c' e>8_.(<e a>_.) r8 } \\ { <a, a,>4. <g g'>8_._- } >>
    <fis fis'>4. <d d'>8_._-
    <g g'>4. <f f'>8_._- <e e'>4. <g g'>8_._-
    <c, c'>4. <b b'>8_._- <a a'>4. <g g'>8_._-
    <fis fis'>4. d'8_.(<g, g'>_. <b b'>_. <e e'>_. <c c'>_.)
    <d d'>4. <fis fis'>8_._- <g g'>4. <g g'>8_._-
    <fis fis'>4. <fis fis'>8_._- <e e'>4. <e e'>8_._-
    <d d'>4. <d d'>8_._- <g g'>4. <g, g'>8_._-
    <c c'>4. <a a'>8 <d d'>4. <d d'>8 
    \alternative{
      { <e e'>4. <a, a'>8(<b b'>[ <c c'>)] <d d'>_.([ d_.)] 
        \set Timing.measurePosition = #(ly:make-moment -1/2) 
        <g, g'>4. <c c'>8_._- }
      {<e e'>4. <a, a'>8 <b b'>[ <c c'>] <d d'>[ d]\fermata
        <g, g'>1 \fine}
    }
  }
}

\book {
  \header {
    title = "Arioso"
    subtitle = "tiré de la Cantate 'Ich steh mit einem Fuß im Grabe'"
    composer = "Jean-Sébastien Bach (1685-1750)"
    opus = "BWV 156"
    tagline = ##f
  }
  \bookpart {
    \score {
      <<
        \new Staff = "Violoncelle" \with {
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
        } 
        {
          \set Staff.instrumentName = "Violoncelle"
          \set Staff.midiInstrument = #"cello"
          \celloSolo
        }
        \new PianoStaff = "Clavier" {
          \set PianoStaff.instrumentName = #"Clavier"
          <<
            \new Staff {
              \pianorighthand
            }
            \new Staff {
              \pianolefthand
            }
          >>
        }
      >> 
      \midi{
        \context{
          \Voice
          \remove "Dynamic_performer"
        }
      }
      \layout{#(layout-set-staff-size 22)}
    }
  }

  \bookpart{
    \score{
      \new Staff = "Violoncelle" {
        \set Staff.instrumentName = "Violoncelle"
        \celloSolo
      }
      \layout{
        #(layout-set-staff-size 22)
      }
    }
  }
}