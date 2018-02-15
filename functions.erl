-module(functions).
-compile(export_all). % Replace with -export() later, for sanity's sake!

head([H|_]) ->
  H.

second([_,H|_]) ->
  H.

same(X,X) ->
  true;
same(_,_) ->
  false.

% There are limits to pattern matching; as long as the tuples are in the correct {Y,M,D} format, incorrect data could be passed in.
valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
  io:format("The Date tuple (~p) says today is: ~p/~p/~p,~n", [Date,Y,M,D]),
  io:format("The Time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
  io:format("Stop feeding me wrong data!~n").