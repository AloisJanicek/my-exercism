-module(leap).
-export([leap_year/1]).


leap_year(_Year) ->
    divisibleBy(4, _Year) and not divisibleBy(100, _Year) or divisibleBy(400, _Year).

divisibleBy(Num, Year) ->
    0 == Year rem Num.
