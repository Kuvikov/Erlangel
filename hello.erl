-module(hello).
-vsn(2024).

-export([add/2, hello/0, greet_and_two/2, greet/2, head/1, second/1, some/2, valid_time/1]).

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
