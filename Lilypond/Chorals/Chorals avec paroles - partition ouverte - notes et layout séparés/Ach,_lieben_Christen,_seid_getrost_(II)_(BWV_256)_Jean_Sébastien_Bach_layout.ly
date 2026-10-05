\version "2.27.1"

\include "Ach,_lieben_Christen,_seid_getrost_(II)_(BWV_256)_Jean_Sébastien_Bach_notes.ily"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm

  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))
}

\header {
  title = "Ach, lieben Christen, seid getrost (II)"
  poet = "Auteur : Johann Gigas (1514-1581)"
  opus = "BWV 256"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = "S" }
    {
      \clef treble
      \key a \minor
      \time 4/4
      \new Voice = "soprano" \sopranoMusic
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    \new Lyrics \lyricsto "soprano" \sopranoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "A" }
    {
      \clef treble
      \key a \minor
      \time 4/4
      \new Voice = "alto" \altoMusic
    }
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    \new Lyrics \lyricsto "alto" \altoLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "T" }
    {
      \clef "treble_8"
      \key a \minor
      \time 4/4
      \new Voice = "tenor" \tenorMusic
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne
    \new Lyrics \lyricsto "tenor" \tenorLyricsTwo
    \new Staff \with { \autoBeamOff instrumentName = "B" }
    {
      \clef bass
      \key a \minor
      \time 4/4
      \new Voice = "bass" \bassMusic
    }
    \new Lyrics \lyricsto "bass" \bassLyricsOne
    \new Lyrics \lyricsto "bass" \bassLyricsTwo
  >>
}
\markup {\fontsize #0
  \fill-line {
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
      \line { so muss auch unser ird'scher Leib }
      \line { zu Staub und Asche werden, }
      \line { eh' er kommt zu der Herrlichkeit, }
      \line { die du, Herr Christ, uns hast bereit't }
      \line { durch deinem Gang zum Vater. }
      \vspace #1
      \line { 4. }
      \line { Was wollen wir denn fürchten sehr }
      \line { den Tod auf dieser Erden? }
      \line { Es muss einmal gestorben sein, }
      \line { O wohl ist hier gewesen, }
      \line { welcher wie Simeon entschläft, }
      \line { sein Sünd' erkennt, Christum ergreifst! }
      \line { so muß man selig sterben }
    }

    \column {
       \line { 5. }
      \line { Dein' Seel' bedenk', bewahr dein'n Leib, }
      \line { lass Gott den Vater sorgen, }
      \line { sein' Engel deine Wächter sein, }
      \line { b'hüt'n dich vor allem Argen. }
      \line { Ja, wie die Henn' ihr' Küchelein }
      \line { bedeckt mit ihren Flügelein, }
      \line { so tut der Herr uns Armen. }
      \vspace #1
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

\layout {
  \context {
    \Score
    \numericTimeSignature
  }
}
