badaboom(N) :-
    badaboom_aux(1, N).

badaboom_aux(Actual, N) :-
    Actual > N, !.

badaboom_aux(Actual, N) :-
    Actual =< N,
    imprimir_valor(Actual),
    Siguiente is Actual + 1,
    badaboom_aux(Siguiente, N).

imprimir_valor(Num) :-
    Num mod 3 =:= 0,
    Num mod 5 =:= 0,
    !,
    writeln('BadaBoom!!').

imprimir_valor(Num) :-
    Num mod 3 =:= 0,
    !,
    writeln('Bada').

imprimir_valor(Num) :-
    Num mod 5 =:= 0,
    !,
    writeln('Boom!!').

imprimir_valor(Num) :-
    writeln(Num).