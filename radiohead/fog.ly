\version "2.16.0"

\header {
    title = "Fog"
    composer = "Radiohead"
}

rhMusic = \relative c' {
    \new Voice {
        <a fis'>4   <a fis'>    <a fis'>        |
        <a fis'>4   <a e'>      <a d>           |
        <b fis'>4   <b fis'>    <b fis'>        |
        <b fis'>4   <b e>       <b d>           |
        <a cis e>4  <a cis e>   <a cis e>       |
        <a cis e>4  <a b e>     <a d e>         |
        <a cis e>4  <a cis e>   <a cis e>       |
        <a cis e>4  <a b e>     <a e'>          |
        <g b d>4    <g b d>     <g b d>         |
        <g a d>4    <g d'>      <g d'>          |
        <g bes d>4  <g bes d>   <g bes d>       |
        <g a d>4    <g d'>      <g d'>          |
        <fis d'>4   <fis d'>     <fis d'>       |
        <g d'>4     <a d>       <a d>           |
        <b fis' >4  <b fis'>    <b fis'>        |
        <cis fis>4  <d fis>     <d fis>         |
        <a cis e>4  <a cis e>   <a cis e>       |
        <a cis e>4  <a b e>     <a d e>         |
        <a cis e>4  <a cis e>   <a cis e>       |
        <a cis e>4  <a e'>      <a b e>         |
        <a cis e>4  <a cis e>   <a cis e>       |
        <a d>4      <a e'>      <a e'>          |
        <a fis'>4   <a e'>      <a e'>          |
        <a e'>4     <a d>       <a d>           |

        % Start singing
    }
}

lhMusic = \relative c {
    <<
        \new Voice { \voiceOne
            r8 d [ r d r d ]    |
            r8 d [ r d r b ]    |
            r8 b [ r b r b ]    |
            r8 b [ r b r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r g ]    |
            r8 g [ r g r g ]    |
            r8 g [ r g r g ]    |
            r8 g [ r g r g ]    |
            r8 g [ r g r d' ]   |
            r8 d [ r d r d ]    |
            r8 d [ r d r b ]    |
            r8 b [ r b r b ]    |
            r8 b [ r b r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
            r8 a [ r a r a ]    |
        }
        \new Voice { \voiceTwo
            d,2.    |
            d2.     |
            b2.     |
            b2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
            g2.     |
            g2.     |
            g2.     |
            g2.     |
            d'2.    |
            d2.     |
            b2.     |
            b2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
            a2.     |
        }
    >>
}

\score {
    \new PianoStaff \with { midiInstrument = #"electric piano 1" } <<
        \new Staff = "RH" <<
            \key d \major
            \time 3/4
            \rhMusic
        >>
        \new Staff = "LH" <<
            \key d \major
            \time 3/4
            \clef "bass"
            \lhMusic
        >>
    >>
    \midi {
        \tempo 4 = 130
    }
    \layout {}
}
