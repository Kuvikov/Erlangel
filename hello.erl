-module(hello).
-export([add/2, hello/0, greet_and_two/2]).

hello() ->
    io:format("Коллеги привет~n").

add(X,Y) ->
    X + Y.

greet_and_two(A,B) -> 
    hello(),
    add(A,B).

git config --global user.email "you@example.com"
  git config --global user.name "Your Name"