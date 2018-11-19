% load tri thuc
:- [hganh].

writeln(Line) :-
	write(Line),
	nl.

writeln(no) :-
	writeln('Khong biet').

:- writeln('Go cau_1., cau_2., ... cau_20. de xem cau hoi va cau tra loi').

cau_1 :-
	writeln('Ai la me cua Prince George ?'),
	mother(Mother, 'Prince George') -> writeln(Mother); writeln(no).

cau_2 :-
	writeln('Ai la cha cua Mia Grace Tindall ?'),
	father(Father, 'Mia Grace Tindall') -> writeln(Father); writeln(no).

cau_3 :-
	writeln('Ai la vo cua Prince Harry ?'),
	wife(Wife, 'Prince Harry') -> writeln(Wife); writeln(no).

cau_4 :-
	writeln('Ai la chong cua Zara Phillips ?'),
	husband(Husband, 'Zara Phillips') -> writeln(Husband); writeln(no).

cau_5 :-
	writeln('Ai la con cua Prince Charles ?'),
	findall(Child, child(Child, 'Prince Charles'), List),
	writeln(List).

cau_6 :-
	writeln('Ai la con trai cua Queen Elizabeth II ?'),
	findall(Son, son(Son ,'Queen Elizabeth II'), List),
	writeln(List).

cau_7 :-
	writeln('Ai la con gai cua Captain Mark Phillips ?'),
	findall(Daughter, daughter(Daughter, 'Captain Mark Phillips'), List),
	writeln(List).

cau_8 :-
	writeln('Ai la con cua Prince Harry ?'),
	findall(Child, child(Child, 'Prince Harry'), List),
	writeln(List).

cau_9 :-
	writeln('Ai la con trai cua Prince William ?'),
	findall(Son, son(Son, 'Prince William'), List),
	writeln(List).

cau_10 :-
	writeln('Ai la con gai cua Prince Diana ?'),
	findall(Daughter, daughter(Daughter, 'Prince Diana'), List),
	writeln(List).

cau_11 :-
	writeln('Ai la ong/ba cua Captain Parker Bowles ?'),
	findall(GrandParent, grandparent(GrandParent, 'Captain Parker Bowles'), List),
	writeln(List).

cau_12 :-
	writeln('Ai la ong/ba cua Princess Eugenie ?'),
	findall(GrandParent, grandparent(GrandParent, 'Princess Eugenie'), List),
	writeln(List).

cau_13 :-
	writeln('Ai la ong cua Savannah Phillips ?'),
	findall(GrandFather, grandfather(GrandFather, 'Savannah Phillips'), List),
	writeln(List).

cau_14 :-
	writeln('Ai la ong cua Princess Charlotte ?'),
	findall(GrandFather, grandfather(GrandFather, 'Princess Charlotte'), List),
	writeln(List).

cau_15 :-
	writeln('Ai la ba cua Isla Phillips ?'),
	findall(GrandMother, grandmother(GrandMother, 'Isla Phillips'), List),
	writeln(List).

cau_16 :-
	writeln('Ai la ba cua Prince George ?'),
	findall(GrandMother, grandmother(GrandMother, 'Prince George'), List),
	writeln(List).

cau_17 :-
	writeln('Ai la chau cua Princess Diana ?'),
	findall(GrandChild, grandchild(GrandChild, 'Princess Diana'), List),
	writeln(List).

cau_18 :-
	writeln('Ai la chau cua Prince Edward ?'),
	findall(GrandChild, grandchild(GrandChild, 'Prince Edward'), List),
	writeln(List).

cau_19 :-
	writeln('Ai la chau trai cua Prince Phillip ?'),
	findall(GrandSon, grandson(GrandSon, 'Prince Phillip'), List),
	writeln(List).