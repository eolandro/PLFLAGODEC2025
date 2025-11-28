listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC), atom_string(A,C).

string_to_liststring(Cadena,LCadenas) :- string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).

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

simple_escape("\"").
simple_escape("\\").
simple_escape("/").
simple_escape("b").
simple_escape("f").
simple_escape("n").
simple_escape("r").
simple_escape("t").

% Escape unicode
escape_list(["u",H1,H2,H3,H4]) :- hex(H1), hex(H2), hex(H3), hex(H4).

% Escape ez pc lemmon squezzy
escape_list([C]) :- simple_escape(C).

escape_s(Str) :- string_to_liststring(Str,LS), escape_list(LS).