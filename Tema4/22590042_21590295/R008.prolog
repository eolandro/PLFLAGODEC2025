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

octet(H1, H2) :-
    hex(H1),
    hex(H2).

mac_ad(S) :-
    string_chars(S,
        [H1,H2,':',
         H3,H4,':',
         H5,H6,':',
         H7,H8,':',
         H9,H10,':',
         H11,H12]),
    octet(H1,H2),
    octet(H3,H4),
    octet(H5,H6),
    octet(H7,H8),
    octet(H9,H10),
    octet(H11,H12).
