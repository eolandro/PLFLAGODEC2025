% Examen_04
% Daniel Martinez Hernandez 22590336
% Mauricio Dario Sandoval Mandujano 22590358

listatom_liststring([A],LC) :- atom_string(A,C), LC = [C].
listatom_liststring([A|RA],LC):-
     listatom_liststring(RA,LCC),
     atom_string(A,C), LC =[ C | LCC].


string_to_liststring(Cadena,ListaCadenas) :-
    string_chars(Cadena,ListaAtomos),
    listatom_liststring(ListaAtomos,ListaCadenas).

% ##R001##
cero("0").
digito("1").
digito("2").
digito("3").
digito("4").
digito("5").
digito("6").
digito("7").
digito("8").
digito("9").

todo_digito(N) :- cero(N) ; digito(N).

opcionales([]) :- !.
opcionales([D | R]) :- todo_digito(D), opcionales(R).

entero(["0"]).
entero([D | R]) :- digito(D), opcionales(R).

integer_list(["-" | R]) :- entero(R).
integer_list(L) :- entero(L).

integer_s(Str) :- string_to_liststring(Str, Ls), integer_list(Ls).



% ##R002##

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

escape_char(["\\"]).
escape_char(["\""]).
escape_char(["/"]).

escape_char(["b"]).
escape_char(["f"]).
escape_char(["n"]).
escape_char(["r"]).
escape_char(["t"]).

escape_char(["u",A,B,C,D]) :- hex(A), hex(B), hex(C), hex(D).

escape(Str) :- string_to_liststring(Str, Ls), escape_char(Ls).



% ##R004##

numero([D]) :- todo_digito(D).
numero([D | R]) :- todo_digito(D), numero(R).

fraction_l([]) :- !.
fraction_l(["." | R]) :- numero(R).

fraction(Str) :- string_to_liststring(Str, Ls), fraction_l(Ls).




%R006
%Defina un predicado capaz de validar una direccion ipV6
%sin comprimir
%https://es.wikipedia.org/wiki/IPv6#Notaci%C3%B3n_para_las_direcciones_IPv6
%40 pts

%ipv6("2001:0db8:85a3:08d3:1319:8a2e:0370:7334")
%true.
%ipv6("2001:0DB8:0000:0000:0000:0000:1428:57ab")
%true.
%ipv6("2001:db8:aaaa:bbbb:cccc:dddd:eeee:0001")
%true.


% Versión que acepta grupos de 1 a 4 caracteres hexadecimales
ipv6(String) :-
    string_to_liststring(String, Chars),
    split_groups(Chars, Groups),
    valid_groups(Groups).

% Dividir la lista en grupos separados por ":"
split_groups([], []).


split_groups(Chars, Groups) :-
    append(Group, [":"|Rest], Chars),
    Group = [_|_], % Grupo no vacío
    split_groups(Rest, OtherGroups),
    Groups = [Group|OtherGroups].
split_groups(LastGroup, [LastGroup]) :-
    LastGroup = [_|_], % Último grupo no vacío
    \+ member(":", LastGroup).

% Validar que hay 8 grupos y cada uno tiene 1-4 caracteres hex
valid_groups(Groups) :-
    length(Groups, 8),
    maplist(valid_group, Groups).

valid_group(Group) :-
    length(Group, Len),
    between(1, 4, Len),
    maplist(c_mac, Group).

    
%R007
%Realice un predicado que permita validar una variable en PHP
%https://www.php.net/manual/en/language.variables.basics.php
%20 pts

%php_var("$hola").
%true.
%php_var("$_h").
%true.
%php_var("$h111").
%true.


dolar("$").

todos_alfanumericos_y_underscore([]).

% Caso recursivo
todos_alfanumericos_y_underscore([P|R]) :-
    (char_type(P, alnum) ; P == "_"),
    todos_alfanumericos_y_underscore(R).


caracter_valido("_").
caracter_valido(C):- char_type(C,alpha).
caracter_valido(C) :-
    char_code(C, Codigo),Codigo >= 128,Codigo =< 255.


php_var(String):-  string_to_liststring(String,ListaVarPhp),
  ListaVarPhp = [Cabeza|Cuerpo], dolar(Cabeza), Cuerpo= [H|R], caracter_valido(H),todos_alfanumericos_y_underscore(R).


%R008

%Realice un predicado que valide una direccion mac
%20 pts

%mac_ad("08:9e:01:6f:2e:41").
%true
%mac_ad("ff:ff:01:6f:2e:41").
%true
%mac_ad("00:00:00:00:00:00").
%true

% VALORES VALIDOS PARA MAC e IPv6
c_mac("A"). c_mac("B"). c_mac("C"). c_mac("D"). c_mac("E"). c_mac("F").
c_mac("a"). c_mac("b"). c_mac("c"). c_mac("d"). c_mac("e"). c_mac("f").
c_mac("0"). c_mac("1"). c_mac("2"). c_mac("3"). c_mac("4"). c_mac("5").
c_mac("6"). c_mac("7"). c_mac("8"). c_mac("9").


