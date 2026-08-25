\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
 title = "Ich dank dir, lieber Herre"
 subtitle = "tiré de la cantate : Wer da gläubet und getauft wird"
 poet = "Auteur : Johann Kolros (v.1487-1558)"
  opus = "BWV 37/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' a' a' b'
          g' fis' e'\fermata b'
          cis'' b' a' gis'8 [fis']
          gis'4 fis' e'\fermata e'
          a' a' a' b'
          gis' fis' e'\fermata b'
          cis'' b' a' gis'8 [fis']
          gis'4 fis' e'\fermata e''
          d'' cis'' b' a'
          a'8 [b'] cis''4 b'\fermata cis''
          d'' cis'' b' ais'
          b'2.\fermata e'4
          a' b' cis'' d''
          e'' d''8 [cis''] b'4\fermata d''
          cis'' b' e''4. d''8
          cis'' [b'] a' [b'] cis''4 b'
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'8 [d']
          e'4 e' fis' fis'
          e' dis' b\fermata gis'
          a' gis' cis'8 [dis'] e'4~
          e' dis' b\fermata b
          cis'8 [d'] e'4 dis'8 [e'] fis'4
          b8 e'4 dis'8 e'4\fermata e'
          e' e' e'4. dis'8
          cis'4 dis' b\fermata gis'
          fis' e'8 [fis'] gis'4 a'8 [g']
          fis' [gis'] a'4 gis'\fermata ais'
          b' ais' b' fis'
          fis'2.\fermata e'4
          cis' e' e' fis'
          e' fis' gis'\fermata fis'
          e' e'8 [fis'] gis'4 a'
          e'2~ e'8 d' d' [cis']
          cis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Den Glau -- ben mir ver -- lei - he
      an dein' Sohn Je - - sum Christ,
      mein Sünd mir auch ver -- zei - he
      all -- hier zu die - - ser Frist.
      Du wirst mir nicht ver -- sa - gen,
      was du ver -- hei -- ßen hast,
      daß er mein Sünd tu tra - {\markup \concat{"      gen"   \hspace #1  \tiny "(SAB :)"}}
      und lös mich von __ _ _ _ _ der Last.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a8 [b] cis'4 d'8 [cis'] b4
          b a16 [gis a8] gis4\fermata e'
          e' e'8 [dis'] cis' [b16 a] b8 [cis']
          b4 a16 [gis a8] gis4\fermata gis
          a8 [g] fis [e] fis4 fis
          gis8. [a16] b8 [a] gis4\fermata b
          a b cis' b8 [dis']
          e'4 b gis\fermata cis'
          a8 [b] cis' [d'] e'4 e'
          d' cis'8 [d'] e'4\fermata e'
          fis' e' fis'8 [e'16 d'] cis'4
          d'2.\fermata gis4
          fis gis a a8 [b]
          cis'4 b8 [a] e'4\fermata a8 [b]
          cis' [d'] e'4 b a ~ 
          a a2 gis4
          e2.\fermata \fine
        }
        
    \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {
      \repeat unfold 53 {\skip1 } {\markup \concat{"                "   \hspace #1  \tiny "(T :)"}}
      und lös __ _ _ mich von der Last.
    }
    
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis4
          cis a, d dis
          e b, e\fermata e
          a, e fis gis8 [a]
          b4 b, e\fermata d
          cis c b,8 [cis] dis4
          e b, e\fermata gis
          a gis cis8 [dis] e4
          a, b, e\fermata cis
          fis8 [gis] a4 e8 [d] cis4
          d a, e\fermata cis
          b, cis d8 [e] fis4
          b,2.\fermata cis4
          fis e a fis
          cis d e\fermata fis8 [gis]
          a4 gis8 [fis] e [d] cis [b,]
          a, [b,] cis [d] e4 e
          a,2.\fermata \fine
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
