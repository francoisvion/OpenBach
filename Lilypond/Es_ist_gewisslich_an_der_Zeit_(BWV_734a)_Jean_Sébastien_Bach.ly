\version "2.24.4"

\language "deutsch"

\header {
  title = "Nun freut euch, lieben Christen gmein"
  subtitle = "Choral au ténor"
  instrument = "Manualiter"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 734"
  tagline = ##f
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

rh = \relative c' {
  \global
  g'16 fis g a |
  \repeat volta 2 {
    h d c h a g a h c e d c h a h c |
    d g fis e d c h a h c h a g fis g a |
    h g a h c d e fis g h, a g d' cis d e |
    \barNumberCheck #4
    fis a g fis e dis e fis g h a g c fis, g h |
    e, a g fis e d e g fis g fis e d c h a |
    g a h c d c d e f a g f  e d e fis |
    g h a g fis e fis g a d, cis h a g fis e |
    fis g fis e d cis d e fis d e fis g a h c |
    d e d c h a h c d g fis e d c h a |
    g a h c d c d e f a g f e dis e fis |
    g h a g a g fis e d a' g fis g fis e d |
    \barNumberCheck #12
    e f e d e d c h c e d c d c h a |
    h c h a h a g fis g a g fis g f e d |
  }
  \alternative {
    { e f e d e d c h c e d c d c h a | 
      h g a h c d e fis g d e fis g fis g a |
    }
    { e f e d e d c h }
  }
  c e d c d c h a |
  h8 g' fis a, ~ a16 h cis dis e dis e fis |
  g h a g fis e fis g a c h a g fis g a |
  h e d c h a g fis g a g fis e dis e fis |
  g h a g fis e fis g a h cis dis e dis e fis |
  g h a g fis e fis g a c h a g fis g a |
  h g fis e d c h a g a h a g fis e d? |
  cis d h cis d cis d e fis a g fis e d e fis |
  g h a g fis e fis g a d cis h a g fis e |
  fis g fis e d cis d e fis a g fis e dis e fis |
  g h a g fis e fis g a c h a g fis g a |
  h d, e fis g fis g a h d c h a g a h |
  c e d c h a h c d g fis e d c h a |
  g a h c d c d e f a g f e d e fis |
  g h a g fis e fis g a c h a g fis g a |
  h e, d c h a g fis e g' fis e d c h a |
  g fis g a h d c h a g a h c e d c |
  h a h c d g fis e d c h a g fis e d |
  e d e fis g h a g fis e fis g a c h a |
  h g a h c d e f g a g f g f e d |
  e f e d e d c h c e d c d c h a |
  h c h a h a g fis g a g f g f e d |
  e f e d e d c h c e d c d c h a |
  h c h a h a g fis g4
}

koral = \relative c {
  \global
  r4 |
  \repeat volta 2 {
    R1 |
    r2 g' | g4 a h2 |
    \barNumberCheck #4
    a g | a a | h1 ~ | h8 r r4 r2 |
    R1 | r2 g4 a | h2 c | d4 c h2 |
    \barNumberCheck #12
    a1 | g ~ | % bue ind i 1. volte går fint
  }
  \alternative {
    { g4 r r2 | R1 }
    { g4\repeatTie r }
  }
  r2 | R1*2 |
  r2 h |
  h a | g fis | g4 a h2 | a1 ~ | a4 r r2 |
  r2 a | g fis | g d | g a | h1 ~ | h4 r r2 |
  r2 g4 a | h2 c | d4 c h2 |
  a1 | g ~ | g ~ |
  g ~ | g ~ | g16 e d c d c h a h4 
}

bas = \relative c {
  \global
  h8 d |
  \repeat volta 2 {
    g, g' d fis a, a' e g |
    h, c d d, g d' h d |
    g, g'4 fis8 ~ fis e d cis |
    \barNumberCheck #4
    d h cis dis e fis e d |
    c a h c d e fis d |
    g a16 g f8 e d g c, d |
    e cis' d h fis g a a, |
    d a fis a d, c' h a |
    h d g, a h e fis d |
    g g f e a a g fis |
    h e, fis d g d e h |
    \barNumberCheck #12
    c h c a fis' e fis d |
    g d g, a h d h g |
  }
  \alternative {
    { c h c d e a fis d | g c, h a h a g fis }
    { c' g c, d }
  }
  e a fis d |
  g16 a h c d c d e fis8 a g fis |
  e e, h' e dis h e c |
  g a h dis e fis g fis
  e cis dis e fis h, cis dis |
  e h e4 ~ e8 d16 c h8 a |
  g g'4 fis8 ~ fis dis e g ~ |
  g fis16 e fis8 cis d a cis a |
  e' a, d h fis g a cis |
  d, a' fis a d h cis dis |
  e h e4 ~ e8 d16 c h8 a |
  g c h a g e fis d |
  e' c d h fis' d e f ~ |
  f g f e d g c, d |
  e cis dis e fis dis? e fis |
  g a h h, e c fis d |
  g d g4 ~ g8 fis16 g a4 ~ |
  a8 g4 a16 fis g8 d e h |
  c a h cis d e fis d |
  g f e c h d h g |
  c h c d e a, h c |
  d g, c a h d h g c g c d e f16 e d e c8 |
  g2 ~ g4
}

% The way to print the fermata signs over and under the final bar line
% has been taken from
% http://lsr.dsi.unimi.it/LSR/Search?q=Positioning+two+opposite+\fermata+signs+over+the+last+bar+line
% It gives "Two simultaneous mark events, junking this one",
% but otherwise the result we want.

\new PianoStaff <<
  \new Staff {
    \global
    \clef treble
    \rh
    \bar "|."
    \override Score.RehearsalMark.break-visibility
      = #begin-of-line-invisible
    \mark \markup { \musicglyph "scripts.ufermata" }
  }
  \new Staff \with { \consists "Mark_engraver" } {
    \global
    \clef bass
    << { \koral } \\ { \bas } >>
    \bar "|."
    \override Staff.RehearsalMark.direction = #DOWN
    \mark \markup { \musicglyph "scripts.dfermata" }
  }
>>

\markup \column {
  \wordwrap {
    La mélodie du Choral est également connue sous le titre :
    \italic { Es ist gewißlich an der Zeit. }
  }
}

\paper {
  % suppress instrument name on top of each page
  % but keep page numbers
  evenHeaderMarkup = \markup {
    \fill-line {
      % left adjust page number
      \if \should-print-page-number
        \fromproperty #'page:page-number-string
      " "
    }
  }
  oddHeaderMarkup = \markup {
    \fill-line {
      % right adjust page number
      " "
      \if \should-print-page-number
        \fromproperty #'page:page-number-string
    }
  }
}


%{
convert-ly (GNU LilyPond) 2.25.33  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22, 2.19.24,
2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46, 2.19.49, 2.20.0,
2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5,  Not
smart enough to convert \consists Mark_engraver.  If independent mark
sequences are desired, use multiple Mark_tracking_translators. Please
refer to the manual for details, and update manually. 2.23.6, 2.23.7,
2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14, 2.24.0,
2.25.0, 2.25.1, 2.25.2, 2.25.3, 2.25.4, 2.25.5, 2.25.6, 2.25.8,
2.25.9, 2.25.11, 2.25.12, 2.25.13, 2.25.18, 2.25.22, 2.25.23, 2.25.24,
2.25.25, 2.25.26, 2.25.28, 2.25.30, 2.25.31, 2.25.32, 2.25.33
%}
