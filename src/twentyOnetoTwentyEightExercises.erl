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
-export([insert_at/3, range/2]).

%%Problem 21 - Insert an element at a given position into a list.
insert_at(IL, L, 0) -> [IL]++insert_at([], L, -1);
insert_at(_, [], _) -> [];
insert_at(IL, [H|T], I) -> [H]++insert_at(IL, T, I-1).

%%Problem 22 - Create a list containing all integers within a given range.
range(I,F) when I == F -> [F];
range(I,F) -> [I]++range(I+1,F).
