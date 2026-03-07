\version "2.24.4"

\header {
  title = "Applicatio"
  opus = "BWV 994"
  composer =	"Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

voiceone = \relative c' {
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c8[\mordent d e f] g[\mordent a b g] |			% bar 1
    c[\mordent d e f]\prallmordent g4 g, |			% bar 2
    <<
       {
         \override Voice.Script #'padding = #2
         <c\mordent e>2 <b\mordent d>
         \revert Voice.Script #'padding
       } \\
       { r4 g r g }
    >> |							% bar 3
    <<
       { r4 d'8[ c] <c a>[ b]\mordent ~ b4 } \\
       { r8 a4. fis8[ g] ~ \stemUp g4 \stemNeutral } \\
       { fis2 r4 \stemDown d \stemNeutral }
    >> |							% bar 4
  } \break
  \repeat volta 2 {
    g'8[ f e d] c[\prall b a a'] |				% bar 5
    a4.\upprall gis8
    <<
      { a2 } \\
      { r4 a,8[ b]^\prallmordent }
    >> |							% bar 6
    <<
      { c8[ c c c] c[ c c c] } \\
      { e,[ bes' a g] a[ g f e] }
    >> |							% bar 7
    <<
      { c'4.\upprall b8 c2 } \\
      { d,4. f8 ~ f[ e16\prall d] e4 }
    >> |							% bar 8
  }
}

voicetwo = \relative c {
  \key c \major
  \time 4/4
  \clef "bass"

  \repeat volta 2 {
    <c e>2 <b d> |						% bar 1
    <a c> <g b> |						% bar 2
    c8[ d e\mordent f] g[ a b c] |				% bar 3
    d4\mordent d,
    << 
      { g2\mordent } \\
      { r4 g, }
    >> |							% bar 4
  }
  \repeat volta 2 {
    <g' b>2 <a c> |						% bar 5
    <<
      { <b d>2 ~ d8[ c16\prall b] c8[ d] } \\
      { r4 e, a2 }
    >> |							% bar 6
    a8[ g f e] f[ g a\mordent g] |				% bar 7
    f[ d] g[\mordent g,] 
    <<
      { c2\mordent } \\
      { r4 c, }
    >> |							% bar 8
  }
}

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout {}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 85 4)
    }
  }
}
