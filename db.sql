DROP TABLE NguoiNopMinhChung;
DROP TABLE PhanThuong;
DROP TABLE DipTraoThuong;
DROP TABLE NhanKhauTach;
DROP TABLE NhanKhauChuyen;
DROP TABLE NhanKhauQuaDoi;
DROP TABLE NhanKhauTamVang;
DROP TABLE NhanKhauTamTru;
DROP TABLE NhanKhauThem;
DROP TABLE NhanKhauChuyenHoKhau;
DROP TABLE TaiKhoan;
DROP TABLE NhanKhau_HoKhau;
DROP TABLE HoKhau;
DROP TABLE NhanKhau;
        
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
    trangThai VARCHAR(255) NOT NULL,
    CONSTRAINT PK_NhanKhau PRIMARY KEY(idNhanKhau)
);
    
CREATE TABLE HoKhau(
    idHoKhau INT NOT NULL AUTO_INCREMENT,
    idChuHo INT NOT NULL,
    tinhThanhPho VARCHAR(255) NOT NULL,
    quanHuyen VARCHAR(255) NOT NULL,
    phuongXa VARCHAR(255) NOT NULL,
    diaChi varchar(255) NOT NULL,
    ngayCap DATE NOT NULL,
    trangThai varchar(255) NOT NULL,
    CONSTRAINT PK_hoKhau PRIMARY KEY(idHoKhau),
    CONSTRAINT FK_chuHo FOREIGN KEY(idChuHo) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);
    
CREATE TABLE NhanKhau_HoKhau(
    idHoKhau INT NOT NULL,
    idNhanKhau INT NOT NULL,
    quanHeChuHo VARCHAR(255) NOT NULL,
    CONSTRAINT PK_HoKhau_NhanKhau PRIMARY KEY (idHoKhau, idNhanKhau),
    CONSTRAINT FK_HoKhau FOREIGN KEY(idHoKhau) REFERENCES HoKhau(idHoKhau) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_NhanKhau FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);
    
