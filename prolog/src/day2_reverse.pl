reverse([], []).
reverse([Head|Tail], Rev) :- reverse(Tail, [Rev|Head]).