% Quan ly truong hoc

teacher('Le Hoai Bac', 'male', 'lhbac@hcmus.edu.vn').
teacher('Chau Ngoc Phuong', 'female', 'chphuong@hcmus.edu.vn').
teacher('Tran Thai Son', 'male', 'thson@hcmus.edu.vn').
teacher('Vo Hoai Viet', 'male', 'vhviet@hcmus.edu.vn').
teacher('Le Quoc Hoa', 'male', 'lqhoa@hcmus.edu.vn').
teacher('Le Giang Thanh', 'female', 'lgthanh@hcmus.edu.vn').
teacher('Dinh Ba Tien', 'male', 'dbtien@hcmus.edu.vn').
teacher('Tran Minh Triet', 'male', 'tmtriet@hcmus.edu.vn').
teacher('Luong Vi Minh', 'male', 'lvminh@hcmus.edu.vn').
teacher('Pham Tuan Son', 'male', 'ptson@hcmus.edu.vn').
teacher('Le Van Luyen', 'male', 'lvluyen@hcmus.edu.vn').
teacher('Nguyen Dinh Thuc', 'male', 'ndthuc@hcmus.edu.vn').
teacher('Nguyen Van Vu', 'male', 'nvvu@hcmus.edu.vn').
teacher('Pham Nguyen Cuong', 'male', 'pncuong@hcmus.edu.vn').

department_head('Nguyen Dinh Thuc', 'Cong nghe Tri thuc').
department_head('Le Hoai Bac', 'Khoa hoc May tinh').
department_head('Nguyen Van Vu', 'Cong nghe Phan mem').
department_head('Pham Nguyen Cuong', 'He thong Thong tin').

subject('Tri tue nhan tao').
subject('Do hoa may tinh').
subject('He dieu hanh').
subject('Nhap mon cong nghe phan mem').
subject('Lap trinh tren thiet bi di dong').
subject('Co so du lieu').
subject('He quan tri co so du lien').
subject('Kien truc may tinh').
subject('Toan to hop').

subject_of_department('Tri tue nhan tao', 'Khoa hoc May tinh').
subject_of_department('Do hoa may tinh', 'Cong nghe Tri thuc').
subject_of_department('He dieu hanh', 'Cong nghe Phan mem').
subject_of_department('Nhap mon cong nghe phan mem', 'Cong nghe Phan mem').
subject_of_department('Lap trinh tren thiet bi di dong', 'Cong nghe Phan mem').
subject_of_department('Co so du lieu', 'He thong Thong tin').
subject_of_department('He quan tri co so du lieu', 'He thong Thong tin').
subject_of_department('Kien truc may tinh', 'Khoa hoc May tinh').
subject_of_department('Toan to hop', 'Khoa hoc May tinh').

teach_subject('Le Hoai Bac', 'Tri tue nhan tao').
teach_subject('Chau Ngoc Phuong', 'Tri tue nhan tao').
teach_subject('Tran Thai Son', 'Do hoa may tinh').
teach_subject('Vo Hoai Viet', 'Do hoa may tinh').
teach_subject('Le Quoc Hoa', 'He dieu hanh').
teach_subject('Le Giang Thanh', 'He dieu hanh').
teach_subject('Dinh Ba Tien', 'Nhap mon cong nghe phan mem').
teach_subject('Tran Minh Triet', 'Lap trinh tren thiet bi di dong').
teach_subject('Luong Vi Minh', 'Co so du lieu').
teach_subject('Pham Tuan Son', 'Kien truc may tinh').
teach_subject('Le Van Luyen', 'Toan to hop').

student('Nguyen Chi Thuc', '1612677', date(1998, 1, 1), 'Ca Mau', 'male', '1612677@student.hcmus.edu.vn').
student('Nguyen Tran Hau', '1612180', date(1998, 2, 2), 'Phu Yen', 'male', '1612180@student.hcmus.edu.vn').
student('Tran Hoai Nam', '1612403', date(1998, 3, 3), 'Quang Ngai', 'male', '1612403@student.hcmus.edu.vn').
student('Nguyen Buu Loc', '1612343', date(1998, 2, 3), 'Kien Giang', 'male', '1612343@student.hcmus.edu.vn').
student('Tran Duy Thanh', '1612628', date(1997, 3, 2), 'Dong Nai', 'male', '1612628@student.hcmus.edu.vn').
student('Ho Minh Huan', '1612224', date(1998, 6, 6), 'Son La', 'male','1612224@student.hcmus.edu.vn').
student('Hoang Song Phuong', '1612999', date(1998, 9, 9), 'Phu Tho', 'female', '1612999@student.hcmus.edu.vn').
student('Le Nhut', '1612666', '08/03/1998', date(1998, 1, 10), 'male', '1612666@student.hcmus.edu.vn').

