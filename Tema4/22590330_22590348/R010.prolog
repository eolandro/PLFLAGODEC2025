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

listatom_liststring([A],[C]) :- atom_string(A,C).
listatom_liststring([A|RA],[C|LCC]) :- listatom_liststring(RA,LCC),atom_string(A,C).
string_to_liststring(Cadena,LCadenas):-string_chars(Cadena,LAtomos),listatom_liststring(LAtomos,LCadenas).

% Formato bcrypt:
%$2<a/b/x/y>$[cost]$[22 character salt][31 character hash]
%Usa base64, pero limitado a ./A-Za-z0-9

init("2").

alg("a").
alg("b").
alg("x").
alg("y").

cost(Num) :- is_digit(Num).

salt(".").
salt("/").
salt(E) :- is_alpha(E).
salt(E) :- is_digit(E).


hash(E) :- salt(E).

limit_string([]).
limit_string([H|T]) :- hash(H),limit_string(T).

bcrypt(Str) :- split_string(Str, "$", "", ["", Version, Cost, SaltHash]),string_to_liststring(Version, ["2", Alg]),alg(Alg),string_to_liststring(Cost, [C1, C2]),cost(C1), cost(C2),string_to_liststring(SaltHash, Lista),length(Lista, 53),limit_string(Lista).