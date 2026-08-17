\version "2.24.0"
#(set-global-staff-size 18)
\header {
  title = "Brandenburg Concerto No. 5 in D Major"
  subtitle = "3rd Movement"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Brandenburg Concerto No. 5 (3rd Movement: Allegro)"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1050"
  mutopiainstrument = "Ensemble: Flute, Two Violins, Violas, 'Cello, Bass and Harpsichord"
  mutopiadate = "1720-21?"
  date = "1719?"
  source = "Bach-Gesellschaft"
  style = "Baroque"
  copyright = ##f
  license = "Public Domain"
  maintainer = "Joshua Koo"
  maintainerEmail = "zz85@users.sourceforge.net"
  lastupdated = "2015-09-27"
 footer = "Mutopia-2015/09/29-548"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url "http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
forteB = \markup { \italic "(forte)" }
pianoB = \markup { \italic "(piano)" }
forte = \markup { \italic "forte" }
piano = \markup { \italic "piano" }
pianissimo = \markup { \italic "pianissimo" }
pianissimoB = \markup { \italic "(pianissimo)" }
trillB = \markup { "(" \musicglyph "scripts.trill" ")"}
cantabile = \markup { \italic "cantabile" }
cantabileB = \markup { \italic "(cantabile)" }
forteI = \markup \italic { \dynamic "f" "orte" }
onceShowTupletNumber = \once \override TupletNumber.stencil = #ly:tuplet-number::print
staffUp = { \change Staff = harpsichordUp \voiceTwo }
staffDown = { \change Staff = harpsichordDown \oneVoice }
\layout {
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = 8
  \tupletSpan 4
  \omit TupletBracket
  \set FiguredBass.figuredBassAlterationDirection = #RIGHT
  \override FiguredBass.BassFigure.font-size = -2
  \hide FiguredBass.BassFigureContinuation
}
\paper {
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 0.8\cm
  bottom-margin = 0.7\cm
}
