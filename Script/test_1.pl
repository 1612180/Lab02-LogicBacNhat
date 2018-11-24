hoc(an, toan).
hoc(bao, toan).
cung_lop(X, Y) :-
    hoc(X, Z),
    hoc(Y, Z),
    X \== Y.
