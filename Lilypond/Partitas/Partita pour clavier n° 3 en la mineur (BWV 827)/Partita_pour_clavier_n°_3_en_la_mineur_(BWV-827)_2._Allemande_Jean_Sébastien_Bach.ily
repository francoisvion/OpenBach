upperTwo = \relative c''
{
  \clef treble 
  \key a \minor

  \repeat volta 2
  {
    \partial 4 e8 ~ e32 d c b 

    % 1
    c16 b32 a d 16 c32 b e16 d32 c f16. a,32 

    << { gs32[ a b d ~ d 8] ~ d 8 ~ d16 c32 b } 
       \new Voice { \voiceOne s 16 b16 ~ b 8 ~ b 8 s8 }
       \new Voice { \voiceThree gs 8 ~ gs8 ~ gs8 s8 } 
       \new Voice { \voiceTwo s 8 e 8 ~ e 8 s8 } >> 

    % 2
    << { c'4 ~ c16. a32 d8 f,\prall e ~ e32[ g f e a16 b32 c] ~ } \\
       { r32 b[ a gs a16 e] f8. f16 d8 c s4 } \\
       { \voiceFour s4 s8. d16 s4 s16. e32 ~ e8 } >> 
\break

    % 3
    << { c'4 ~ c32[ a g fs! b16 c32 d] ~ d4 ~ d32[ f e d gs16 a32 b] } \\
       { fs,16[ g32 a d,8] s4 gs16[ a32 b e,8] ~ e32 s16 d'32 ~ d8 ~ } >> 

    % 4
    << { e8. a16 ~ a16.[f32 e16. d32] } \\
       { d32 [d c b c8] b4 } >> \override Script #'padding = #2
       c8 \prall b16 a e'16.[ d32 c b c e] 

    % 5
    g16.[ d32 c b c e] << { a4 ~ a32[ d, e fs g16. a32] b4 ~ } \\
    { r16 c, d16. a32 b4 s4 } >> 

    % 6
    << { b'32[ e, fs gs a16. b32] c16.[ fs,!32 g16.\downprall a32] ds,16.[\prall cs32 b8] ~ b32[ b cs! ds! cs16. \prall b32] } \\
       { r8 e, a8. g16 fs 16.[ e32 ds e fs16] r8 fs! } >> 

    % 7
    << { e'32[ b c! d! c16.\prall b32] fs'4 g,32[ e' fs! g fs16.\prall e32] as4 } \\
       { s4 fs32[ a, b c b16.^\prall a32] g4 as'32[ e fs g fs16.^\prall e32] } \\
       { \voiceFour r8 e,8 ~ e8 ds s4 s4 } >> 

    % 8
    << { ds'32[ a'! g fs g16. e32] ~ e8 fs16. ds32 ds8[( e ]) } \\
       { ds4 c16[ b32 a ~ a8] a 8[ gs] } \\
       { s4 s4 b4 } >>
  }

  \repeat volta 2
  {
    b16[ d!32 c b c d16] 

    % 9
    << { s4 s4 c 16 d32 e32 ~ e8 s4 } \\
       { gs,16 a32 b e,16 gs!32 b d16 c32 b f'16 e32 d s 8 a8 ~ a32[ b c d e16 f32 g!] } \\
       { \voiceFour s4 s4 c,8 ~ c8 s4 } >> 

    % 10
    << { s4 s4 s16 s32 a'32 ~ a 8 s8 s16 s32 bf 32 ~ } \\
       { cs,16 d32 e a,16 cs!32 e g16 f32 e bf'16 a32 g f16 g32 a 32 d,8 ~ d32[ f e d g16 a32 bf! ] } \\
       { s4 s4 s8 f 8 s4 } >> 

    % 11
    << { bf4 s8 s16 s32 a32 ~ a4 s4 } \\
       { e16[ f32 g c,8] ~ c32 e d c f16 g32 a32 d,16[ e32 f32 bf,8] ~ bf32 d c bf e16 f32 g } \\
       { s16 s32 g32 ~ g8 s4 s16 s32 f32 ~ f8 s4 } >> 

    % 12
    << { a,32[ g' f e f16 d] ~ d[ cs32 d e d cs16] d4 s4 } \\
       { a4 g4 ~ g32[ g f e f g a16] d,32[ f a c b16 a] } >> 

    % 13
    << { s4 f'4 ~ f32[ f e d e16. c32] a4 ~ } \\
       { b16.[ c32 b a b d] r16 c16 d16. b32 c4 r32 g32[ f e f16. d32] } >> 

    % 14
    << { a'32[ gs a b e, d' c b]
       c 8[ ~ c 32 c b a] gs!4\prall a8 b } \\
       { b,8 e c'32[ a b c ds, 8] r8 r32 f!32 e d r f e d r f e d } >> 

    % 15
    << { r32 a'[ b c b16.\prall a32] r32 b[ c d c16. b32] r32 e[ fs g! fs16. e32] r32 a[ b c b a gs a] } \\
       { c,,4 gs'4 a4 ds4 } >> 
     
    % 16
    << { d!32 [f e d e b c a] r16 a b16. gs32 gs8 a } \\
       { s4 e8[ d] d[ c] } \\
       { s4 e4 e4 } >>
  }
    \tweak direction #UP
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

lowerTwo =
{
  \clef bass
  \key a \minor

  \repeat volta 2
  {
    \partial 4 r16 a,16 c e 
    a8[ b] c'[ d'] e'[ ~ e'32 c' b a] gs16[ a32 b e16 fs32 gs!]  % 1
    a8[ c'] d'[ g!] c'[ ~ c'32 c e g] c'8 ~ c'16 b32 a  % 2
    d'8[ ~ d'32 d fs a] d'8 ~ d'16 c'32 b e'8[ ~ e'32 c' b a] << { gs4 ~ } \\
                                                               { gs8 e } >>  % 3
    << { gs8[ a] ~ a[ gs]
                          a4 ~ a 16. s32 s8 } \\
       { c 8[ f] d [e] a16.[e32 \bc #3 #3 d c d e] a,16.[ a32 g16. f32] } \\
       { s4 f8 s8 s4 s4 } >>  % 4
    << { r8 g r a d' s s4 } \\
       { e4 fs g ~ g32 a g fs! g e g b } >>  % 5
    c'4 ~ c'16.[ c'32 b16. a32] b4 a  % 6
    g4 fs e8[ g] cs16.[ e32 as16. fs!32]  % 7
    c'!8 b16. a32 b8 b, e,4
  }

  \repeat volta 2
  {
    % 8
    r16 e,16 fs, b, 

    % 9
    << { r8 gs b4 a4 } \\
       { e4 r8 e 8 a8[ ~ a32 b a gs!] } \\
       { s4 s8 gs!8 s4 } >> a16.[ e32 c16. e32] 

    % 10
    << { r8 cs8 e4 d8 s8 } \\
       { a,4. a , 8 d8[ ~ d32 f e d] } \\ 
       { s4 s8 cs ! 8 s4 } >> bf16.[ a32 bf16. g32] 

    % 11
    c'8[ ~ c'32 e d c] a16.[ g32 a16. f32] bf8[ ~ bf32 a g f] e16.[ f32 g16. e32] 

    % 12
    cs'8[ d'] a [a,] << { r8 a4. } \\
    { d4 f8 d } >> 

    % 13
    g8[ d] b,[ g,] c4 ~ c16. [cs32 d16. e32] 

    % 14
    << { f8 [gs,] a, [fs,] e,32 b, c d e8 ~ fs8 [gs] } \\
       { s4 s4 s8 e8 ~ e4 } >> 

    % 15
    a8[ e] b[ e] c'[ a] fs[ gs16 a] 

    % 16
    << { gs8[ a] } \\ 
       { b,8 c16 d } >> e8[ e,] a,4
  }

    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
}