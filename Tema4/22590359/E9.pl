% ##R009##
% ##20##
% """
% Realice un predicado que valide un UUID v4
% https://en.wikipedia.org/wiki/Universally_unique_identifier
% 40 pts
%
% uuid("7eb36e8e-13ea-434f-a34e-a47d7ba28676").
% true
% uuid("1ffc0af2-7f0a-4114-bbc8-87c66eef1cc4").
% true
% uuid("422a4f74-e8a7-4567-aa3f-40c9fcc74993").
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

hex_char_especifico("8").
hex_char_especifico("9").
hex_char_especifico("A").
hex_char_especifico("B").
hex_char_especifico("a").
hex_char_especifico("b").

uuid(String) :-
	string_to_liststring(String, L),
	uuid_l(L).

uuid_l([
	C1, C2, C3, C4, C5, C6, C7, C8, "-",
	C9, C10, C11, C12, "-",
	"4", C14, C15, C16, "-",
	Y, C18, C19, C20, "-",
	C21, C22, C23, C24, C25, C26, C27, C28, C29, C30, C31, C32
]) :-
	hex_char(C1), hex_char(C2), hex_char(C3), hex_char(C4),
	hex_char(C5), hex_char(C6), hex_char(C7), hex_char(C8),
	
	hex_char(C9), hex_char(C10), hex_char(C11), hex_char(C12),
	
	hex_char(C14), hex_char(C15), hex_char(C16),
	
	hex_char_especifico(Y),
	hex_char(C18), hex_char(C19), hex_char(C20),
	
	hex_char(C21), hex_char(C22), hex_char(C23), hex_char(C24),
	hex_char(C25), hex_char(C26), hex_char(C27), hex_char(C28),
	hex_char(C29), hex_char(C30), hex_char(C31), hex_char(C32).
