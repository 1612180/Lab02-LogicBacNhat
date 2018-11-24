len_list([], X) :-
    X is 0.
len_list([_|L], X) :-
    len_list(L, X_1),
    X is X_1 + 1.


