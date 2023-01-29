-- DROP TABLE taiKhoan;
-- DROP TABLE NguoiNopMinhChung;
-- DROP TABLE PhanThuong_DipTraoThuong;
-- DROP TABLE PhanThuong;
-- DROP TABLE DipTraoThuong;
-- DROP TABLE HoKhauChuyen;
-- DROP TABLE NhanKhauTach;
-- DROP TABLE NhanKhauQuaDoi;
-- DROP TABLE NhanKhauChuyen;
-- DROP TABLE NhanKhauThem;
-- DROP TABLE NhanKhauTamVang;
-- DROP TABLE NhanKhauTamTru;
-- DROP TABLE NhanKhau_HoKhau;
-- DROP TABLE HoKhau;
-- DROP TABLE NhanKhau;

CREATE TABLE NhanKhau(
    idNhanKhau INT NOT NULL AUTO_INCREMENT,
    hoTen VARCHAR(255) NOT NULL,
    biDanh VARCHAR(255),
    ngaySinh DATE NOT NULL,
    noiSinh VARCHAR(255),
    gioiTinh VARCHAR(255) NOT NULL,
    nguyenQuan VARCHAR(255),
    danToc VARCHAR(255),
    tonGiao VARCHAR(255),
    quocTich VARCHAR(255),
    ngheNghiep VARCHAR(255),
    noiLamViec VARCHAR(255),
    cmnd_cccd VARCHAR(255),
    chuyenDenNgay DATE,
    noiThuongTruTruoc VARCHAR(255),
    trangThai VARCHAR(15) NOT NULL,
    CONSTRAINT CHK_trangThaiNhanKhau CHECK (trangThai IN(N'Thường trú', N'Tạm trú', N'Tạm vắng', N'Đã mất', N'Đã chuyển đi', N'Không xác định')),
    CONSTRAINT PK_NhanKhau PRIMARY KEY(idNhanKhau),
    CONSTRAINT CHK_GioiTinhNhanKhau CHECK (gioiTinh IN (N'Nam', N'Nữ'))
);

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai)
	VALUES	(N'Trương Khánh Duy', NULL, '2002-01-01', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', NULL, N'012345678901', '2022-01-01', N'Thái Bình', N'Thường trú'),
		(N'Phạm Nam Anh', NULL, '1994-02-02', N'Hà Nội', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Đại học Bách Khoa Hà Nội', N'112345678900', '2023-01-01', N'Hà Nội', N'Thường trú'),
		(N'Vũ Lê Tuấn', NULL, '2002-03-03', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Viettel Telecom', N'098765432123', '2021-04-05', N'Bắc Ninh', N'Thường trú'),
		(N'Trần Thế Anh', NULL, '2002-04-04', N'Hải Phòng', N'Nam', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Tập đoàn Viễn thông quân đội', N'678905432178', '2020-10-10', N'Hải Phòng', N'Thường trú'),
		(N'Đỗ Hải Nam', NULL, '2002-05-05', N'Hải Dương', N'Nam', N'Hải Dương', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách khoa Hà Nội', N'354627189407', '2019-12-12', N'Hải Dương', N'Thường trú'),
		(N'Trương Quang Đạt', N'Đạt', '1999-07-07', N'Đắk Lắk', N'Nam', N'Lâm Đồng', N'Kinh', N'Không', N'Việt Nam', NULL, NULL, N'123456789149', '2014-06-06', N'Yên Bái', N'Thường trú'),
		(N'Bùi Minh Nguyệt', NULL, '2000-02-10', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Sán Dìu', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH Bách Khoa', N'756382940165', '2018-12-04', N'Tuyên Quang', N'Thường trú'),
		(N'Trương Văn An', NULL, '1990-12-18', N'Đà Lạt', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giáo Viên', N'Trường THCS Chu Văn An', N'513264892546', '2019-12-11', N'Thái Nguyên', N'Thường trú'),
		(N'Trần Diễm Quỳnh', NULL, '1997-06-01', N'Thái Nguyên', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên văn phòng', N'Công ty ABC', N'623514987645', '2019-12-12', N'Hải Phòng', N'Đã chuyển đi'),
		(N'Phạm Lê Khánh', NULL, '1995-05-23', N'Lào Cai', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Viettel', N'632148956784', '2019-12-13', N'Quận Ba Đình, Hà Nội', N'Thường trú'),
		(N'Phạm Văn Công', NULL, '1974-04-23', N'Yên Bái', N'Nam', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Phó giám đốc', N'Công ty EN', N'631987565213', '2019-12-14', N'Quận Tây Hồ, Hà Nội', N'Tạm vắng'),
		(N'Vũ Phương Huyền', NULL, '1975-12-06', N'TP. Hồ Chí Minh', N'Nữ', N'Hà Nội', N'Kinh', N'Phật giáo', N'Việt Nam', N'Nội trợ', N'Tại nhà', N'631987565283', '2019-12-15', N'Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
		(N'Vũ Tuấn Hùng', NULL, '1980-09-09', N'Thanh Hóa', N'Nam', N'Hải Dương', N'Kinh', N'Thiên Chúa giáo', N'Việt Nam', N'Kỹ sư điện', N'EVP', N'631567565213', '2019-12-11', N'Quận Nam Từ Liêm, Hà Nội', N'Thường trú'),
		(N'Vũ Thu Phương', NULL, '1987-12-12', N'Nghệ An', N'Nữ', N'Hải Dương', N'Kinh', N'Thiên Chúa giáo', N'Việt Nam', N'Luật sư', N'Văn phòng luật sư 123', N'631987245213', '2019-12-11', N'Quận Bắc Từ Liêm, Hà Nội', N'Thường trú'),
		(N'Trần Minh Hiếu', NULL, '1970-08-19', N'Hà Tĩnh', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giảng viên đại học', N'Đại học Bách khoa Hà Nội', N'6365987565213', '2019-12-12', N'Quận Hoàn Kiếm, Hà Nội', N'Đã chuyển đi'),
		(N'Nguyễn Lan Nhi', NULL, '1975-10-22', N'Quảng Bình', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Bác sĩ', N'Bệnh viện quốc tế HJK', N'631987565253', '2019-12-13', N'Quận Long Biên, Hà Nội', N'Tạm vắng'),
		(N'Trần Đức Duy', NULL, '2007-05-05', N'Quảng Trị', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS Lê Quý Đôn', NULL, '2019-12-14', N'Quận Cầu Giấy, Hà Nội', N'Thường trú'),
		(N'Đỗ Thị Thu Hương', NULL, '2012-06-19', N'Thừa Thiên Huế', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học Chu Văn An', NULL, '2019-12-16', N'Quận Đống Đa, Hà Nội', N'Thường trú'),
		(N'Đỗ Văn Đạt', NULL, '1942-06-04', N'Đà Nẵng', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', N'631955565213', '2019-12-15', N'Hà Nội', N'Đã mất'),
		(N'Bùi Thị Trang', NULL, '1941-04-03', N'Quảng Nam', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'Tại nhà', N'631987567894', '2019-12-15', N'Hà Nội', N'Đã chuyển đi'),
		(N'Đỗ Phương Linh', NULL, '2010-07-08', N'Sơn La', N'Nữ', N'Sơn La', N'Mường', N'Không', N'Việt Nam', N'Học sinh', N'THCS Tạ Quang Bửu', NULL, '2023-01-20', N'Hà Nội', N'Thường trú'),
		(N'Lê Hà My', NULL, '2003-05-06', NULL, N'Nữ', NULL, NULL, NULL, NULL, N'Sinh viên', N'Trường Đại học Kinh tế Quốc Dân', N'656874961356', '2022-01-01', N'Nam Định', N'Đã chuyển đi'),
		(N'Phạm Nam Long', NULL, '1995-11-26', NULL, N'Nam', NULL, NULL, NULL, NULL, N'Kỹ sư', N'VNPT', N'656874486356', '2022-12-01', N'Bắc Ninh', N'Tạm trú'),
		(N'Vũ Sơn Hà', NULL, '1980-12-21', NULL, N'Nam', NULL, NULL, NULL, NULL, N'Giáo viên', N'Đại học Thái Nguyên', N'656879986356', '2023-04-01', N'Thái Nguyên', N'Tạm trú');
		

CREATE TABLE HoKhau(
    idHoKhau INT NOT NULL AUTO_INCREMENT,
    idChuHo INT NOT NULL,
    tinhThanhPho VARCHAR(30) NOT NULL,
    quanHuyen VARCHAR(30) NOT NULL,
    phuongXa VARCHAR(30) NOT NULL,
    diaChi varchar(255) NOT NULL,
    ngayCap DATE NOT NULL,
    trangThai varchar(15) NOT NULL,
    CONSTRAINT PK_hoKhau PRIMARY KEY(idHoKhau),
    CONSTRAINT FK_chuHo FOREIGN KEY(idChuHo) REFERENCES NhanKhau(idNhanKhau),
    CONSTRAINT CHK_trangThaiHoKhau CHECK(trangThai IN (N'Thường trú', N'Đã chuyển đi'))
);

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai)
	VALUES	(1, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 1 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-08', N'Thường trú'),
		(2, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 2 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-07', N'Thường trú'),
		(3, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 3 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-06', N'Đã chuyển đi'),
		(4, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 4 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-05', N'Thường trú'),
		(5, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-05', N'Thường trú');


CREATE TABLE NhanKhau_HoKhau(
	idHoKhau INT NOT NULL,
	idNhanKhau INT NOT NULL,
	quanHeChuHo VARCHAR(255) NOT NULL,
	CONSTRAINT PK_HoKhau_NhanKhau PRIMARY KEY (idHoKhau, idNhanKhau),
	CONSTRAINT FK_HoKhau FOREIGN KEY(idHoKhau) REFERENCES HoKhau(idHoKhau),
	CONSTRAINT FK_NhanKhau FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau)
);

INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) 
	VALUES	(1, 6, N'Anh trai'),
		(1, 7, N'Vợ'),
		(1, 8, N'Anh trai'),
		(2, 9, N'Vợ'),
		(2, 10, N'Em trai'),
		(2, 11, N'Bố'),
		(3, 12, N'Mẹ'),
		(3, 13, N'Bố'),
		(3, 14, N'Chị gái'),
		(4, 15, N'Bố'),
		(4, 16, N'Mẹ'),
		(4, 17, N'Em trai'),
		(5, 18, N'Em gái'),
		(5, 19, N'Ông nội'),
		(5, 20, N'Bà nội'),
		(5, 21, N'Em gái');

CREATE TABLE NhanKhauTamTru(
	id INT NOT NULL AUTO_INCREMENT,
  idNhanKhau INT NOT NULL,
  noiThuongTru VARCHAR(255) NOT NULL,
  noiTamTru VARCHAR(255) NOT NULL,
  tuNgay DATE NOT NULL,
  denNgay DATE NOT NULL,
  lyDo VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
  CONSTRAINT PK_tamTru PRIMARY KEY(id),
  CONSTRAINT FK_NhanKhauTamTru FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiTamTru CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauTamTru(idNhanKhau, noiThuongTru, noiTamTru, tuNgay, denNgay, lyDo, trangThai)
	VALUES	(22, N'Nam Định', N'Số 1 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-01-01', '2022-05-01', N'Ôn thi', N'Đã duyệt'),
		(23, N'Bắc Ninh', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Chuyển công tác', N'Đã duyệt'),
		(24, N'Thái Nguyên', N'Số 4 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-04-01', '2023-04-07', N'Tham dự hội thảo', N'Chờ duyệt');

CREATE TABLE NhanKhauTamVang(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	noiTamTru VARCHAR(255) NOT NULL,
	tuNgay DATE NOT NULL,
	denNgay DATE NOT NULL,
	lyDo VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_tamVang PRIMARY KEY(id),
	CONSTRAINT FK_NhanKhauTamVang FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiTamVang CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauTamVang(idNhanKhau, noiTamTru, tuNgay, denNgay, lyDo, trangThai)
	VALUES	(11, N'Quảng Bình', '2023-01-01', '2023-05-05', N'Chuyển công tác tạm thời', N'Đã duyệt'),
		(16, N'Quảng Bình', '2023-01-01', '2023-02-01', N'Về quê ăn tết', N'Đã duyệt'),
		(1, N'Thừa Thiên Huế', '2023-02-15', '2023-02-19', N'Du lịch', N'Chờ duyệt');

CREATE TABLE NhanKhauThem(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayThem DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_nhanKhauThem PRIMARY KEY(id),
	CONSTRAINT FK_nhanKhauThem FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiThem CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauThem(idNhanKhau, ngayThem, ghiChu, trangThai)
	VALUES	(8, '2019-12-11', NULL, N'Đã duyệt'),
		(20, '2019-12-15', NULL, N'Đã duyệt'),
		(21, '2023-01-20', NULL, N'Chờ duyệt');

CREATE TABLE NhanKhauChuyen(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayChuyen DATE NOT NULL,
	noiChuyenDen VARCHAR(255),
	ghiChu VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_nhanKhauChuyen PRIMARY KEY(id),
	CONSTRAINT FK_nhanKhauChuyen FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiChuyen CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauChuyen(idNhanKhau, ngayChuyen, noiChuyenDen, ghiChu, trangThai)
	VALUES	(9, '2022-12-12', N'Hà Nam', NULL, N'Đã duyệt'),
		(15, '2022-10-30', N'TP. Hồ Chí Minh', NULL, N'Đã duyệt'),
		(7, '2023-01-25', N'Đà Nẵng', NULL, N'Chờ duyệt');
		

CREATE TABLE NhanKhauQuaDoi(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	idNguoiKhai INT NOT NULL,
	ngayKhai DATE NOT NULL,
	ngayMat DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_NhanKhauQuaDoi PRIMARY KEY(id),
	CONSTRAINT FK_NhanKhauQuaDoi FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT FK_NguoiKhaiNhanKhauQuaDoi FOREIGN KEY(idNguoiKhai) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiKhaiBaoQuaDoi CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauQuaDoi(idNhanKhau, idNguoiKhai, ngayKhai, ngayMat, ghiChu, trangThai)
	VALUES	(19, 5, '2020-12-02', '2020-12-01', NULL, N'Đã duyệt');

CREATE TABLE NhanKhauTach(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayKhaiBao DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_NhanKhauTach PRIMARY KEY(id),
	CONSTRAINT FK_NK_NKTach FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_trangThaiTach CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NhanKhauTach(idNhanKhau, ngayKhaiBao, ghiChu, trangThai)
	VALUES	(10, '2023-01-21', NULL, N'Chờ duyệt');

CREATE TABLE NhanKhauChuyenHoKhau(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	idHoKhau INT NOT NULL,
	ngayChuyen DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(15) NOT NULL,
	CONSTRAINT PK_NKCHuyenHoKhau PRIMARY KEY(id),
	CONSTRAINT FK_NK_NKChuyenHo FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT FK_HK_HKChuyenHo FOREIGN KEY(idHoKhau) REFERENCES HoKhau(idHoKhau),
	CONSTRAINT CHK_trangThaiChuyenHoKhau CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

CREATE TABLE DipTraoThuong(
	idDip INT NOT NULL AUTO_INCREMENT,
	loaiDip VARCHAR(30) NOT NULL,
	tenDip VARCHAR(255) NOT NULL,
	ngayTraoThuong DATE NOT NULL,
	CONSTRAINT PK_DipTraoThuong PRIMARY KEY(idDip),
	CONSTRAINT CHK_loaiDip CHECK (loaiDip IN (N'Dịp đặc biệt', N'Cuối năm học'))
);

INSERT INTO DipTraoThuong(loaiDip, tenDip, ngayTraoThuong)
	VALUES	(N'Dịp đặc biệt', N'Trung thu 2022', '2022-09-09'),
		(N'Cuối năm học', N'Cuối năm học 2021-2022', '2022-06-01'),
		(N'Dịp đặc biệt', N'Tết thiếu nhi 2022', '2022-06-01');

CREATE TABLE PhanThuong(
	id INT NOT NULL AUTO_INCREMENT,
	tenPhanThuong VARCHAR(255) NOT NULL,
	giaTriPhanThuong INT NOT NULL,
	ghiChu VARCHAR(255),
	CONSTRAINT PK_PhanThuong PRIMARY KEY(id)
);

INSERT INTO PhanThuong(tenPhanThuong, giaTriPhanThuong, ghiChu)
	VALUES	(N'Bánh kẹo', 20000, NULL),
		(N'10 cuốn vở', 100000, NULL),
		(N'7 cuốn vở', 70000, NULL),
		(N'5 cuốn vở', 50000, NULL);

CREATE TABLE PhanThuong_DipTraoThuong(
	idPhanThuong INT NOT NULL,
	idDipTraoThuong INT NOT NULL,
	ghiChu VARCHAR(255),
	CONSTRAINT PK_PhanThuong_TraoThuong PRIMARY KEY(idPhanThuong, idDipTraoThuong),
	CONSTRAINT FK_idPhanThuong FOREIGN KEY (idPhanThuong) REFERENCES PhanThuong(id),
	CONSTRAINT FK_idDipTraoThuong FOREIGN KEY (idDipTraoThuong) REFERENCES  DipTraoThuong(idDip)
);

INSERT INTO PhanThuong_DipTraoThuong(idPhanThuong, idDipTraoThuong, ghiChu)
	VALUES	(1, 1, N'Trao cho các trẻ em dưới 18 tuổi'),
		(2, 2, N'Trao cho học sinh giỏi'),
		(3, 2, N'Trao cho học sinh tiên tiến'),
		(4, 2, N'Trao cho các học sinh còn lại'),
		(1, 3, N'Trao cho các trẻ em dưới 18 tuối');


CREATE TABLE NguoiNopMinhChung(
	idNguoiNop INT NOT NULL,
	idDip INT NOT NULL,
	idNguoiNhan INT NOT NULL,
	linkMinhChung VARCHAR(255),
	ngayDangKy DATE NOT NULL,
	trangThai VARCHAR(15) NOT NULL,
	thanhTich VARCHAR(30),
	idPhanThuong INT,
	CONSTRAINT PK_NguoiNop PRIMARY KEY(idDip, idNguoiNhan),
	CONSTRAINT FK_idNguoiNop FOREIGN KEY(idNguoiNop) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT FK_idNguoiNhan FOREIGN KEY(idNguoiNhan) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT FK_idDip FOREIGN KEY(idDip) REFERENCES DipTraoThuong(idDip),
	CONSTRAINT CHK_trangThaiNopMinhChung CHECK (trangThai IN (N'Không duyệt', N'Đã duyệt', N'Chờ duyệt'))
);

INSERT INTO NguoiNopMinhChung(idNguoiNop, idDip, idNguoiNhan, linkMinhChung, ngayDangKy, trangThai, idPhanThuong)
	VALUES	(21, 1, 21, NULL, '2022-09-01', N'Đã duyệt', NULL, 1),
		(21, 2, 21, N'x', '2022-05-25', N'Đã duyệt', N'Học sinh tiên tiến', 3),
		(4, 2, 17, NULL, '2022-05-26', N'Đã duyệt', NULL, 4),
		(18, 2, 18, N'y', '2022-05-27', N'Đã duyệt', N'Học sinh giỏi', 2),
		(4, 3, 4, NULL, '2022-05-26', N'Không duyệt', NULL);

CREATE TABLE taiKhoan(
	idNhanKhau INT NOT NULL,
	taiKhoan VARCHAR(30) NOT NULL,
	matKhau VARCHAR(30) NOT NULL,
	quyen varchar(30) NOT NULL,
	CONSTRAINT PK_taiKhoan PRIMARY KEY(idNhanKhau, taiKhoan),
	CONSTRAINT FK_idNhanKhau_taiKhoan FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau),
	CONSTRAINT CHK_quyen CHECK(quyen IN (N'Tổ trưởng', N'Kế toán', N'Người dân'))
);

INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES
	(1, N'aaaa', '12345678', N'Tổ trưởng'),
	(2, N'bbbb', '12345678', N'Người dân'),
	(3, N'cccc', '12345678', N'Người dân'),
	(4, N'dddd', '12345678', N'Người dân'),
	(5, N'eeee', '12345678', N'Người dân'),
	(6, N'gggg', '12345678', N'Người dân'),
	(7, N'hhhh', '12345678', N'Người dân'),
	(8, N'iiii', '12345678', N'Người dân'),
	(9, N'jjjj', '12345678', N'Người dân'),
	(10, N'kkkk', '12345678', N'Người dân'),
	(11, N'llll', '12345678', N'Người dân'),
	(12, N'mmmm', '12345678', N'Người dân'),
	(13, N'nnnn', '12345678', N'Người dân'),
	(14, N'oooo', '12345678', N'Người dân'),
	(15, N'pppp', '12345678', N'Người dân'),
	(16, N'qqqq', '12345678', N'Người dân'),
	(17, N'rrrr', '12345678', N'Người dân'),
	(18, N'ssss', '12345678', N'Người dân'),
	(19, N'tttt', '12345678', N'Người dân'),
	(20, N'uuuu', '12345678', N'Người dân'),
	(21, N'vvvv', '12345678', N'Người dân');
	
SELECT * FROM taiKhoan;
SELECT * from NhanKhau;