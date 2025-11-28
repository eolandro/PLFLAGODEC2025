/*
##R003##
##10##

Realice un predicado que valide el no terminal 'Escape'
*/

% escape("\"").
% true
% escape("n").
% true
% escape("b").
% true
% escape("u0000").
% true

escape("\"").
escape("n").
escape("b").
escape("u0000").