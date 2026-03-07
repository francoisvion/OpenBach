\paper {
  #(set-paper-size "a4")
  #(layout-set-staff-size 18)
  system-system-spacing #'basic-distance = #18
  top-margin = 10
  bottom-margin = 10
  left-margin = 15
  right-margin = 10
  first-page-number = \first_pg_no
  oddFooterMarkup = \markup {
    \column {
      " "
      \fill-line {
        \edition
      }
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
}