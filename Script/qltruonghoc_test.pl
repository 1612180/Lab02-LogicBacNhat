% load tri thuc
:- [qltruonghoc, writeln].

:- writeln('Go cau_1., cau_2., ... cau_25. de xem cau hoi va cau tra loi').

cau_1 :-
	writeln('Nguyen Tran Hau co phai la sinh vien hay khong ?'),
	is_student('Nguyen Tran Hau') -> writeln('Co'); writeln('Khong').

cau_2 :-
	writeln('Nguyen Chi Thuc co hoc mon Tri tue nhan tao hay khong ?'),
	study_subject('Nguyen Chi Thuc', 'Tri tue nhan tao') -> writeln('Co'); writeln('Khong').

cau_3 :-
	writeln('Le Hoai Bac co phai la giao vien hay khong ?'),
	is_teacher('Le Hoai Bac') -> writeln('Co'); writeln('Khong').

cau_4 :-
	writeln('Pham Tuan Son co phai la giao vien day Tri tue nhan tao hay khong ?'),
	teach_subject('Pham Tuan Son', 'Tri tue nhan tao') -> writeln('Co'); writeln('Khong').

cau_5 :-
	writeln('Le Hoai Bac co phai la truong bo mon hay khong ?'),
	is_teacher_department('Le Hoai Bac') -> writeln('Co'); writeln('Khong').

cau_6 :-
	writeln('Le Hoai Bac co day Nguyen Chi Thuc khong ?'),
	teach_student('Le Hoai Bac', 'Nguyen Chi Thuc') -> writeln('Co'); writeln('Khong').

cau_7 :-
	writeln('Dinh Ba Tien co day Nguyen Chi Thuc khong ?'),
	teach_student('Dinh Ba Tien', 'Nguyen Chi Thuc') -> writeln('Co'); writeln('Khong').

cau_8 :-
	writeln('Nguyen Chi Thuc va Nguyen Tran Hau co cung que hay khong ?'),
	same_come_from('Nguyen Chi Thuc', 'Nguyen Tran Hau') -> writeln('Co'); writeln('Khong').

cau_9 :-
	writeln('Tran Duy Thanh co phai la hoc sinh gioi hay khong ?'),
	grade_A('Tran Duy Thanh') -> writeln('Co'); writeln('Khong').

cau_10 :-
	writeln('Le Nhut co phai la hoc sinh trung binh hay khong ?'),
	grade_C('Le Nhut') -> writeln('Co'); writeln('Khong').

cau_11 :-
	writeln('Tran Hoai Nam co dat diem ren luyen gioi hay khong ?'),
	drl_A('Tran Hoai Nam') -> writeln('Co'); writeln('Khong').

cau_12 :-
	writeln('Nguyen Buu Loc co dat hoc bong xuat sac hay khong ?'),
	scholarship_S('Nguyen Buu Loc') -> writeln('Co'); writeln('Khong').

cau_13 :-
	writeln('Nguyen Tran Hau co dat hoc bong gioi hay khong ?'),
	scholarship_A('Nguyen Tran Hau') -> writeln('Co'); writeln('Khong').

cau_14 :-
	writeln('Hoang Song Phuong co hoc bong hay khong ?'),
	has_scholarship('Hoang Song Phuong') -> writeln('Co'); writeln('Khong').

cau_15 :-
	writeln('Hoang Song Phuong co gioi tinh nu dung hay sai ?'),
	female('Hoang Song Phuong') -> writeln('Dung'); writeln('Sai').

cau_16 :-
	writeln('Tran Hoai Nam co gioi tinh nam dung hay sai ?'),
	male('Tran Hoai Nam') -> writeln('Co'); writeln('Khong').

cau_17 :-
	writeln('Ngay sinh cua Hoang Song Phuong la ngay may ?'),
	birthday('Hoang Song Phuong', Birthday) -> writeln(Birthday); writeln('Khong biet').

cau_18 :-
	writeln('Cho biet MSSV cua Nguyen Chi Thuc ?'),
	mssv('Nguyen Chi Thuc', MSSV) -> writeln(MSSV); writeln('Khong biet').

cau_19 :-
	writeln('Nguyen Buu Loc co du dieu kien tieng anh de hoc chuyen nganh hay khong ?'),
	english_enough_for_major('Nguyen Buu Loc') -> writeln('Co'); writeln('Khong').

cau_20 :-
	writeln('Nguyen Tran Hau va Nguyen Buu Loc co hoc chung lop hay khong ?'),
	study_same_subject('Nguyen Tran Hau', 'Nguyen Buu Loc') -> writeln('Co'); writeln('Khong').

cau_21 :-
	writeln('So tien phai dong cua Nguyen Buu Loc la bao nhieu ?'),
	all_money_student_to_pay('Nguyen Buu Loc', AllMoney) -> writeln(AllMoney); writeln('Khong biet').

cau_22 :-
	writeln('Hoang Song Phuong co bi canh cao hoc vu hay khong ?'),
	punish('Hoang Song Phuong') -> writeln('Co'); writeln('Khong').

cau_23 :-
	writeln('Diem cua Nguyen Buu Loc co cao hon diem cua Nguyen Chi Thuc khong ?'),
	better_score('Nguyen Buu Loc', 'Nguyen Chi Thuc') -> writeln('Co'); writeln('Khong').

cau_24 :-
	writeln('Cho biet mail cua Ho Minh Huan'),
	mail('Ho Minh Huan', Mail) -> writeln(Mail); writeln('Khong biet').

cau_25 :-
	writeln('Tran Duy Thanh lon tuoi hon Ho Minh Huan dung hay sai ?'),
	older_age('Tran Duy Thanh', 'Ho Minh Huan') -> writeln('Dung'); writeln('Sai').