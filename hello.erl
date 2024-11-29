-module(hello).
-vsn(2024).

-export(
    [
        add/2, 
        hello/0, 
        greet_and_two/2, 
        greet/2, 
        head/1, 
        second/1, 
        some/2, 
        valid_time/1, 
        test/1,
        old_enough/1,
        right_age/1
    ]
).

hello() ->
    io:format("Коллеги привет~n").

add(X,Y) ->
    X + Y.

greet_and_two(A,B) -> 
    hello(),
    add(A,B).

greet(male, Name) -> 
    io:format("Здравствуй господин ~s!~n", [Name]);
greet(female, Name) ->
    io:format("Здравствуй госпожа ~s!~n", [Name]);
greet(_, Name) ->
    io:format("Здравтвуй ~s!~n", [Name]).

head([H|_]) -> 
    H.

second([_, X|_]) -> 
    X,
    some(X,X).

some(X,Y) -> 
    X =:= Y.

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
    io:format("Кортеж даты (~p) говорит сегодня ~p/~p/~p. ~n", [Date, Y,M,D]),
    io:format("Кортеж времени (~p) показывает ~p:~p:~p. ~n", [Time,H,Min,S]);
valid_time(_) ->
    io:format("Пиши правильно пес").

test(Az) ->
    func1(Az).

func1(Word) ->
    case Word =:= "yes" of
        true -> true;
        false -> false
    end.

old_enough(X) when X >= 16 ->
    true;
old_enough(_) ->
    false.

right_age(X) when X > 17, X < 104 ->
    true,
    io:format("Ваш возраст ~p подходит! ~n", [X]);
right_age(_) ->
    false,
    io:format("Ваш возраст не подходит! ~n").





% {ok, [X]} = io:fread("Введите свой возраст: ", "~d"), X <
% io:format("Можно садиться за рули, так как тебе ~p лет. ~n", [X]).
