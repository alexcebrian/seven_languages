smallest([], Sm, Sm).
smallest([Head|Tail], Current, Sm1) :- smallest(Tail, Current, Sm2), (Head < Sm2 -> Sm1 is Head; Sm1 is Sm2).
