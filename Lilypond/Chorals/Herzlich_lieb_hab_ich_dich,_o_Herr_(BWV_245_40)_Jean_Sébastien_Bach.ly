\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzlich lieb hab ich dich, o Herr"
 subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Martin Schalling (1532-1608)"
  opus = "BWV 245/40"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  ees''4
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata ees''
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata bes'
          c'' d'' ees''8 [f''] g''4
          f'' ees''2 d''4
          ees''2.\fermata } ees''4
          ees'' f'' ees''8 [d''] c'' [d'']
          ees''4 ees'' d''\fermata d''
          ees'' f'' ees''8 [d''] c'' [d'']
          ees'' [g''] f''4 d''\fermata g''
          g'' g'' f'' ees''
          ees'' d'' ees''\fermata d''
          ees'' d'' c'' bes'
          bes' a' bes'\fermata g''
          f'' ees'' d''\fermata g''
          aes''8 [g''] f''4 g'' ees''
          ees'' d'' ees''\fermata ees''
          ees'' ees'' f'' ees''
          ees''2. d''4
          ees''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes'4
          bes' g' g' f'8 [ees']
          ees'4 aes' g'\fermata g'
          g'8 [f'] ees' [f'] g' [f'] ees' [d']
          ees' [f'] f'4 g'\fermata g'
          aes'8 [c''] bes' [aes'] g' [f'] ees'4
          f'2 g'4 aes'
          g'2.\fermata } g'4
          aes' aes' g'4. g'8
          f' [g'] a'4 bes'\fermata bes'
          bes' aes' g' aes'
          bes' c'' bes'\fermata bes'
          bes' c'' c'' aes'
          g' f' g'\fermata aes'
          g' f'8 [bes'] g'4 g'
          g' f' f'\fermata ees'
          f'8 [g'16 aes'] g'8 [a'] b'4\fermata c''
          c'' b'8 [c''] g'4 g'
          ges'8 [f'] f'4 g'\fermata g'
          aes' aes' aes' g'
          f'2 f'
          g'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ach Herr, laß dein lieb En -- ge -- lein 
      m letz -- ten End die See -- le mein
      in A -- bra -- hams Schoß tra - - gen,
      Als -- denn vom Tod er -- we -- cke mich,
      daß mei -- ne Au -- gen se -- hen dich
      in al -- ler Freud, o Got -- tes Sohn,
      mein Hei -- land und Ge -- na -- den -- thron!
      Herr Je -- su Christ,
      er -- hö -- re mich, er -- hö -- re mich,
      ich will dich prei -- sen e -- wig -- lich!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      den Leib in seim Schlaf -- käm -- mer -- lein
      gar sanft ohn ein -- ge Qual und Pein
      ruhn bis am jüng -- sten Ta - - ge!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          f' ees' d' des'
          c'8 [bes] c' [d'] ees'4\fermata g8 [aes]
          bes4 c'8 [d'] ees'4 aes8 [bes]
          c' [ees'] d' [c'] d'4\fermata ees'
          ees'8 [aes'] g' [f'] ees' [bes] des'4
          c'2 bes
          bes2.\fermata } bes4
          c' c' c'8 [d'] ees' [d']
          c'4 f' f'\fermata f'
          bes bes bes f'
          ees'8 [d'] c'4 f'\fermata ees'
          ees' ees' f' f'
          bes bes bes\fermata f'
          bes8 [c'] d'4 ees' d'
          ees'8 [d'] c'4 d'\fermata bes8 [c']
          d'4 ees'8 [c'] g'4\fermata c'
          f'8 [ees'] d' [c'] d'4 c'
          c' bes bes\fermata des'
          c'8 [d'] ees'4 bes bes
          c'2 bes
          bes2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  ees4
          bes c' g bes
          aes aes, ees\fermata c
          g aes ees8 [d] c [bes,]
          aes,4 aes g\fermata ees
          aes bes c'8 [d] ees4
          aes, a, bes,2
          ees2.\fermata } ees4
          aes8 [g] f4 c c'8 [bes]
          a [g] f4 bes\fermata bes8 [aes]
          g [f] ees [d] ees4 f
          g a bes\fermata ees
          ees'8 [d'] c' [bes] aes [bes] c' [aes]
          bes4 bes, ees\fermata f
          g8 [a] bes [g] ees [f] g [ees]
          c4 f bes,\fermata ees
          bes c' g\fermata e
          f8 [g] aes4 b, c
          a bes ees\fermata ees
          aes8 [bes] c'4 d ees
          a,2 bes,
          ees,2.\fermata \fine
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
