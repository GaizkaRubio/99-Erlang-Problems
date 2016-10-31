%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 31. oct 2016 12:21
%%%-------------------------------------------------------------------
-module(arithmetic).
-author("grubio").

%% API
-export([is_prime/1, gcd/2, coprime/2, totient_phi/1]).

%%Problem 31 - Determine whether a given integer number is prime.
is_prime(N) -> is_prime(N, N-1).
is_prime(_, 1) -> true;
is_prime(N, D) when N rem D =:= 0 -> false;
is_prime(N, D) when N rem D =/= 0 -> is_prime(N, D-1).

%%Problem 32 - Determine the greatest common divisor of two positive integer numbers.
gcd(N, D) when N rem D =:= 0 -> D;
gcd(N, D) when N rem D =/= 0, N rem D > D  -> gcd(N, D);
gcd(N, D) when N rem D =/= 0 -> gcd(N, N rem D).

%%Problem 33 - Determine whether two positive integer numbers are coprime.
coprime(N, D) -> gcd(N, D) == 1.

%%Problem 34 - Calculate Euler's totient function phi(m).
totient_phi(N) -> length([X || X<-lists:seq(1, N), coprime(N, X)]).




