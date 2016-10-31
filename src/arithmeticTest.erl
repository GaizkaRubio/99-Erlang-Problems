%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 31. oct 2016 15:49
%%%-------------------------------------------------------------------
-module(arithmeticTest).
-author("grubio").

-include_lib("eunit/include/eunit.hrl").

exercise31_test() ->
%%  io:fwrite("~w", [twentyOnetoTwentyEightExercises:insert_at(alfa,[a,b,c,d],2)]),
  ?assert(arithmetic:is_prime(5)),
  ?assertNot(arithmetic:is_prime(4)).

exercise32_test() ->
%%  io:fwrite("~w", [twentyOnetoTwentyEightExercises:insert_at(alfa,[a,b,c,d],2)]),
  ?assert(arithmetic:gcd(36,63)==9).