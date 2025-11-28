% """
% ##R008##
% ##20##
% Realice un predicado que valide una direccion mac
% 20 pts
%
% mac_ad("08:9e:01:6f:2e:41").
% true
% mac_ad("ff:ff:01:6f:2e:41").
% true
% mac_ad("00:00:00:00:00:00").
% true
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

byte_hex([C1, C2]) :-
    hex_char(C1),
    hex_char(C2).

mac_ad(String) :-
    string_to_liststring(String, L),
    mac_list(L).

mac_list([C1, C2, ":", C3, C4, ":", C5, C6, ":", C7, C8, ":", C9, C10, ":", C11, C12]) :-
    byte_hex([C1, C2]),
    byte_hex([C3, C4]),
    byte_hex([C5, C6]),
    byte_hex([C7, C8]),
    byte_hex([C9, C10]),
    byte_hex([C11, C12]).
