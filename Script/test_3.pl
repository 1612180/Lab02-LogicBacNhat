luy_thua(0, X) :-
    X is 1.

luy_thua(N, X) :-
    N > 0,
    N_1 is N - 1,
    luy_thua(N_1, X_1),
    X is X_1 * N.
