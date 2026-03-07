\version "2.24.4"

#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
%    ragged-bottom = ##f
%    ragged-last-bottom = ##f
}

\header {
  title = "Ermuntre dich, mein schwacher Geist"
  subtitle = "Schemellis Gesangbuch N° 16"
  opus = "BWV 454"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 3/4 
}


melody={
  \repeat volta 2 \relative c'' { % A section
    a4 f g |
    a4 (b) c |
    c2 b4 |
    c2.\fermata |

    a4 bes a |
    g2 f4 |
    a2 (g4) |
    f2.
  } \break

  \relative c'' {    % B section
    g4 g a |
    bes4 (a) bes |
    a4 (g) a |
    g2. |
    a4 a a |
    bes4 (c) d |
    d4 (e)  cis |
    d2\fermata

    e4 |
    f2 a,4 |
    bes2 a4 |
    g2 g4\fermata 

    c4 d c |
    bes2. |
    a8 g g2 |
    f2. |
  } \break

}

hymnA=\lyricmode {
  Er -- mun -- tre dich, mein schwa -- cher Geist,
  und tra -- ge gross Ver -- lan -- gen,
}
hymnB=\lyricmode {  
  ein klei -- nes Kind, das Va -- ter heisst, 
  mit Freu -- den zu em -- pfan -- gen.
  Dies is die Nacht, wo -- rin __ es kam 
  und men -- schlich We -- sen an __ sich nahm,
  da -- durch die Welt mit Treu -- en
  als sei -- ne Braut zu _ frei -- en
}

bass={ 
  \repeat volta 2 { 
    \relative c, {
        f4 a c |
        f4 e8 d e f |
        g4 f g |
        c,2.\fermata |

        f4 e f |
        bes,4 a8 g a bes |
        c4 bes c |
        f,2. |
    }
  }
  \relative c {
    c4 bes a |
    g4 d' g |
    d2 d,4 |
    g2. |
    d'4 fis d |
    g4 f8 e f g |
    a4 g a |
    d,2\fermata

    c4 |
    a'4 bes8 a g f |
    e4 c f |
    c2 c,4\fermata  |

    a'4 bes8 a bes c |
    d4 d,8 c d e |
    f4 c' c, |
    f2.
  }
}

bassfigures = \figuremode {
  \repeat volta 2{ % A section
     s4 <6> s |
     s4 <7 5! 2> <6> |
     <6 4>4 s4 <5> |
     s2. |

     s4 <6 5> s4 |
     <6>4 <7 5> <6> |
     <6 4>4 s4 <5 3>4 |
     s2. |
  }
  { % B section
    s4 <6 4 2> <6\\> |
    s4 <_+> s4 |
    <4>2 <_+>4 |
    s2. |
    <_+>4 <6> <_+>  |
    s4 <7 5> <6> |
    <6 4>4  s4 <5 _+> |
    s2

    s4   |
    <6>4 s4 <7 4 2> |
    <6 5>4 s4 s4 |
    <4>4 <3> s4 |

    <6>4 s4 <6 4 2>4 |
    <6>4 s2 |
    s4 <4>4 <3> 4 |
    s2.
  }
}

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        %-Midi instrument values at 
        % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef soprano \global \new Voice = "melody" \melody}
        \new Lyrics \lyricsto "melody" {\hymnA}
        \new Lyrics \lyricsto "melody" {\hymnB}
        \new Staff = "lower" { \clef bass \global \bass}
        \new FiguredBass{ \bassfigures }
    >>
    \layout{ }
    \midi  { \tempo 4 = 70 }
}
