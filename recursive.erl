-module(recursive).
-export([fac/1, len/1]).

fac(0) -> 1;
fac(N) when N > 0 -> N*fac(N-1).

%% len([1,2,3,4]) is len([1|[2,3,4]]) which becomes 1 + len([2|[3,4]]) and so on
len([]) -> 0;
len([_|T]) -> 1 + len(T).