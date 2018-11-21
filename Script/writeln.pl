% them new line
writeln(Line) :-
	\+ is_list(Line),
	write(Line),
	nl.

writeln(no) :-
	write('Khong biet'),
	nl.

% remove duplicate in List
writeln(List) :-
	is_list(List),
	length(List, LenList),
	LenList > 0,
	sort(List, SortedList),
	write(SortedList),
	nl.

% if list is empty, khong biet
writeln(List) :-
	is_list(List),
	length(List, LenList),
	LenList == 0,
	write('Khong biet'),
	nl.