mac_ad(String) :- 
    string_to_liststring(String,L), 
    L = [A, B, ":", C, D, ":", E, F, ":", G, H, ":", I, J, ":", K, M],
    c_mac(A), c_mac(B), c_mac(C), c_mac(D), 
    c_mac(E), c_mac(F), c_mac(G), c_mac(H), 
    c_mac(I), c_mac(J), c_mac(K), c_mac(M).




% ##R009##

variante("8").
variante("9").
variante("A").
variante("a").
variante("B").
variante("b").

cadena4(H1,H2,H3,H4) :- hex(H1), hex(H2), hex(H3), hex(H4).
cadena8(H1,H2,H3,H4,H5,H6,H7,H8) :- cadena4(H1,H2,H3,H4), cadena4(H5,H6,H7,H8).
cadena_ver("4",H1,H2,H3) :- hex(H1), hex(H2), hex(H3).
cadena_var(V,H1,H2,H3) :- variante(V), hex(H1), hex(H2), hex(H3).
cadena12(H1,H2,H3,H4,H5,H6,H7,H8,H9,HA,HB,HC) :- cadena8(H1,H2,H3,H4,H5,H6,H7,H8), cadena4(H9,HA,HB,HC).

uuid_l([H1,H2,H3,H4,H5,H6,H7,H8,
	G1,
	V1,V2,V3,V4,
	G2,
	C1,C2,C3,C4,
	G3,
	R1,R2,R3,R4,
	G4,
	N1,N2,N3,N4,N5,N6,N7,N8,N9,NA,NB,NC])
	:- G1 = "-", G2 = "-", G3 = "-", G4 = "-",
		cadena8(H1,H2,H3,H4,H5,H6,H7,H8),
		cadena4(V1,V2,V3,V4),
		cadena_ver(C1,C2,C3,C4),
		cadena_var(R1,R2,R3,R4),
		cadena12(N1,N2,N3,N4,N5,N6,N7,N8,N9,NA,NB,NC).

uuid(Str) :- string_to_liststring(Str, LS), uuid_l(LS).


%R010
%Realice un predicado que valide un hash de bcrypt
%https://en.wikipedia.org/wiki/Bcrypt#Description
%40 pts
%bcrypt("$2a$12$3oUINuVy1UCI0HpeT43QqOkgaxScqa0meG.KwqhcEDsHb7N.ZDsHa").
%true
%bcrypt("$2a$09$8eVlg43oGdXq2wWj4iIzneRE7HTdNuWjFiWqKSYKo2j.CdQvlAfWe").
%true


salt_hash([]).

% Caso recursivo
salt_hash([P1|R1]) :- bcrypt_Base64(P1),salt_hash(R1).


version_numero("2").
version_letra("a").
version_letra("b").
version_letra("y").

%  costes validos
coste_valido_lista(["0","4"]). coste_valido_lista(["0","5"]). coste_valido_lista(["0","6"]). coste_valido_lista(["0","7"]).
coste_valido_lista(["0","8"]). coste_valido_lista(["0","9"]). coste_valido_lista(["1","0"]). coste_valido_lista(["1","1"]).
coste_valido_lista(["1","2"]). coste_valido_lista(["1","3"]). coste_valido_lista(["1","4"]). coste_valido_lista(["1","5"]).
coste_valido_lista(["1","6"]). coste_valido_lista(["1","7"]). coste_valido_lista(["1","8"]). coste_valido_lista(["1","9"]).
coste_valido_lista(["2","0"]). coste_valido_lista(["2","1"]). coste_valido_lista(["2","2"]). coste_valido_lista(["2","3"]).
coste_valido_lista(["2","4"]). coste_valido_lista(["2","5"]). coste_valido_lista(["2","6"]). coste_valido_lista(["2","7"]).
coste_valido_lista(["2","8"]). coste_valido_lista(["2","9"]). coste_valido_lista(["3","0"]). coste_valido_lista(["3","1"]).

bcrypt_Base64("/").
bcrypt_Base64(".").
bcrypt_Base64(C):-char_type(C, alnum).

bcrypt(String) :- 
    string_to_liststring(String,L), length(L,60), 
    L= [H|Resto1], dolar(H), 
    Resto1 = [Cabeza|Resto2], version_numero(Cabeza), 
    Resto2 = [Head|Resto3], version_letra(Head), 
    Resto3 = [P|Resto4],dolar(P),
    Resto4 = [D1, D2 | Resto5],  
    coste_valido_lista([D1, D2]),       
    Resto5 = [One|Resto6],dolar(One),length(Resto6, 53), salt_hash(Resto6).