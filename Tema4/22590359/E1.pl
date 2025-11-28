% ##R001##
% ##20##
% """
% JSON (JavaScript Object Notation) es un formato 
% ligero de intercambio de datos. 
% Leerlo y escribirlo es simple para humanos, 
% mientras que para las máquinas es simple interpretarlo 
% y generarlo. 
%
% Su especificacion se encuentra aqui.
% https://www.json.org/json-es.html
%"""
listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
	atom_string(A,C),
	listatom_liststring(RA,LCC).

string_to_liststring(Str, L) :-
	string_chars(Str, A),
	listatom_liststring(A, L).

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
	string_to_liststring(Str, ["u",A,B,C,D]),
	hex_char(A),
	hex_char(B),
	hex_char(C),
	hex_char(D).

json(Str) :-
	string_to_liststring(Str, L),
	json_value(L, []).

json_value(Chars, R) :- json_object(Chars, R).
json_value(Chars, R) :- json_array(Chars, R).
json_value(Chars, R) :- json_string(Chars, R).
json_value(Chars, R) :- json_number(Chars, R).
json_value(["t","r","u","e"|R], R).
json_value(["f","a","l","s","e"|R], R).
json_value(["n","u","l","l"|R], R).

json_object(["{","}"|R], R).
json_object(["{"|Chars], R) :-
	json_members(Chars, ["}"|R]).

json_members(Chars, R) :-
	json_pair(Chars, [","|P]),
	json_members(P, R).
json_members(Chars, R) :-
	json_pair(Chars, R).

json_pair(Chars, R) :-
	json_string(Chars, [":"|P]),
	json_value(P, R).

json_array(["[","]"|R], R).
json_array(["["|Chars], R) :-
	json_elements(Chars, ["]"|R]).

json_elements(Chars, R) :-
	json_value(Chars, [","|P]),
	json_elements(P, R).
json_elements(Chars, R) :-
	json_value(Chars, R).

json_string(["\""|Chars], R) :-
	json_characters(Chars, R).

json_characters(["\""|R], R).
json_characters(["\\",Esc|Chars], R) :-
	escape(Esc),
	json_characters(Chars, R).
json_characters([C|Chars], R) :-
	C \= "\"",
	C \= "\\",
	json_characters(Chars, R).

json_number(Chars, R) :- json_int(Chars, R).
json_number(Chars, R) :-
	json_int(Chars, P),
	json_frac(P, R).
json_number(Chars, R) :-
	json_int(Chars, P),
	json_exp(P, R).
json_number(Chars, R) :-
	json_int(Chars, P),
	json_frac(P, P2),
	json_exp(P2, R).

json_int(["-","0"|R], R).
json_int(["0"|R], R).

json_int(["-"|[D|Digits]], R) :-
	json_onenine(D),
	json_digits(Digits, R).

json_int([D|Digits], R) :-
	json_onenine(D),
	json_digits(Digits, R).

json_digits([D|P], R) :-
	json_digit(D),
	json_digits(P, R).
json_digits(R, R).

json_digit(D) :- digito(D).

json_one("1").
json_one("2").
json_one("3").
json_one("4").
json_one("5").
json_one("6").
json_one("7").
json_one("8").
json_one("9").

json_frac(["."|P], R) :-
	json_digits(P, R),
	P \= R.

json_exp(["e"|P], R) :- json_exp_sign(P, R).
json_exp(["E"|P], R) :- json_exp_sign(P, R).

json_exp_sign(["+"|P], R) :- json_digits(P, R).
json_exp_sign(["-"|P], R) :- json_digits(P, R).
json_exp_sign(P, R) :- json_digits(P, R).
