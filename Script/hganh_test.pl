% load tri thuc
:- [hganh].

writeln(Line) :-
	write(Line),
	nl.

:- writeln('Go cau_1., cau_2., ... cau_20. de xem cau hoi va cau tra loi').

cau_1 :-
	writeln('Ai la me cua Prince Andrew'),
	(mother(Person, 'Prince Andrew')) -> writeln(Person); writeln('Khong biet').