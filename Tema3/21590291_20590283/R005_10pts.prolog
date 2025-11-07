% ##R005##
% ##10##
% """
% Dada la siguiente secuencia matematica
% 7, 17, 37, 77, 157, 317
% Encuentre la función matematica recursiva
% e implementela en prolog
% 
% seq0(N,R).
% 	
% seq0(0,R).
% #R = 7
% seq0(1,R).
% #R = 17
% seq0(2,R).
% #R = 37
% 
% """
seq0(0, 7).
seq0(N, R) :-
    N > 0,
    N1 is N-1,
    seq0(N1, R1),
    R is R1*2 + 3.
