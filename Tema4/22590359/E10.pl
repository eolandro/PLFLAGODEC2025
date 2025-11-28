% ##R010##
% ##50##
% """
% Realice un predicado que valide un hash de bcrypt
% https://en.wikipedia.org/wiki/Bcrypt#Description
% 40 pts
%
% bcrypt("$2a$12$3oUINuVy1UCI0HpeT43QqOkgaxScqa0meG.KwqhcEDsHb7N.ZDsHa").
% true
% bcrypt("$2a$09$8eVlg43oGdXq2wWj4iIzneRE7HTdNuWjFiWqKSYKo2j.CdQvlAfWe").
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

val_bcrypt(".").
val_bcrypt("/").
val_bcrypt("A").
val_bcrypt("B").
val_bcrypt("C").
val_bcrypt("D").
val_bcrypt("E").
val_bcrypt("F").
val_bcrypt("G").
val_bcrypt("H").
val_bcrypt("I").
val_bcrypt("J").
val_bcrypt("K").
val_bcrypt("L").
val_bcrypt("M").
val_bcrypt("N").
val_bcrypt("O").
val_bcrypt("P").
val_bcrypt("Q").
val_bcrypt("R").
val_bcrypt("S").
val_bcrypt("T").
val_bcrypt("U").
val_bcrypt("V").
val_bcrypt("W").
val_bcrypt("X").
val_bcrypt("Y").
val_bcrypt("Z").
val_bcrypt("a").
val_bcrypt("b").
val_bcrypt("c").
val_bcrypt("d").
val_bcrypt("e").
val_bcrypt("f").
val_bcrypt("g").
val_bcrypt("h").
val_bcrypt("i").
val_bcrypt("j").
val_bcrypt("k").
val_bcrypt("l").
val_bcrypt("m").
val_bcrypt("n").
val_bcrypt("o").
val_bcrypt("p").
val_bcrypt("q").
val_bcrypt("r").
val_bcrypt("s").
val_bcrypt("t").
val_bcrypt("u").
val_bcrypt("v").
val_bcrypt("w").
val_bcrypt("x").
val_bcrypt("y").
val_bcrypt("z").
val_bcrypt("0").
val_bcrypt("1").
val_bcrypt("2").
val_bcrypt("3").
val_bcrypt("4").
val_bcrypt("5").
val_bcrypt("6").
val_bcrypt("7").
val_bcrypt("8").
val_bcrypt("9").


costo_valido(C1,C2) :-
	digito(C1), digito(C2),
	atom_string(Atom1, C1), atom_string(Atom2, C2),
	atom_number(Atom1, N1), atom_number(Atom2, N2),
	Costo is N1 * 10 + N2,
	Costo >= 4, Costo =< 31.

version_valida("a").
version_valida("b").
version_valida("y").
version_valida("x").

bcrypt(String) :-
	string_to_liststring(String, [
		"$", "2", V2, "$",
		C1, C2, "$",
		S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,

		H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15,H16,H17,H18,H19,H20,
		H21,H22,H23,H24,H25,H26,H27,H28,H29,H30,H31
	]),
	
	version_valida(V2),
	costo_valido(C1, C2),
	
	val_bcrypt(S1), val_bcrypt(S2), val_bcrypt(S3), val_bcrypt(S4), val_bcrypt(S5), val_bcrypt(S6), 
	val_bcrypt(S7), val_bcrypt(S8), val_bcrypt(S9), val_bcrypt(S10), val_bcrypt(S11), val_bcrypt(S12), 
	val_bcrypt(S13), val_bcrypt(S14), val_bcrypt(S15), val_bcrypt(S16),
	val_bcrypt(S17), val_bcrypt(S18), val_bcrypt(S19), val_bcrypt(S20), val_bcrypt(S21), val_bcrypt(S22),
	
	val_bcrypt(H1), val_bcrypt(H2), val_bcrypt(H3), val_bcrypt(H4), val_bcrypt(H5), val_bcrypt(H6), 
	val_bcrypt(H7), val_bcrypt(H8), val_bcrypt(H9), val_bcrypt(H10), val_bcrypt(H11), val_bcrypt(H12), 
	val_bcrypt(H13), val_bcrypt(H14), val_bcrypt(H15), val_bcrypt(H16),
	val_bcrypt(H17), val_bcrypt(H18), val_bcrypt(H19), val_bcrypt(H20), val_bcrypt(H21), val_bcrypt(H22), 
	val_bcrypt(H23), val_bcrypt(H24), val_bcrypt(H25), val_bcrypt(H26), val_bcrypt(H27), val_bcrypt(H28), 
	val_bcrypt(H29), val_bcrypt(H30), val_bcrypt(H31).
