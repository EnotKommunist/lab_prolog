% Минимальная версия
reverse_number(N, RevN) :-
    reverse_number_acc(N, 0, RevN).

reverse_number_acc(0, Acc, Acc).
reverse_number_acc(N, Acc, RevN) :-
    N > 0,
    LastDigit is N mod 10,
    N1 is N // 10,
    NewAcc is Acc * 10 + LastDigit,
    reverse_number_acc(N1, NewAcc, RevN).

% Запуск
start :-
    write('Введите число: '),
    read(N),
    reverse_number(N, RevN),
    write('Результат: '), write(RevN), nl.