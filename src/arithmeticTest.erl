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
  ?assert(arithmetic:gcd(63,36) == 9).

exercise33_test() ->
  ?assert(arithmetic:coprime(49,11)).

exercise34_test() ->
  ?assert(arithmetic:totient_phi(315) == 6).

exercise35_test() ->
  ?assert(arithmetic:prime_factors(315) =:= [3,3,5,7]).

exercise36_test() ->
  ?assert(arithmetic:prime_factors_mult(315) =:= [{3,2},{5,1},{7,1}]).

exercise37_test() ->
  ?assert(arithmetic:totient_phi_modified(315) == 6).