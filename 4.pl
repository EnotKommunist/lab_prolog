% Факты
color(blue).
color(black).
color(red).
make(buick).
make(chrysler).
make(ford).

% Основной предикат решения
solve(Color, Make) :-
    color(Color),
    make(Make),
    
    % Браун: синий Бьюик - ровно одно верно
    (   (Color = blue, Make \= buick)
    ;   (Color \= blue, Make = buick)
    ),
    
    % Джонс: черный Крайслер - ровно одно верно
    (   (Color = black, Make \= chrysler)
    ;   (Color \= black, Make = chrysler)
    ),
    
    % Смит: Форд и НЕ синий - ровно одно верно
    (   (Make = ford, Color \= blue)
    ;   (Make \= ford, Color \= blue)
    ).

% Запуск с вводом
start :-
    write('Введите цвет (blue, black, red): '),
    read(Color),
    write('Введите марку (buick, chrysler, ford): '),
    read(Make),
    nl,
    (   solve(Color, Make)
    ->  write('Правильно! '),
        write('Автомобиль был '), write(Color), write(' '), write(Make), nl,
    ;   write('Неправильно! '),
        write('При таких показаниях условия задачи не выполняются.'), nl
    ).