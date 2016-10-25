%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. oct 2016 8:31
%%%-------------------------------------------------------------------
-module(eleventoTwentyExercises).
-author("grubio").

%% API
-export([decodeModified/1, dupli/1, repli/2, drop/2]).

%%Problem 12 - Decode a run-length encoded list.
decodeModified(L) -> decodeModified([],L).
decodeModified(NL, [[X|Y]|T]) -> decodeModified(NL++[Y || _ <- lists:seq(1, X)],T);
decodeModified(NL, [H|T]) -> decodeModified(NL++[H],T);
decodeModified(NL, []) -> lists:flatten(NL).

%%Problem 13 - Run-length encoding of a list (direct solution).
%%encodeDirect([H|T]) -> H.

%%Problem 14 - Duplicate the elements of a list.
dupli(L) -> dupli([], L).
dupli(NL, [H|T]) -> dupli(NL++[H || _ <- lists:seq(1, 2)], T);
dupli(NL, []) -> lists:flatten(NL).

%%Problem 15 - Replicate the elements of a list a given number of times.
repli(L, N) -> repli([], L, N).
repli(NL, [H|T], N) -> repli(NL++[H || _ <- lists:seq(1, N)], T, N);
repli(NL, [], _) -> lists:flatten(NL).

%%Problem 16 - Drop every N'th element from a list.
drop(L, N) -> drop(L, N, N) .
drop([H|T], N, C) -> [H|drop(T, N, C-1)];
drop([H|T], N, 0) -> drop([H|T], N, N);
drop([], _, 0) -> [].

