\version "2.22.0"

footnote_markup_dotted_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    d''16.[ 32]
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_long_dotted_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    d''8.[ 16]
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_two_one_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 8 {8[ 16]}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_three_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 8 {16[ 16 16]}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_six_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 8 {16[ 16 16] 16[ 16 16]}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_rest_one_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 8 {r8 16}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_five_one_A = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    8~ \tuplet 3/2 8 {8[ 16]}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

dotted_rhythm_footnote_A = \markup {Every dotted rhythm \footnote_markup_dotted_A that coincides with triplet \footnote_markup_triplet_three_A may be played as \footnote_markup_triplet_two_one_A}
long_dotted_rhythm_footnote_A = \markup {Dotted rhythm \footnote_markup_long_dotted_A that coincides with triplets \footnote_markup_triplet_six_A may be played as \footnote_markup_triplet_five_one_A}
sixteenth_to_triplet_footnote_A = \markup {May be played as \footnote_markup_triplet_rest_one_A}

footnote_markup_dotted_C = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    d''8.[ 16]
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_two_one_C = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 4 {4 8}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_three_C = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 4 {8[ 8 8]}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}

footnote_markup_triplet_tworest_one_C = \markup \score {
  \new RhythmicStaff \with {
    \override StaffSymbol.line-count = #0
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  {
    \tuplet 3/2 4 {r4 8}
  }
  \layout {
    indent = 0
    first-indent = 0
    #(layout-set-staff-size 12)
  }
}


dotted_rhythm_footnote_C = \markup {Every dotted rhythm \footnote_markup_dotted_C that coincides with triplet \footnote_markup_triplet_three_C may be played as \footnote_markup_triplet_two_one_C}
eighth_to_triplet_footnote_C = \markup {Could be played as \footnote_markup_triplet_two_one_C}
rest_eighth_to_triplet_footnote_C = \markup {Could be played as \footnote_markup_triplet_tworest_one_C}