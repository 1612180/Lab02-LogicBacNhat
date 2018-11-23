:- [qltruonghoc, writeln].

:- writeln('Go cau_1., cau_2, ... cau_25. de xem cau hoi va cau tra loi').

cau_1 :-
	writeln('Nguyen Dinh Thuc la giao vien dung hay sai ?'),
	giao_vien('Nguyen Dinh Thuc') -> writeln('Dung'); writeln('Sai').

cau_2 :-
	writeln('Giao vien Le Hoai Bac la giao su dung hay sai ?'),
	giao_su('Le Hoai Bac') -> writeln('Dung'); writeln('Sai').

cau_3 :-
	writeln('Giao vien Le Quang Vinh la pho giao su dung hay sai ?'),
	pho_giao_su('Le Quang Vinh') -> writeln('Dung'); writeln('Sai').

cau_4 :-
	writeln('Giao vien Hien Ho la nghien cuu sinh dung hay sai ?'),
	nghien_cuu_sinh('Hien Ho') -> writeln('Dung'); writeln('Sai').

cau_5 :-
	writeln('Cho biet ngay sinh cua giao vien Ha Anh Tuan'),
	ngay_sinh('Ha Anh Tuan', NgaySinh) -> writeln(NgaySinh); writeln('Khong biet').

cau_6 :-
	writeln('Cho biet ngay sinh cua giao vien Cong Phuong'),
	ngay_sinh('Cong Phuong', NgaySinh) -> writeln(NgaySinh); writeln('Khong biet').

cau_7 :-
	writeln('Cho biet dia chi cua giao vien Anh Duc'),
	dia_chi('Anh Duc', DiaChi) -> writeln(DiaChi); writeln('Khong biet').

cau_8 :-
	writeln('Cho biet que quan cua giao vien Bich Phuong'),
	que_quan('Bich Phuong', QueQuan) -> writeln(QueQuan); writeln('Khong biet').

cau_9 :-
	writeln('Cho biet tien luong cua giao vien Bui Tien Dung'),
	luong('Bui Tien Dung', Luong) -> writeln(Luong); writeln('Khong biet').

cau_10 :-
	writeln('Cho biet tien luong cua giao vien Luong Dinh Hoa'),
	luong('Luong Dinh Hoa', Luong) -> writeln(Luong); writeln('Khong biet').

cau_11 :-
	writeln('Cho biet Nguyen Dinh Thuc thuoc bo mon nao'),
	giao_vien_thuoc_bo_mon('Nguyen Dinh Thuc', BM) -> writeln(BM); writeln('Khong biet').

cau_12 :-
	writeln('Cho biet giao vien Ha Anh Tuan thuoc doan the nao'),
	giao_vien_thuoc_doan_the('Ha Anh Tuan', DoanThe) -> writeln(DoanThe); writeln('Khong biet').

cau_13 :-
	writeln('Cho biet giao vien Bui Tien Dung thuoc phong ban nao'),
	giao_vien_thuoc_phong_ban('Bui Tien Dung', PhongBan) -> writeln(PhongBan); writeln('Khong biet').

cau_14 :-
	writeln('Liet ke danh sach khen thuong'),
	findall(GV, khen_thuong(GV), List),
	writeln(List).

cau_15 :-
	writeln('Liet ke danh sach ky luat'),
	findall(GV, ky_luat(GV), List),
	writeln(List).

cau_16 :-
	writeln('Cho biet giao vien cung bo mon voi Cong Phuong'),
	findall(GV, giao_vien_cung_bo_mon('Cong Phuong', GV), List),
	writeln(List).

cau_17 :-
	writeln('Vo Thien Kim va Ly Tieu Long la giao vien cung khoa dung hay sai ?'),
	giao_vien_cung_khoa('Vo Thien Kim', 'Ly Tieu Long') -> writeln('Dung'); writeln('Sai').

cau_18 :-
	writeln('Bo mon Giai tich va Di truyen thuoc cung khoa dung hay sai ?'),
	bo_mon_cung_khoa('Giai tich', 'Di truyen') -> writeln('Dung'); writeln('Sai').

cau_19 :-
	writeln('Phong dao tao va Ban du an cung thuoc mot truong dung hay sai ?'),
	phong_ban_cung_truong('Phong dao tao', 'Ban du an') -> writeln('Dung'); writeln('Sai').

cau_20 :-
	writeln('Cho biet tuoi cua giao vien Luong Dinh Hoa'),
	tuoi_tac('Luong Dinh Hoa', Tuoi) -> writeln(Tuoi); writeln('Khong biet').

cau_21 :-
	writeln('Cho biet cac giao vien lon tuoi hon giao vien Hien Ho'),
	findall(GV, tuoi_lon_hon(GV, 'Hien Ho'), List),
	writeln(List).

cau_22 :-
	writeln('Cho biet cac giao vien nho tuoi hon giao vien Cong Phuong'),
	findall(GV, tuoi_nho_hon(GV, 'Cong Phuong'), List),
	writeln(List).

cau_23 :-
	writeln('Cho biet giao vien cung phong ban voi Hien Ho'),
	findall(GV, giao_vien_cung_doan_the('Hien Ho', GV), List),
	writeln(List).

cau_24 :-
	writeln('Giao vien Bich Phuong va giao vien Bui Tien Dung co cung phong ban hay khong ?'),
	giao_vien_thuoc_phong_ban('Bich Phuong', 'Bui Tien Dung') -> writeln('Co'); writeln('Khong').

cau_25 :-
	writeln('Bo mon nao cung khoa voi bo mon Khoa hoc may tinh ?'),
	findall(BM, bo_mon_cung_khoa('Khoa hoc may tinh', BM), List),
	writeln(List).