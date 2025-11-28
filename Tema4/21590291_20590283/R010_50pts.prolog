/* 
##R010##
##50##
"""
Realice un predicado que valide un hash de bcrypt
https://en.wikipedia.org/wiki/Bcrypt#Description
40 pts

bcrypt("$2a$12$3oUINuVy1UCI0HpeT43QqOkgaxScqa0meG.KwqhcEDsHb7N.ZDsHa").
true
bcrypt("$2a$09$8eVlg43oGdXq2wWj4iIzneRE7HTdNuWjFiWqKSYKo2j.CdQvlAfWe").
true
"""
*/
% Conversión de cadena a lista de strings de 1 carácter
listatom_liststring([A],[C]) :-
    atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :-
    listatom_liststring(RA,LCC),
    atom_string(A,C).
string_to_liststring(Cadena,LCadenas) :-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).  % para separar cadenas en caracteres
% Validador de hash bcrypt usando lista de strings de caracteres
bcrypt(Str) :-
    string_to_liststring(Str, Cs),
    Cs = ["$","2",V,"$",C1,C2,"$" | Body],
    member(V, ["a","b","x","y"]), % Prefijo: $2a$, $2b$, $2x$ o $2y$
    string_chars(C1, [D1]),
    string_chars(C2, [D2]),
    number_chars(Costo, [D1,D2]),
    Costo >= 4,
    Costo =< 31, % Costo: dos dígitos entre 4 y 31
    % Cuerpo: 22 chars de salt + 31 chars de hash = 53 caracteres
    length(Body, 53),
    length(Salt, 22),
    length(Hash, 31),
    append(Salt, Hash, Body),
    % Todos los caracteres deben ser del alfabeto base64 de bcrypt
    maplist(bcrypt_b64_str, Salt),
    maplist(bcrypt_b64_str, Hash).
% Caracter permitido en el base64 de bcrypt: ./ A–Z a–z 0–9 (según la especificación)
bcrypt_b64_str(S) :-
    string_chars(S, [C]),
    ( C = '.' ; C = '/' ;
      char_type(C, alpha) ;
      char_type(C, digit)
    ).
