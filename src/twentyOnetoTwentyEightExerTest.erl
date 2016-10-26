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