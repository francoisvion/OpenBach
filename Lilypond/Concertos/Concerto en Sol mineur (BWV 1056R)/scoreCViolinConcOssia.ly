\version "2.18.2"
\language "nederlands"

scoreCViolinConcOssia = \relative c' {
  \scoreCGlobal
  R4.*194 |
  \break a'16^\markup{\italic Ossia} bes c b c fis |
  \tag #' vn_conc {
    <a \parenthesize c, \parenthesize d,>4\fermata r8
  }
  \tag #' ob_conc {
    a4\fermata r8
  }
}