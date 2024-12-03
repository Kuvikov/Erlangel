-module(recursion).
-export([fac/1, len/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).


%% Посчитать длину списка входящего
len([]) -> 0;
len([_|T]) -> 1 + len(T).