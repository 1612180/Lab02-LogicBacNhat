male('Le Hoai Bac').
male('Tran Thai Son').
male('Vo Hoai Viet').
male('Dinh Ba Tien').
male('Luong Vi Minh').
male('Le Van Luyen').
male('Nguyen Dinh Thuc').
male('Nguyen Van Vu').
male('Pham Nguyen Cuong').

female('Chau Ngoc Phuong').
female('Le Giang Thanh').

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

student('Nguyen Chi Thuc').
student('Nguyen Tran Hau').
student('Tran Hoai Nam').
student('Nguyen Buu Loc').
student('Tran Duy Thanh').
student('Ho Minh Huan').
student('Hoang Song Phuong').
student('Le Nhut').

study_subject('Nguyen Chi Thuc', 'Nhap mon cong nghe phan mem').
study_subject('Nguyen Chi Thuc', 'Lap trinh tren thiet bi di dong').
study_subject('Nguyen Tran Hau', 'Co so du lieu').
study_subject('Nguyen Tran Hau', 'Kien thuc may tinh').
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

student_score('Nguyen Chi Thuc', 8.0).
student_score('Nguyen Tran Hau', 8.6).
student_score('Tran Hoai Nam', 8.1).
student_score('Nguyen Buu Loc', 8.5).
student_score('Tran Duy Thanh', 8.3).
student_score('Ho Minh Huan', 8.9).
student_score('Hoang Song Phuong', 9.5).
student_score('Le Nhut', 7.7).

teach_student(Teacher, Student) :-
	teach_subject(Teacher, Subject),
	study_subject(Student, Subject).

study_teacher(Student, Teacher) :-
	teach_student(Teacher, Student).

study_same_subject(Student1, Student2) :-
	study_subject(Student1, Subject),
	study_subject(Student2, Subject).

better_score(Student1, Student2) :-
	student_score(Student1, Score1),
	student_score(Student2, Score2),
	Score1 > Score2.

lower_score(Student1, Student2) :-
	student_score(Student1, Score1),
	student_score(Student2, Score2),
	Score1 < Score2.