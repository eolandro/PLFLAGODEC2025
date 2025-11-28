
esp(" ").

pa("(").
pc(")").
comilla("\"").

dig("0").
dig("1").
dig("2").
dig("3").
dig("4").
dig("5").
dig("6").
dig("7").
dig("8").
dig("9").

letra("a").
letra("b").
letra("c").
letra("d").
letra("e").
letra("f").
letra("g").
letra("h").
letra("i").
letra("j").
letra("k").
letra("l").
letra("m").
letra("n").
letra("o").
letra("p").
letra("q").
letra("r").
letra("s").
letra("t").
letra("u").
letra("v").
letra("w").
letra("x").
letra("y").
letra("z").
letra(E) :- atom_string(A,E), string_upper(A,B), A \= B. % validar mayusculas


listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|RC]) :- atom_string(A,C), listatom_liststring(RA,RC).

string_to_liststring(S, LS) :- string_chars(S, A), listatom_liststring(A, LS).
s_expr(S) :- string_to_liststring(S, L), parse_s_expr(L, []).
parse_s_expr([ "(" | R ], Final) :- parse_lista(R, Final).


parse_lista([ ")" | R ], R).

parse_lista(L, Final) :-  parse_elemento(L, R1), parse_mas_elementos(R1, Final).

parse_mas_elementos([ " " | R ], Final) :- parse_elemento(R, R2), parse_mas_elementos(R2, Final).
parse_mas_elementos([ ")" | R ], R).


parse_elemento([ "\"" | R ], Final) :- parse_cadena(R, Final).
parse_elemento([ X | R ], Final) :- dig(X), parse_numero([X|R],Final).
parse_elemento([ "-" | R ], Final) :- parse_numero(["-"|R],Final).
parse_elemento([ X | R ], Final) :- letra(X), parse_atomo([X|R],Final).

parse_cadena([ "\"" | R ], R).  
parse_cadena([ _ | R ], F) :- parse_cadena(R, F).

parse_atomo([X|R], F) :- (letra(X);dig(X)), parse_atomo(R, F).
parse_atomo(L, L).

parse_numero(["-"|R], Final) :- parse_num_pos(R,Final).

parse_numero(L,Final) :- parse_num_pos(L,Final).

parse_num_pos([X|R],Final) :- dig(X), parse_num_cont(R,Final).

parse_num_cont([ "." | R ], Final) :- parse_frac(R,Final).

parse_num_cont([ X | R ], Final) :- dig(X), parse_num_cont(R,Final).

parse_num_cont(L,L).

parse_frac([X|R],F) :- dig(X), parse_frac(R,F).
parse_frac(L,L).
