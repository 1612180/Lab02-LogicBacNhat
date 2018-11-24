% fibonaci 1 1 2 3 5
fibo(1, X) :-
    X is 1.

fibo(2, X) :-
    X is 1.

fibo(N, X) :-
    N > 2,
    N_1 is N - 1,
    N_2 is N - 2,
    fibo(N_1, X_1),
    fibo(N_2, X_2),
    X is X_1 + X_2.
