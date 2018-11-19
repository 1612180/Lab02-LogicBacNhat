% fact
male('Prince Phillip').
male('Prince Charles').
male('Captain Mark Phillips').
male('Timothy Laurence').
male('Prince Andrew').
male('Prince Edward').
male('Prince William').
male('Prince Harry').
male('Peter Phillips').
male('Mike Tindall').
male('James, Viscount Severn').
male('Prince George').

female('Queen Elizabeth II').
female('Princess Diana').
female('Camilla Parker Bowles').
female('Princess Anne').
female('Sarah Ferguson').
female('Sophie Rhys-jones').
female('Kate Middleton').
female('Autumn Kelly').
female('Zara Phillips').
female('Princess Beatrice').
female('Princess Eugenie').
female('Princess Charlotte').
female('Savannah Phillips').
female('Isla Phillips').
female('Mia Grace Tindall').

married('Queen Elizabeth II', 'Prince Phillip').
married('Prince Phillip', 'Queen Elizabeth II').
married('Prince Charles', 'Camilla Parker Bowles').
married('Camilla Parker Bowles', 'Prince Charles').
married('Princess Anne', 'Timothy Laurence').
married('Timothy Laurence', 'Princess Anne').
married('Sophie Rhys-jones', 'Prince Edward').
married('Prince Edward', 'Sophie Rhys-jones').
married('Prince William', 'Kate Middleton').
married('Kate Middleton', 'Prince William').
married('Autumn Kelly', 'Peter Phillips').
married('Peter Phillips', 'Autumn Kelly').
married('Zara Phillips', 'Mike Tindall').
married('Mike Tindall', 'Zara Phillips').

divorced('Prince Charles', 'Princess Diana').
divorced('Princess Diana', 'Prince Diana').
divorced('Captain Mark Phillips', 'Princess Anne').
divorced('Princess Anne', 'Captain Mark Phillips').
divorced('Sarah Ferguson', 'Prince Andrew').
divorced('Prince Andrew', 'Sarah Ferguson').

parent('Prince William','Prince George').
parent('Prince William','Princess Charlotte').
parent('Kate Middleton','Prince George').
parent('Kate Middleton','Princess Charlotte').
parent('Autumn Kelly','Savannah Phillips').
parent('Autumn Kelly','Isla Phillips').
parent('Peter Phillips','Savannah Phillips').
parent('Peter Phillips','Isla Phillips').
parent('Zara Phillips','Mia Grace Tindall').
parent('Mike Tindall','Mia Grace Tindall').
parent('Princess Diana','Prince William').
parent('Princess Diana','Prince Harry').
parent('Prince Charles','Prince William').
parent('Prince Charles','Prince Harry').
parent('Captain Mark Phillips','Peter Phillips').
parent('Captain Mark Phillips','Zara Phillips').
parent('Princess Anne','Peter Phillips').
parent('Princess Anne','Zara Phillips').
parent('Sarah Ferguson','Princess Beatrice').
parent('Sarah Ferguson','Princess Eugenie').
parent('Prince Andrew','Princess Beatrice').
parent('Prince Andrew','Princess Eugenie').
parent('Sophie Rhys-jones','James, Viscount Severn').
parent('Sophie Rhys-jones','Lady Louise Mountbatten-Windsor').
parent('Prince Edward','James, Viscount Severn').
parent('Prince Edward','Lady Louise Mountbatten-Windsor').
parent('Queen Elizabeth II','Prince Charles').
parent('Queen Elizabeth II','Princess Anne').
parent('Queen Elizabeth II','Prince Andrew').
parent('Queen Elizabeth II','Prince Edward').
parent('Prince Phillip','Prince Charles').
parent('Prince Phillip','Princess Anne').
parent('Prince Phillip','Prince Andrew').
parent('Prince Phillip','Prince Edward').

% rules
husband(Person, Wife) :-
	married(Person, Wife),
	male(Person).

wife(Person, Husband) :-
	married(Person, Husband),
	female(Person).

father(Parent, Child) :-
	parent(Parent, Child),
	male(Parent).

mother(Parent, Child) :-
	parent(Parent, Child),
	female(Parent).

child(Child, Parent) :-
	parent(Parent, Child).

son(Child, Parent) :-
	child(Child, Parent),
	male(Child).

daughter(Child, Parent) :-
	child(Child, Parent),
	female(Child).

grandparent(GrandParent, GrandChild) :-
	parent(GrandParent, Parent),
	parent(Parent, GrandChild).

grandmother(GrandMother, GrandChild) :-
	grandparent(GrandMother, GrandChild),
	female(GrandMother).

grandfather(GrandFather, GrandChild) :-
	grandparent(GrandFather, GrandChild),
	male(GrandFather).

grandchild(GrandChild, GrandFather) :-
	grandparent(GrandFather, GrandChild).

grandson(GrandSon, GrandFather) :-
	grandchild(GrandSon, GrandFather),
	male(GrandSon).

granddaughter(GrandDaugter, GrandFather) :-
	grandchild(GrandDaugter, GrandFather),
	female(GrandDaugter).

% A sibling is having one or both parents in common
sibling(Person1, Person2) :-
	parent(Parent, Person1),
	parent(Parent, Person2),
	Person1 \== Person2.

brother(Person, Sibling) :-
	sibling(Person, Sibling),
	male(Person).

sister(Person, Sibling) :-
	sibling(Person, Sibling),
	female(Person).

% An aunt is a person who is the sister of a parent,
% or the wife of one's uncle
aunt(Person, NieceNephew) :-
	sister(Person, Parent),
	parent(Parent, NieceNephew).

aunt(Person, NieceNephew) :-
	wife(Person, Uncle),
	brother(Uncle, Parent),
	parent(Parent, NieceNephew).

uncle(Person, NieceNephew) :-
	brother(Person, Parent),
	parent(Parent, NieceNephew).

uncle(Person, NieceNephew) :-
	husband(Person, Aunt),
	sister(Aunt, Parent),
	parent(Parent, NieceNephew).

niece(Person, AuntUncle) :-
	uncle(AuntUncle, Person),
	male(Person).

niece(Person, AuntUncle) :-
	aunt(AuntUncle, Person),
	male(Person).

nephew(Person, AuntUncle) :-
	uncle(AuntUncle, Person),
	female(Person).

nephew(Person, AuntUncle) :-
	aunt(AuntUncle, Person),
	female(Person).