study_subject('Nguyen Chi Thuc', 'Nhap mon cong nghe phan mem').
study_subject('Nguyen Chi Thuc', 'Lap trinh tren thiet bi di dong').
study_subject('Nguyen Tran Hau', 'Co so du lieu').
study_subject('Nguyen Tran Hau', 'Kien truc may tinh').
study_subject('Tran Hoai Nam', 'Tri tue nhan tao').
study_subject('Tran Hoai Nam', 'Do hoa may tinh').
study_subject('Nguyen Buu Loc', 'He dieu hanh').
study_subject('Nguyen Buu Loc', 'Nhap mon cong nghe phan mem').
study_subject('Tran Duy Thanh', 'Nhap mon cong nghe phan mem').
study_subject('Tran Duy Thanh', 'Lap trinh tren thiet bi di dong').
study_subject('Ho Minh Huan', 'Do hoa may tinh').
study_subject('Ho Minh Huan', 'Toan to hop').
study_subject('Hoang Song Phuong', 'Toan to hop').
study_subject('Le Nhut', 'Tri tue nhan tao').
study_subject('Le Nhut', 'Co so du lieu').

% diem tich luy
score('Nguyen Chi Thuc', 9.9).
score('Nguyen Tran Hau', 8.0).
score('Tran Hoai Nam', 7.9).
score('Nguyen Buu Loc', 9.9).
score('Tran Duy Thanh', 8.9).
score('Ho Minh Huan', 7.9).
score('Hoang Song Phuong', 4.9).
score('Le Nhut', 5.9).

% diem ren luyen
drl('Nguyen Chi Thuc', 99).
drl('Nguyen Tran Hau', 80).
drl('Tran Hoai Nam', 79).
drl('Nguyen Buu Loc', 99).
drl('Tran Duy Thanh', 89).
drl('Ho Minh Huan', 69).
drl('Hoang Song Phuong', 49).
drl('Le Nhut', 59).

% diem thi tieng anh chuyen nganh
english_point('Nguyen Tran Hau', 7.0).
english_point('Tran Hoai Nam', 6.9).
english_point('Ho Minh Huan', 7.9).
english_point('Hoang Song Phuong', 3.9).
english_point('Le Nhut', 7.9).

% co bang anh van tuong duong
english_degree('Nguyen Chi Thuc', 'VNU').
english_degree('Nguyen Buu Loc', 'VNU').
english_degree('Tran Duy Thanh', 'VNU').

is_student(Name) :-
	student(Name, _, _, _, _, _).

is_teacher(Name) :-
	teacher(Name, _, _).

is_teacher_department(Name) :-
	department_head(Name, _).

mssv(Student, MSSV) :-
	student(Student, MSSV, _, _, _, _).

birthday(Student, Birthday) :-
	student(Student, _, Birthday, _, _, _).

same_year_birth(Student1, Student2) :-
	student(Student1, _, date(Year1, _, _), _, _, _),
	student(Student2, _, date(Year2, _, _), _, _, _),
	Student1 \== Student2,
	Year1 == Year2.

same_month_birth(Student1, Student2) :-
	student(Student1, _, date(_, Month1, _), _, _, _),
	student(Student2, _, date(_, Month2, _), _, _, _),
	Student1 \== Student2,
	Month1 == Month2.

same_day_birth(Student1, Student2) :-
	student(Student1, _, date(_, _, Day1), _, _, _),
	student(Student2, _, date(_, _, Day2), _, _, _),
	Student1 \== Student2,
	Day1 == Day2.

same_date_birth(Student1, Student2) :-
	same_year_birth(Student1, Student2),
	same_month_birth(Student1, Student2),
	same_day_birth(Student1, Student2).

age(Student, Age) :-
	student(Student, _, date(Year, _, _), _, _, _),
	% lay thoi gian hien tai
	get_time(TimeStamp),
	stamp_date_time(TimeStamp, DateTime, 'UTC'),
	date_time_value(year, DateTime, YearNow),
	Age is YearNow - Year.

same_age(Student1, Student2) :-
	age(Student1, Age1),
	age(Student2, Age2),
	Student1 \== Student2,
	Age1 == Age2.

older_age(Student1, Student2) :-
	age(Student1, Age1),
	age(Student2, Age2),
	Student1 \== Student2,
	Age1 > Age2.

younger_age(Student1, Student2) :-
	age(Student1, Age1),
	age(Student2, Age2),
	Student1 \== Student2,
	Age1 < Age2.

