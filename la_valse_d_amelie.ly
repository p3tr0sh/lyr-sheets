\header {
    title = "La Valse d'Amélie"
    composer = "Yann Tiersen, arr. R. H."
}

\paper {
    %left-margin = 20
}

global = {
    \time 6/8
    \key c \major
    \tempo 4. = 67
    \override Staff.StringNumber.transparent = ##t
}

mymelody = {
    r8 a b c b c \bar ".|:"
    d2~ 8. c16
    b4. a4.
    d4.~ d16 e d c b c
    b4. a \break
    c2~ 8. b16
    e,2~ 8 f8
    c'4. c16 d c b c b
    e,2 f8 e \bar ":|." \break
    d'4. e
    b c8 b a
    d4. e
    b c8 b a
    c4. d
    g, b
    c d
    g, b4~ 16 c \bar "||" \break
    \set TabStaff.minimumFret = #3
    \set TabStaff.restrainOpenStrings = ##t
    d16 a f a d a e' a, f a c a
    \set TabStaff.minimumFret = #0
    \set TabStaff.restrainOpenStrings = ##f
    b e, c e b' e, c' e, b' e, a e
    \set TabStaff.minimumFret = #3
    \set TabStaff.restrainOpenStrings = ##t
    d' a f a d a e' a, f a c a
    \set TabStaff.minimumFret = #0
    \set TabStaff.restrainOpenStrings = ##f
    b e, c e b' e, c' e, b' e, a e \break

    c' f, c f c' f, d' f, c f d' f,
    g\4 e c e g\4 e b' e, c e b' e,

    c' f, c f c' f, d' f, c f c' f,
    g\4 e c e g\4 e b' e, c e b' c
}


<<
    \chords \with {
        noChordSymbol = "--"
    } {
        r2.
        d:m
        a:m
        d:m
        a:m \break
        f 
        c
        f
        c
    }
    \new Voice {
        \relative c''{
            \global
            \mymelody
        }
    }
    \new TabStaff \with{
        stringTunings = #ukulele-tuning
        instrumentName = "Ukulele "
        %shortInstrumentName = "Uke. "
    } {
        \relative c''{
            \global
            \mymelody
        }
    }
>>