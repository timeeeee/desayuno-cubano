\version "2.18.2"

bassVamp = \relative c' {
  g8 g,16 d'16~ d16 g8 d16
  aes'8 aes,16 ees'16~ ees16 aes8 ees16 |
  g8 g,16 d'16~ d16 g8 d16
  ges8 ges,16 des'16~ des16 ges8 des16 |
}

bassLift = \relative c' {
  c8 c,16 g'16~ g c8 g16
  d'8 d,16 a'16~ a d8 a16 |
  ees'8 ees,16 bes'16~ bes ees8 bes16
  aes8 aes,16 ees'16~ ees aes8 ees16 |
}

unisonMelody = \relative c''' {
  ges16 g r8 r4 g16 f d bes r c r bes |
  c bes g8 r4 r2 |
}
  

bass = \relative c' {
  \time 4/4
  \key g \minor
  \clef "bass"
  \bassVamp \break \bassVamp \break \bassVamp \break \bassVamp \break
  \bassLift \break \bassVamp \break \bassLift \break \bassVamp \break
}


hornOne = \relative c'' {
  \key g \minor
  \time 4/4
  \unisonMelody \break \unisonMelody \break
  r1 r1 r1 r1 |
  d'2\< c | d1\> | r\! r1 |
  f,8. g16~ g4 a,16 d8\staccato c16 f g8.~ |
  g8. f16~ f8 d8 c16 f8 ees16 bes' c8 a16~ |
  a1\> r1\!
}

hornTwo = \relative c'' {
  \key g \minor
  \time 4/4
  \unisonMelody \break \unisonMelody \break
  r1 r1 r1 r1
  g'1~\< g1\> r1\! r1 |
  f4~ f16 d bes f~ f8. g16~ g8 a~ |
  a16 g8\staccato f16 g bes8 g16 c f8 ees16 bes' c8 a16~ |
  a1\> r1\!
}

chordNotation = \chords {
  g1:m7 g:m7 g:m7 g:m7 g:m7 g:m7 g:m7 g:m7
  c2:m7 d:m7 ees:maj7 aes:maj7 g1:m7 g:m7
  c2:m7 d:m7 ees:maj7 aes:maj7 g1:m7 g:m7
}

<<
  \chordNotation
  \transpose bes c \hornOne
  \transpose bes c \hornTwo
  \transpose ees c \hornOne
  \transpose ees c \hornTwo
  \bass
>>