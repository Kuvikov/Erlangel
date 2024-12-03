-module(typeA_typeB).
-export([my_func/1]).

my_func(Exp) when is_binary(Exp) -> "Я бинарь";
my_func(Exp) when is_list(Exp) -> "Я список";
my_func(Exp) when is_boolean(Exp) -> "Я Логика";
my_func(Exp) when is_integer(Exp) -> "Я число";
my_func(Exp) when is_atom(Exp) -> "Я АТОМ".