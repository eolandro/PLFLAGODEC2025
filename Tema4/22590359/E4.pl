% ##R004##
% ##10##
% """
% Realice un predicado que valide el no terminal 'Fraction'
%
% fraction("").
% true
% fraction(".00").
% true
% fraction(".1416").
% true
% """
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
	atom_string(A,C),
	listatom_liststring(RA,LCC).

string_to_liststring(Cadena,LCadenas):- 
	string_chars(Cadena,LAtomos),
	listatom_liststring(LAtomos,LCadenas).

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

fraction("").
fraction(Str) :-
	string_to_liststring(Str,L),
	fraction_l(L).
	
fraction_l([".", D]) :-
	digito(D).

fraction_l([".", D | R]) :-
	digito(D),
	R \= [],
	fraction_d(R).
	
fraction_d([D]) :-
	digito(D).
fraction_d([D| R]) :-
	digito(D),
	fraction_d(R).

