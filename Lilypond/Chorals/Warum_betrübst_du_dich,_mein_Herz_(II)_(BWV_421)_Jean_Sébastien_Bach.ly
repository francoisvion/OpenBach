\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Warum betrübst du dich, mein Herz (II)"
 poet = "Anonyme"
  opus = "BWV 421"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a'8 [b'] c''4 b' e''
          d'' c'' b'\fermata c''8 [b']
          a'4 e'' d'' e''
          a'8 [b'] cis''4 d''\fermata c''
          b' e'' d'' c''
          b'2.\fermata a'8 [b']
          c''4 c'' d'' d''
          e'' e'' c''\fermata e''
          d'' c'' b' a'8 [b']
          c''4 b' a'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'4. a'8 a' [gis'] g'4
          f' fis' b\fermata e'
          f' g' g' g'
          f' e' f'\fermata e'
          e' e'8 [fis'] gis'4 a'
          gis'2.\fermata a'8 [gis']
          a'4 a'8 [g'] f'4 bes'
          bes' a'8 [g'] a'4\fermata c''
          b' a'8 [g'] fis' [gis'] a'4
          a' gis' e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wa -- rum be -- trübst du dich, mein Herz,
      be -- küm -- merst dich und trä -- gest Schmerz
      nur um das zeit -- lich Gut?
      Ver -- trau du dei -- nem Her -- ren Gott,
      der al -- ler Ding er -- schaf -- fen hat.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'8 [d']
          e'4 a b bes
          a a gis\fermata a
          a c' c'8 [b16 a] b8 [cis']
           d'4 a a\fermata a
          gis a b c'8 [d']
          e'2.\fermata e'8 [d']
          c'4 ees' d' g'
          g' f'8 [e'] f'4\fermata g'
          g'8 [f'] e'4 d' c'8 [d']
          e'4. d'8 cis'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a8 [b]
          c'4 a e cis
          d dis e\fermata a,
          d c g e
           f8 [g] a4 d\fermata a
          e c b, a,
          e2.\fermata c'8 [b]
          a [g] f4 bes8 [a] g4
          c' c f\fermata c'
          g a d8 [e] f4
          c8 [d] e4 a,\fermata \fine
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
