\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu Leiden, Pein und Tod"
 subtitle = "tiré de la Passion selon saint Jean"
 poet = "Paul Stockmann"
  opus = "BWV 245/28"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          cis''4 b' a' b'
          cis'' dis'' e''2\fermata
          fis''4 e'' d'' cis''8 [b']
          b'2 a'\fermata
          cis''4 e'' d'' cis''
          b' a' gis'2\fermata
          a'4 b' cis'' cis''8 [d''16 e'']
          d''2 cis''\fermata
          cis''4 d'' e'' d''
          cis'' b' cis''2\fermata
          b'4 b' cis''8 [dis''] e''4
          e'' dis'' e''2\fermata
          e''4 cis'' fis''4. e''8
          d''4 cis''8 [b'] b'2\fermata
          cis''4 e'' d'' cis''8 [b']
          b'2 a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          a'4 gis' a' gis'
          a'8 [gis'] fis'4 gis'2\fermata
          b'4 b' gis' a'
          a' gis' e'2\fermata
          a'4 b' a' gis'
          fis' fis' eis'2\fermata
          cis'4 e' e' e'
          a' b' a'2\fermata
          a'4 a' a' a'
          a' gis' a'2\fermata
          gis'4 e' a' gis'
          fis'2 gis'\fermata
          g'4 g' fis'8 [gis'] a'4
          a'8 [gis'] a'4 gis'2\fermata
          a'4 b' a' a'
          a' gis' e'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Er nahm al -- les wohl in acht
      in der letz -- ten Stun -- de,
      sei -- ne Mut -- ter noch be -- dacht,
      setzt ihr ein Vor -- mun -- de.
      O Mensch, ma -- che Rich -- tig -- keit,
      Gott und Men -- schen lie - be,
      stirb da -- rauf ohn al -- les Leid,
      und dir nicht be -- trü -- be!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          e'4 e' e' e'
          e' b b2\fermata
          d'4 b e' e'
          fis' e'8 [d'] cis'2\fermata
          e'4 e' fis' cis'
          d' d' gis2\fermata
          fis4 gis a b
          fis' e' e'2\fermata
          e'4 d' cis' b
          cis'8 [d'] e'4 e'2\fermata
          e'4 b a b
          cis' b b2\fermata
          bes4 a a8 [b] cis'4
          d' e' e'2\fermata
          e'4 e' fis' fis'
          fis' e'8 [d'] cis'2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          a4 e cis e
          a, b, e2\fermata
          b4 gis e a
          d e a,2\fermata
          a4 gis fis e
          d cis8 [b,] cis2\fermata
          fis4 e a gis
          fis gis a2\fermata
          a4 fis cis d
          e e a,2\fermata
          e8 [fis] gis4 fis e
          a b e2\fermata
          g4 a d cis'
          b, a, e2\fermata
          a4 gis fis e
          dis e a,2\fermata \fine
        }
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
