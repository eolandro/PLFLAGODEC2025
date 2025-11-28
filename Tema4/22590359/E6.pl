% ##R006##
% ##40##
% """
%
% Defina un predicado capaz de validar una direccion ipV6
% sin comprimir
% https://es.wikipedia.org/wiki/IPv6#Notaci%C3%B3n_para_las_direcciones_IPv6
% 40 pts
%
% ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334")
% true.
% ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab")
% true.
% ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001")
% true.
% """

	
listatom_liststring([A], [C]) :- atom_string(A, C).
listatom_liststring([A|RA], [C|LCC]) :- 
	listatom_liststring(RA, LCC),
	atom_string(A, C).

string_to_liststring(Cadena, LCadenas) :- 
	string_chars(Cadena, LAtomos),
	listatom_liststring(LAtomos, LCadenas).

digito("0").
digito("1").
digito("2").
digito("3").
digito("4").
digito("5").
digito("6").
digito("7").
digito("8").
digito("9").

letra_hex_min("a").
letra_hex_min("b").
letra_hex_min("c").
letra_hex_min("d").
letra_hex_min("e").
letra_hex_min("f").

letra_hex_may("A").
letra_hex_may("B").
letra_hex_may("C").
letra_hex_may("D").
letra_hex_may("E").
letra_hex_may("F").

hex_char(C) :- digito(C).
hex_char(C) :- letra_hex_min(C).
hex_char(C) :- letra_hex_may(C).

grupo([A]) :- hex_char(A).
grupo([A,B]) :- hex_char(A), hex_char(B).
grupo([A,B,C]) :- hex_char(A), hex_char(B), hex_char(C).
grupo([A,B,C,D]) :- hex_char(A), hex_char(B), hex_char(C), hex_char(D).


separar([], [[]]).
separar([":"|T], [[]|R]) :-
	separar(T, R).
separar([C|T], [[C|G]|R]) :-
	C \= ":",
	separar(T, [G|R]).

ocho_grupos([G1,G2,G3,G4,G5,G6,G7,G8]) :-
	grupo(G1),
	grupo(G2),
	grupo(G3),
	grupo(G4),
	grupo(G5),
	grupo(G6),
	grupo(G7),
	grupo(G8).

ipv6(Str) :-
	string_to_liststring(Str, L),
	separar(L, Grupos),
	ocho_grupos(Grupos).
