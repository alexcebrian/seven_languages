xsort([], []).
xsort([Head|Tail], Sorted) :- 
	sort(Tail, STail),
	insert(Head, STail, Sorted).

insert(X, [], [X]).
insert(X, [H|Tail], [X,H|Tail]) :- X =< H.
insert(X, [H|Tail], [H|Tail2]) :- X > H, insert(X, Tail, Tail2).
