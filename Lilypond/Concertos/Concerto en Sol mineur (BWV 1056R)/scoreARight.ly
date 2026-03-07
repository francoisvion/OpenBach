\version "2.18.2"
\language "nederlands"
scoreARight = \relative c'' {
  \scoreAGlobal

  <<{<d, g>8\paren\f bes'16 c16} \\ {bes,8 d}>> <d g d'>8 <d g bes>8 |
  <<{<g bes>8 bes16 c16} \\ {c,8 d}>> <d g d'>8 <d g bes>8 |
  <<{<g d'>8 bes16 c16} \\ {d,8 d}>> <d g d'>8 <d g bes>8 |
  <es a c>8-. <g c es>8-. r4 |
  <<{<g c>8 c8} \\ {es,8 es16 f}>> <g c>8 <g c es>8 |
  <<{c8 c8} \\ {g8 es16 f}>> <g c>8 <g c es>8 |
  <c g'>8 <g es'>16 f'16 <c g'>8 <g c es>8 |
  <fis a d>4 r4 |
  <fis a d>8 fis16 g16 <d a'>8 <d fis c'>8 |
  <d g bes>8 g16 a16 <d, g bes>8 <g d'>8 |
  <e a cis>16 b' a b <g cis>8 <g a e'>8 |
  <<{cis8 d8~ d16 c bes a} \\ {<a e>8 <a~ fis~>8 <a fis>4}>> |
  <<{g16 a bes c} \\ {d,4}>> <d g d'>8 <d g bes> |
  <<{g16 a bes c} \\ {<c, c'>4}>> <g' d'>8 <d g bes> |
  <es g c>8 r <c fis a> r |
  <c es g>8 r <d a' c> r |
  <d g bes>8 <c fis a> <d g> <es a> |
  <d fis a>8 fis16 e d8 <fis a c> |
  <d g bes>8 <d g>16 a' <d, g bes>8 <c fis a> |
  \tuplet 3/2 {<bes d g>16 d c bes c d} g,8 r |
  %21
  <bes d g>8\paren\p r <d g bes> r |
  <c fis a>8 r <c fis> r |
  <fis a>8 r <c fis a> r |
  <bes d g>8 r <d g bes> r |
  <d g d'> 8 r <d g b> r |
  <es g c>8 r <g c es> r |
  <f c' f>8 r <f a c> r |
  <f bes d>8 r <<{bes16 c d8} \\ {<d, f>8 f}>> |
  <<{es'16 bes g as bes8 es16 d} \\ {g,8 d es <g bes>}>> |
  <<{c8. bes16 a8 c} \\ {a4 <c, f>8 f}>> |
  <<{c'16 bes8 c16 \tuplet 3/2 {bes16 es d c bes a}} \\ {<d, f>8 f g es}>> |
  <<{\tuplet 3/2 {bes'16 d c bes a bes}} \\ {e,8 f}>> <f a c>8 <a f'> |
  <bes f'>8 <g c es> <<{\tuplet 3/2 {d'16 f es d c es}} \\ {bes8 a}>>|
  <f bes d>4 r |
  %35
  <<{<bes d>8\paren\f <f bes> bes16 c d8} \\ {f,8 d16 es f4}>> |
  <<{bes8 bes bes16 c d8} \\ {f,8 <d f>16 es f4}>> |
  <d g bes d>8 <g bes>16 <es a> <d bes'> c' <f, bes d>8 |
  <f bes f'>8 <f bes> r4 |
  <f bes>8\paren\p f16 g as8 <c, f as>8 |
  <<{<d g>8 d16 es} \\ {c8 b}>> f'8 <c f> |
  <d g>8 d g <d g b> |
  <<{<g c>8 r} \\ {f8 es}>> r <g c es> |
  <f as c>4 <<{<as bes>} \\ {f8 \tuplet 3/2 {es16 f g}}>> |
  <<{as4 g} \\ {<es g>8 <d f>~ <d f> \tuplet 3/2 {c16 d es}}>> |
  <c f>8 <c es g> <c d as'> <as' c> |
  <<{d16 c b a g8 g} \\ {g8 d\paren\f <b d> d}>> |
  <d g b>2\paren\p |
  <es g c>2 |
  <f b d>2 |
  <es g c>2 |
  <d as' b>2 |
  <es g c>2 |
  <f g c>2 |
  <d g b>2 |
  %55
  <<{c'8\paren\f c16 b} \\ {<es, g>8 <es g>16 f}>> <g c>8 <g c es> |
  <g c es>8 r8 r4 |
  <c, g' c>8 <es g c>16 <g b> <g c>8 <g c es> |
  <as c>8 r r4|
  <d, g d'>8\paren\p b'16 c <<{d8 b} \\ {g8. f16}>> |
  <es c'>8 r r4 |
  <g c es>8 <f b d> <c g' c> <f as c> |
  \tag #' vn_conc {
    <f as c>8 r r4 |
    <d g b>8 r r4 |
  }
  \tag #' ob_conc {
    <<{<as' c>8 r}\\{\tuplet 3/2 {f16 d es f g as}}>> bes,8 r8|
    <<{<g' b>8 r}\\{\tuplet 3/2 {d16 b c d es f}}>> g,8 r8 |
  }
  <<{<c' es>4 <bes d>} \\ {g8 as f g}>> |
  <<{<as c>8 c <g b> b} \\ {es,8 f d f}>> |
  <<{d'8 r <b d> <d f>} \\ {\tuplet 3/2 {f,16 g a b c d} f,8 g}>> |
  <g c es>8 <f as c> <es g c> <d g b> |
  <<{<fis a>8 g~} \\ {es8 d16 c}>> <d g>8 <c g'> |
  <<{g'8 <d as'>16. f32} \\ {\tuplet 3/2 {c16 d es} c8}>> <c es g>8 <d g b> |
  <es g c>8 r r4 |
  %71
  <<{c'8\paren\f c~ c <c es>} \\ {<es, g>8 es16 f g8 g}>> |
  <<{<c es>8 c~ c <c es>} \\ {f,8 es16 f g8 g}>> |
  <<{c8 c~ c <c es>} \\ {g8 es16 f g8 g}>> |
  <f as c>4 r |
  <<{bes8 bes~ bes <bes d>} \\ {<d, f>8 d16 es f8 f}>> |
  <<{<bes d>8 bes~ bes <bes d>} \\ {g8 d16 es f8 f}>> |
  <<{bes8 bes~ bes <bes d>} \\ {f8 d16 es f8 f}>> |
  <g c es>4 r8 \tuplet 3/2 {bes16\paren\p as f} |
  <bes, es g>8 r <es as> r |
  <es bes'>8 r <es as c> r |
  <f bes d>8 r <es bes' es> r |
  <b' d>8 r <g c> r |
  <<{<a d>8\paren\f d~ d d} \\ {fis,8 fis16 g a8 <fis a>}>> |
  <<{<g bes>8 bes16 a g8 g} \\ {d8 d <bes d> d}>> |
  <<{a'8 a16 b} \\ {<cis, e>8 e}>> <g cis>8 <g a e'> |
  <g cis e>8 <fis a d>\paren\p <fis a> <d fis a> |
  <d g>4 r8 <d g d'> |
  <d g bes>4 r8 <g bes d> |
  <g bes d>4 r8 <g bes d> |
  <es~ g~ c~>4 <es g c>16 es g c |
  <es,~ a~ c~>4 <es a c>16 d fis a |
  <d, g bes>4 <g c> |
  <g d'>4 <g c es> |
  <a c es>4 <a bes d> |
  <g bes d>4 <g a cis> |
  <fis a d>2 |
  <g bes d>2 |
  <fis c' es>2 |
  <g bes d>2 |
  <e g bes cis>2 |
  <fis a c>2 |
  <d bes' d>4 <e g bes> |
  <fis bes c>4 <g c es> |
  <a c fis>8\paren\f a16 bes c8 <g es'> |
  <fis a d>4 r |
  <d g bes>8 bes'16 c <<{d8 bes} \\ {g4}>> |
  <g c es>4 r |
  <<{es'4\paren\p} \\ {<fis, a>16 bes c8}>> r4 |
  <d, g d'>8\paren\f bes'16 c <<{d8 bes} \\ {g4}>> |
  <g c>8 bes16 c <<{d8 bes} \\ {g4}>> |
  <es g c>8 r <fis c'> r |
  <g c>8 r <d a' c> r |
  <d g bes>8 <c fis a> <d g> <es a> |
  <d fis a>8 fis16 e d8 <fis a c> |
  <d g bes>8 <d g>16 a' <d, fis bes>8 <c fis a> |
  \tuplet 3/2 {<bes d g>16 d c bes c d} g,4\fermata

  \bar "|."

}
