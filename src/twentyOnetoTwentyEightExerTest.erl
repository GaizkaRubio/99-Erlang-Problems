%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. oct 2016 9:29
%%%-------------------------------------------------------------------
-module(twentyOnetoTwentyEightExerTest).
-author("grubio").

-include_lib("eunit/include/eunit.hrl").

exercise21_test() ->
%%  io:fwrite("~w", [twentyOnetoTwentyEightExercises:insert_at(alfa,[a,b,c,d],2)]),
  ?assert(twentyOnetoTwentyEightExercises:insert_at(alfa,[a,b,c,d],2)==[a,b,alfa,c,d]).

exercise22_test() ->
  ?assert(twentyOnetoTwentyEightExercises:range(4,9)==[4,5,6,7,8,9]).

exercise23_test() ->
  ?assert(length(twentyOnetoTwentyEightExercises:rnd_select([a,b,c,d,e,f,g,h],3))==3).

exercise24_test() ->
  ?assert(length(twentyOnetoTwentyEightExercises:rnd_getter(49, 6))==6).

exercise25_test() ->
  ?assert(length(twentyOnetoTwentyEightExercises:rnd_permu([a,b,c,d,e,f]))==6).

exercise26_test() ->
  ?assert(length(twentyOnetoTwentyEightExercises:combinations(3, [a,b,c,d,e,f]))=:=6).