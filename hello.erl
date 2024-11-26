-module(hello).
-vsn(2024).

-export([add/2, hello/0, greet_and_two/2, greet/2]).

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