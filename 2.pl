max_consecutive_positive(List, Max) :-
    max_consecutive_positive(List, 0, 0, Max).

max_consecutive_positive([], CurrentMax, GlobalMax, Max) :-
    Max is max(CurrentMax, GlobalMax).

max_consecutive_positive([H|T], Current, Global, Max) :-
    H > 0,
    NewCurrent is Current + 1,
    max_consecutive_positive(T, NewCurrent, Global, Max).

max_consecutive_positive([H|T], Current, Global, Max) :-
    H =< 0,
    NewGlobal is max(Current, Global),
    max_consecutive_positive(T, 0, NewGlobal, Max).

start :-
    write('Введите список (например, [1,2,-3,4,5]): '),
    read(List),
    max_consecutive_positive(List, Max),
    write('Результат: '), write(Max), nl.
