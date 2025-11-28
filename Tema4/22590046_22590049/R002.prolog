/*
##R002##
##10##
"""
Realice un predicado que valide el no terminal 'Escape'
Segun la especificacion de json. 10 pts

% escape("\"").
% true
% escape("n").
% true
% escape("b").
% true
% escape("u0000").
% true
"""
*/

listatom_liststring([A],LC):- 
    atom_string(A,C), 
    LC=[C].

listatom_liststring([A|RA],LC):-
    listatom_liststring(RA,LCC),
    atom_string(A,C), 
    LC=[C|LCC].

string_to_liststring(Cadena,LCadenas):-
    string_chars(Cadena,LAtomos),
    listatom_liststring(LAtomos,LCadenas).


escape("\"").       
escape("\\").       
escape("/").     
escape("b").     
escape("f").     
escape("n").    
escape("r").     
escape("t").    


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
    string_to_liststring(Str, Lista),
    escape_unicode(Lista).

escape_unicode(["u",H1,H2,H3,H4]) :-
    hex(H1), hex(H2), hex(H3), hex(H4).
