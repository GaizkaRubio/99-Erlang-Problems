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
-export([decodeModified/1, dupli/1, repli/2, drop/2, split/2, slice/3, rotate/2, remove_at/2]).

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
drop([], _, _) -> [];
drop([_|T], N, 1) -> drop(T, N, N);
drop([H|T], N, C) -> [H | drop(T, N, C-1)].

%%Problem 17 - Split a list into two parts; the length of the first part is given.
split(L, N) -> split(L,[[],[]] ,N-1).
split([H|T], [A,B], 0) ->split(T, [A,B++[H]], 0);
split([H|T], [A,B], N) -> split(T, [A++[H],B], N-1);
split([], L, _) -> L.

%%Problem 18 - Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th
%% element of the original list (both limits included).
%% Start counting the elements with 1.
slice([], _, _) -> [];
slice([_|_], 1, 0) -> [];
slice([H|T], 1, K) -> [H | slice(T, 1, K - 1)];
slice([_|T], I, K) -> slice(T, I-1, K-1).

%%Problem 19 - Rotate a list N places to the left.
rotate(L, 0) -> L;
rotate([H|T], N) when N > 0 -> rotate(T++[H], N - 1);
rotate([H|T], N) when N < 0 -> rotate(T++[H], N + length([H|T])-1).

%%%%Problem 20 - Remove the K'th element from a list.
remove_at([H|T], N) when N =:= 0 ->  [H|remove_at(T, N-1)];
remove_at([H|T], N) -> remove_at(T, N-1);
remove_at([], N) -> [].