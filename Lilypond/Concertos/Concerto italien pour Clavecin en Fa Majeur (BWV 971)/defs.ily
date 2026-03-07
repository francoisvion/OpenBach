\version "2.24.4"

tre = { \clef treble }
ba = { \clef bass }

afterGraceFraction = #(cons 15 16)

\layout
{
  \context
  {
    \Score
    \accepts "SoloStaff"
    skipBars = ##t
    extraNatural = ##f
    \override PaperColumn.keep-inside-line = ##t
    \override NonMusicalPaperColumn.keep-inside-line = ##t
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                               ,(make-accidental-rule 'any-octave 0)
                               ,(make-accidental-rule 'same-octave 1))
    rehearsalMarkFormatter = #format-mark-numbers
    \override Beam.breakable = ##t
    \override NoteCollision.merge-differently-dotted = ##t
    %tempoHideNote = ##t
  }

  \context
  {
    \Staff
    \type "Engraver_group"
    \name "SoloStaff"

    \alias "Staff"

    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override RehearsalMark.font-size = #0
  }
}

\midi
{
  \context
  {
    \Voice
    \remove "Dynamic_performer"
  }
  \context
  {
    \Score
    \accepts "SoloStaff"
  }
  \context
  {
    \Staff
    \type "Performer_group"
    \name "SoloStaff"

    \alias "Staff"
  }
}

\paper
{
  ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  scoreTitleMarkup = ##f
  bookTitleMarkup = \markup
  \column
  {
    \combine \null \vspace #12
    \fill-line { \fontsize #10 {\fromproperty #'header:title } }
    \combine \null \vspace #2
    \fill-line { \fontsize #4 {\fromproperty #'header:composer } }
    \combine \null \vspace #2
    \fill-line { \fontsize #2 {\fromproperty #'header:opus } }
    \combine \null \vspace #5
  }
}