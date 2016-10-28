%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. oct 2016 9:13
%%%-------------------------------------------------------------------
-module(twentyOnetoTwentyEightExercises).
-author("grubio").

%% API
-export([insert_at/3, range/2, rnd_select/2, rnd_getter/2, rnd_permu/1, combinations/2]).

%%Problem 21 - Insert an element at a given position into a list.
insert_at(IL, L, 0) -> [IL]++insert_at([], L, -1);
insert_at(_, [], _) -> [];
insert_at(IL, [H|T], I) -> [H]++insert_at(IL, T, I-1).

%%Problem 22 - Create a list containing all integers within a given range.
range(I,F) when I == F -> [F];
range(I,F) -> [I]++range(I+1,F).

%%Problem 23 - Extract a given number of randomly selected elements from a list.
rnd_select(_, 0) ->[];
rnd_select(L, N) ->[lists:nth(random:uniform(length(L)),L)]++rnd_select(L, N-1).

%%Problem 24 - Draw N different random numbers from the set 1..M.
rnd_getter(_, 0) ->[];
rnd_getter(M, N) ->[random:uniform(M)]++rnd_getter(M, N-1).

%%Problem 25 - Generate a random permutation of the elements of a list.
rnd_permu(L) -> rnd_select(L, length(L)).

%%TODO: Improve exercise 25

%%Problem 26 - Generate a random permutation of the elements of a list.
perms([]) -> [[]];
perms(L)  -> [[H|T] || H <- L, T <- perms(L--[H])].

combinations(N, L) -> perms(rnd_select(L, N)).