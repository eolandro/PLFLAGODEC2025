hex('0').
hex('1').
hex('2').
hex('3').
hex('4').
hex('5').
hex('6').
hex('7').
hex('8').
hex('9').
hex('A').
hex('B').
hex('C').
hex('D').
hex('E').
hex('F').
hex('a').
hex('b').
hex('c').
hex('d').
hex('e').
hex('f').

escape("\"").
escape("\\").
escape("/").
escape("b").
escape("f").
escape("n").
escape("r").
escape("t").

escape(S) :-
    atom_string(A, S),              
    atom_chars(A, ['u',H1,H2,H3,H4]), 
    hex(H1),
    hex(H2),
    hex(H3),
    hex(H4).
