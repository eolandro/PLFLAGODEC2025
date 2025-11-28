%fraction("") es válido
fraction("").

%fraction(S) es válido si S empieza con "." y le siguen uno o más dígitos.
fraction(S) :-
    string(S),
    string_chars(S, ['.' | Digits]),
    Digits \= [],               % Debe tener al menos un dígito
    all_digits(Digits).

%Verifica que todos sean dígitos
all_digits([]).
all_digits([C | R]) :-
    member(C, ['0','1','2','3','4','5','6','7','8','9']),
    all_digits(R).
