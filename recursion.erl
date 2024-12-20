-module(recursion).
-export([fac/1, len/1, zip/2, tail_fac/1, duplicate/2, sublist/2, tail_duplicate/2]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).


%% Посчитать длину списка входящего
len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_fac(N) -> 
    tail_fac(N,1).

tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> 
    tail_fac(N-1, N*Acc).

duplicate(0, _) ->
    [];
duplicate(N, Term) when N > 0 ->
    [Term|duplicate(N-1, Term)].

tail_duplicate(N, Term) -> 
    tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) ->
    List;
tail_duplicate(N, Term, List) -> 
    tail_duplicate(N-1, Term, [Term|List]).

sublist(_, 0) -> [];
sublist([], _) -> [];
sublist([H|T], N) when N > 0 -> [H|sublist(T,N - 1)].

zip([], []) -> [];
zip([X|Xs],[Y|Ys]) -> [{X,Y}|zip(Xs,Ys)].