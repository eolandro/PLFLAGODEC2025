listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|RB]) :-
    atom_string(A,C),
    listatom_liststring(RA,RB).

string_to_liststring(Str,LS) :-
    string_chars(Str,Atoms),
    listatom_liststring(Atoms,LS).

hex("0").
hex("1").
hex("2").
hex("3").
hex("4").
hex("5").
hex("6").
hex("7").
hex("8").
hex("9").
hex("a").
hex("b").
hex("c").
hex("d").
hex("e").
hex("f").
hex("A").
hex("B").
hex("C").
hex("D").
hex("E").
hex("F").

% Un bloque entre 1 y 4 hex
bloque_hex([A]) :- hex(A).
bloque_hex([A,B]) :- hex(A), hex(B).
bloque_hex([A,B,C]) :- hex(A), hex(B), hex(C).
bloque_hex([A,B,C,D]) :- hex(A), hex(B), hex(C), hex(D).

% Separar por ":"
partir([], Acc, [Acc]) :- Acc \= [].
partir([], [], []).
partir([":"|R], Acc, [Acc|L]) :- Acc \= [], partir(R, [], L).
partir([":"|R], [], L) :- partir(R, [], L).
partir([C|R], Acc, L) :- C \= ":", append(Acc, [C], Acc2), partir(R, Acc2, L).

% Validar 8 bloques
ocho_bloques([A,B,C,D,E,F,G,H]) :-
    bloque_hex(A),
    bloque_hex(B),
    bloque_hex(C),
    bloque_hex(D),
    bloque_hex(E),
    bloque_hex(F),
    bloque_hex(G),
    bloque_hex(H).

ipv6(Str) :-
    string_to_liststring(Str, LS),
    partir(LS, [], Bloques0),
    delete(Bloques0, [], Bloques),
    length(Bloques, 8),
    ocho_bloques(Bloques).