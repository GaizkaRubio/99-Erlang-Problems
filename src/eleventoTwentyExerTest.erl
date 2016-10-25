%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. oct 2016 10:38
%%%-------------------------------------------------------------------
-module(eleventoTwentyExerTest).
-author("grubio").

-include_lib("eunit/include/eunit.hrl").

exercise11_test() ->
  ?assert(eleventoTwentyExercises:decodeModified([b,[5,a],d,[3,c]])==[b,a,a,a,a,a,d,c,c,c]).

exercise14_test() ->
  ?assert(eleventoTwentyExercises:dupli([a,b,c,c,d])==[a,a,b,b,c,c,c,c,d,d]).

exercise15_test() ->
  ?assert(eleventoTwentyExercises:repli([a,b,c,c,d],3)==[a,a,a,b,b,b,c,c,c,c,c,c,d,d,d]).

exercise16_test() ->
  io:fwrite("~w", [eleventoTwentyExercises:drop([a,b,c,d,e,f,g,h,i,k],3)]),
  ?assert(eleventoTwentyExercises:drop([a,b,c,d,e,f,g,h,i,k],3)==[a,b,d,e,g,h,k]).

exercise17_test() ->
%%  io:fwrite("~w", [eleventoTwentyExercises:split([a,b,c,d,e,f,g,h,i,k],3)]),
  ?assert(eleventoTwentyExercises:split([a,b,c,d,e,f,g,h,i,k],3)==[[a,b],[c,d,e,f,g,h,i,k]]).

exercise18_test() ->
  ?assert(eleventoTwentyExercises:slice([a,b,c,d,e,f,g,h,i,k],3,7)==[c,d,e,f,g]).

exercise19_test() ->
  ?assert(eleventoTwentyExercises:rotate([a,b,c,d,e,f,g,h],3)==[d,e,f,g,h,a,b,c]),
  ?assert(eleventoTwentyExercises:rotate([a,b,c,d,e,f,g,h],-2)==[g,h,a,b,c,d,e,f]).

%%exercise20_test() ->
%%  io:fwrite("~w", [eleventoTwentyExercises:remove_at([a,b,c,d],2)]).