come_from(Student, ComeFrom) :-
	student(Student, _, _, ComeFrom, _, _).

% vung ngheo 1, 2, 3
poor_province_1(Student, ComeFrom) :-
	student(Student, _, _, ComeFrom, _, _),
	(ComeFrom == 'Ca Mau';
		ComeFrom == 'Quang Ngai').

poor_province_2(Student, ComeFrom) :-
	student(Student, _, _, ComeFrom, _, _),
	(ComeFrom == 'Son La';
		ComeFrom == 'Phu Yen') .

poor_province_3(Student, ComeFrom) :-
	student(Student, _, _, ComeFrom, _, _),
	(ComeFrom == 'Kien Giang';
		ComeFrom == 'Dong Nai').

% cung que
same_come_from(Student1, Student2) :-
	student(Student1, _, _, ComeFrom, _, _),
	student(Student2, _, _, ComeFrom, _, _),
	Student1 \== Student2.

male(Student) :-
	student(Student, _, _, _, Gender, _),
	Gender == 'male'.

male(Teacher) :-
	teacher(Teacher, Gender, _),
	Gender == 'male'.

female(Student) :-
	student(Student, _, _, _, Gender, _),
	Gender == 'female'.

female(Teacher) :-
	teacher(Teacher, Gender, _),
	Gender == 'female'.

mail(Student, Mail) :-
	student(Student, _, _, _, _, Mail).

mail(Teacher, Mail) :-
	teacher(Teacher, _, Mail).

teach_student(Teacher, Student) :-
	teach_subject(Teacher, Subject),
	study_subject(Student, Subject).

study_teacher(Student, Teacher) :-
	teach_student(Teacher, Student).

% hoc cung lop
study_same_subject(Student1, Student2) :-
	study_subject(Student1, Subject),
	study_subject(Student2, Subject).

better_score(Student1, Student2) :-
	score(Student1, Score1),
	score(Student2, Score2),
	Score1 > Score2.

lower_score(Student1, Student2) :-
	score(Student1, Score1),
	score(Student2, Score2),
	Score1 < Score2.

% xep loai hoc luc
grade_S(Student) :-
	score(Student, Score),
	Score >= 9.

grade_A(Student) :-
	score(Student, Score),
	Score >= 8,
	Score < 9.

grade_B(Student) :-
	score(Student, Score),
	Score >= 6.5,
	Score < 8.

grade_C(Student) :-
	score(Student, Score),
	Score >= 5,
	Score < 6.5.

grade_D(Student) :-
	score(Student, Score),
	Score < 5.

% xep loai diem ren luyen
drl_S(Student) :-
	drl(Student, Drl),
	Drl >= 90.

drl_A(Student) :-
	drl(Student, Drl),
	Drl >= 80,
	Drl < 90.

drl_B(Student) :-
	drl(Student, Drl),
	Drl >= 65,
	Drl < 80.

drl_C(Student) :-
	drl(Student, Drl),
	Drl >= 50,
	Drl < 65.

drl_D(Student) :-
	drl(Student, Drl),
	Drl < 50.

% hoc bong loai xuat sac, thi diem xuat sac, drl xuat sac hoac gioi
scholarship_S(Student) :-
	grade_S(Student),
	(drl_S(Student);
		drl_A(Student)).

% hoc bong loai gioi, thi diem xuat sac, drl xuat sac hoac gioi
scholarship_A(Student) :-
	grade_A(Student),
	(drl_S(Student);
		drl_A(Student)).

% co hoc bong
has_scholarship(Student) :-
	scholarship_S(Student);
	scholarship_A(Student).

% canh cao hoc vu neu diem thap hoac diem ren luyen thap
punish(Student) :-
	grade_D(Student);
	drl_D(Student).

% so tien tung mon hoc
money_of_subject(Subject, Money) :-
	subject_of_department(Subject, _),
	Money is 1000000.

% tinh tong so tien hoc sinh phai tra
all_money_student_to_pay(Student, AllMoney) :-
	findall(Money, (study_subject(Student, Subject),
		money_of_subject(Subject, Money)), ListMoney),
	sum_list(ListMoney, AllMoney).

% du dieu kien hoc chuyen nganh neu tieng anh dat yeu cau
english_enough_for_major(Student) :-
	(english_point(Student, Point),
	Point >= 5);
	english_degree(Student, _).

% mon hoc cung Khoa
subject_same_department(Subject1, Subject2) :-
	subject_of_department(Subject1, Department1),
	subject_of_department(Subject2, Department2),
	Subject1 \== Subject2,
	Department1 == Department2.