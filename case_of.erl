-module(case_of).
-export([assessment_of_temp/1]).

assessment_of_temp(Temp) ->
    io:format("~p~n", [Temp]),
    case Temp of
        {X, celsius} when 20 =< X, X =< 45 ->
            "favorable";
        {X, kelvin} when 293 =< X, X =< 318 ->
            "scientifically favorable";
        {X, fahrenheit} when 68 =< X, X =< 113 ->
            "favorable in the US";
        _ ->
            "not the best tempperature"
  end.