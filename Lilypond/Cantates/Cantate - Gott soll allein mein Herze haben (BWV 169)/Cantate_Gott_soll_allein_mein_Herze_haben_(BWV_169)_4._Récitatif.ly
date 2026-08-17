\version "2.27.1"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_common.ly"

mvtIVtimeLine = {
    \time 4/4
    \key b \minor
    s1*10
    \bar "|."
}
mvtIValto = <<
\relative c'' {
    \autoBeamOff
    r4 r8 d8 b8 b8 d8 g,8 |
    e'8 e8 r16 a,16 c16 a16 fis4 r8 d8 |
    fis8 a8 d8 a8 b4 r8 b8 |
    dis,8 dis8 c'8 b8 g4 r8 b8 |
    e,8 e8 cis8 e8 ais,4 r8 cis8 |
    fis8 fis8 gis8 ais8 b4 r8 fis8 |
    b8 b8 d8 b8 e8 e8 r8 e,8 |
    gis16 a16 b16 cis16 d8 cis8 cis4 r8 cis8 |
    cis8 fis,8 eis8. fis16 fis8 cis8 r4 |
    R1\fermata |
}
\mvtIVtimeLine
>>
mvtIVlyrics = \lyricmode {
    Was ist die Lie -- be Got -- tes?
    Des Geis -- tes Ruh,
    der Sin -- nen Lust -- ge -- nieß,
    der See -- le Pa -- ra -- dies,
    sie schließt die Höl -- le zu,
    den Him -- mel a -- ber auf;
    sie ist E -- li -- as Wa -- gen,
    da wer -- den wir im Him -- mel nauf
    in A -- brahms Schoß ge -- tra -- gen.
}
mvtIVbc = <<
\relative c {
    \clef F
    g1~ |
    g1~ |
    g1 |
    fis2 e2~ |
    e1~ |
    e2 d2~ |
    d2 gis2~ |
    gis2 a2 |
    d2 r4 cis4 |
    fis,1\fermata
}
\mvtIVtimeLine
>>
mvtIVfigs = <<
\new FiguredBass \figuremode {
    s1 |
    <6 4!>4 <6 4 2> \bassFigureExtendersOn <7\+ 4 2>2 |
    <7\+ 4 2> \bassFigureExtendersOff <8 5 3> |
    <6\\>4 <5->8 <4> s2 |
    <5>4 <6\\> <6\\ 4\+ 2>2 |
    <6\\ 4\+ 2> <6> |
    s <6> |
    <6>4 <5-> s2 |
    <7>8 <6> <4\+ 2\+>4 s <6 4>8 <5\+ _+> |
    s1 |
}
\mvtIVtimeLine
>>
