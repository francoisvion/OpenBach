\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Welt, sieh hier dein Leben (vv. 3–4)"
  opus = "BWV 245/11"
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
          \partial 4  cis''4
          a' b' cis''8 [d''] e''4
          d''2 cis''4\fermata cis''8 [d'']
          e''4 e'' b' d''8 [cis'']
          a'2 gis'4\fermata
          e'
          a' b' cis''8 [d''16 e''] d''8 [cis'']
          b'2.\fermata cis''4
          a' b' cis''8 [d''] e''4
          d''2 cis''4\fermata
          cis''8 [d'']
          e''4 e'' b' cis''
          a'2 gis'4\fermata e'
          a' b' cis''8 [d''] e'' [d'']
          cis''4 b' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          fis' gis' a'8 [b'] cis''4
          cis'' b'8 [a'] gis'4\fermata a'
          a' a' gis' b'8 [a']
          fis'2 e'4\fermata
          b
          e' fis'8 [gis'] a' [b'16 cis''] b'8 [a']
          gis'2.\fermata gis'4
          fis' e' e' fis'
          fis' eis' fis'\fermata
          fis'
          e' a'8 [gis'] fis'4 e'8 [d'16 cis']
          fis'2 e'4\fermata e'
          e' d' cis'8 [e'] a'4
          a' gis' e'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Nun ru -- hen al -- le Wäl -- der, Vieh, Mensch -- en, Städt' und Fel -- der, es schläft die gan -- ze Welt; ihr a -- ber mei -- ne Sin -- nen, auf, auf! ihr sollt be -- gin -- nen, was eu -- rem Schö -- pfer wohl -- ge -- fällt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  e'4
          d' d' e' a
          a b cis'\fermata fis'
          e' e' e' e'
          e' dis' gis\fermata
          gis
          a d' e'8 [a] gis [a]
          e'2.\fermata cis'4
          cis' b a8 [b] cis'4
          b gis ais\fermata
          a
          a a a gis
          cis' b b\fermata cis'
          cis' b e'4. fis'8
          e'4 d' cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          d' cis'8 [b] a4. g8
          fis2 eis4\fermata fis
          cis8 [b,] cis [d] e4 a,
          b, bis, cis\fermata
          d
          cis b, a, d
          e2.\fermata eis4
          fis gis a ais
          b2 fis4\fermata
          fis
          cis8 [b,] cis4 dis e
          e dis e\fermata cis
          fis8 [e] fis [gis] a4 cis8 [d]
          e4 e a,\fermata \fine
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
