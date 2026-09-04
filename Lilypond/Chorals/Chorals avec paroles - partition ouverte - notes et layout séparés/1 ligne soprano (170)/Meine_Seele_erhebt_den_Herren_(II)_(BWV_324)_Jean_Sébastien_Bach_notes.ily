sopranoMusic = {
  b'2 d''
  b'4 b' b' b'
  c''2 b'
  a' a'
  g'1\fermata
  b'2 d''
  \cadenzaOn \override NoteHead.style = #'altdefault a'\breve
  \hide Stem a'4 a' a' a' a' a' a' \undo \hide Stem e'2 \cadenzaOff \bar "|"
  g' fis'
  e'1\fermata \fine
}

altoMusic = {
  e'2 d'
  d'4 dis' e' fis'
  e' d'2 d'4
  e'2 d'
  d'1\fermata
  d'
  \cadenzaOn \override NoteHead.style = #'altdefault a\breve
  \hide Stem d'4 d' d' d' d' d' d' \undo \hide Stem e'2 \cadenzaOff \bar "|"
  e' dis'
  b1\fermata \fine
}

tenorMusic = {
  g2 a
  b4 a g fis
  g a2 g4
  g2 fis
  b1\fermata
  g
  \cadenzaOn \override NoteHead.style = #'altdefault a,\breve
  \hide Stem fis4 fis fis fis fis fis fis \undo \hide Stem a2 \cadenzaOff \bar "|"
  b2. a4
  g1\fermata \fine
}

bassMusic = {
  e2 fis
  g4 fis e dis
  e fis g e
  c a, d2
  g,1\fermata
  g2 b,
  \cadenzaOn \override NoteHead.style = #'altdefault a,,\breve
  \hide Stem d4 d d d d d d \undo \hide Stem c2 \cadenzaOff \bar "|"
  b,4 a, b,2
  e,1\fermata \fine
}

sopranoLyrics = \lyricmode {
  Mei - ne See -- le er -- he - get den Herrn, und _ mein Geist freu -- et sich Got -- tes mei -- nes Hei - lands.
}

altoLyrics = \lyricmode {
      Mei - ne See -- le er -- he - _ get den Herrn, und mein Geist freu -- et sich Got -- tes mei -- nes Hei lands. _
    }

tenorLyrics = \lyricmode {
      Mei - ne See -- le er -- he - _ get den Herrn, und mein Geist freu -- et sich Got -- tes mei -- nes Hei lands. _
    }

bassLyrics = \lyricmode {
      Mei - ne See -- le er -- he _ - _ get _ den Herrn, und _ mein Geist freu -- et sich Got -- tes mei -- nes Hei _ - lands.
    }