CREATE TABLE taiKhoan(
	idNhanKhau INT NOT NULL,
	taiKhoan VARCHAR(255) NOT NULL,
	matKhau VARCHAR(255) NOT NULL,
	quyen varchar(255) NOT NULL,
	CONSTRAINT PK_taiKhoan PRIMARY KEY(idNhanKhau, taiKhoan),
	CONSTRAINT FK_idNhanKhau_taiKhoan FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n ?????c Nguy??n', NULL, '1994-4-5', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 893516896172, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (1, N'1', N'12345678', N'T??? tr?????ng');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n H????ng Giang', NULL, '1992-2-25', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 310', 513860184257, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (2, N'2', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Cao Th???ng', NULL, '1965-10-22', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 420', 931529799667, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (3, N'3', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Mai Kh??nh', NULL, '1963-9-15', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 951', 562044443072, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (4, N'4', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Cao Linh', NULL, '2018-11-1', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2018-11-1', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (5, N'5', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Ph????ng Anh', NULL, '2017-3-23', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-3-23', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (6, N'6', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Quang S??n', NULL, '1934-9-17', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 876755248659, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (7, N'7', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Th??? Th??', NULL, '1928-11-21', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 962207924565, '1999-5-22', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (8, N'8', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (1, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 1 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-5-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 2, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 3, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 4, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 5, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 6, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 7, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 8, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Mai Huy???n', NULL, '1970-7-27', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 454', 186706037338, '2009-10-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (9, N'9', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Gia Minh', NULL, '1966-1-16', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 319', 970308130698, '2009-10-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (10, N'10', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Nh???t T??ng', NULL, '1938-8-22', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 002622194024, '2009-10-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (11, N'11', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Nh???t Ho??ng', NULL, '1908-5-26', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 493034111031, '2009-10-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (12, N'12', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H????ng Linh', NULL, '1903-5-11', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 169787033334, '2009-10-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (13, N'13', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (9, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 2 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2009-10-4', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 10, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 11, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 12, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 13, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ng???c Th??', NULL, '1972-3-18', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 264', 872548753348, '2004-4-9', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (14, N'14', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Nam Chi???n', NULL, '1970-2-15', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 293564074919, '2004-4-9', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (15, N'15', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ng???c Y???n', NULL, '1919-11-24', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 022921171277, '2004-4-9', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (16, N'16', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (14, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 3 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2004-4-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (3, 15, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (3, 16, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng D??ng', NULL, '1980-1-6', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 584', 345268222492, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (17, N'17', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ng???c Ly', NULL, '1980-6-8', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 698', 759005748945, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (18, N'18', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Tr?????ng H???i', NULL, '1947-6-13', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 072996418583, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (19, N'19', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ph????ng Ph????ng', NULL, '1952-2-23', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 696942254251, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (20, N'20', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? B?? Ho??ng', NULL, '2009-5-20', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 932', NULL, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (21, N'21', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Thanh Khu??', NULL, '2008-8-25', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 544', 191998518918, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (22, N'22', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Xu??n Ho??ng', NULL, '1915-3-7', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 720735155783, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (23, N'23', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Di???u T??m', NULL, '1917-2-24', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 667419447509, '2011-6-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (24, N'24', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (17, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 4 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2011-6-1', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 18, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 19, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 20, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 21, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 22, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 23, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 24, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o B???o Nhi', NULL, '1973-5-15', N'H?? Giang', N'N???', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 749', 843762370738, '1998-4-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (25, N'25', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Tr???ng Th???ng', NULL, '1974-3-11', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 937', 414195333091, '1998-4-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (26, N'26', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o S??n Minh', NULL, '1943-7-20', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 627726126502, '1998-4-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (27, N'27', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Mai H????ng', NULL, '1942-1-17', N'H?? Giang', N'N???', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 022848167814, '1998-4-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (28, N'28', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Nh???t ?????t', NULL, '2007-10-9', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 232', 773659983380, '2007-10-9', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (29, N'29', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thu Anh', NULL, '1915-11-20', N'H?? Giang', N'N???', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 782840209019, '1998-4-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (30, N'30', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (25, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 5 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1998-4-17', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 26, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 27, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 28, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 29, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 30, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o H???i H???i', NULL, '1974-7-1', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 480', 899022949841, '1990-6-1', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (31, N'31', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh Huy???n', NULL, '1977-3-25', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 215', 981850476337, '1990-6-1', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (32, N'32', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Tr?????ng M???nh', NULL, '1941-6-21', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 692738274622, '1990-6-1', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (33, N'33', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Huy???n H??', NULL, '1947-2-22', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 322532361959, '1990-6-1', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (34, N'34', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Ho??ng Minh', NULL, '2000-1-4', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 485', 126995227731, '2000-1-4', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (35, N'35', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Trung Bi???n', NULL, '1913-6-6', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 256611041656, '1990-6-1', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (36, N'36', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (31, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 6 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1990-6-1', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 32, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 33, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 34, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 35, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 36, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thu Kh??nh', NULL, '1983-3-16', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 522', 705256418567, '1991-11-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (37, N'37', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Quang D??ng', NULL, '1988-7-26', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 106', 213049136037, '1991-11-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (38, N'38', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Lan', NULL, '1949-1-8', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 135784594933, '1991-11-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (39, N'39', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh Minh', NULL, '1917-7-3', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 720860601232, '1991-11-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (40, N'40', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Ph????ng', NULL, '1916-4-18', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 575792442567, '1991-11-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (41, N'41', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (37, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 7 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1991-11-5', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 38, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 39, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 40, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 41, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng C???nh', NULL, '1980-9-14', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 844', 376769194364, '2011-10-10', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (42, N'42', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ph????ng Ph????ng', NULL, '1976-11-2', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 505', 518658378313, '2011-10-10', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (43, N'43', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? B???o Mai', NULL, '1945-4-27', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 649547923602, '2011-10-10', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (44, N'44', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H????ng H????ng', NULL, '2008-3-2', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 790', 161676455479, '2011-10-10', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (45, N'45', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Gia Long', NULL, '1925-5-21', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 274387687852, '2011-10-10', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (46, N'46', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (42, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 8 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2011-10-10', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 43, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 44, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 45, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 46, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Quang Ki??n', NULL, '1991-5-1', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 445', 301185662470, '2020-8-8', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (47, N'47', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n B???o Linh', NULL, '1986-4-6', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 348950063703, '2020-8-8', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (48, N'48', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Tr???ng Hi???u', NULL, '1961-5-16', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 850', 033144510527, '2020-8-8', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (49, N'49', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Ph????ng Anh', NULL, '1961-11-12', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 290', 797424223978, '2020-8-8', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (50, N'50', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (47, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 9 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2020-8-8', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 48, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 49, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 50, N'M???');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i H????ng Anh', NULL, '1987-10-23', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 975', 808194435575, '1991-9-16', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (51, N'51', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nh???t B???o', NULL, '1987-7-23', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 246', 318121613035, '1991-9-16', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (52, N'52', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i S??n Long', NULL, '1957-3-10', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 732575244033, '1991-9-16', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (53, N'53', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Mai', NULL, '2021-2-3', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-2-3', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (54, N'54', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Duy H??ng', NULL, '1933-9-26', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 501917363504, '1991-9-16', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (55, N'55', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i B???o Ly', NULL, '1931-9-5', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 490441563946, '1991-9-16', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (56, N'56', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (51, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 10 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1991-9-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 52, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 53, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 54, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 55, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 56, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Quang Lu??n', NULL, '1986-10-22', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 968', 630676696030, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (57, N'57', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Huy???n Y???n', NULL, '1990-7-19', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 830', 433748883912, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (58, N'58', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n B?? Nguy??n', NULL, '1959-5-4', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 542', 025230786006, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (59, N'59', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n H????ng Lan', NULL, '1951-9-22', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 729521096144, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (60, N'60', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Minh Phong', NULL, '2015-10-19', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 823', NULL, '2015-10-19', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (61, N'61', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ph????ng Oanh', NULL, '2012-4-8', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 594', NULL, '2012-4-8', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (62, N'62', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n ?????c S??n', NULL, '1922-3-22', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 880686267287, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (63, N'63', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Huy???n Ph????ng', NULL, '1924-3-26', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 275434786942, '1994-1-23', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (64, N'64', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (57, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 11 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1994-1-23', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 58, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 59, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 60, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 61, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 62, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 63, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 64, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng B?? C???nh', NULL, '1986-2-18', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 734', 700591298864, '2002-9-5', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (65, N'65', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng B???o Kh??nh', NULL, '1985-2-22', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 489605270774, '2002-9-5', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (66, N'66', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Xu??n Minh', NULL, '1960-5-11', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 702', 754197659022, '2002-9-5', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (67, N'67', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Mai Linh', NULL, '1957-1-12', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 662511740493, '2002-9-5', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (68, N'68', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??? Khu??', NULL, '2014-11-10', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 643', NULL, '2014-11-10', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (69, N'69', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Ph????ng Lan', NULL, '1919-8-2', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 709354177718, '2002-9-5', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (70, N'70', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (65, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 12 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2002-9-5', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 66, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 67, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 68, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 69, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 70, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Quang Nguy??n', NULL, '1972-4-23', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 933554348632, '2008-7-15', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (71, N'71', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Kh??nh Anh', NULL, '1969-6-7', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 239', 786520715193, '2008-7-15', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (72, N'72', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng S??n Th??i', NULL, '1998-4-24', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 720', 243317501040, '2008-7-15', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (73, N'73', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Minh Oanh', NULL, '1902-1-21', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 235750010070, '2008-7-15', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (74, N'74', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (71, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 13 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-7-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 72, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 73, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 74, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Qu???nh Kh??nh', NULL, '1985-6-25', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 352364342803, '2006-9-19', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (75, N'75', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n B?? H??ng', NULL, '1985-5-17', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 165796461012, '2006-9-19', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (76, N'76', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Gia ?????t', NULL, '1954-11-22', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 820765453696, '2006-9-19', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (77, N'77', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n B?? Kh??i', NULL, '2014-9-15', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 710', NULL, '2014-9-15', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (78, N'78', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Ph????ng H????ng', NULL, '2010-2-14', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 377', NULL, '2010-2-14', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (79, N'79', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n ????ng T??ng', NULL, '1933-5-24', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 115680164977, '2006-9-19', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (80, N'80', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (75, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 14 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-9-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 76, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 77, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 78, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 79, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 80, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Xu??n Kh??nh', NULL, '1978-8-22', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 112', 059631032187, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (81, N'81', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nam Phong', NULL, '1980-8-25', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 404', 012427456112, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (82, N'82', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Trung Lu??n', NULL, '1944-2-23', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 866830454572, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (83, N'83', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thanh Trang', NULL, '1952-10-12', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 014509358056, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (84, N'84', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Trung S??n', NULL, '2007-10-19', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 824', 884408343429, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (85, N'85', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ph????ng Ly', NULL, '1911-8-8', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 697898930168, '2016-2-14', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (86, N'86', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (81, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 15 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2016-2-14', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 82, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 83, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 84, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 85, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 86, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n ?????c Lu??n', NULL, '1987-6-5', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 555764794617, '2013-11-3', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (87, N'87', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Huy???n H????ng', NULL, '1982-7-4', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 114', 227857435040, '2013-11-3', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (88, N'88', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Trung Qu???c', NULL, '2020-5-19', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-5-19', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (89, N'89', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Nam H??ng', NULL, '1918-3-23', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 745304940193, '2013-11-3', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (90, N'90', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Th??? Ph????ng', NULL, '1925-8-5', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 020744090356, '2013-11-3', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (91, N'91', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (87, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 16 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2013-11-3', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 88, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 89, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 90, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 91, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? H???i Minh', NULL, '1988-9-21', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 561', 424288459352, '1994-4-19', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (92, N'92', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Huy???n T??m', NULL, '1984-11-8', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 292', 739494727917, '1994-4-19', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (93, N'93', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? S??n B???o', NULL, '1962-8-7', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 317537385929, '1994-4-19', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (94, N'94', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Qu???nh Minh', NULL, '1956-2-17', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 832438000481, '1994-4-19', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (95, N'95', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? S??n Bi???n', NULL, '2020-10-13', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-10-13', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (96, N'96', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Di???u Huy???n', NULL, '2021-4-5', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-4-5', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (97, N'97', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Xu??n Anh', NULL, '1925-4-2', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 542440814003, '1994-4-19', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (98, N'98', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (92, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 17 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1994-4-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 93, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 94, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 95, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 96, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 97, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 98, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H???i Kh??i', NULL, '1993-9-4', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 497', 220865318762, '2006-9-16', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (99, N'99', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Xu??n Y???n', NULL, '1995-3-13', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 813', 675377548391, '2006-9-16', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (100, N'100', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Di???u Mai', NULL, '1964-3-4', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 435', 552088091842, '2006-9-16', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (101, N'101', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Mai Ph????ng', NULL, '2019-9-20', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-9-20', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (102, N'102', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? B?? Th??i', NULL, '1928-5-24', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 940614688928, '2006-9-16', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (103, N'103', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H????ng Trang', NULL, '1926-3-12', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 746053589420, '2006-9-16', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (104, N'104', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (99, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 18 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-9-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 100, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 101, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 102, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 103, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 104, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Huy???n', NULL, '1994-11-17', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 516', 290059434803, '2018-6-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (105, N'105', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Gia L????ng', NULL, '1995-5-27', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 435036114247, '2018-6-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (106, N'106', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ho??ng T??ng', NULL, '1966-2-12', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 732', 813075023162, '2018-6-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (107, N'107', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Mai Lan', NULL, '1960-1-20', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 236', 938573363374, '2018-6-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (108, N'108', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr?????ng Hi???n', NULL, '2020-2-26', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-2-26', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (109, N'109', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (105, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 19 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2018-6-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 106, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 107, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 108, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 109, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Minh ?????t', NULL, '1989-8-21', N'C???n Th??', N'Nam', N'C???n Th??', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 086981464887, '1992-8-13', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (110, N'110', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Thanh Trang', NULL, '1988-4-22', N'C???n Th??', N'N???', N'C???n Th??', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 934', 821282363412, '1992-8-13', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (111, N'111', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Duy Lu??n', NULL, '1957-3-15', N'C???n Th??', N'Nam', N'C???n Th??', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 579067831311, '1992-8-13', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (112, N'112', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Th??? Linh', NULL, '2022-9-4', N'C???n Th??', N'N???', N'C???n Th??', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2022-9-4', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (113, N'113', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Mai Ly', NULL, '1928-5-22', N'C???n Th??', N'N???', N'C???n Th??', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 891170040396, '1992-8-13', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (114, N'114', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (110, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 20 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1992-8-13', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 111, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 112, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 113, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 114, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? B?? C???nh', NULL, '1976-3-12', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 966342538967, '1999-9-26', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (115, N'115', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Thu Linh', NULL, '1973-1-7', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 749027772617, '1999-9-26', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (116, N'116', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Qu???nh Ph????ng', NULL, '1942-9-17', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 700581217707, '1999-9-26', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (117, N'117', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Quang Ki??n', NULL, '1923-4-3', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 038503616692, '1999-9-26', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (118, N'118', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Thu Anh', NULL, '1910-3-25', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 069199082094, '1999-9-26', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (119, N'119', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (115, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 21 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-9-26', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 116, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 117, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 118, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 119, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??nh C???nh', NULL, '1973-8-24', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 579', 090215103164, '1997-11-23', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (120, N'120', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Khu??', NULL, '1976-8-20', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 621', 363994636196, '1997-11-23', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (121, N'121', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Nam ?????t', NULL, '1946-5-19', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 606937919003, '1997-11-23', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (122, N'122', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? V??n Hi???u', NULL, '2006-3-24', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THPT 192', 498135278549, '2006-3-24', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (123, N'123', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Qu???nh H??', NULL, '1919-3-24', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 496772459734, '1997-11-23', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (124, N'124', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (120, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 22 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1997-11-23', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 121, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 122, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 123, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 124, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng H????ng Th??', NULL, '1982-8-25', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 921', 675496865771, '2009-9-27', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (125, N'125', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng ?????c Th??nh', NULL, '1981-8-27', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 545', 094910181033, '2009-9-27', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (126, N'126', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Nh???t D??ng', NULL, '1953-8-2', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 811637449085, '2009-9-27', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (127, N'127', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thanh Trang', NULL, '1950-3-20', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 660305179196, '2009-9-27', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (128, N'128', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (125, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 23 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2009-9-27', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 126, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 127, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 128, N'M???');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Xu??n Mai', NULL, '1970-5-26', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 031363820635, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (129, N'129', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nam Qu???c', NULL, '1968-5-11', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 661', 274046142090, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (130, N'130', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Quang Minh', NULL, '1938-6-18', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 633376318750, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (131, N'131', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i ????ng H??ng', NULL, '1998-10-19', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 710713622518, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (132, N'132', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i B???o T??m', NULL, '1995-6-7', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 469', 943575129486, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (133, N'133', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thanh H??ng', NULL, '1914-9-11', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 437938727221, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (134, N'134', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thu Trang', NULL, '1907-6-9', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 553745622896, '2011-7-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (135, N'135', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (129, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 24 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2011-7-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 130, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 131, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 132, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 133, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 134, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 135, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Di???u Mai', NULL, '1981-3-2', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 141', 181242546266, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (136, N'136', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H???i B???o', NULL, '1979-5-9', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 203', 228163812057, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (137, N'137', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh S??n', NULL, '1950-7-14', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 639999671786, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (138, N'138', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh H??', NULL, '1954-4-26', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 909875090608, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (139, N'139', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B???o Kh??nh', NULL, '2008-7-7', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 658', 519530984409, '2008-7-7', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (140, N'140', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr???ng S??n', NULL, '1921-4-18', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 450712321012, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (141, N'141', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Huy???n Mai', NULL, '1924-4-4', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 049399204612, '1993-8-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (142, N'142', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (136, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 25 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-8-4', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 137, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 138, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 139, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 140, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 141, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 142, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Duy Nh???t', NULL, '1986-1-16', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 114', 059368106440, '2002-6-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (143, N'143', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Qu???nh Kh??nh', NULL, '1990-10-11', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 701', 142017288553, '2002-6-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (144, N'144', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? S??n D??ng', NULL, '1952-10-8', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 015200528572, '2002-6-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (145, N'145', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Trang', NULL, '1958-1-15', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 245706981016, '2002-6-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (146, N'146', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Th??', NULL, '1930-10-5', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 504642528348, '2002-6-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (147, N'147', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (143, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 26 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2002-6-21', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 144, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 145, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 146, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 147, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Tr?????ng Ki??n', NULL, '1992-7-27', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 553007982868, '1999-2-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (148, N'148', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Qu???nh Huy???n', NULL, '1989-6-9', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 181445626174, '1999-2-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (149, N'149', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Kh??nh Trang', NULL, '1963-4-21', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 913', 914739627186, '1999-2-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (150, N'150', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Thu Khu??', NULL, '2018-5-15', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2018-5-15', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (151, N'151', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Gia ?????t', NULL, '1937-11-24', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 103186055231, '1999-2-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (152, N'152', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Thanh Ly', NULL, '1934-3-10', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 708435761132, '1999-2-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (153, N'153', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (148, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 27 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-2-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 149, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 150, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 151, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 152, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 153, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ph????ng Lan', NULL, '1970-3-7', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 278', 879127276794, '1993-5-20', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (154, N'154', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i H???i S??n', NULL, '1965-5-8', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 431581213939, '1993-5-20', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (155, N'155', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nam T??ng', NULL, '1940-4-12', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 468209519776, '1993-5-20', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (156, N'156', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Trung L????ng', NULL, '1919-7-8', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 734021547366, '1993-5-20', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (157, N'157', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Xu??n Ly', NULL, '1919-8-17', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 080060601925, '1993-5-20', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (158, N'158', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (154, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 28 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-5-20', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 155, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 156, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 157, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 158, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Di???u Y???n', NULL, '1978-11-5', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 860', 797326951501, '2001-4-9', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (159, N'159', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh H???i', NULL, '1978-10-20', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 266', 387074550252, '2001-4-9', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (160, N'160', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? S??n Tr?????ng', NULL, '1946-11-10', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 468299830025, '2001-4-9', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (161, N'161', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng Mai', NULL, '1948-8-1', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 326356261127, '2001-4-9', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (162, N'162', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng Ph????ng', NULL, '2011-11-19', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 236', NULL, '2011-11-19', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (163, N'163', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B?? Bi???n', NULL, '1920-7-20', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 047113884414, '2001-4-9', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (164, N'164', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (159, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 29 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2001-4-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 160, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 161, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 162, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 163, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 164, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Minh Mai', NULL, '1992-2-1', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 696', 611093422818, '1993-6-20', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (165, N'165', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Tr?????ng Lu??n', NULL, '1988-2-27', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 440331647120, '1993-6-20', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (166, N'166', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Duy B???o', NULL, '1966-8-13', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 921', 961179788009, '1993-6-20', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (167, N'167', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thanh H??', NULL, '1963-11-11', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 763108171779, '1993-6-20', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (168, N'168', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng S??n Ki??n', NULL, '2021-5-4', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-5-4', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (169, N'169', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Kh??nh Y???n', NULL, '2021-7-16', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-7-16', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (170, N'170', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Di???u Y???n', NULL, '1929-8-22', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 044225205018, '1993-6-20', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (171, N'171', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (165, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 30 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-6-20', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 166, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 167, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 168, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 169, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 170, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 171, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Di???u Giang', NULL, '1994-3-10', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 232', 471316621325, '1996-8-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (172, N'172', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n B?? B???o', NULL, '1995-5-6', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 706', 006394695564, '1996-8-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (173, N'173', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Trung S??n', NULL, '1966-5-8', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 300132520425, '1996-8-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (174, N'174', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ng???c Kh??nh', NULL, '1967-1-5', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 660684888397, '1996-8-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (175, N'175', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n V??n H??ng', NULL, '1928-11-18', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 522864975567, '1996-8-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (176, N'176', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (172, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 31 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1996-8-1', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 173, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 174, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 175, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 176, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Tr?????ng Long', NULL, '1977-8-17', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 355', 850023601344, '1999-11-10', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (177, N'177', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Di???u Giang', NULL, '1973-3-24', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 278929093137, '1999-11-10', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (178, N'178', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thanh Phong', NULL, '1948-2-17', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 983807426892, '1999-11-10', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (179, N'179', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??? Y???n', NULL, '1943-7-16', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 210721161159, '1999-11-10', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (180, N'180', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Minh Minh', NULL, '2009-8-14', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 921', NULL, '2009-8-14', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (181, N'181', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??? Anh', NULL, '2003-9-2', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 209', 502048070513, '2003-9-2', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (182, N'182', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Kh??nh Mai', NULL, '1919-4-26', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 997790968495, '1999-11-10', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (183, N'183', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (177, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 32 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-11-10', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 178, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 179, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 180, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 181, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 182, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 183, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??nh B???o', NULL, '1974-11-2', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 653', 406960423610, '1992-5-24', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (184, N'184', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Thu Ly', NULL, '1969-4-18', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 853', 772728013837, '1992-5-24', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (185, N'185', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Tr?????ng Bi???n', NULL, '1948-10-11', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 628436776585, '1992-5-24', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (186, N'186', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Mai Ph????ng', NULL, '2004-9-12', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 315', 164448342232, '2004-9-12', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (187, N'187', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Cao Long', NULL, '1917-4-9', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 898494524157, '1992-5-24', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (188, N'188', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??? Mai', NULL, '1914-1-4', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 664325501799, '1992-5-24', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (189, N'189', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (184, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 33 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1992-5-24', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 185, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 186, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 187, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 188, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 189, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Minh Linh', NULL, '1976-4-13', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 569854699732, '2004-11-24', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (190, N'190', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh S??n Hi???n', NULL, '1981-4-10', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 569', 527280770676, '2004-11-24', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (191, N'191', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh H????ng Khu??', NULL, '1942-4-12', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 816719395673, '2004-11-24', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (192, N'192', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Nam L???c', NULL, '1920-4-19', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 147543285906, '2004-11-24', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (193, N'193', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Mai Kh??nh', NULL, '1921-5-15', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 759928277036, '2004-11-24', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (194, N'194', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (190, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 34 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2004-11-24', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 191, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 192, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 193, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 194, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n B?? Th???ng', NULL, '1987-1-25', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 414', 510015030226, '1994-4-4', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (195, N'195', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Xu??n H????ng', NULL, '1992-7-24', N'H?? Giang', N'N???', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 754722010500, '1994-4-4', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (196, N'196', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Quang Qu???c', NULL, '1952-7-9', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 012404973404, '1994-4-4', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (197, N'197', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Mai Giang', NULL, '2017-11-17', N'H?? Giang', N'N???', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-11-17', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (198, N'198', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n H???i Qu???c', NULL, '1933-7-23', N'H?? Giang', N'Nam', N'H?? Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 456172716307, '1994-4-4', N'H?? Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (199, N'199', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (195, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 35 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1994-4-4', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 196, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 197, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 198, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 199, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Mai Huy???n', NULL, '1971-1-11', N'H?? Nam', N'N???', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 685', 243954090091, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (200, N'200', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Tr?????ng Th??nh', NULL, '1967-4-20', N'H?? Nam', N'Nam', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 376', 170788759693, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (201, N'201', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Gia Th??i', NULL, '1945-10-13', N'H?? Nam', N'Nam', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 178673288055, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (202, N'202', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Kh??nh Giang', NULL, '1943-2-20', N'H?? Nam', N'N???', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 579465882698, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (203, N'203', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Nh???t Nh???t', NULL, '1914-5-13', N'H?? Nam', N'Nam', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 155435712920, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (204, N'204', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Kh??nh Huy???n', NULL, '1904-7-14', N'H?? Nam', N'N???', N'H?? Nam', N'Th??i', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 557180393742, '1999-1-7', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (205, N'205', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (200, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 36 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-1-7', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 201, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 202, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 203, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 204, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 205, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??nh Hi???u', NULL, '1984-1-7', N'L??o Cai', N'Nam', N'L??o Cai', N'Dao', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 676', 606016757628, '1997-1-11', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (206, N'206', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Ph????ng Ly', NULL, '1982-10-24', N'L??o Cai', N'N???', N'L??o Cai', N'Dao', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 561', 117068685639, '1997-1-11', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (207, N'207', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??? Kh??nh', NULL, '1958-9-12', N'L??o Cai', N'N???', N'L??o Cai', N'Dao', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 211', 397866424415, '1997-1-11', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (208, N'208', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Di???u H????ng', NULL, '1929-7-13', N'L??o Cai', N'N???', N'L??o Cai', N'Dao', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 719251284666, '1997-1-11', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (209, N'209', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (206, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 37 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1997-1-11', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 207, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 208, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 209, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Gia ?????t', NULL, '1993-2-1', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 725718300939, '1994-3-2', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (210, N'210', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Thanh Khu??', NULL, '1990-9-8', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 245', 947084209249, '1994-3-2', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (211, N'211', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh B?? Th??i', NULL, '1958-11-4', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 422732330148, '1994-3-2', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (212, N'212', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Tr?????ng Minh', NULL, '2017-4-2', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-4-2', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (213, N'213', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ph????ng Th??', NULL, '2020-8-5', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-8-5', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (214, N'214', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ho??ng D??ng', NULL, '1934-10-22', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Tin L??nh', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 573892684184, '1994-3-2', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (215, N'215', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (210, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 38 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1994-3-2', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 211, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 212, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 213, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 214, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 215, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Th??nh Th??nh', NULL, '1972-5-6', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 698', 738602788003, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (216, N'216', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh Trang', NULL, '1977-7-8', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 971', 704355392261, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (217, N'217', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Huy???n Ph????ng', NULL, '1943-11-15', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 884412074409, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (218, N'218', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Quang C???nh', NULL, '1999-1-13', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 907', 639423908409, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (219, N'219', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Ph????ng T??m', NULL, '2000-11-5', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 272', 967227950739, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (220, N'220', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Tr???ng M???nh', NULL, '1909-4-16', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 880074837490, '2015-6-27', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (221, N'221', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (216, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 39 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2015-6-27', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 217, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 218, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 219, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 220, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 221, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? S??n H??ng', NULL, '1980-2-20', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 449', 271743779395, '2019-2-9', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (222, N'222', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ph????ng Trang', NULL, '1979-2-9', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 725', 769963770731, '2019-2-9', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (223, N'223', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? B?? Ho??ng', NULL, '1946-4-3', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 597443258626, '2019-2-9', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (224, N'224', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ng???c Y???n', NULL, '2010-6-12', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 358', NULL, '2019-2-9', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (225, N'225', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Th??nh Lu??n', NULL, '1915-11-25', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 000626530487, '2019-2-9', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (226, N'226', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (222, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 40 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2019-2-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 223, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 224, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 225, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 226, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ph????ng Huy???n', NULL, '1970-3-25', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 523', 564899598206, '1990-4-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (227, N'227', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? S??n S??n', NULL, '1971-6-2', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 815', 824575697136, '1990-4-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (228, N'228', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Lan', NULL, '1936-7-7', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 211177939972, '1990-4-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (229, N'229', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? V??n Nam', NULL, '1912-7-10', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 785268979841, '1990-4-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (230, N'230', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ph????ng Mai', NULL, '1902-9-19', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 136220390223, '1990-4-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (231, N'231', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (227, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 41 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1990-4-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 228, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 229, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 230, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 231, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H????ng Linh', NULL, '1986-3-20', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 924', 911979236825, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (232, N'232', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??nh ?????t', NULL, '1990-8-17', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 615178270492, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (233, N'233', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy Th??nh', NULL, '1956-3-20', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 293542755657, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (234, N'234', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Mai Giang', NULL, '1960-6-5', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 889', 368194580654, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (235, N'235', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? V??n B???o', NULL, '2019-4-13', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (236, N'236', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Minh Anh', NULL, '2016-1-21', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 779', NULL, '2021-10-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (237, N'237', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (232, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 42 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2021-10-25', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 233, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 234, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 235, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 236, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 237, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H????ng Huy???n', NULL, '1986-1-13', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 990', 753551317631, '2017-10-18', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (238, N'238', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Thanh H??ng', NULL, '1990-3-24', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 298', 495843452650, '2017-10-18', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (239, N'239', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Ho??ng H???i', NULL, '1957-10-22', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 703379455814, '2017-10-18', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (240, N'240', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Nh???t Hi???u', NULL, '2019-3-22', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-3-22', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (241, N'241', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Kh??nh Ph????ng', NULL, '2014-8-2', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Ph???t Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 277', NULL, '2017-10-18', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (242, N'242', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (238, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 43 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-10-18', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 239, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 240, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 241, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 242, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Nh???t D??ng', NULL, '1970-1-14', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 381', 712515427186, '2002-9-9', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (243, N'243', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh Y???n', NULL, '1973-11-24', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 830', 925844361537, '2002-9-9', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (244, N'244', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o S??n Kh??i', NULL, '1999-11-21', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 845', 081075817756, '2002-9-9', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (245, N'245', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Xu??n T??m', NULL, '1919-5-8', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 125212539036, '2002-9-9', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (246, N'246', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (243, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 44 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2002-9-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 244, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 245, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 246, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??? H????ng', NULL, '1971-11-6', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 362', 940971629248, '1992-11-26', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (247, N'247', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Tr???ng ?????t', NULL, '1975-9-11', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 138', 655835090700, '1992-11-26', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (248, N'248', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Huy???n Ly', NULL, '2001-1-21', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'Tr?????ng ?????i h???c 749', 106790530127, '2001-1-21', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (249, N'249', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (247, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 45 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1992-11-26', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (45, 248, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (45, 249, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Huy???n Minh', NULL, '1976-3-10', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 948', 614511220764, '1993-5-23', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (250, N'250', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ho??ng M???nh', NULL, '1974-7-16', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 116', 037863483670, '1993-5-23', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (251, N'251', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Minh', NULL, '1949-3-4', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 775907573136, '1993-5-23', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (252, N'252', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Cao Kh??i', NULL, '1920-8-20', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 758202186575, '1993-5-23', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (253, N'253', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Di???u Oanh', NULL, '1924-10-16', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 818983456257, '1993-5-23', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (254, N'254', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (250, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 46 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-5-23', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 251, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 252, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 253, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 254, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Kh??nh', NULL, '1972-9-3', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 453', 890068421536, '2012-11-25', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (255, N'255', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H???i L????ng', NULL, '1967-11-7', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 769', 204366465945, '2012-11-25', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (256, N'256', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (255, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 47 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2012-11-25', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (47, 256, N'Ch???ng');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Di???u Trang', NULL, '1989-8-3', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 958', 843608191449, '1994-5-18', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (257, N'257', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Trung T??ng', NULL, '1984-5-20', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 123', 664962592492, '1994-5-18', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (258, N'258', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Duy Th??nh', NULL, '1961-9-21', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 323', 088024076291, '1994-5-18', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (259, N'259', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Minh Nhi', NULL, '1962-4-18', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 313', 607320995392, '1994-5-18', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (260, N'260', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? H???i ?????c', NULL, '2014-8-25', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 355', NULL, '2014-8-25', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (261, N'261', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Minh Th??i', NULL, '1922-1-25', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 734069802608, '1994-5-18', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (262, N'262', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (257, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 48 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1994-5-18', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 258, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 259, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 260, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 261, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 262, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Nh???t Tr?????ng', NULL, '1980-3-9', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 673', 572782220415, '1993-9-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (263, N'263', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Thu Huy???n', NULL, '1979-7-24', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 188', 275309996775, '1993-9-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (264, N'264', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy Hi???n', NULL, '1952-7-25', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 584248185090, '1993-9-22', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (265, N'265', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Trung H??ng', NULL, '2008-2-4', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 951', 271226977851, '2008-2-4', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (266, N'266', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (263, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 49 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-9-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 264, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 265, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 266, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Kh??nh Th??', NULL, '1985-5-1', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 690', 182308759046, '2005-11-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (267, N'267', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Nh???t Kh??i', NULL, '1981-4-2', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 730', 483809533588, '2005-11-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (268, N'268', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? H???i ?????c', NULL, '1952-10-4', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 665640034156, '2005-11-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (269, N'269', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Di???u Oanh', NULL, '1954-1-8', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 826085702387, '2005-11-15', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (270, N'270', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? B???o Mai', NULL, '2010-10-17', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 801', NULL, '2010-10-17', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (271, N'271', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (267, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 50 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2005-11-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 268, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 269, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 270, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 271, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Huy???n Anh', NULL, '1994-7-21', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 338', 824306049172, '1994-7-21', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (272, N'272', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Cao C???nh', NULL, '1995-1-4', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 964', 863792628990, '1995-1-4', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (273, N'273', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Mai Khu??', NULL, '1967-5-3', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 429', 866008626199, '1991-10-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (274, N'274', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Cao L???c', NULL, '2018-2-5', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2018-2-5', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (275, N'275', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Mai Ly', NULL, '1940-8-4', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 716151671141, '1991-10-22', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (276, N'276', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (272, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 51 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1991-10-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 273, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 274, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 275, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 276, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ho??ng Minh', NULL, '1994-10-13', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 179', 333628737373, '2001-4-10', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (277, N'277', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Huy???n Anh', NULL, '1996-8-22', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 989', 226835713610, '2001-4-10', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (278, N'278', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ph????ng Nhi', NULL, '1964-7-10', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 527', 553533993198, '2001-4-10', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (279, N'279', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ng???c Trang', NULL, '2017-11-5', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-11-5', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (280, N'280', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Mai Giang', NULL, '1935-5-3', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 353627338304, '2001-4-10', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (281, N'281', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (277, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 52 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2001-4-10', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 278, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 279, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 280, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 281, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Tr???ng C???nh', NULL, '1970-5-3', N'B???c Ninh', N'Nam', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 617', 952352735627, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (282, N'282', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Qu???nh Khu??', NULL, '1971-7-22', N'B???c Ninh', N'N???', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 627', 587552036462, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (283, N'283', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Quang Hi???n', NULL, '1944-3-18', N'B???c Ninh', N'Nam', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 664697513784, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (284, N'284', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Ng???c Trang', NULL, '1942-10-12', N'B???c Ninh', N'N???', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 450812845048, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (285, N'285', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Duy Minh', NULL, '2002-3-16', N'B???c Ninh', N'Nam', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 425', 997291954701, '2002-3-16', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (286, N'286', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??? Ph????ng', NULL, '2003-2-9', N'B???c Ninh', N'N???', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'Tr?????ng ?????i h???c 586', 771332100555, '2003-2-9', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (287, N'287', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Duy Long', NULL, '1911-2-5', N'B???c Ninh', N'Nam', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 246150955164, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (288, N'288', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Di???u Huy???n', NULL, '1906-2-21', N'B???c Ninh', N'N???', N'B???c Ninh', N'T??y', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 021230408944, '1997-4-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (289, N'289', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (282, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 53 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1997-4-12', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 283, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 284, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 285, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 286, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 287, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 288, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 289, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng Ly', NULL, '1981-3-5', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 563', 821323696558, '2003-9-2', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (290, N'290', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ho??ng Ho??ng', NULL, '1979-11-24', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 815', 255928538400, '2003-9-2', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (291, N'291', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Huy???n Huy???n', NULL, '1949-7-22', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 576890932501, '2003-9-2', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (292, N'292', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh M???nh', NULL, '1921-8-3', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 168954054438, '2003-9-2', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (293, N'293', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (290, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 54 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2003-9-2', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 291, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 292, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 293, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Th??nh T??ng', NULL, '1994-2-13', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 576', 648285448209, '2008-6-21', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (294, N'294', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n H????ng T??m', NULL, '1996-4-18', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 113', 346429959175, '2008-6-21', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (295, N'295', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n ?????c M???nh', NULL, '1964-11-22', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 268', 261228619276, '2008-6-21', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (296, N'296', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Kh??nh Ph????ng', NULL, '1959-5-5', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 619', 663599177606, '2008-6-21', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (297, N'297', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n ????ng ?????t', NULL, '2020-9-13', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-9-13', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (298, N'298', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n B???o Ph????ng', NULL, '1924-6-13', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 230459032545, '2008-6-21', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (299, N'299', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (294, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 55 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-6-21', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 295, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 296, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 297, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 298, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 299, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh Lan', NULL, '1991-10-19', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 991', 328302149902, '1998-7-12', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (300, N'300', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Gia Chi???n', NULL, '1995-11-1', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 652024089836, '1998-7-12', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (301, N'301', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Gia Minh', NULL, '1962-3-5', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 205416428420, '1998-7-12', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (302, N'302', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Qu???nh Huy???n', NULL, '1958-3-20', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 800374160644, '1998-7-12', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (303, N'303', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o B?? Long', NULL, '2021-10-20', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-10-20', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (304, N'304', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o H????ng Trang', NULL, '2020-8-4', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-8-4', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (305, N'305', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Tr?????ng ?????c', NULL, '1926-5-20', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 374638706379, '1998-7-12', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (306, N'306', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (300, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 56 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1998-7-12', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 301, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 302, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 303, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 304, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 305, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 306, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Di???u Mai', NULL, '1973-2-15', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 420', 081166947503, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (307, N'307', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thanh Minh', NULL, '1969-8-6', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 549', 711722952052, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (308, N'308', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng ?????c M???nh', NULL, '1945-11-7', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 508064534795, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (309, N'309', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng H????ng Huy???n', NULL, '1942-5-23', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 894548560675, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (310, N'310', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Xu??n Minh', NULL, '2007-4-17', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 729', 764211045060, '2007-4-17', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (311, N'311', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Mai Huy???n', NULL, '2002-5-5', N'Th??i B??nh', N'N???', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 267', 639126671784, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (312, N'312', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??nh Chi???n', NULL, '1921-6-16', N'Th??i B??nh', N'Nam', N'Th??i B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 391057603516, '2003-3-16', N'Th??i B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (313, N'313', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (307, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 57 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2003-3-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 308, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 309, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 310, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 311, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 312, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 313, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B???o Anh', NULL, '1982-2-27', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 375', 292540107222, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (314, N'314', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr???ng Nh???t', NULL, '1977-3-3', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 853', 336015498419, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (315, N'315', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??nh H??ng', NULL, '1947-1-8', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 308185985650, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (316, N'316', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thu Anh', NULL, '1947-4-1', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 326229111772, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (317, N'317', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H???i Th??i', NULL, '1915-3-20', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 540721570150, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (318, N'318', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Kh??nh Kh??nh', NULL, '1927-1-13', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 044402078758, '1996-6-25', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (319, N'319', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (314, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 58 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1996-6-25', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 315, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 316, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 317, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 318, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 319, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n H????ng Ph????ng', NULL, '1988-6-3', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 601595799017, '2021-4-5', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (320, N'320', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Ho??ng H??ng', NULL, '1991-2-23', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 326', 432852267333, '2021-4-5', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (321, N'321', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Thanh Khu??', NULL, '1958-4-9', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 922', 103351637253, '2021-4-5', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (322, N'322', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Minh H??', NULL, '2021-11-12', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-11-12', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (323, N'323', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (320, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 59 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2021-4-5', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 321, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 322, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 323, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr?????ng Phong', NULL, '1970-4-24', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 914', 881179107964, '1991-9-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (324, N'324', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B???o T??m', NULL, '1971-4-13', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 529', 445583179195, '1991-9-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (325, N'325', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Qu???nh Huy???n', NULL, '1937-5-8', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 039763502541, '1991-9-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (326, N'326', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Nh???t L??m', NULL, '1995-2-25', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 564', 180454619604, '1995-2-25', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (327, N'327', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng Y???n', NULL, '2001-9-8', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 196', 565738268280, '2001-9-8', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (328, N'328', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? V??n Kh??i', NULL, '1905-1-25', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 412462843215, '1991-9-4', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (329, N'329', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (324, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 60 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1991-9-4', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 325, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 326, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 327, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 328, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 329, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Qu???nh Linh', NULL, '1986-11-10', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 548', 904124371989, '2008-6-5', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (330, N'330', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Duy Bi???n', NULL, '1985-1-22', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 708', 179182016398, '2008-6-5', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (331, N'331', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Nh???t Kh??i', NULL, '1952-11-16', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 734325397523, '2008-6-5', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (332, N'332', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Th??nh Nh???t', NULL, '2014-1-24', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 168', NULL, '2014-1-24', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (333, N'333', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Gia Minh', NULL, '1918-5-16', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 319591941811, '2008-6-5', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (334, N'334', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (330, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 61 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-6-5', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 331, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 332, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 333, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 334, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng Kh??nh', NULL, '1992-5-4', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 416', 805757959128, '2000-3-23', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (335, N'335', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh Chi???n', NULL, '1991-1-2', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 738', 193737556062, '2000-3-23', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (336, N'336', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Nam S??n', NULL, '1966-11-11', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 363', 469261622635, '2000-3-23', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (337, N'337', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thu H????ng', NULL, '1961-8-6', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 419', 936292442472, '2000-3-23', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (338, N'338', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Huy???n Linh', NULL, '2021-7-2', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2021-7-2', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (339, N'339', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n Ph????ng', NULL, '1936-10-3', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'B?? La M??n', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 853138099796, '2000-3-23', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (340, N'340', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (335, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 62 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2000-3-23', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 336, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 337, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 338, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 339, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 340, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Nam T??ng', NULL, '1977-8-7', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 144774435143, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (341, N'341', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Th??? Ph????ng', NULL, '1975-8-7', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 952722927459, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (342, N'342', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ph????ng Y???n', NULL, '1942-6-18', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 008656333547, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (343, N'343', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh V??n H??ng', NULL, '2010-2-17', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 594', NULL, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (344, N'344', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Thu Ph????ng', NULL, '2009-5-15', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 244', NULL, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (345, N'345', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh V??n T??ng', NULL, '1926-9-10', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 219755739283, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (346, N'346', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Minh Kh??nh', NULL, '1919-1-3', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 542371081007, '2018-5-27', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (347, N'347', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (341, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 63 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2018-5-27', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 342, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 343, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 344, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 345, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 346, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 347, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Ho??ng Long', NULL, '1985-4-20', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 974', 505796878824, '1990-6-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (348, N'348', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thanh Ph????ng', NULL, '1983-9-20', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 726', 399037759381, '1990-6-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (349, N'349', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh ?????t', NULL, '1953-9-9', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 308791045124, '1990-6-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (350, N'350', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Huy???n Oanh', NULL, '2018-2-3', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2018-2-3', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (351, N'351', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (348, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 64 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1990-6-5', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 349, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 350, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 351, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Quang Ki??n', NULL, '1980-1-20', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 333', 150932575805, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (352, N'352', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ph????ng H??', NULL, '1984-5-4', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 944', 182234588953, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (353, N'353', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Nh???t Bi???n', NULL, '1950-9-8', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 738312068102, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (354, N'354', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Qu???nh H????ng', NULL, '1950-8-26', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 841498900570, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (355, N'355', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Duy ?????c', NULL, '2010-10-16', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 209', NULL, '2010-10-16', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (356, N'356', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Xu??n H??', NULL, '2011-10-27', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 510', NULL, '2011-10-27', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (357, N'357', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Gia Qu???c', NULL, '1914-9-9', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 532692051865, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (358, N'358', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Kh??nh Y???n', NULL, '1915-2-5', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 174950097727, '1990-1-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (359, N'359', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (352, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 65 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1990-1-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 353, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 354, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 355, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 356, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 357, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 358, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 359, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? V??n C???nh', NULL, '1980-5-8', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 988', 530165820786, '2002-11-10', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (360, N'360', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Huy???n H??', NULL, '1980-3-21', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 954', 499981140821, '2002-11-10', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (361, N'361', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? V??n L???c', NULL, '1954-9-26', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 452806827549, '2002-11-10', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (362, N'362', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? S??n D??ng', NULL, '2008-5-1', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 373', 351768114798, '2008-5-1', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (363, N'363', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Mai Huy???n', NULL, '1918-7-7', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'H???i Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 771123656098, '2002-11-10', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (364, N'364', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (360, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 66 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2002-11-10', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 361, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 362, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 363, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 364, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Gia L????ng', NULL, '1990-7-17', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 449', 817425875751, '2012-9-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (365, N'365', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Xu??n T??m', NULL, '1987-3-3', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 562', 203220382461, '2012-9-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (366, N'366', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Th??nh Minh', NULL, '1961-5-18', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 361', 091290308870, '2012-9-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (367, N'367', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Tr???ng Nguy??n', NULL, '1927-2-19', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 310352320636, '2012-9-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (368, N'368', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (365, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 67 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2012-9-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 366, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 367, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 368, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh ?????c D??ng', NULL, '1978-8-8', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 408885224870, '2006-5-3', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (369, N'369', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Qu???nh H??', NULL, '1975-11-7', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 313', 037600726700, '2006-5-3', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (370, N'370', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh S??n M???nh', NULL, '1943-1-13', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 799275754507, '2006-5-3', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (371, N'371', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Mai Nhi', NULL, '2012-8-1', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 292', NULL, '2012-8-1', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (372, N'372', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Th??nh Phong', NULL, '1925-9-25', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'M??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 806394381194, '2006-5-3', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (373, N'373', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (369, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 68 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-5-3', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 370, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 371, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 372, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 373, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Huy???n Kh??nh', NULL, '1979-11-12', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 122', 592671660095, '2006-4-22', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (374, N'374', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Tr???ng Th??nh', NULL, '1980-8-23', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 592', 897087843901, '2006-4-22', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (375, N'375', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? ????ng T??ng', NULL, '2009-3-20', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 406', NULL, '2009-3-20', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (376, N'376', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Minh Linh', NULL, '2006-1-17', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THPT 368', 252857430847, '2006-4-22', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (377, N'377', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy C???nh', NULL, '1910-10-16', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 774708432578, '2006-4-22', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (378, N'378', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (374, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 69 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-4-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 375, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 376, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 377, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 378, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Huy???n H??', NULL, '1993-4-25', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 602', 550513137865, '2005-8-11', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (379, N'379', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Tr?????ng Minh', NULL, '1990-6-23', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 696', 614576312508, '2005-8-11', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (380, N'380', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H???i Ki??n', NULL, '1958-2-16', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 849', 367572309784, '2005-8-11', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (381, N'381', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Di???u T??m', NULL, '1959-2-3', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 713', 000371048992, '2005-8-11', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (382, N'382', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Minh Hi???n', NULL, '2015-2-2', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 906', NULL, '2015-2-2', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (383, N'383', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (379, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 70 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2005-8-11', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 380, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 381, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 382, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 383, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Th??? H????ng', NULL, '1984-10-3', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 434', 962076704893, '2006-10-12', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (384, N'384', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Minh M???nh', NULL, '1984-1-18', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 483', 263030659660, '2006-10-12', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (385, N'385', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Huy???n Ph????ng', NULL, '1955-8-11', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 945225430153, '2006-10-12', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (386, N'386', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Minh Linh', NULL, '2009-10-5', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 994', NULL, '2009-10-5', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (387, N'387', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Tr???ng Minh', NULL, '1927-6-24', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 011120164635, '2006-10-12', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (388, N'388', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Kh??nh Y???n', NULL, '1914-2-8', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 582184738566, '2006-10-12', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (389, N'389', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (384, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 71 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-10-12', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 385, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 386, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 387, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 388, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 389, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? S??n Kh??i', NULL, '1986-7-1', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 873', 769649592680, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (390, N'390', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ng???c Linh', NULL, '1981-8-27', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 250', 239911321547, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (391, N'391', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??nh Th??nh', NULL, '1952-11-12', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 098853253525, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (392, N'392', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Nhi', NULL, '1951-5-12', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 270192861879, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (393, N'393', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Tr???ng Th??i', NULL, '2012-1-3', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 200', NULL, '2012-1-3', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (394, N'394', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Minh Kh??i', NULL, '1921-5-13', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 543658851821, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (395, N'395', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Thanh Trang', NULL, '1928-2-23', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 007102627406, '2008-5-22', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (396, N'396', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (390, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 72 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-5-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 391, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 392, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 393, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 394, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 395, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 396, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Thu Y???n', NULL, '1972-3-12', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 981', 467991800870, '2017-6-15', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (397, N'397', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng Linh', NULL, '1974-11-4', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 602', 014176293642, '2017-6-15', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (398, N'398', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng Tr?????ng', NULL, '1940-8-21', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 747373196659, '2017-6-15', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (399, N'399', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (397, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 73 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-6-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (73, 398, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (73, 399, N'B???');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ho??ng Th??i', NULL, '1979-9-6', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 342170038253, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (400, N'400', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Di???u Anh', NULL, '1975-8-13', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 153', 469330438121, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (401, N'401', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? B?? L??m', NULL, '1945-2-25', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 126638630542, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (402, N'402', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ng???c Minh', NULL, '1946-11-4', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 536731823751, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (403, N'403', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Thanh L??m', NULL, '1918-3-15', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 831945328991, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (404, N'404', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Xu??n T??m', NULL, '1913-9-12', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 112487633738, '1995-1-6', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (405, N'405', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (400, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 74 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1995-1-6', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 401, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 402, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 403, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 404, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 405, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr?????ng Th???ng', NULL, '1975-10-4', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 409', 306198955406, '1998-2-11', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (406, N'406', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Minh', NULL, '1978-3-2', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 452', 560493034600, '1998-2-11', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (407, N'407', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? V??n Tr?????ng', NULL, '1946-2-24', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 200086649947, '1998-2-11', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (408, N'408', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thu H????ng', NULL, '1945-7-9', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 366817833739, '1998-2-11', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (409, N'409', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??nh H???i', NULL, '2003-9-3', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 938', 118157775583, '2003-9-3', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (410, N'410', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Linh', NULL, '1906-2-5', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 449910636275, '1998-2-11', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (411, N'411', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (406, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 75 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1998-2-11', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 407, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 408, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 409, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 410, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 411, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Th??nh B???o', NULL, '1993-7-14', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 681', 982400883569, '2009-3-20', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (412, N'412', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Thu Giang', NULL, '1994-3-4', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 570', 922778204460, '2009-3-20', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (413, N'413', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Tr???ng M???nh', NULL, '1966-6-20', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 299', 134980401879, '2009-3-20', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (414, N'414', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Quang L????ng', NULL, '1937-4-16', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 155380075556, '2009-3-20', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (415, N'415', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n H????ng Ly', NULL, '1934-2-10', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 990282322943, '2009-3-20', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (416, N'416', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (412, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 76 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2009-3-20', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 413, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 414, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 415, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 416, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Tr???ng Nh???t', NULL, '1978-6-9', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 305', 687672096624, '2006-6-9', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (417, N'417', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Minh Lan', NULL, '1975-3-7', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 345', 621117164377, '2006-6-9', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (418, N'418', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Xu??n M???nh', NULL, '1947-7-19', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 455248785334, '2006-6-9', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (419, N'419', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Xu??n Th??', NULL, '1948-3-27', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 522229484191, '2006-6-9', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (420, N'420', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Mai Trang', NULL, '2009-9-26', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 182', NULL, '2009-9-26', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (421, N'421', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Xu??n H????ng', NULL, '1926-8-20', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 832117533437, '2006-6-9', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (422, N'422', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (417, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 77 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-6-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 418, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 419, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 420, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 421, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 422, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thanh H???i', NULL, '1979-8-1', N'L??o Cai', N'Nam', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 107', 506192120022, '2000-2-26', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (423, N'423', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thu Y???n', NULL, '1979-5-11', N'L??o Cai', N'N???', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 519', 898430980420, '2000-2-26', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (424, N'424', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh C???nh', NULL, '1952-7-10', N'L??o Cai', N'Nam', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 933922229022, '2000-2-26', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (425, N'425', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ng???c Y???n', NULL, '1948-1-8', N'L??o Cai', N'N???', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 468335309040, '2000-2-26', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (426, N'426', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Nh???t', NULL, '2011-8-7', N'L??o Cai', N'Nam', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 259', NULL, '2011-8-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (427, N'427', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Minh', NULL, '2010-2-12', N'L??o Cai', N'N???', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 860', NULL, '2010-2-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (428, N'428', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Tr???ng ?????t', NULL, '1928-11-2', N'L??o Cai', N'Nam', N'L??o Cai', N'N??ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 502092347578, '2000-2-26', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (429, N'429', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (423, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 78 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2000-2-26', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 424, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 425, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 426, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 427, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 428, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 429, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B?? Th??nh', NULL, '1971-1-26', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 897035244082, '1992-5-22', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (430, N'430', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n Mai', NULL, '1976-9-17', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 938', 897334229643, '1992-5-22', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (431, N'431', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n Giang', NULL, '1937-9-21', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 261816686612, '1992-5-22', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (432, N'432', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Quang L????ng', NULL, '2000-3-9', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 893', 392541870339, '2000-3-9', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (433, N'433', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Y???n', NULL, '2001-10-18', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 336', 450780237267, '2001-10-18', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (434, N'434', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Trung ?????t', NULL, '1914-5-16', N'Ninh B??nh', N'Nam', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 524917703033, '1992-5-22', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (435, N'435', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Th??', NULL, '1913-7-27', N'Ninh B??nh', N'N???', N'Ninh B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 185656766684, '1992-5-22', N'Ninh B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (436, N'436', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (430, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 79 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1992-5-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 431, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 432, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 433, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 434, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 435, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 436, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Nam C???nh', NULL, '1970-11-25', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 951', 542755062754, '1996-7-19', N'Y??n B??i', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (437, N'437', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Huy???n Huy???n', NULL, '1971-10-25', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 723', 190537313472, '1996-7-19', N'Y??n B??i', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (438, N'438', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Trung ?????t', NULL, '1939-6-1', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 039978514264, '1996-7-19', N'Y??n B??i', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (439, N'439', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ph????ng Anh', NULL, '1935-5-2', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 653520330596, '1996-7-19', N'Y??n B??i', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (440, N'440', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n Lan', NULL, '1911-1-8', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 141163083660, '1996-7-19', N'Y??n B??i', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (441, N'441', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (437, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 80 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1996-7-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 438, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 439, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 440, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 441, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Th??? H????ng', NULL, '1984-11-9', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 629', 258548890680, '1993-3-20', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (442, N'442', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H???i Th??i', NULL, '1989-9-8', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 062725859447, '1993-3-20', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (443, N'443', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Trung Phong', NULL, '1956-1-7', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 391224116381, '1993-3-20', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (444, N'444', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Xu??n Linh', NULL, '1955-1-6', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 353256380015, '1993-3-20', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (445, N'445', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Quang Bi???n', NULL, '2016-11-16', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 116', NULL, '2016-11-16', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (446, N'446', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (442, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 81 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-3-20', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 443, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 444, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 445, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 446, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Nam H???i', NULL, '1974-7-15', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 889', 674583650281, '2005-3-27', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (447, N'447', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Xu??n Mai', NULL, '1973-1-1', N'B???c Ninh', N'N???', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 356183992396, '2005-3-27', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (448, N'448', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Xu??n Tr?????ng', NULL, '2000-9-16', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 475566229472, '2005-3-27', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (449, N'449', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n ????ng ?????c', NULL, '1919-7-25', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 039987688102, '2005-3-27', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (450, N'450', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (447, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 82 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2005-3-27', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 448, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 449, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 450, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??nh Tr?????ng', NULL, '1992-1-19', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 307', 108240496184, '2008-9-21', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (451, N'451', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Mai Nhi', NULL, '1992-7-15', N'Kh??nh H??a', N'N???', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 370', 118043072640, '2008-9-21', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (452, N'452', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??nh Chi???n', NULL, '1962-8-3', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 181', 133589418833, '2008-9-21', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (453, N'453', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? ?????c ?????t', NULL, '1935-11-24', N'Kh??nh H??a', N'Nam', N'Kh??nh H??a', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 874496551902, '2008-9-21', N'Kh??nh H??a', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (454, N'454', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (451, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 83 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-9-21', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 452, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 453, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 454, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng B?? C???nh', NULL, '1988-7-1', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 322176543342, '1990-8-16', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (455, N'455', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thanh Anh', NULL, '1985-9-19', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 417', 364215117539, '1990-8-16', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (456, N'456', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Th??nh H???i', NULL, '2020-9-18', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-9-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (457, N'457', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Ng???c Nhi', NULL, '2016-7-17', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 590', NULL, '2016-7-17', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (458, N'458', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Tr?????ng Linh', NULL, '1927-7-27', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 205984878688, '1990-8-16', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (459, N'459', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Thu Trang', NULL, '1930-5-12', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 793465706349, '1990-8-16', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (460, N'460', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (455, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 84 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1990-8-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 456, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 457, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 458, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 459, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 460, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? ????ng ?????t', NULL, '1973-9-21', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 478', 864256264443, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (461, N'461', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Khu??', NULL, '1975-9-11', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 972439358641, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (462, N'462', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ng???c Ly', NULL, '1946-6-10', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 543828020273, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (463, N'463', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? V??n Linh', NULL, '1999-1-25', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 359', 221110656923, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (464, N'464', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??nh ?????c', NULL, '1915-10-3', N'Nam ?????nh', N'Nam', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 316368967645, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (465, N'465', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Mai Ly', NULL, '1910-11-13', N'Nam ?????nh', N'N???', N'Nam ?????nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 494325904690, '2006-10-8', N'Nam ?????nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (466, N'466', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (461, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 85 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-10-8', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 462, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 463, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 464, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 465, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 466, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh Ly', NULL, '1989-4-1', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 683', 968294999474, '2015-11-8', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (467, N'467', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Ho??ng Phong', NULL, '1984-3-19', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 946', 709954229477, '2015-11-8', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (468, N'468', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thanh Anh', NULL, '1963-6-2', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 328', 631931501293, '2015-11-8', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (469, N'469', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o ????ng ?????c', NULL, '2019-7-6', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-7-6', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (470, N'470', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thanh Kh??nh', NULL, '2019-4-27', N'V??nh Ph??c', N'N???', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-4-27', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (471, N'471', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thanh Minh', NULL, '1925-5-8', N'V??nh Ph??c', N'Nam', N'V??nh Ph??c', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 810445434701, '2015-11-8', N'V??nh Ph??c', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (472, N'472', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (467, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 86 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2015-11-8', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 468, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 469, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 470, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 471, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 472, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ng???c Lan', NULL, '1977-2-12', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 123', 404709803208, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (473, N'473', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n B?? Lu??n', NULL, '1979-1-10', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 569905041297, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (474, N'474', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n S??n Kh??i', NULL, '1946-6-20', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 506470387741, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (475, N'475', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Xu??n Linh', NULL, '1946-5-24', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 562391068559, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (476, N'476', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Thanh Nam', NULL, '2009-9-18', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 359', NULL, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (477, N'477', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Huy???n Giang', NULL, '2007-1-6', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 469', 121139905510, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (478, N'478', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Thu Nhi', NULL, '1909-2-23', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 962076660866, '2021-3-11', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (479, N'479', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (473, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 87 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2021-3-11', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 474, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 475, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 476, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 477, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 478, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 479, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? V??n T??ng', NULL, '1991-6-8', N'S??n La', N'Nam', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 838', 239401885588, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (480, N'480', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ng???c Linh', NULL, '1986-3-6', N'S??n La', N'N???', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 475', 205204307989, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (481, N'481', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr???ng H???i', NULL, '1958-7-12', N'S??n La', N'Nam', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 309', 697187814668, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (482, N'482', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? B???o Th??', NULL, '1957-8-18', N'S??n La', N'N???', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 416095901193, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (483, N'483', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n C???nh', NULL, '2018-4-8', N'S??n La', N'Nam', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2018-4-8', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (484, N'484', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Tr???ng Qu???c', NULL, '1936-2-10', N'S??n La', N'Nam', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 634296427898, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (485, N'485', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Nhi', NULL, '1930-9-14', N'S??n La', N'N???', N'S??n La', N'S??n D??u', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 628604692066, '2007-4-18', N'S??n La', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (486, N'486', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (480, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 88 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2007-4-18', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 481, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 482, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 483, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 484, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 485, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 486, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thu Y???n', NULL, '1981-11-4', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 652', 386686037978, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (487, N'487', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Trung L????ng', NULL, '1983-11-20', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 201', 988740695911, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (488, N'488', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Cao H??ng', NULL, '1953-7-7', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 845622828326, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (489, N'489', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Di???u Trang', NULL, '1949-4-9', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 656312129143, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (490, N'490', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Th??nh S??n', NULL, '1927-7-4', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 913419444710, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (491, N'491', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh H????ng', NULL, '1926-3-16', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 438045531520, '1995-4-3', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (492, N'492', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (487, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 89 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1995-4-3', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 488, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 489, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 490, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 491, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 492, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Thanh Minh', NULL, '1976-6-26', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 945268992159, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (493, N'493', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nh???t Nam', NULL, '1972-4-24', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 358', 456464852482, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (494, N'494', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i ????ng H???i', NULL, '1945-9-7', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 044304447782, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (495, N'495', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Xu??n Kh??nh', NULL, '1945-4-27', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 547297731933, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (496, N'496', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Di???u T??m', NULL, '2003-8-7', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 760', 924951983464, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (497, N'497', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ho??ng Ki??n', NULL, '1925-11-17', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 396041150389, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (498, N'498', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Th??? Minh', NULL, '1924-3-13', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 882805756780, '2016-3-25', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (499, N'499', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (493, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 90 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2016-3-25', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 494, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 495, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 496, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 497, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 498, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 499, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Tr???ng Th??nh', NULL, '1990-7-7', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 874553936880, '2017-1-24', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (500, N'500', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Di???u Y???n', NULL, '1988-1-10', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 674', 691125204314, '2017-1-24', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (501, N'501', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng B???o Khu??', NULL, '1956-7-21', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 244733696893, '2017-1-24', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (502, N'502', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Tr?????ng H??ng', NULL, '2015-11-4', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 996', NULL, '2017-1-24', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (503, N'503', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Qu???nh Kh??nh', NULL, '2019-11-26', N'Qu???ng Tr???', N'N???', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-11-26', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (504, N'504', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Minh ?????t', NULL, '1926-10-9', N'Qu???ng Tr???', N'Nam', N'Qu???ng Tr???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 174664378027, '2017-1-24', N'Qu???ng Tr???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (505, N'505', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (500, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 91 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-1-24', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 501, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 502, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 503, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 504, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 505, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H????ng Giang', NULL, '1973-7-26', N'B???c Ninh', N'N???', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 210', 486240134850, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (506, N'506', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng Ki??n', NULL, '1974-11-24', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 338', 084252172841, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (507, N'507', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Nh???t Long', NULL, '1939-7-26', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 779062050654, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (508, N'508', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Minh Kh??nh', NULL, '1943-2-9', N'B???c Ninh', N'N???', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 916478592421, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (509, N'509', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Ph????ng', NULL, '2001-8-1', N'B???c Ninh', N'N???', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'Tr?????ng ?????i h???c 572', 662727161703, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (510, N'510', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy Nh???t', NULL, '1905-9-10', N'B???c Ninh', N'Nam', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 845619259918, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (511, N'511', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Kh??nh Anh', NULL, '1903-10-18', N'B???c Ninh', N'N???', N'B???c Ninh', N'Dao', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 823853692090, '2010-3-8', N'B???c Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (512, N'512', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (506, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 92 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2010-3-8', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 507, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 508, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 509, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 510, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 511, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 512, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H???i Chi???n', NULL, '1989-9-22', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 861', 890435009868, '2002-2-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (513, N'513', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Huy???n Huy???n', NULL, '1984-1-16', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 862258122977, '2002-2-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (514, N'514', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Huy???n Y???n', NULL, '1960-4-27', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 850', 601385199803, '2002-2-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (515, N'515', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Trung B???o', NULL, '2020-11-23', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-11-23', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (516, N'516', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Ph????ng H????ng', NULL, '2016-9-11', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 790', NULL, '2016-9-11', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (517, N'517', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Thu Huy???n', NULL, '1931-11-18', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 653734009278, '2002-2-1', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (518, N'518', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (513, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 93 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2002-2-1', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 514, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 515, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 516, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 517, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 518, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Di???u Th??', NULL, '1993-1-9', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 552', 016096877754, '2004-10-14', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (519, N'519', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nh???t Linh', NULL, '1995-3-21', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 658', 493011000607, '2004-10-14', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (520, N'520', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i ?????c Th??i', NULL, '1959-7-15', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 430538296799, '2004-10-14', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (521, N'521', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Ph????ng Trang', NULL, '1960-4-27', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 646', 177137076074, '2004-10-14', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (522, N'522', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Th??? Ph????ng', NULL, '1929-5-24', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 261653843527, '2004-10-14', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (523, N'523', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (519, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 94 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2004-10-14', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 520, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 521, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 522, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 523, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Cao Hi???n', NULL, '1976-11-26', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 596', 799310824397, '2009-4-23', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (524, N'524', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Thu Kh??nh', NULL, '1981-1-16', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 857', 912303721645, '2009-4-23', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (525, N'525', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m B?? ?????c', NULL, '1943-8-10', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 019424607433, '2009-4-23', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (526, N'526', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Qu???nh H??', NULL, '1949-7-13', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 697353200578, '2009-4-23', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (527, N'527', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Minh Ph????ng', NULL, '1915-11-23', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 598824622758, '2009-4-23', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (528, N'528', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (524, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 95 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2009-4-23', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 525, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 526, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 527, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 528, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Kh??nh Ly', NULL, '1991-6-7', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 109', 794954640572, '2011-4-19', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (529, N'529', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Nh???t M???nh', NULL, '1992-3-23', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 810', 691400219094, '2011-4-19', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (530, N'530', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Duy Minh', NULL, '1957-11-14', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 940660330661, '2011-4-19', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (531, N'531', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n H????ng Huy???n', NULL, '1963-10-14', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 154', 530375742434, '2011-4-19', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (532, N'532', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Nh???t Long', NULL, '2022-8-26', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2022-8-26', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (533, N'533', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Thu Kh??nh', NULL, '2017-3-14', N'???? N???ng', N'N???', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-3-14', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (534, N'534', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Quang H??ng', NULL, '1939-7-12', N'???? N???ng', N'Nam', N'???? N???ng', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 341350260372, '2011-4-19', N'???? N???ng', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (535, N'535', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (529, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 96 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2011-4-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 530, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 531, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 532, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 533, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 534, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 535, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Nam', NULL, '1972-9-27', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 849', 599412623011, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (536, N'536', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Kh??nh Ph????ng', NULL, '1974-3-11', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 077202637671, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (537, N'537', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i H???i Nguy??n', NULL, '1941-7-15', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 330723437051, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (538, N'538', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Xu??n Kh??nh', NULL, '2003-10-13', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 774', 835888439804, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (539, N'539', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Cao H???i', NULL, '1916-5-2', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 127764346077, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (540, N'540', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Kh??nh Trang', NULL, '1917-3-27', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 216354899900, '2012-5-21', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (541, N'541', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (536, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 97 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2012-5-21', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 537, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 538, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 539, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 540, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 541, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Minh L????ng', NULL, '1986-4-9', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 672', 302409939725, '1999-6-14', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (542, N'542', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thanh Lan', NULL, '1986-6-10', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 351', 262679234178, '1999-6-14', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (543, N'543', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o V??n Phong', NULL, '1951-7-25', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 308334400754, '1999-6-14', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (544, N'544', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Xu??n Trang', NULL, '1953-10-26', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 807707882441, '1999-6-14', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (545, N'545', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????o Thu Minh', NULL, '2017-8-12', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2017-8-12', N'Qu???ng Ninh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (546, N'546', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (542, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 98 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-6-14', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 543, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 544, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 545, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 546, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Tr?????ng Hi???n', NULL, '1982-3-11', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 658', 277152717725, '2007-11-3', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (547, N'547', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? H????ng', NULL, '1984-5-22', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 969', 917148641891, '2007-11-3', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (548, N'548', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng H??ng', NULL, '1949-4-23', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 209683963446, '2007-11-3', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (549, N'549', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? B???o Ph????ng', NULL, '1949-7-8', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 110569658768, '2007-11-3', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (550, N'550', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy Th??nh', NULL, '2010-4-5', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 903', NULL, '2010-4-5', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (551, N'551', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Oanh', NULL, '2013-6-10', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 336', NULL, '2013-6-10', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (552, N'552', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Thanh Minh', NULL, '1912-9-24', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 456554578179, '2007-11-3', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (553, N'553', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (547, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 99 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2007-11-3', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 548, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 549, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 550, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 551, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 552, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 553, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Nam L???c', NULL, '1989-5-23', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 183', 921054100495, '1997-1-8', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (554, N'554', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Xu??n Huy???n', NULL, '1992-3-13', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 719', 956511843609, '1997-1-8', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (555, N'555', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Kh??nh Linh', NULL, '1958-8-8', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 185', 075450796579, '1997-1-8', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (556, N'556', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Thanh S??n', NULL, '1934-9-9', N'H?? N???i', N'Nam', N'H?? N???i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 352797060497, '1997-1-8', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (557, N'557', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Thanh Anh', NULL, '1926-3-10', N'H?? N???i', N'N???', N'H?? N???i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 860946365781, '1997-1-8', N'H?? N???i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (558, N'558', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (554, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 100 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1997-1-8', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 555, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 556, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 557, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 558, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? S??n Lu??n', NULL, '1978-6-7', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 259', 588527742490, '2017-7-24', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (559, N'559', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Kh??nh Ph????ng', NULL, '1982-9-7', N'Y??n B??i', N'N???', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 536', 332012192629, '2017-7-24', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (560, N'560', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ho??ng ?????t', NULL, '1946-1-10', N'Y??n B??i', N'Nam', N'Y??n B??i', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 005530985819, '2017-7-24', N'Y??n B??i', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (561, N'561', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (559, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 101 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-7-24', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (101, 560, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (101, 561, N'B???');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? B???o Anh', NULL, '1994-7-9', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 971541550308, '2013-11-15', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (562, N'562', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Xu??n Minh', NULL, '1998-8-10', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 474333810875, '2013-11-15', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (563, N'563', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Di???u Trang', NULL, '1961-6-5', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 579', 132691085119, '2013-11-15', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (564, N'564', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Nhi', NULL, '2020-11-16', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2020-11-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (565, N'565', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (562, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 102 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2013-11-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 563, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 564, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 565, N'Con g??i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Th??? Khu??', NULL, '1981-8-3', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 109', 452981278927, '2017-6-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (566, N'566', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Tr???ng D??ng', NULL, '1976-7-14', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 810', 486340449220, '2017-6-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (567, N'567', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Th??nh Hi???n', NULL, '1952-11-15', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 687433794336, '2017-6-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (568, N'568', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n H????ng Khu??', NULL, '2009-8-2', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 255', NULL, '2017-6-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (569, N'569', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ng???c Th??', NULL, '1925-11-5', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 312704199196, '2017-6-22', N'Qu???ng B??nh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (570, N'570', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (566, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 103 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-6-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 567, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 568, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 569, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 570, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H????ng Anh', NULL, '1976-1-27', N'??i???n Bi??n', N'N???', N'??i???n Bi??n', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 962', 598965382577, '1996-10-1', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (571, N'571', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Nam Tr?????ng', NULL, '1975-2-23', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 783597545931, '1996-10-1', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (572, N'572', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng H????ng Mai', NULL, '1943-11-17', N'??i???n Bi??n', N'N???', N'??i???n Bi??n', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 693671629131, '1996-10-1', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (573, N'573', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Xu??n T??m', NULL, '2005-3-20', N'??i???n Bi??n', N'N???', N'??i???n Bi??n', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THPT 677', 244753590823, '2005-3-20', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (574, N'574', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr????ng Cao Minh', NULL, '1921-3-25', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 835980715805, '1996-10-1', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (575, N'575', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (571, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 104 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1996-10-1', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 572, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 573, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 574, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 575, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? H????ng H????ng', NULL, '1980-2-8', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 972', 280427529292, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (576, N'576', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Quang M???nh', NULL, '1980-7-3', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 176', 210181477157, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (577, N'577', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Gia H??ng', NULL, '1951-2-16', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 650926554098, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (578, N'578', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Th??? Ly', NULL, '1948-3-14', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 281768178671, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (579, N'579', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh H??', NULL, '2013-8-12', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 559', NULL, '2013-8-12', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (580, N'580', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Xu??n Lu??n', NULL, '1915-9-17', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 999215671726, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (581, N'581', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Kh??nh Lan', NULL, '1924-11-3', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 587998643481, '2005-4-9', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (582, N'582', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (576, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 105 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2005-4-9', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 577, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 578, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 579, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 580, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 581, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 582, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? ????ng Nh???t', NULL, '1980-3-2', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 730', 153710977663, '2006-2-19', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (583, N'583', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Qu???nh Minh', NULL, '1976-3-26', N'??i???n Bi??n', N'N???', N'??i???n Bi??n', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 608', 405342427908, '2006-2-19', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (584, N'584', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Trung H???i', NULL, '1951-7-23', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 402536460850, '2006-2-19', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (585, N'585', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? H???i L??m', NULL, '1921-9-3', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'M?????ng', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 928740925633, '2006-2-19', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (586, N'586', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (583, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 106 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2006-2-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 584, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 585, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 586, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Huy???n H????ng', NULL, '1982-4-26', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 395454509555, '1992-10-18', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (587, N'587', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n ????ng L????ng', NULL, '1982-7-14', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 570', 781050368604, '1992-10-18', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (588, N'588', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Di???u Oanh', NULL, '1953-4-15', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 032987112672, '1992-10-18', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (589, N'589', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Quang Hi???n', NULL, '2013-11-15', N'H??ng Y??n', N'Nam', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 467', NULL, '2013-11-15', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (590, N'590', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Th??? Ly', NULL, '2015-6-21', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 552', NULL, '2015-6-21', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (591, N'591', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Minh Kh??nh', NULL, '1913-4-7', N'H??ng Y??n', N'N???', N'H??ng Y??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 520671068292, '1992-10-18', N'H??ng Y??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (592, N'592', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (587, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 107 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1992-10-18', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 588, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 589, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 590, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 591, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 592, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Xu??n Khu??', NULL, '1987-2-24', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 255', 370767656252, '2011-6-16', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (593, N'593', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Nam D??ng', NULL, '1987-3-3', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 429', 843697188998, '2011-6-16', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (594, N'594', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Cao Minh', NULL, '1953-6-27', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 506480017782, '2011-6-16', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (595, N'595', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Minh Huy???n', NULL, '1958-9-18', N'H?? Nam', N'N???', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 988238912795, '2011-6-16', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (596, N'596', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Tr???n Tr?????ng B???o', NULL, '1927-4-2', N'H?? Nam', N'Nam', N'H?? Nam', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 549427449311, '2011-6-16', N'H?? Nam', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (597, N'597', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (593, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 108 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2011-6-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 594, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 595, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 596, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 597, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m ????ng C???nh', NULL, '1976-6-5', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 271', 763294143152, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (598, N'598', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Di???u T??m', NULL, '1975-1-16', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 361', 440406129552, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (599, N'599', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Minh Oanh', NULL, '1949-2-19', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 736650382443, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (600, N'600', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Thanh ?????c', NULL, '2006-4-12', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THPT 221', 525343494454, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (601, N'601', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Tr???ng Minh', NULL, '1910-2-13', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 086202478047, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (602, N'602', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Ph???m Di???u Y???n', NULL, '1910-1-20', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Thi??n Ch??a Gi??o', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 288258656680, '2008-4-7', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (603, N'603', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (598, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 109 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2008-4-7', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 599, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 600, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 601, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 602, N'??ng n???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 603, N'B?? n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Ng???c T??m', NULL, '1986-8-8', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 581', 627672545334, '2007-8-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (604, N'604', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Minh L???c', NULL, '1989-1-6', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 225', 368431087000, '2007-8-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (605, N'605', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Duy L??m', NULL, '1956-2-8', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 328671630719, '2007-8-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (606, N'606', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Kh??nh H??', NULL, '1958-11-26', N'L??o Cai', N'N???', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? s??', N'C??ng ty TNHH 188', 261864617125, '2007-8-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (607, N'607', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Duy L??m', NULL, '1916-9-3', N'L??o Cai', N'Nam', N'L??o Cai', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 740973547605, '2007-8-12', N'L??o Cai', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (608, N'608', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (604, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 110 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2007-8-12', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 605, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 606, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 607, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 608, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n H????ng Ph????ng', NULL, '1992-11-16', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 426', 775248028588, '2003-5-19', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (609, N'609', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n Nam H??ng', NULL, '1996-9-7', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 290', 495511120234, '2003-5-19', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (610, N'610', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n B?? H??ng', NULL, '2019-7-5', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-7-5', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (611, N'611', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguy???n H????ng T??m', NULL, '1925-10-19', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 874184971238, '2003-5-19', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (612, N'612', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (609, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 111 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2003-5-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 610, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 611, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 612, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ho??ng B???o', NULL, '1982-3-9', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 966', 033816882441, '2020-6-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (613, N'613', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Mai T??m', NULL, '1987-7-11', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 341', 143836295370, '2020-6-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (614, N'614', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Xu??n Mai', NULL, '1948-9-7', N'TP. H??? Ch?? Minh', N'N???', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 887832474697, '2020-6-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (615, N'615', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh ?????c ?????t', NULL, '2011-9-27', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 376', NULL, '2020-6-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (616, N'616', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Thanh Phong', NULL, '1917-10-21', N'TP. H??? Ch?? Minh', N'Nam', N'TP. H??? Ch?? Minh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 077538856640, '2020-6-16', N'TP. H??? Ch?? Minh', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (617, N'617', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (613, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 112 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2020-6-16', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 614, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 615, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 616, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 617, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh Th??', NULL, '1983-4-9', N'??i???n Bi??n', N'N???', N'??i???n Bi??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 170', 493165463072, '2004-5-2', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (618, N'618', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Nh???t Chi???n', NULL, '1981-8-7', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 537050132992, '2004-5-2', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (619, N'619', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Minh B???o', NULL, '1952-2-18', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 758741706143, '2004-5-2', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (620, N'620', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'B??i Tr???ng L???c', NULL, '1922-3-2', N'??i???n Bi??n', N'Nam', N'??i???n Bi??n', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 476446143718, '2004-5-2', N'??i???n Bi??n', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (621, N'621', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (618, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 113 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2004-5-2', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 619, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 620, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 621, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh Lan', NULL, '1973-1-26', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 719588748257, '1999-1-22', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (622, N'622', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Ho??ng Chi???n', NULL, '1968-11-9', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 636416244797, '1999-1-22', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (623, N'623', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Kh??nh Th??', NULL, '1942-5-8', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 782393464174, '1999-1-22', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (624, N'624', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Cao Bi???n', NULL, '2007-4-15', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 928', 337979707665, '2007-4-15', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (625, N'625', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Minh Anh', NULL, '2001-2-20', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Sinh vi??n', N'?????i h???c 837', 427667055239, '2001-2-20', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (626, N'626', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? V??n S??n', NULL, '1921-1-18', N'Ph?? Th???', N'Nam', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 021320022018, '1999-1-22', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (627, N'627', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'L?? Thanh Khu??', NULL, '1913-5-20', N'Ph?? Th???', N'N???', N'Ph?? Th???', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 550748191628, '1999-1-22', N'Ph?? Th???', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (628, N'628', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (622, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 114 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1999-1-22', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 623, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 624, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 625, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 626, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 627, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 628, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ho??ng Th???ng', NULL, '1984-7-26', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 412', 873233117587, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (629, N'629', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Th??? Ly', NULL, '1989-7-22', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 954', 260772489891, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (630, N'630', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Nam H??ng', NULL, '1955-9-5', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 426688353508, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (631, N'631', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Huy???n Nhi', NULL, '1954-3-9', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 547509522643, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (632, N'632', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Thanh H???i', NULL, '2010-6-25', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 951', NULL, '2010-6-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (633, N'633', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Xu??n Ph????ng', NULL, '2013-4-21', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 645', NULL, '2013-4-21', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (634, N'634', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Cao Hi???u', NULL, '1927-11-6', N'C???n Th??', N'Nam', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 373667877189, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (635, N'635', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Mai Ly', NULL, '1916-2-16', N'C???n Th??', N'N???', N'C???n Th??', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 007198537328, '1991-1-25', N'C???n Th??', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (636, N'636', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (629, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 115 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1991-1-25', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 630, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 631, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 632, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 633, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 634, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 635, N'??ng ngo???i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 636, N'B?? ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Xu??n H??', NULL, '1984-3-19', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 554', 714014162799, '1993-1-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (637, N'637', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Duy Ki??n', NULL, '1981-4-7', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 807908105415, '1993-1-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (638, N'638', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Tr?????ng Minh', NULL, '1950-2-22', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 058748389849, '1993-1-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (639, N'639', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Huy???n Mai', NULL, '1956-7-25', N'Tuy??n Quang', N'N???', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 077616457765, '1993-1-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (640, N'640', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh Ho??ng D??ng', NULL, '2012-9-23', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 953', NULL, '2012-9-23', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (641, N'641', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'??inh ????ng L???c', NULL, '1931-5-26', N'Tuy??n Quang', N'Nam', N'Tuy??n Quang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 793424613939, '1993-1-18', N'Tuy??n Quang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (642, N'642', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (637, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 116 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '1993-1-18', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 638, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 639, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 640, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 641, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 642, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Kh??nh Anh', NULL, '1978-6-3', N'B???c Giang', N'N???', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 813148554814, '2014-6-15', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (643, N'643', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Ho??ng T??ng', NULL, '1975-9-20', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 720', 800575275102, '2014-6-15', N'B???c Giang', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (644, N'644', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Trung Qu???c', NULL, '1944-3-14', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 640308992012, '2014-6-15', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (645, N'645', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Th??nh Linh', NULL, '2007-2-4', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 343', 845527970325, '2014-6-15', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (646, N'646', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Tr?????ng ?????c', NULL, '1915-1-1', N'B???c Giang', N'Nam', N'B???c Giang', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 093466498697, '2014-6-15', N'B???c Giang', N'Th?????ng tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (647, N'647', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (643, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 117 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2014-6-15', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 644, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 645, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 646, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 647, N'??ng n???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Nh???t Linh', NULL, '1987-7-3', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 458972752473, '2000-11-19', N'S??n La', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (648, N'648', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Xu??n H????ng', NULL, '1983-6-13', N'S??n La', N'N???', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', 557091470306, '2000-11-19', N'S??n La', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (649, N'649', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Quang Th??nh', NULL, '1954-6-25', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 300511753149, '2000-11-19', N'S??n La', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (650, N'650', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'????? Nh???t S??n', NULL, '2019-7-20', N'S??n La', N'Nam', N'S??n La', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Kh??ng', N'Kh??ng', NULL, '2019-7-20', N'S??n La', N'T???m v???ng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (651, N'651', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (648, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 118 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2000-11-19', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 649, N'V???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 650, N'B???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 651, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng B???o H????ng', NULL, '1985-1-14', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 359', 307967604249, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (652, N'652', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Cao S??n', NULL, '1982-9-18', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'B???o v???', N'C??ng ty TNHH 740', 399472275777, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (653, N'653', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng H????ng Trang', NULL, '1959-11-25', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'K??? to??n', N'C??ng ty TNHH 340', 812672149956, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (654, N'654', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Quang Qu???c', NULL, '2010-5-23', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng THCS 795', NULL, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (655, N'655', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Ng???c Ph????ng', NULL, '2014-5-25', N'Qu???ng Ninh', N'N???', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H???c sinh', N'Tr?????ng ti???u h???c 427', NULL, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (656, N'656', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'?????ng Gia Minh', NULL, '1932-9-21', N'Qu???ng Ninh', N'Nam', N'Qu???ng Ninh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 744108053497, '2017-10-21', N'Qu???ng Ninh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (657, N'657', N'12345678', N'Ng?????i d??n');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (652, N'H?? N???i', N'Hai B?? Tr??ng', N'B??ch Khoa', N'S??? 119 ???????ng Tr???n ?????i Ngh??a, Hai B?? Tr??ng, H?? N???i', '2017-10-21', N'Th?????ng tr??');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 653, N'Ch???ng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 654, N'M???');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 655, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 656, N'Con g??i');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 657, N'??ng ngo???i');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Di???u Khu??', NULL, '1981-8-7', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Gi??m ?????c', N'C??ng ty TNHH 191', 645059572455, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (658, N'658', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Duy ?????c', NULL, '1980-1-12', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'Nh??n vi??n', N'C??ng ty TNHH 400', 144328869908, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (659, N'659', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Minh L??m', NULL, '1952-7-4', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 796627684683, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (660, N'660', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Th??? Huy???n', NULL, '1946-4-19', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 777403555778, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (661, N'661', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Ho??ng Linh', NULL, '1930-4-7', N'Qu???ng B??nh', N'Nam', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 701078636849, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (662, N'662', N'12345678', N'Ng?????i d??n');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'V?? Huy???n Y???n', NULL, '1918-8-1', N'Qu???ng B??nh', N'N???', N'Qu???ng B??nh', N'Kinh', N'Kh??ng', N'Vi???t Nam', N'H??u tr??', N'Kh??ng', 728874436877, '2011-8-11', N'Qu???ng B??nh', N'T???m tr??');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (663, N'663', N'12345678', N'Ng?????i d??n');


CREATE TABLE NhanKhauTamVang(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	noiTamTru VARCHAR(255) NOT NULL,
	tuNgay DATE NOT NULL,
	denNgay DATE NOT NULL,
	lyDo VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_tamVang PRIMARY KEY(id),
	CONSTRAINT FK_NhanKhauTamVang FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauTamVang(idNhanKhau, noiTamTru, tuNgay, denNgay, lyDo, trangThai)
	VALUES	(648, N'Qu???ng B??nh', '2023-01-01', '2023-01-30', N'Du l???ch', N'???? duy???t'),
            (649, N'Qu???ng B??nh', '2023-01-01', '2023-01-30', N'Du l???ch', N'???? duy???t'),
            (650, N'Qu???ng B??nh', '2023-01-01', '2023-01-30', N'Du l???ch', N'???? duy???t'),
            (651, N'Qu???ng B??nh', '2023-01-01', '2023-01-30', N'Du l???ch', N'???? duy???t'),
            (437, N'Y??n B??i', '2023-02-01', '2023-02-28', N'V??? qu??', N'???? duy???t'),
            (438, N'Y??n B??i', '2023-02-01', '2023-02-28', N'V??? qu??', N'???? duy???t'),
            (439, N'Y??n B??i', '2023-02-01', '2023-02-28', N'V??? qu??', N'???? duy???t'),
            (440, N'Y??n B??i', '2023-02-01', '2023-02-28', N'V??? qu??', N'???? duy???t'),
            (441, N'Y??n B??i', '2023-02-01', '2023-02-28', N'V??? qu??', N'???? duy???t'),
            (644, N'B???c Giang', '2023-02-15', '2023-05-15', N'??i c??ng t??c d??i ng??y', N'Ch??a duy???t');


CREATE TABLE NhanKhauTamTru(
    id INT NOT NULL AUTO_INCREMENT,
    idNhanKhau INT NOT NULL,
    noiThuongTru VARCHAR(255) NOT NULL,
    noiTamTru VARCHAR(255) NOT NULL,
    tuNgay DATE NOT NULL,
    denNgay DATE NOT NULL,
    lyDo VARCHAR(255),
    trangThai VARCHAR(255) NOT NULL,
    CONSTRAINT PK_tamTru PRIMARY KEY(id),
    CONSTRAINT FK_NhanKhauTamTru FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauTamTru(idNhanKhau, noiThuongTru, noiTamTru, tuNgay, denNgay, lyDo, trangThai)
	VALUES	(658, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (659, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (660, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (661, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (662, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (663, N'Qu???ng B??nh', N'S??? 5 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2022-12-01', '2023-06-04', N'Th??m h??? h??ng', N'???? duy???t'),
            (652, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t'),
            (653, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t'),
            (654, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t'),
            (655, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t'),
            (656, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t'),
            (657, N'Qu???ng Ninh', N'S??? 55 T??? Quang B???u, Qu???n Hai B?? Tr??ng, H?? N???i', '2023-03-01', '2023-03-15', N'Du l???ch', N'Ch??? duy???t');

CREATE TABLE NhanKhauThem(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayThem DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_nhanKhauThem PRIMARY KEY(id),
	CONSTRAINT FK_nhanKhauThem FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauThem(idNhanKhau, ngayThem, ghiChu, trangThai)
	VALUES  (54, '2011-02-11', NULL, N'???? duy???t'),
            (89, '2010-05-15', NULL, N'???? duy???t'),
            (96, '2020-10-20', NULL, N'Ch??? duy???t'),
            (97, '2021-04-20', NULL, N'Ch??? duy???t'),
            (109, '2020-02-20', NULL, N'Ch??? duy???t'),
            (113, '2022-09-20', NULL, N'Ch??? duy???t'),
            (169, '2021-05-20', NULL, N'Ch??? duy???t'),
            (170, '2021-07-20', NULL, N'Ch??? duy???t'),
            (214, '2020-08-20', NULL, N'Ch??? duy???t'),
            (298, '2020-09-20', NULL, N'Ch??? duy???t'),
            (304, '2021-10-20', NULL, N'Ch??? duy???t'),
            (305, '2021-08-04', NULL, N'Ch??? duy???t'),
            (323, '2021-11-20', NULL, N'Ch??? duy???t'),
            (339, '2021-07-20', NULL, N'Ch??? duy???t'),
            (457, '2020-09-20', NULL, N'Ch??? duy???t'),
            (516, '2020-11-23', NULL, N'Ch??? duy???t'),
            (533, '2022-08-26', NULL, N'Ch??? duy???t'),
            (565, '2020-11-16', NULL, N'Ch??? duy???t');


CREATE TABLE NhanKhauQuaDoi(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	idNguoiKhai INT NOT NULL,
	ngayKhai DATE NOT NULL,
	ngayMat DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_NhanKhauQuaDoi PRIMARY KEY(id),
	CONSTRAINT FK_NhanKhauQuaDoi FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_NguoiKhaiNhanKhauQuaDoi FOREIGN KEY(idNguoiKhai) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauQuaDoi(idNhanKhau, idNguoiKhai, ngayKhai, ngayMat, ghiChu, trangThai)
	VALUES	(8, 7, '2020-12-02', '2020-12-01', NULL, N'???? duy???t'),
            (12, 11, '2021-01-02', '2020-01-01', NULL, N'???? duy???t'),
            (13, 11, '2022-02-02', '2020-02-01', NULL, N'???? duy???t'),
            (16, 15, '2020-03-02', '2020-03-01', NULL, N'???? duy???t'),
            (23, 22, '2021-04-02', '2020-04-01', NULL, N'???? duy???t'),
            (24, 22, '2022-05-02', '2020-05-01', NULL, N'???? duy???t'),
            (30, 29, '2020-06-02', '2020-06-01', NULL, N'???? duy???t'),
            (36, 35, '2021-07-02', '2020-07-01', NULL, N'???? duy???t'),
            (40, 39, '2022-08-02', '2020-08-01', NULL, N'???? duy???t'),
            (41, 39, '2020-09-02', '2020-09-01', NULL, N'???? duy???t'),
            (46, 45, '2021-10-02', '2020-10-01', NULL, N'???? duy???t'),
            (63, 62, '2022-11-02', '2020-11-01', NULL, N'???? duy???t'),
            (64, 62, '2020-12-02', '2020-12-01', NULL, N'???? duy???t'),
            (70, 69, '2021-01-02', '2020-01-01', NULL, N'???? duy???t'),
            (74, 73, '2022-02-02', '2020-02-01', NULL, N'???? duy???t'),
            (86, 85, '2020-03-02', '2020-03-01', NULL, N'???? duy???t'),
            (90, 89, '2021-04-02', '2020-04-01', NULL, N'???? duy???t'),
            (91, 89, '2022-05-02', '2020-05-01', NULL, N'???? duy???t'),
            (98, 97, '2020-06-02', '2020-06-01', NULL, N'???? duy???t'),
            (103, 102, '2021-07-02', '2020-07-01', NULL, N'???? duy???t'),
            (104, 102, '2022-08-02', '2020-08-01', NULL, N'???? duy???t'),
            (114, 113, '2020-09-02', '2020-09-01', NULL, N'???? duy???t'),
            (118, 117, '2021-10-02', '2020-10-01', NULL, N'Ch??? duy???t'),
            (119, 117, '2022-11-02', '2020-11-01', NULL, N'Ch??? duy???t'),
            (124, 123, '2020-12-02', '2020-12-01', NULL, N'Ch??? duy???t');

UPDATE NhanKhau SET trangThai = N'Qua ?????i' WHERE YEAR(ngaySinh) <= 1930;

CREATE TABLE NhanKhauChuyen(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayChuyen DATE NOT NULL,
	noiChuyenDen VARCHAR(255),
	ghiChu VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_nhanKhauChuyen PRIMARY KEY(id),
	CONSTRAINT FK_nhanKhauChuyen FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauChuyen(idNhanKhau, ngayChuyen, noiChuyenDen, ghiChu, trangThai)
	VALUES	(286, '2023-02-01', N'M???', NULL, N'???? duy???t'),
            (312, '2022-10-30', N'TP. H??? Ch?? Minh', NULL, N'???? duy???t'),
            (27, '2023-01-01', N'H?? Giang', NULL, N'???? duy???t'),
            (33, '2022-10-01', N'Kh??nh H??a', NULL, N'Ch??? duy???t'),
            (44, '2021-01-24', N'Qu???ng B??nh', NULL, N'Kh??ng duy???t'),
            (55, '2022-03-01', N'???? N???ng', NULL, N'Ch??? duy???t'),
            (520, '2023-03-01', N'???? N???ng', NULL, N'Ch??? duy???t');

UPDATE NhanKhau SET trangThai = N'???? chuy???n ??i' WHERE idNhanKhau IN(286, 312, 27, 33, 44, 55, 520);

CREATE TABLE NhanKhauTach(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	ngayKhaiBao DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_NhanKhauTach PRIMARY KEY(id),
	CONSTRAINT FK_NK_NKTach FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauTach(idNhanKhau, ngayKhaiBao, ghiChu, trangThai)
	VALUES	(330, '2018-01-21', NULL, N'???? duy???t'),
            (335, '2019-02-11', NULL, N'???? duy???t'),
            (341, '2021-05-17', NULL, N'???? duy???t'),
            (640, '2021-05-17', NULL, N'Ch??? duy???t');


CREATE TABLE NhanKhauChuyenHoKhau(
	id INT NOT NULL AUTO_INCREMENT,
	idNhanKhau INT NOT NULL,
	idHoKhau INT NOT NULL,
	ngayChuyen DATE NOT NULL,
	ghiChu VARCHAR(255),
	trangThai VARCHAR(255) NOT NULL,
	CONSTRAINT PK_NKCHuyenHoKhau PRIMARY KEY(id),
	CONSTRAINT FK_NK_NKChuyenHo FOREIGN KEY(idNhanKhau) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_HK_HKChuyenHo FOREIGN KEY(idHoKhau) REFERENCES HoKhau(idHoKhau) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO NhanKhauChuyenHoKhau(idNhanKhau, idHoKhau, ngayChuyen, ghiChu, trangThai)
    VALUES  (331, 61, '2018-01-21', NULL, N'???? duy???t'),
            (332, 61, '2018-01-21', NULL, N'???? duy???t'),
            (333, 61, '2018-01-21', NULL, N'???? duy???t'),
            (334, 61, '2018-01-21', NULL, N'???? duy???t'),
            (336, 62, '2018-01-21', NULL, N'???? duy???t'),
            (337, 62, '2018-01-21', NULL, N'???? duy???t'),
            (338, 62, '2018-01-21', NULL, N'???? duy???t'),
            (339, 62, '2018-01-21', NULL, N'???? duy???t'),
            (340, 62, '2018-01-21', NULL, N'???? duy???t');


CREATE TABLE DipTraoThuong(
	idDip INT NOT NULL AUTO_INCREMENT,
	loaiDip VARCHAR(30) NOT NULL,
	tenDip VARCHAR(255) NOT NULL,
	ngayTraoThuong DATE NOT NULL,
	CONSTRAINT PK_DipTraoThuong PRIMARY KEY(idDip)
);

INSERT INTO DipTraoThuong(loaiDip, tenDip, ngayTraoThuong)
	VALUES	(N'D???p ?????c bi???t', N'T???t thi???u nhi 2019', '2019-06-01'),
            (N'Cu???i n??m h???c', N'Cu???i n??m h???c 2018-2019', '2019-06-01'),
            (N'D???p ?????c bi???t', N'Trung thu 2019', '2019-09-20'),
            (N'D???p ?????c bi???t', N'T???t thi???u nhi 2020', '2020-06-01'),
            (N'Cu???i n??m h???c', N'Cu???i n??m h???c 2019-2020', '2020-06-01'),
            (N'D???p ?????c bi???t', N'Trung thu 2020', '2020-09-20'),
            (N'D???p ?????c bi???t', N'T???t thi???u nhi 2021', '2021-06-01'),
            (N'Cu???i n??m h???c', N'Cu???i n??m h???c 2020-2021', '2021-06-01'),
            (N'D???p ?????c bi???t', N'Trung thu 2021', '2021-09-20'),
            (N'D???p ?????c bi???t', N'T???t thi???u nhi 2022', '2022-06-01'),
            (N'Cu???i n??m h???c', N'Cu???i n??m h???c 2021-2022', '2022-06-01'),
            (N'D???p ?????c bi???t', N'Trung thu 2022', '2022-09-20');


CREATE TABLE PhanThuong(
	id INT NOT NULL AUTO_INCREMENT,
	tenPhanThuong VARCHAR(255) NOT NULL,
	giaTriPhanThuong INT NOT NULL,
	ghiChu VARCHAR(255),
	CONSTRAINT PK_PhanThuong PRIMARY KEY(id)
);

INSERT INTO PhanThuong(tenPhanThuong, giaTriPhanThuong, ghiChu)
	VALUES	(N'B??nh k???o', 50000, N'T???ng d???p ?????c bi???t'),
            (N'10 cu???n v???', 100000, N'Th?????ng HSG'),
            (N'7 cu???n v???', 70000, N'Th?????ng HSTT'),
            (N'5 cu???n v???', 50000, N'Th?????ng HS'),
            (N'????? ch??i', 50000, N'T???ng d???p ?????c bi???t'),
            (N'S??ch', 65000, N'T???ng d???p ?????c bi???t'),
            (N'Kh??ng t???ng', 0, N'Kh??ng c?? qu??');


CREATE TABLE NguoiNopMinhChung(
	idNguoiNop INT NOT NULL,
	idDip INT NOT NULL,
	idNguoiNhan INT NOT NULL,
	linkMinhChung VARCHAR(1023),
	ngayDangKy DATE NOT NULL,
	trangThai VARCHAR(255) NOT NULL,
	thanhTich VARCHAR(255),
	idPhanThuong INT,
	CONSTRAINT PK_NguoiNop PRIMARY KEY(idDip, idNguoiNhan),
	CONSTRAINT FK_idNguoiNop FOREIGN KEY(idNguoiNop) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_idNguoiNhan FOREIGN KEY(idNguoiNhan) REFERENCES NhanKhau(idNhanKhau) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_idDip FOREIGN KEY(idDip) REFERENCES DipTraoThuong(idDip) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO NguoiNopMinhChung(idNguoiNop, idDip, idNguoiNhan, linkMinhChung, ngayDangKy, trangThai, thanhTich, idPhanThuong)
	VALUES	(344, 1, 344, NULL, '2019-05-11', N'???? duy???t', NULL, 1),
            (351, 1, 351, NULL, '2019-05-12', N'???? duy???t', NULL, 5),
            (383, 1, 383, NULL, '2019-05-13', N'???? duy???t', NULL, 6),
            (427, 1, 427, NULL, '2019-05-14', N'???? duy???t', NULL, 1),
            (471, 1, 471, NULL, '2019-05-15', N'???? duy???t', NULL, 5),
            (590, 1, 590, NULL, '2019-05-16', N'???? duy???t', NULL, 6),
            (517, 1, 517, NULL, '2019-05-16', N'???? duy???t', NULL, 5),
            (503, 1, 503, NULL, '2019-05-17', N'???? duy???t', NULL, 1),
            (534, 1, 534, NULL, '2019-05-16', N'???? duy???t', NULL, 1),
            (591, 1, 591, NULL, '2019-05-17', N'???? duy???t', NULL, 5),
            (580, 1, 580, NULL, '2019-05-18', N'???? duy???t', NULL, 6),
            (633, 1, 633, NULL, '2019-05-19', N'???? duy???t', NULL, 6),
            (641, 1, 641, NULL, '2019-05-17', N'???? duy???t', NULL, 5),
            (656, 1, 656, NULL, '2019-05-11', N'???? duy???t', NULL, 1),
            (242, 1, 242, NULL, '2019-05-17', N'???? duy???t', NULL, 5),
            (344, 2, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-11', N'???? duy???t', N'H???c sinh gi???i', 2),
            (351, 2, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-12', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (383, 2, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-13', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (427, 2, 427, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-14', N'???? duy???t', N'H???c sinh gi???i', 2),
            (471, 2, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-15', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (590, 2, 65, NULL, '2019-05-16', N'Kh??ng duy???t', NULL, NULL),
            (517, 2, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-16', N'???? duy???t', N'H???c sinh gi???i', 2),
            (503, 2, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-17', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (534, 2, 37, NULL, '2019-05-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 2, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (580, 2, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-18', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (633, 2, 633, NULL, '2019-05-19', N'???? duy???t', NULL, 4),
            (641, 2, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (656, 2, 656, NULL, '2019-05-11', N'???? duy???t', NULL, 4),
            (242, 2, 242, NULL, '2019-05-17', N'???? duy???t', NULL, 4),
            (344, 3, 344, NULL, '2019-09-11', N'???? duy???t', NULL, 1),
            (351, 3, 99, NULL, '2019-09-12', N'Kh??ng duy???t', NULL, NULL),
            (383, 3, 383, NULL, '2019-09-13', N'???? duy???t', NULL, 6),
            (427, 3, 427, NULL, '2019-09-14', N'???? duy???t', NULL, 5),
            (471, 3, 471, NULL, '2019-09-15', N'???? duy???t', NULL, 5),
            (590, 3, 590, NULL, '2019-09-16', N'???? duy???t', NULL, 6),
            (517, 3, 517, NULL, '2019-09-16', N'???? duy???t', NULL, 5),
            (503, 3, 503, NULL, '2019-09-17', N'???? duy???t', NULL, 1),
            (534, 3, 92, NULL, '2019-09-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 3, 591, NULL, '2019-09-17', N'???? duy???t', NULL, 6),
            (580, 3, 87, NULL, '2019-09-18', N'Kh??ng duy???t', NULL, NULL),
            (633, 3, 633, NULL, '2019-09-19', N'???? duy???t', NULL, 5),

            (344, 4, 42, NULL, '2020-05-11', N'Kh??ng duy???t', NULL, NULL),
            (351, 4, 351, NULL, '2020-05-12', N'???? duy???t', NULL, 5),
            (383, 4, 383, NULL, '2020-05-13', N'???? duy???t', NULL, 5),
            (427, 4, 47, NULL, '2020-05-14', N'Kh??ng duy???t', NULL, NULL),
            (471, 4, 471, NULL, '2020-05-15', N'???? duy???t', NULL, 6),
            (590, 4, 590, NULL, '2020-05-16', N'???? duy???t', NULL, 5),
            (517, 4, 51, NULL, '2020-05-16', N'Kh??ng duy???t', NULL, NULL),
            (534, 4, 534, NULL, '2020-05-16', N'???? duy???t', NULL, 1),
            (591, 4, 591, NULL, '2020-05-17', N'???? duy???t', NULL, 5),
            (580, 4, 580, NULL, '2020-05-18', N'???? duy???t', NULL, 6),
            (633, 4, 633, NULL, '2020-05-19', N'???? duy???t', NULL, 6),
            (344, 5, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-11', N'???? duy???t', N'H???c sinh gi???i', 2),
            (351, 5, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-12', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (471, 5, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-15', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (590, 5, 65, NULL, '2020-05-16', N'Kh??ng duy???t', NULL, NULL),
            (517, 5, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-16', N'???? duy???t', N'H???c sinh gi???i', 2),
            (503, 5, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-17', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (534, 5, 37, NULL, '2020-05-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 5, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (580, 5, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-18', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (633, 5, 633, NULL, '2020-05-19', N'???? duy???t', NULL, 4),
            (641, 5, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (656, 5, 656, NULL, '2020-05-11', N'???? duy???t', NULL, 4),
            (242, 5, 242, NULL, '2020-05-17', N'???? duy???t', NULL, 4),
            (344, 6, 344, NULL, '2020-09-11', N'???? duy???t', NULL, 1),
            (351, 6, 99, NULL, '2020-09-12', N'Kh??ng duy???t', NULL, NULL),
            (471, 6, 471, NULL, '2020-09-15', N'???? duy???t', NULL, 5),
            (590, 6, 590, NULL, '2020-09-16', N'???? duy???t', NULL, 6),
            (517, 6, 517, NULL, '2020-09-16', N'???? duy???t', NULL, 5),
            (503, 6, 503, NULL, '2020-09-17', N'???? duy???t', NULL, 1),
            (534, 6, 92, NULL, '2020-09-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 6, 591, NULL, '2020-09-17', N'???? duy???t', NULL, 6),
            (580, 6, 87, NULL, '2020-09-18', N'Kh??ng duy???t', NULL, NULL),
            (633, 6, 633, NULL, '2020-09-19', N'???? duy???t', NULL, 5),

            (344, 7, 42, NULL, '2021-05-11', N'Kh??ng duy???t', NULL, NULL),
            (351, 7, 351, NULL, '2021-05-12', N'???? duy???t', NULL, 5),
            (383, 7, 383, NULL, '2021-05-13', N'???? duy???t', NULL, 5),
            (590, 7, 590, NULL, '2021-05-16', N'???? duy???t', NULL, 5),
            (517, 7, 51, NULL, '2021-05-16', N'Kh??ng duy???t', NULL, NULL),
            (503, 7, 503, NULL, '2021-05-17', N'???? duy???t', NULL, 1),
            (534, 7, 534, NULL, '2021-05-16', N'???? duy???t', NULL, 1),
            (591, 7, 591, NULL, '2021-05-17', N'???? duy???t', NULL, 5),
            (580, 7, 580, NULL, '2021-05-18', N'???? duy???t', NULL, 6),
            (633, 7, 633, NULL, '2021-05-19', N'???? duy???t', NULL, 6),
            (344, 8, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-11', N'???? duy???t', N'H???c sinh gi???i', 2),
            (351, 8, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-12', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (383, 8, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-13', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (590, 8, 65, NULL, '2021-05-16', N'Kh??ng duy???t', NULL, NULL),
            (517, 8, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-16', N'???? duy???t', N'H???c sinh gi???i', 2),
            (503, 8, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-17', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (534, 8, 37, NULL, '2021-05-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 8, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (580, 8, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-18', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (633, 8, 633, NULL, '2021-05-19', N'???? duy???t', NULL, 4),
            (641, 8, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (656, 8, 656, NULL, '2021-05-11', N'???? duy???t', NULL, 4),
            (242, 8, 242, NULL, '2021-05-17', N'???? duy???t', NULL, 4),
            (344, 9, 344, NULL, '2021-09-11', N'???? duy???t', NULL, 1),
            (351, 9, 99, NULL, '2021-09-12', N'Kh??ng duy???t', NULL, NULL),
            (383, 9, 383, NULL, '2021-09-13', N'???? duy???t', NULL, 6),
            (427, 9, 427, NULL, '2021-09-14', N'???? duy???t', NULL, 5),
            (517, 9, 517, NULL, '2021-09-16', N'???? duy???t', NULL, 5),
            (503, 9, 503, NULL, '2021-09-17', N'???? duy???t', NULL, 1),
            (534, 9, 92, NULL, '2021-09-16', N'Kh??ng duy???t', NULL, NULL),
            (580, 9, 87, NULL, '2021-09-18', N'Kh??ng duy???t', NULL, NULL),
            (633, 9, 633, NULL, '2021-09-19', N'???? duy???t', NULL, 5),

            (344, 10, 42, NULL, '2022-05-11', N'Kh??ng duy???t', NULL, NULL),
            (351, 10, 351, NULL, '2022-05-12', N'???? duy???t', NULL, 5),
            (383, 10, 383, NULL, '2022-05-13', N'???? duy???t', NULL, 5),
            (427, 10, 47, NULL, '2022-05-14', N'Kh??ng duy???t', NULL, NULL),
            (471, 10, 471, NULL, '2022-05-15', N'???? duy???t', NULL, 6),
            (590, 10, 590, NULL, '2022-05-16', N'???? duy???t', NULL, 5),
            (534, 10, 534, NULL, '2022-05-16', N'???? duy???t', NULL, 1),
            (591, 10, 591, NULL, '2022-05-17', N'???? duy???t', NULL, 5),
            (580, 10, 580, NULL, '2022-05-18', N'???? duy???t', NULL, 6),
            (633, 10, 633, NULL, '2022-05-19', N'???? duy???t', NULL, 6),
            (344, 11, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-11', N'???? duy???t', N'H???c sinh gi???i', 2),
            (351, 11, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-12', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (383, 11, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-13', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (427, 11, 427, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-14', N'???? duy???t', N'H???c sinh gi???i', 2),
            (471, 11, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-15', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (590, 11, 65, NULL, '2022-05-16', N'Kh??ng duy???t', NULL, NULL),
            (517, 11, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-16', N'???? duy???t', N'H???c sinh gi???i', 2),
            (503, 11, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-17', N'???? duy???t', N'H???c sinh ti??n ti???n', 3),
            (534, 11, 37, NULL, '2022-05-16', N'Kh??ng duy???t', NULL, NULL),
            (633, 11, 633, NULL, '2022-05-19', N'???? duy???t', NULL, 4),
            (641, 11, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-17', N'???? duy???t', N'H???c sinh gi???i', 2),
            (656, 11, 656, NULL, '2022-05-11', N'???? duy???t', NULL, 4),
            (242, 11, 242, NULL, '2022-05-17', N'???? duy???t', NULL, 4),
            (344, 12, 344, NULL, '2022-09-11', N'???? duy???t', NULL, 1),
            (351, 12, 99, NULL, '2022-09-12', N'Kh??ng duy???t', NULL, NULL),
            (383, 12, 383, NULL, '2022-09-13', N'???? duy???t', NULL, 6),
            (427, 12, 427, NULL, '2022-09-14', N'???? duy???t', NULL, 5),
            (471, 12, 471, NULL, '2022-09-15', N'???? duy???t', NULL, 5),
            (503, 12, 503, NULL, '2022-09-17', N'???? duy???t', NULL, 1),
            (534, 12, 92, NULL, '2022-09-16', N'Kh??ng duy???t', NULL, NULL),
            (591, 12, 591, NULL, '2022-09-17', N'???? duy???t', NULL, 6),
            (580, 12, 87, NULL, '2022-09-18', N'Kh??ng duy???t', NULL, NULL);

UPDATE NhanKhau SET trangThai = N'T???m v???ng_Duy???t' WHERE trangThai = N'T???m v???ng';
UPDATE NhanKhau SET trangThai = N'Th?????ng tr??_Duy???t' WHERE trangThai = N'Th?????ng tr??';
UPDATE NhanKhau SET trangThai = N'T???m tr??_Duy???t' WHERE trangThai = N'T???m tr??';
UPDATE NhanKhau SET trangThai = N'Qua ?????i_Duy???t' WHERE trangThai = N'Qua ?????i';