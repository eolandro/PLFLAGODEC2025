listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).

string_to_liststring(Cadena,LCadenas) :- string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

hex("0"). hex("1"). hex("2"). hex("3"). hex("4"). hex("5"). hex("6"). hex("7").
hex("8"). hex("9").
hex("a"). hex("b"). hex("c"). hex("d"). hex("e"). hex("f").
hex("A"). hex("B"). hex("C"). hex("D"). hex("E"). hex("F").

variant("8"). variant("9").
variant("a"). variant("b").
variant("A"). variant("B").

hex_n(0, []).
hex_n(N, [H|R]) :- N > 0, hex(H), N1 is N - 1, hex_n(N1, R).

% UUID v4: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx Formato: 8-4-4-4-12
uuid_list(L) :-
    % 8
    append(Part1, Rest1, L),
    hex_n(8, Part1),
    
    % g
    Rest1 = ["-"|Rest2],
    
    % 4
    append(Part2, Rest3, Rest2),
    hex_n(4, Part2),
    
    % g
    Rest3 = ["-"|Rest4],
    
    % 4
    Rest4 = ["4"|Rest4b],
    append(Part3, Rest5, Rest4b),
    hex_n(3, Part3),
    
    % g
    Rest5 = ["-"|Rest6],
    
    % 4
    Rest6 = [V|Rest6b],
    variant(V),
    append(Part4, Rest7, Rest6b),
    hex_n(3, Part4),
    
    % g
    Rest7 = ["-"|Rest8],
    
    % 12
    hex_n(12, Rest8).

uuid(Str) :- string_to_liststring(Str, LS), uuid_list(LS).