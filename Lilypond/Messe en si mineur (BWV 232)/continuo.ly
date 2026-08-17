\version "2.24.0"
\include "defs.ily"
\include "continuo.ily"
instrument = "Continuo"
\book
{
  \include "header.ily"
  \score
  {
    \new Staff
    {
      <<
        \new Voice << \continuoAria \outlineAria >>
        \new FiguredBass \continuoAriaFiguredBass
      >>
    }
  }
}
