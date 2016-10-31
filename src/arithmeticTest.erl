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
%%  io:fwrite("~w", [arithmetic:is_prime(5)]),
  ?assert(arithmetic:is_prime(5)),
  ?assertNot(arithmetic:is_prime(4)).

exercise32_test() ->
  ?assert(arithmetic:gcd(63,36)==9).

exercise33_test() ->
  ?assert(arithmetic:gcd(64,35)).