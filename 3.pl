complement(U, A, Complement) :-
    subtract(U, A, Complement).

subtract([], _, []).
subtract([H|T], A, Result) :-
    member(H, A),
    !,
    subtract(T, A, Result).
subtract([H|T], A, [H|Result]) :-
    subtract(T, A, Result).

start :-
    write('Введите универсум U: '),
    read(U),
    write('Введите множество A: '),
    read(A),
    complement(U, A, C),
    nl,
    write('Универсум U: '), write(U), nl,
    write('Множество A: '), write(A), nl,
    write('Дополнение: '), write(C), nl.
