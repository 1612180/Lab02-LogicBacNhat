:- use_module(library(lists)).

teacher('Le Hoai Bac').
teacher('Chau Ngoc Phuong').
teacher('Tran Thai Son').
teacher('Vo Hoai Viet').
teacher('Le Quoc Hoa').
teacher('Le Giang Thanh').
teacher('Dinh Ba Tien').
teacher('Tran Minh Triet').
teacher('Luong Vi Minh').
teacher('Pham Tuan Son').
teacher('Le Van Luyen').
teacher('Nguyen Dinh Thuc').
teacher('Nguyen Van Vu').
teacher('Pham Nguyen Cuong').

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
subject_of_department('He quan tri co so du lien', 'He thong Thong tin').
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

student('Nguyen Chi Thuc', '1612677', '01/01/1998', 'Ca Mau', 'male').
student('Nguyen Tran Hau', '1612180', '02/01/1998', 'Phu Yen', 'male').
student('Tran Hoai Nam', '1612403', '03/01/1998', 'Quang Ngai', 'male').
student('Nguyen Buu Loc', '1612343', '04/01/1998', 'Kien Giang', 'male').
student('Tran Duy Thanh', '1612628', '05/02/1998', 'Dong Nai', 'male').
student('Ho Minh Huan', '1612224', '06/02/1998', 'Son La', 'male').
student('Hoang Song Phuong', '1612999', '07/02/1998', 'Phu Tho', 'female').
student('Le Nhut', '1612666', '08/03/1998', 'Kien Giang', 'male').

study_subject('Nguyen Chi Thuc', 'Nhap mon cong nghe phan mem', 8.0).
study_subject('Nguyen Chi Thuc', 'Lap trinh tren thiet bi di dong', 8.1).
study_subject('Nguyen Tran Hau', 'Co so du lieu', 8.2).
study_subject('Nguyen Tran Hau', 'Kien truc may tinh', 8.3).
study_subject('Tran Hoai Nam', 'Tri tue nhan tao', 8.2).
study_subject('Tran Hoai Nam', 'Do hoa may tinh', 8.1).
study_subject('Nguyen Buu Loc', 'He dieu hanh', 8.0).
study_subject('Nguyen Buu Loc', 'Nhap mon cong nghe phan mem', 8.1).
study_subject('Tran Duy Thanh', 'Nhap mon cong nghe phan mem', 8.2).
study_subject('Tran Duy Thanh', 'Lap trinh tren thiet bi di dong', 8.3).
study_subject('Ho Minh Huan', 'Do hoa may tinh', 8.4).
study_subject('Ho Minh Huan', 'Toan to hop', 8.5).
study_subject('Hoang Song Phuong', 'Toan to hop', 8.6).
study_subject('Le Nhut', 'Tri tue nhan tao', 8.5).
study_subject('Le Nhut', 'Co so du lieu', 8.4).

mssv(Student, MSSV) :-
	student(Student, MSSV, _, _, _).

birthday(Student, Birthday) :-
	student(Student, _, Birthday, _, _).

come_from(Student, ComeFrom) :-
	student(Student, _, _, ComeFrom, _).

male(Student) :-
	student(Student, _, _, _, Gender),
	Gender == 'male'.

female(Student) :-
	student(Student, _, _, _, Gender),
	Gender == 'female'.

teach_student(Teacher, Student) :-
	teach_subject(Teacher, Subject),
	study_subject(Student, Subject, _).

study_teacher(Student, Teacher) :-
	teach_student(Teacher, Student).

study_same_subject(Student1, Student2) :-
	study_subject(Student1, Subject, _),
	study_subject(Student2, Subject, _).

same_come_from(Student1, Student2) :-
	student(Student1, _, _, ComeFrom, _),
	student(Student2, _, _, ComeFrom, _).

student_average_score(Student, AverageScore) :-
	findall(Score, study_subject(Student, _, Score), ListScore),
	length(ListScore, LenListScore),
	LenListScore > 0,
	sum_list(ListScore, SumListScore),
	AverageScore is SumListScore / LenListScore.

student_average_score(Student, AverageScore) :-
	findall(Score, study_subject(Student, _, Score), ListScore),
	length(ListScore, LenListScore),
	LenListScore == 0,
	AverageScore is 0.

better_average_score(Student1, Student2) :-
	student_average_score(Student1, AverageScore1),
	student_average_score(Student2, AverageScore2),
	AverageScore1 > AverageScore2.

lower_average_score(Student1, Student2) :-
	student_average_score(Student1, AverageScore1),
	student_average_score(Student2, AverageScore2),
	AverageScore1 < AverageScore2.

grade_A(Student) :-
	student_average_score(Student, AverageScore),
	AverageScore >= float(8).

grade_B(Student) :-
	student_average_score(Student, AverageScore),
	AverageScore >= float(6.5),
	AverageScore < float(8).

grade_C(Student) :-
	student_average_score(Student, AverageScore),
	AverageScore >= float(5),
	AverageScore < float(6.5).

grade_D(Student) :-
	student_average_score(Student, AverageScore),
	AverageScore < float(5).

money_of_subject(Subject, Money) :-
	subject_of_department(Subject, _),
	Money is 1000000.

% tinh tong so tien hoc sinh phai tra
all_money_student_to_pay(Student, AllMoney) :-
	findall(Money, (study_subject(Student, Subject, _), 
		money_of_subject(Subject, Money)), ListMoney),
	sum_list(ListMoney, AllMoney).