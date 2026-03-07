#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
\include "common/conductor-paper.ily"
\include "common/mutopia-header.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"

  \bookpart {
    \CoverA
  }

  \bookpart {
    \header { copyright = ##f }
    \paper {
      print-page-number = ##f
      two-sided = ##f
    }
    \PageToc
  }
  \include "mov1/mov1-music.ily"
  \bookpart {
    \include "mov1/mov1-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtI
    \include "common/conductor-staves.ily"
  }

  \include "mov2/mov2-music.ily"
  \bookpart {
    \include "mov2/mov2-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtII
    \include "common/conductor-staves.ily"
  }

  \include "mov3/mov3-music.ily"
  \bookpart {
    \include "mov3/mov3-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtIII
    \include "common/conductor-staves.ily"
  }
