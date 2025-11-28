listatom_liststring([A],LC):-atom_string(A,C),LC=[C].

listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

escape("\"").   % comillas dobles
escape("\\").   % backslash
escape("/").    % slash
escape("b").    % backspace
escape("f").    % form feed
escape("n").    % salto de línea
escape("r").    % retorno de carro
escape("t").    % tabulación

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

escape(Str) :-
    string_to_liststring(Str, ["u",H1,H2,H3,H4]),
    hex(H1), hex(H2), hex(H3), hex(H4).