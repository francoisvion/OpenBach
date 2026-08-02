\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Ach lieben Christen seid getrost"
  opus = "BWV 256"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f    
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 c''4
          c'' a'8 [b'] c'' [d''] e''4
          d''8 [e''16 f''] d''4 c''\fermata c''
          b' a'8 [b'] c''4 d'' 8 [c'']
          b'2 a'4\fermata }
          \partial 4 d'' \bar "|"
          e'' e'' b'8 [c''8] d''4
          c'' c'' b'\fermata c''
          d'' a'8 [b'] c''4 b'
          a'16 [b' c''8] a'4 g'\fermata c''
          b' a'8 [b'] c''4 d''8 [c'']
          b'2 a'4\fermata \bar "|."
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 e'8 [f']
          g'4 f' g' g'
          a' g'8 [f'] e'4\fermata fis'
          g' f' e' a'
          a' gis' e'\fermata }
          \partial 4 g' \bar "|" 
          g' g' d'8 [e'] f'4
          e' a' gis'\fermata a'
          a'8 [g'] fis'4 e' d'8 [g']  
          g' [e']  fis'4 d'\fermata e'
          d'8 [e' fis' f'] e'4 a'~
          a' gis' e'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ach lie -- ben __ Chris -- ten, seid ge -- trost,
      Wie thut ihr so ver -- za -- gen,
      Die Straf' wir wohl ver -- die -- net ha'n
      Das muß be -- ken -- nen Je -- der -- mann,
      Nie -- mand darf sich aus -- schlie -- ßen.

    }
    \new Lyrics \lyricsto "soprano" {
      Weil uns der Herr heim -- su -- chen tut,
      laßt uns von Her -- zen sa -- gen:
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 c'4
          c' c' c' c'
          c' b g\fermata a
          d' d' c'8 [b] a4
          f' e'8 [d'] cis'4\fermata }
          \partial 4 b \bar "|"
          c' g8 [a] b4 a8 [b]
          c' [d'] e'4 e'\fermata  e'
          a d' g8 [a b d']
          e'4 d'8 [c'] b4\fermata g8 [a]
          b [c'] d'4 c'8 [b a c']
          f' [d' b e'] cis'4\fermata \bar "|."
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 a4
          e f e8 [d] c4
          f g c\fermata a
          g d' a8 [g f e]
          d4 e a,\fermata }
          \partial 4 g,
          c8 [d e f] g4 f
          a,8 [ b, c d] e4\fermata a8 [g]
          fis [e] d4 e8 [fis] g4 
          c d g,\fermata e8 [fis]
          g4 fis8 [gis] a [g f e] 
          d8 [b,] e4 a,4\fermata \bar "|."
        }
      >>
    }
  >>
}
\markup {\fontsize #-1.5
  \fill-line {
%
    \column { 
      \line { 2. }
      \line { In deine Hand uns geben wir, }
      \line { o Gott, du lieber Vater, }
      \line { denn unser Wandel ist bei dir, }
      \line { hier wird uns nicht geraten. }
      \line { Weil wir in dieser Hütte sein, }
      \line { ist nur Elend, Trübsal und Pein, }
      \line { bei dir der Freud' wir warten. }
      \vspace #1
      \line { 3. }
      \line { Kein' Frucht das Weizenkörnlein bringt, }
      \line { es fall' denn in die Erden: }
      \line { so muß auch unser ird'scher Leib }
      \line { zu Staub und Asche werden, }
      \line { eh' er kommt zu der Herrlichkeit, }
      \line { die du, Herr Christ, uns hast bereit't }
      \line { durch deinem Gang zum Vater. }
    }

    \column {
      \line { 4. }
      \line { Was wollen wir denn fürchten sehr }
      \line { den Tod auf dieser Erden? }
      \line { Es muß einmal gestorben sein, }
      \line { O wohl ist hier gewesen, }
      \line { welcher wie Simeon entschläft, }
      \line { sein Sünd' erkennt, Christum ergreifst! }
      \line { so muß man selig sterben }
      \vspace #1
      \line { 5. }
      \line { Dein' Seel' bedenk', bewahr dein'n Leib, }
      \line { laß Gott den Vater sorgen, }
      \line { sein' Engel deine Wächter sein, }
      \line { b'hüt'n dich vor allem Argen. }
      \line { Ja, wie die Henn' ihr' Küchelein }
      \line { bedeckt mit ihren Flügelein, }
      \line { so tut der Herr uns Armen. }
    }

    \column {
      \line { 6. }
      \line { Wir wachen oder schlafen ein, }
      \line { so sind wir doch wir doch des Herren. }
      \line { Auf Christum wir getaufet sein, }
      \line { der kann dem Satan wehren. }
      \line { Durch Adam auf uns kommt der Tod, }
      \line { Christus hilft uns aus aller Not, }
      \line { drum loben wir den Herren. }
    }
  }
}
 
\paper {
  indent = 10
  page-count = 1
}
\layout {}
 
