sopranoMusic = {
  \shiftDurations #-1 #0 {
    \repeat volta 2 {
      ees'4 g' bes'4. bes'8
      bes'4 bes' c''2
      bes'\fermata r4 bes'
      ees'' bes' ees''8 f'' g''4
      f'' ees'' d'' c''
      bes'2\fermata r4 bes'
      ees'' bes' c'' g'
      aes'8 g' f'4 ees'2\fermata } r4 bes'
    bes'4. aes'8 g'4 f'
    ees'2\fermata r4 bes'
    bes'4. aes'8 g'4 f'
    ees'2\fermata r4 f'
    g' aes' g'2\fermata r4 bes'
    c'' d'' ees''\fermata ees''8 f''
    g''4 f'' ees''\fermata bes'
    ees'' bes' c'' g'
    aes'8 g' f'4 ees'2\fermata \fine }
}

altoMusic = {
  \shiftDurations #-1 #0 {
    \repeat volta 2 {
      bes4 ees' g' f'
      g' f' g' f'
      f'2\fermata r4 f'
      bes'4. aes'8 g' aes' bes'4
      bes' c''4~c''8 bes'4 a'8
      f'2\fermata r4 g'
      aes' g' ees' ees'
      ees' d' bes2\fermata } r4 f'
    g'4. f'8 bes c' d'4
    c'2\fermata r4 d'8 ees'
    f'4 f'4 f'8 ees'4 d'8
    bes2\fermata r4 d'
    ees'4. d'8 ees'2\fermata r4 g'
    g'8 f' f' g' g'4\fermata g'8 aes'
    bes'4. aes'8 g'4\fermata g'8 aes'
    bes' aes' bes' g' aes'4 ees'
    ees' d' bes2\fermata \fine }
}

tenorMusic = {
  \shiftDurations #-1 #0 {
    \repeat volta 2 {
      g4 bes ees' d'
      ees' bes bes a
      d'2\fermata r4 d'
      ees' ees' bes ees'
      f' f' f'4. c'8
      d'2\fermata r4 ees'
      ees'4. des'8 c'4 c'
      c'8 bes aes4 g2\fermata } r4 bes
    ees'8 d' c' d' ees'4 bes8 aes
    g2\fermata r4 bes
    bes8 c' d'4 bes8 c'4 bes8
    g2\fermata r4 bes
    bes c'8 aes bes2\fermata r4 ees'
    ees' d' c'\fermata ees'
    ees' d' ees'\fermata ees'
    bes ees' ees'4. c'8
    c' bes aes4 g2\fermata \fine }
}

bassMusic = {
  \shiftDurations #-1 #0 {
    \repeat volta 2 {
      ees2~ ees8 g bes aes
      g f ees d ees c f4
      bes,2\fermata r4 bes8 aes
      g aes g f ees4 ees'
      d'8 c' bes a bes4 f
      bes,2\fermata r4 ees8 des
      c d ees4 aes,8 bes, c4
      f, bes, ees,2\fermata } r4 d
    ees f g8 aes bes bes,
    c2\fermata r4 g
    d8 c bes,4 ees8 c aes, bes,
    ees2\fermata r4 bes8 aes
    g4 f ees2\fermata r4 ees'
    a b c'\fermata c'
    g8 aes bes4 c\fermata ees8 f
    g f g ees aes, bes, c4
    f, bes, ees,2\fermata \fine}
}

sopranoLyricsOne = \lyricmode {
  \stanza "1."
  Glo -- ri -- a sei dir ge -- sun -- gen
  mit Men -- schen und __ _ eng -- li -- schen Zun -- _ gen,
  mit Har -- fen und mit Zim -- _ beln schön
  Kein Aug hat je ge -- spürt,
  kein Ohr hat je ge -- hört
  sol -- che Freu -- de,
  des sind wir froh,
  i -- _ o, i -- o,
  e -- wig in dul -- ci ju -- _ bi -- lo.
}

sopranoLyricsTwo = \lyricmode {
  \stanza "2."
  Von zwölf Per -- len sind die Pfor -- ten
  an dei -- ner Stadt __ _ sind wir Kon -- sor -- _ ten
  der En -- gel hoch um dei -- _ nen Thron.
}

altoLyricsOne = \lyricmode {
  \stanza "1."
  Glo -- ri -- a sei dir ge -- sun -- _ gen
  mit Men -- schen und __ _ eng -- li -- schen Zun -- _ gen,
  mit Har -- fen und mit Zim -- beln schön
  Kein Aug hat je __ _ ge -- spürt,
  kein __ _ Ohr hat je __ _ ge -- hört
  sol -- che Freu -- de,
  des sind __ _ wir __ _ froh,
  i -- _ o, i -- o,
  e -- _ wig __ _ in __ _ dul -- ci ju -- bi -- lo.
}

altoLyricsTwo = \lyricmode {
  \stanza "2."
  Von zwölf Per -- len sind die Pfor -- _ ten
  an dei -- ner Stadt __ _ sind wir Kon -- sor -- _ ten
  der En -- gel hoch um dei -- nen Thron.
}

tenorLyricsOne = \lyricmode {
  \stanza "1."
  Glo -- ri -- a sei dir ge -- sun -- _ gen
  mit Men -- schen und eng -- li -- schen Zun -- _ gen,
  mit Har -- fen und mit Zim -- _ beln schön
  Kein Aug __ _ hat __ _ je ge -- _ spürt,
  kein Ohr __ _ hat je __ _ ge -- hört
  sol -- che Freu -- _ de,
  des sind wir froh,
  i -- o, i -- o,
  e -- wig in dul -- ci ju -- _ bi -- lo.
}

tenorLyricsTwo = \lyricmode {
  \stanza "2."
  Von zwölf Per -- len sind die Pfor -- _ ten
  an dei -- ner Stadt sind wir Kon -- sor -- _ ten
  der En -- gel hoch um dei -- _ nen Thron.
}

bassLyricsOne = \lyricmode {
  \stanza "1."
  Glo -- ri -- a sei dir __ _ ge -- _ sun -- _ _ gen
  mit __ _ Men -- _ schen __ _ und eng -- li -- _ schen __ _ Zun -- _ gen,
  mit __ _ Har -- _ fen und __ _ mit Zim -- beln schön
  Kein Aug hat je __ _ ge -- _ spürt,
  kein Ohr __ _ hat je __ _ ge -- _ hört
  sol -- _ che Freu -- de,
  des sind wir froh,
  i -- o, __ _ i -- o,
  e -- _ wig __ _ in __ _ dul -- _ ci ju -- bi -- lo.
}

bassLyricsTwo = \lyricmode {
  \stanza "2."
  Von zwölf Per -- len sind __ _ die __ _ Pfor -- _ _ ten
  an __ _ dei -- _ ner __ _ Stadt sind wir __ _ Kon -- _ sor -- _ ten
  der __ _ En -- _ gel hoch __ _ um dei -- nen Thron.
}
