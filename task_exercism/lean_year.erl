-module(lean_year).
-export([lean_year/1]).



lean_year(Year) ->
    case {Year rem 4, Year rem 100, Year rem 400} of
        {0, 0, 0} -> io:format("~p was a leap year!~n", [Year]);
        {0, 0, _} -> io:format("~p was not a leap year as it's not divisible by 400.~n", [Year]);
        _ -> io:format("~p was not a leap year as it's not divisible by 4.~n", [Year])
    end.