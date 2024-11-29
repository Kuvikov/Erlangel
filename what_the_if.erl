-module(what_the_if).
-export([heh_fine/1, help_me/1]).

heh_fine(N) ->
    if N =:= 1 -> 
        io:format("Вы ввели 1 ~n");
        N > 1, N < 24 ->
            io:format("Число находится в диапазоне от 2 - 24 ~n");
        true ->
            io:format("Число выше 23 ~n")
    end.

help_me(Animal) ->
    Talk = if Animal == cat -> "meow"; %мяу
              Animal == beef -> "mooo";
              Animal == dog -> "gaw";
              true -> "Але я человек"
            end,

    {Animal, "говорит " ++ Talk ++ "!"}.