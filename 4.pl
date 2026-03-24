color(blue).
color(black).
color(red).
make(buick).
make(chrysler).
make(ford).

solve(Color, Make) :-
    color(Color),
    make(Make),
    
    % Браун: синий Бьюик - ровно одно верно
    ( (Color = blue, Make \= buick)
    ; (Color \= blue, Make = buick)
    ),
    
    % Джонс: черный Крайслер - ровно одно верно
    ( (Color = black, Make \= chrysler)
    ; (Color \= black, Make = chrysler)
    ),
    
    % Смит: Форд и НЕ синий - ровно одно верно
    ( (Make = ford, Color = blue)      % марка Ford верна, цвет синий (неверно, что не синий)
    ; (Make \= ford, Color \= blue)    % марка не Ford, цвет не синий (верно второе утверждение)
    ).

% Запуск
start :-
    solve(Color, Make),
    write('Автомобиль был '), write(Color), write(' '), write(Make), nl.
