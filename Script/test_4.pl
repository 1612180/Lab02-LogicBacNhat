tong(1, S) :-
    S is 1.
tong(N, S) :-
    N > 1,
    N_1 is N - 1,
    tong(N_1, S_1),
    S is N + S_1.
