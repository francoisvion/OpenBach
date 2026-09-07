sopranoMusic = {
  \voiceOne
  \repeat volta 2 {
    g'2 a'4
    bes' c'' d''
    c''2 bes'4
    a'2 g'4\fermata
    d'' ees'' f''
    bes' c'' d''
    c''2 c''4
    bes'2.\fermata }
  \repeat volta 2 {
    a'2 g'4
    a' bes' c''
    bes'2 a'4
    g'2 f'4\fermata
    bes'2 a'4
    bes' c'' d''
    d''2 c''4
    d''2.\fermata
    a'2 d''4
    g' a' bes'
    a'2 a'4
    g'2.\fermata }
}

altoMusic = {
  \voiceTwo
  \repeat volta 2 {
    d'2 a'4~
    a'8 [g'] f' [ees'] d'4
    g' a'4. g'8
    g'4 fis' d'\fermata
    bes' a'8 [g'] f'4
    g' f'8 [ees'] d'4
    g' ees'8 [g'] f' [ees']
    d'2.\fermata }
  \repeat volta 2 {
    f'2 g'4~
    g'8 [f'] e' [d'] c'4
    f' g'4. f'8
    f'4 e' c'\fermata
    f' g' d'~
    d'8 [g'] f' [ees'] d'4
    g'8 [fis'] g' [bes'] a' [g']
    fis'2.\fermata
    fis'2 fis'4
    g' d' d'
    ees' c' d'8 [c']
    b2.\fermata }
}

tenorMusic = {
  \voiceOne
  \repeat volta 2 {
    bes2 d'4
    d' c' bes~
    bes a bes8 [d']
    ees' [a] d' [c'] bes4\fermata
    f' ees' d'~
    d' c' bes~
    bes a8 [g] a4
    bes2.\fermata }
  \repeat volta 2 {
    c'2 c'4
    c' bes a~
    a g a8 [c']
    d' [g] c' [bes] a4\fermata
    d' c'2
    bes8 [ees'] d' [c'] bes4~
    bes8 [a] bes4 ees'
    a2.\fermata
    d'2 d'4
    d' a g
    g2 fis4
    d2.\fermata }
}

bassMusic = {
  \voiceTwo
  \repeat volta 2 {
    g,4 g fis
    g a bes
    e fis g
    c d g,\fermata
    bes, c d
    g, a, bes,
    ees c f
    bes,2.\fermata }
  \repeat volta 2 {
    f,4 f e
    f g a
    d e f
    bes, c f,\fermata
    d e fis
    g a bes
    ees2.
    d\fermata
    d8 [d,] d [c] bes, [a,]
    bes, [a,] g, [fis,] g,4
    c a, d
    g,2.\fermata }
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
                               Je -- su, du _ mein lieb -- stes Le -- ben,
                               mei -- _ ner See -- _ len Bräu -- ti -- gam,
                               Je -- su, mei -- _ ne Freud und Won -- ne,
                               du mein Hoff -- _ nung, Schatz und Theil,
                               mein' Er -- lö -- _ sung, Schmuck und Heil,
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
                               der du bist _ für mich ge -- ge -- ben
                               an _ des bit -- _ tern Kreu -- zes -- stamm.
                               Hirt und Kö -- _ nig, Licht und Son -- ne,
                               ach, wie soll _ ich wür -- dig -- lich,
                               mein Herr Je -- _ su, prei -- sen dich?
}

altoLyricsOne = \lyricmode {
  \set stanza = 1
  Je -- su, du mein lieb -- stes _ Le -- _ ben,
  mei -- _ ner See -- _ len Bräu -- _ ti -- gam,
  Je -- su, mei ne Freud und _ Won -- _ ne,
  du _ mein Hoff nung, Schatz _ und Theil,
  mein' Er -- lö -- _ sung, Schmuck _ und Heil,
}

altoLyricsTwo = \lyricmode {
  \set stanza = 2
  der du bist für mich ge -- _ ge -- _ ben
  an _ des bit -- _ tern Kreu -- _ zes -- stamm.
  Hirt und Kö nig, Licht und _ Son -- _ ne,
  ach, _ wie soll ich wür -- _ dig -- lich,
  mein Herr Je -- _ su, prei -- _ sen dich?
}

tenorLyricsOne = \lyricmode {
  \set stanza = 1
  Je -- su, du _ mein lieb -- stes Le -- _ ben,
  mei -- _ ner See len Bräu -- ti -- gam,
  Je -- su, mei -- _ ne Freud und Won -- _ ne,
  du mein Hoff -- _ nung, Schatz und Theil,
  mein' Er -- lö -- _ sung, Schmuck und Heil,
}

tenorLyricsTwo = \lyricmode {
  \set stanza = 2
  der du bist _ für mich ge -- ge -- _ ben
  an _ des bit tern Kreu -- zes -- stamm.
  Hirt und Kö -- _ nig, Licht und Son -- _ ne,
  ach, wie soll _ ich wür -- dig -- lich,
  mein Herr Je -- _ su, prei -- sen dich?
}

bassLyricsOne = \lyricmode {
  \set stanza = 1
  Je -- _ su, du _ mein lieb -- _ stes Le -- _ ben,
  mei -- _ ner See -- _ len Bräu -- _ ti -- gam,
  Je -- _ su, mei -- _ ne Freud _ und Won -- _ ne,
  du mein Hoff -- _ nung, Schatz und Theil,
  mein' _ Er -- lö -- _ sung, Schmuck _ und Heil,
}

bassLyricsTwo = \lyricmode {
  \set stanza = 2
  der _ du bist _ für mich _ ge -- ge -- _ ben
  an _ des bit -- _ tern Kreu -- _ zes -- stamm.
  Hirt _ und Kö -- _ nig, Licht _ und Son -- _ ne,
  ach, wie soll _ ich wür -- dig -- lich,
  mein _ Herr Je -- _ su, prei -- _ sen dich?
}
