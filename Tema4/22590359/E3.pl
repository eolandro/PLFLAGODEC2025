% ##R003##
% ##10##
% """
% Realice un predicado que valide el no terminal 'Escape'
% Segun la especificacion de json. 10 pts
%
%  escape("\").
%  true
%  escape("n").
%  true
%  escape("b").
%  true
%  escape("u0000").
%  true
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

escape("\"").
escape("/").
escape("\\").
escape("b").
escape("f").
escape("n").
escape("r").
escape("t").

escape(Str) :-
	string_to_liststring(Str, ["u", A, B, C, D]),
	hex_char(A),
	hex_char(B),
	hex_char(C),
	hex_char(D).
