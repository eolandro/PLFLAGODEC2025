listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).

string_to_liststring(Cadena,LCadenas) :- string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

digit("0"). digit("1"). digit("2"). digit("3"). digit("4").
digit("5"). digit("6"). digit("7"). digit("8"). digit("9").

letter_lower("a"). letter_lower("b"). letter_lower("c"). letter_lower("d"). letter_lower("e").
letter_lower("f"). letter_lower("g"). letter_lower("h"). letter_lower("i"). letter_lower("j").
letter_lower("k"). letter_lower("l"). letter_lower("m"). letter_lower("n"). letter_lower("o").
letter_lower("p"). letter_lower("q"). letter_lower("r"). letter_lower("s"). letter_lower("t").
letter_lower("u"). letter_lower("v"). letter_lower("w"). letter_lower("x"). letter_lower("y").
letter_lower("z").

letter_upper("A"). letter_upper("B"). letter_upper("C"). letter_upper("D"). letter_upper("E").
letter_upper("F"). letter_upper("G"). letter_upper("H"). letter_upper("I"). letter_upper("J").
letter_upper("K"). letter_upper("L"). letter_upper("M"). letter_upper("N"). letter_upper("O").
letter_upper("P"). letter_upper("Q"). letter_upper("R"). letter_upper("S"). letter_upper("T").
letter_upper("U"). letter_upper("V"). letter_upper("W"). letter_upper("X"). letter_upper("Y").
letter_upper("Z").

% Base 64
bcrypt_char(C) :- digit(C).
bcrypt_char(C) :- letter_lower(C).
bcrypt_char(C) :- letter_upper(C).
bcrypt_char(".").
bcrypt_char("/").

bcrypt_chars(0, []).
bcrypt_chars(N, [C|R]) :- N > 0, bcrypt_char(C), N1 is N - 1, bcrypt_chars(N1, R).

% Costo (2 dígitos)
cost_digits([D1, D2]) :- digit(D1), digit(D2).

% Formato: $2a$12$[53 chars]
bcrypt_list(["$", "2", "a", "$"|Rest1]) :- bcrypt_rest(Rest1).
bcrypt_list(["$", "2", "b", "$"|Rest1]) :- bcrypt_rest(Rest1).
bcrypt_list(["$", "2", "x", "$"|Rest1]) :- bcrypt_rest(Rest1).
bcrypt_list(["$", "2", "y", "$"|Rest1]) :- bcrypt_rest(Rest1).

bcrypt_rest(Rest1) :-
    append(Cost, Rest2, Rest1),
    cost_digits(Cost),

    Rest2 = ["$"|Rest3],

    bcrypt_chars(53, Rest3).

bcrypt(Str) :- string_to_liststring(Str, LS), bcrypt_list(LS).