/*
"""
##R002##
##10##
"""
Realice un predicado que valide el no terminal 'Escape'
Segun la especificacion de json. 10 pts

% escape("\"").
% true
% escape("n").
% true
% escape("b").
% true
% escape("u0000").
% true
*/



/******************************UNIVERSAL FORMULA*******************************************************/
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).
convertir_string(Cadena,LCadenas) :- string_chars(Cadena,LAtomos), listatom_liststring(LAtomos,LCadenas).

esc_simple("\"").
esc_simple("\\").
esc_simple("/").
esc_simple("b").
esc_simple("f").
esc_simple("n").
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
hex("A").
hex("B").
hex("C").
hex("D").
hex("E").
hex("F").
hex("a").
hex("b").
hex("c").
hex("d").
hex("e").
hex("f").
cuatro_hex(A,B,C,D) :- hex(A), hex(B), hex(C), hex(D).
escape_list([C]) :- esc_simple(C).
escape_list(["u", H1, H2, H3, H4]) :- cuatro_hex(H1, H2, H3, H4).
escape(Str) :- convertir_string(Str, Lista), escape_list(Lista).