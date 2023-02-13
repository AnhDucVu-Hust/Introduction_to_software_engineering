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

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Đức Nguyên', NULL, '1994-4-5', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 893516896172, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (1, N'1', N'12345678', N'Tổ trưởng');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hương Giang', NULL, '1992-2-25', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 310', 513860184257, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (2, N'2', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Cao Thắng', NULL, '1965-10-22', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 420', 931529799667, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (3, N'3', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Mai Khánh', NULL, '1963-9-15', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 951', 562044443072, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (4, N'4', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Cao Linh', NULL, '2018-11-1', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2018-11-1', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (5, N'5', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Phương Anh', NULL, '2017-3-23', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2017-3-23', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (6, N'6', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quang Sơn', NULL, '1934-9-17', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 876755248659, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (7, N'7', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thị Thư', NULL, '1928-11-21', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 962207924565, '1999-5-22', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (8, N'8', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (1, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 1 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-5-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 2, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 3, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 4, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 5, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 6, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 7, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (1, 8, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Mai Huyền', NULL, '1970-7-27', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 454', 186706037338, '2009-10-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (9, N'9', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Gia Minh', NULL, '1966-1-16', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 319', 970308130698, '2009-10-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (10, N'10', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Nhật Tùng', NULL, '1938-8-22', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 002622194024, '2009-10-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (11, N'11', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Nhật Hoàng', NULL, '1908-5-26', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 493034111031, '2009-10-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (12, N'12', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hương Linh', NULL, '1903-5-11', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 169787033334, '2009-10-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (13, N'13', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (9, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 2 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2009-10-4', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 10, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 11, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 12, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (2, 13, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Ngọc Thư', NULL, '1972-3-18', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 264', 872548753348, '2004-4-9', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (14, N'14', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Nam Chiến', NULL, '1970-2-15', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 293564074919, '2004-4-9', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (15, N'15', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Ngọc Yến', NULL, '1919-11-24', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 022921171277, '2004-4-9', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (16, N'16', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (14, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 3 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2004-4-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (3, 15, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (3, 16, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hoàng Dũng', NULL, '1980-1-6', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 584', 345268222492, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (17, N'17', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Ngọc Ly', NULL, '1980-6-8', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 698', 759005748945, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (18, N'18', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Trường Hải', NULL, '1947-6-13', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 072996418583, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (19, N'19', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Phương Phương', NULL, '1952-2-23', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 696942254251, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (20, N'20', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Bá Hoàng', NULL, '2009-5-20', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 932', NULL, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (21, N'21', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thanh Khuê', NULL, '2008-8-25', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 544', 191998518918, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (22, N'22', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Xuân Hoàng', NULL, '1915-3-7', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 720735155783, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (23, N'23', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Diệu Tâm', NULL, '1917-2-24', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 667419447509, '2011-6-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (24, N'24', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (17, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 4 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2011-6-1', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 18, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 19, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 20, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 21, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 22, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 23, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (4, 24, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Bảo Nhi', NULL, '1973-5-15', N'Hà Giang', N'Nữ', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 749', 843762370738, '1998-4-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (25, N'25', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Trọng Thắng', NULL, '1974-3-11', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 937', 414195333091, '1998-4-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (26, N'26', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Sơn Minh', NULL, '1943-7-20', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 627726126502, '1998-4-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (27, N'27', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Mai Hương', NULL, '1942-1-17', N'Hà Giang', N'Nữ', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 022848167814, '1998-4-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (28, N'28', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Nhật Đạt', NULL, '2007-10-9', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 232', 773659983380, '2007-10-9', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (29, N'29', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thu Anh', NULL, '1915-11-20', N'Hà Giang', N'Nữ', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 782840209019, '1998-4-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (30, N'30', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (25, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1998-4-17', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 26, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 27, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 28, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 29, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (5, 30, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Hải Hải', NULL, '1974-7-1', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 480', 899022949841, '1990-6-1', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (31, N'31', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Huyền', NULL, '1977-3-25', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 215', 981850476337, '1990-6-1', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (32, N'32', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Trường Mạnh', NULL, '1941-6-21', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 692738274622, '1990-6-1', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (33, N'33', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Huyền Hà', NULL, '1947-2-22', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 322532361959, '1990-6-1', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (34, N'34', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Hoàng Minh', NULL, '2000-1-4', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 485', 126995227731, '2000-1-4', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (35, N'35', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Trung Biển', NULL, '1913-6-6', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 256611041656, '1990-6-1', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (36, N'36', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (31, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 6 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1990-6-1', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 32, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 33, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 34, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 35, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (6, 36, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thu Khánh', NULL, '1983-3-16', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 522', 705256418567, '1991-11-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (37, N'37', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Quang Dũng', NULL, '1988-7-26', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 106', 213049136037, '1991-11-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (38, N'38', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Lan', NULL, '1949-1-8', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 135784594933, '1991-11-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (39, N'39', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Minh', NULL, '1917-7-3', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 720860601232, '1991-11-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (40, N'40', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Phương', NULL, '1916-4-18', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 575792442567, '1991-11-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (41, N'41', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (37, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 7 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1991-11-5', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 38, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 39, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 40, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (7, 41, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hoàng Cảnh', NULL, '1980-9-14', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 844', 376769194364, '2011-10-10', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (42, N'42', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Phương Phương', NULL, '1976-11-2', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 505', 518658378313, '2011-10-10', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (43, N'43', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Bảo Mai', NULL, '1945-4-27', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 649547923602, '2011-10-10', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (44, N'44', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hương Hương', NULL, '2008-3-2', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 790', 161676455479, '2011-10-10', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (45, N'45', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Gia Long', NULL, '1925-5-21', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 274387687852, '2011-10-10', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (46, N'46', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (42, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 8 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2011-10-10', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 43, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 44, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 45, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (8, 46, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quang Kiên', NULL, '1991-5-1', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 445', 301185662470, '2020-8-8', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (47, N'47', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Bảo Linh', NULL, '1986-4-6', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 348950063703, '2020-8-8', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (48, N'48', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Trọng Hiếu', NULL, '1961-5-16', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 850', 033144510527, '2020-8-8', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (49, N'49', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Phương Anh', NULL, '1961-11-12', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 290', 797424223978, '2020-8-8', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (50, N'50', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (47, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 9 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2020-8-8', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 48, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 49, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (9, 50, N'Mẹ');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Hương Anh', NULL, '1987-10-23', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 975', 808194435575, '1991-9-16', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (51, N'51', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nhật Bảo', NULL, '1987-7-23', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 246', 318121613035, '1991-9-16', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (52, N'52', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Sơn Long', NULL, '1957-3-10', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 732575244033, '1991-9-16', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (53, N'53', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Mai', NULL, '2021-2-3', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2021-2-3', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (54, N'54', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Duy Hưng', NULL, '1933-9-26', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 501917363504, '1991-9-16', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (55, N'55', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Bảo Ly', NULL, '1931-9-5', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 490441563946, '1991-9-16', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (56, N'56', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (51, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 10 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1991-9-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 52, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 53, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 54, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 55, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (10, 56, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Quang Luân', NULL, '1986-10-22', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 968', 630676696030, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (57, N'57', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Huyền Yến', NULL, '1990-7-19', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Kế toán', N'Công ty TNHH 830', 433748883912, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (58, N'58', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Bá Nguyên', NULL, '1959-5-4', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Kế toán', N'Công ty TNHH 542', 025230786006, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (59, N'59', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hương Lan', NULL, '1951-9-22', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 729521096144, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (60, N'60', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Minh Phong', NULL, '2015-10-19', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Học sinh', N'Trường tiểu học 823', NULL, '2015-10-19', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (61, N'61', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Phương Oanh', NULL, '2012-4-8', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Học sinh', N'Trường tiểu học 594', NULL, '2012-4-8', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (62, N'62', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Đức Sơn', NULL, '1922-3-22', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 880686267287, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (63, N'63', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Huyền Phương', NULL, '1924-3-26', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 275434786942, '1994-1-23', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (64, N'64', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (57, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 11 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1994-1-23', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 58, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 59, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 60, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 61, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 62, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 63, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (11, 64, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Bá Cảnh', NULL, '1986-2-18', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 734', 700591298864, '2002-9-5', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (65, N'65', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Bảo Khánh', NULL, '1985-2-22', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 489605270774, '2002-9-5', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (66, N'66', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Xuân Minh', NULL, '1960-5-11', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 702', 754197659022, '2002-9-5', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (67, N'67', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Mai Linh', NULL, '1957-1-12', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 662511740493, '2002-9-5', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (68, N'68', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thị Khuê', NULL, '2014-11-10', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 643', NULL, '2014-11-10', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (69, N'69', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Phương Lan', NULL, '1919-8-2', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 709354177718, '2002-9-5', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (70, N'70', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (65, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 12 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2002-9-5', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 66, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 67, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 68, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 69, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (12, 70, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Quang Nguyên', NULL, '1972-4-23', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 933554348632, '2008-7-15', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (71, N'71', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Khánh Anh', NULL, '1969-6-7', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 239', 786520715193, '2008-7-15', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (72, N'72', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Sơn Thái', NULL, '1998-4-24', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 720', 243317501040, '2008-7-15', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (73, N'73', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Minh Oanh', NULL, '1902-1-21', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 235750010070, '2008-7-15', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (74, N'74', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (71, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 13 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-7-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 72, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 73, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (13, 74, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quỳnh Khánh', NULL, '1985-6-25', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', 352364342803, '2006-9-19', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (75, N'75', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Bá Hùng', NULL, '1985-5-17', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', 165796461012, '2006-9-19', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (76, N'76', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Gia Đạt', NULL, '1954-11-22', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 820765453696, '2006-9-19', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (77, N'77', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Bá Khôi', NULL, '2014-9-15', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Học sinh', N'Trường tiểu học 710', NULL, '2014-9-15', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (78, N'78', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Phương Hương', NULL, '2010-2-14', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Học sinh', N'Trường THCS 377', NULL, '2010-2-14', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (79, N'79', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Đăng Tùng', NULL, '1933-5-24', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 115680164977, '2006-9-19', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (80, N'80', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (75, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 14 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-9-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 76, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 77, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 78, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 79, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (14, 80, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Xuân Khánh', NULL, '1978-8-22', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 112', 059631032187, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (81, N'81', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nam Phong', NULL, '1980-8-25', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 404', 012427456112, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (82, N'82', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trung Luân', NULL, '1944-2-23', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 866830454572, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (83, N'83', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thanh Trang', NULL, '1952-10-12', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 014509358056, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (84, N'84', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trung Sơn', NULL, '2007-10-19', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 824', 884408343429, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (85, N'85', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Phương Ly', NULL, '1911-8-8', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 697898930168, '2016-2-14', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (86, N'86', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (81, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 15 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2016-2-14', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 82, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 83, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 84, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 85, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (15, 86, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Đức Luân', NULL, '1987-6-5', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 555764794617, '2013-11-3', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (87, N'87', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Huyền Hương', NULL, '1982-7-4', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 114', 227857435040, '2013-11-3', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (88, N'88', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Trung Quốc', NULL, '2020-5-19', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-5-19', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (89, N'89', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Nam Hưng', NULL, '1918-3-23', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 745304940193, '2013-11-3', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (90, N'90', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thị Phương', NULL, '1925-8-5', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 020744090356, '2013-11-3', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (91, N'91', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (87, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 16 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2013-11-3', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 88, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 89, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 90, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (16, 91, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Hải Minh', NULL, '1988-9-21', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 561', 424288459352, '1994-4-19', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (92, N'92', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Huyền Tâm', NULL, '1984-11-8', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 292', 739494727917, '1994-4-19', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (93, N'93', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Sơn Bảo', NULL, '1962-8-7', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 317537385929, '1994-4-19', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (94, N'94', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quỳnh Minh', NULL, '1956-2-17', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 832438000481, '1994-4-19', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (95, N'95', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Sơn Biển', NULL, '2020-10-13', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-10-13', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (96, N'96', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Diệu Huyền', NULL, '2021-4-5', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2021-4-5', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (97, N'97', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Xuân Anh', NULL, '1925-4-2', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 542440814003, '1994-4-19', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (98, N'98', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (92, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 17 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1994-4-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 93, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 94, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 95, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 96, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 97, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (17, 98, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hải Khôi', NULL, '1993-9-4', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 497', 220865318762, '2006-9-16', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (99, N'99', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Xuân Yến', NULL, '1995-3-13', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 813', 675377548391, '2006-9-16', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (100, N'100', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Diệu Mai', NULL, '1964-3-4', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 435', 552088091842, '2006-9-16', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (101, N'101', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Mai Phương', NULL, '2019-9-20', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-9-20', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (102, N'102', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Bá Thái', NULL, '1928-5-24', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 940614688928, '2006-9-16', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (103, N'103', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hương Trang', NULL, '1926-3-12', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 746053589420, '2006-9-16', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (104, N'104', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (99, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 18 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-9-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 100, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 101, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 102, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 103, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (18, 104, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Huyền', NULL, '1994-11-17', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 516', 290059434803, '2018-6-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (105, N'105', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Gia Lương', NULL, '1995-5-27', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 435036114247, '2018-6-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (106, N'106', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hoàng Tùng', NULL, '1966-2-12', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 732', 813075023162, '2018-6-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (107, N'107', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Mai Lan', NULL, '1960-1-20', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 236', 938573363374, '2018-6-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (108, N'108', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trường Hiển', NULL, '2020-2-26', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-2-26', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (109, N'109', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (105, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 19 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2018-6-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 106, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 107, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 108, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (19, 109, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Minh Đạt', NULL, '1989-8-21', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Mông', N'Không', N'Việt Nam', N'Không', N'Không', 086981464887, '1992-8-13', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (110, N'110', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thanh Trang', NULL, '1988-4-22', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Mông', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 934', 821282363412, '1992-8-13', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (111, N'111', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Duy Luân', NULL, '1957-3-15', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Mông', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 579067831311, '1992-8-13', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (112, N'112', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thị Linh', NULL, '2022-9-4', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Mông', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2022-9-4', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (113, N'113', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Mai Ly', NULL, '1928-5-22', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Mông', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 891170040396, '1992-8-13', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (114, N'114', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (110, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 20 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1992-8-13', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 111, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 112, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 113, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (20, 114, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Bá Cảnh', NULL, '1976-3-12', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Sán Dìu', N'Không', N'Việt Nam', N'Không', N'Không', 966342538967, '1999-9-26', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (115, N'115', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thu Linh', NULL, '1973-1-7', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Sán Dìu', N'Không', N'Việt Nam', N'Không', N'Không', 749027772617, '1999-9-26', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (116, N'116', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quỳnh Phương', NULL, '1942-9-17', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 700581217707, '1999-9-26', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (117, N'117', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quang Kiên', NULL, '1923-4-3', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 038503616692, '1999-9-26', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (118, N'118', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thu Anh', NULL, '1910-3-25', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 069199082094, '1999-9-26', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (119, N'119', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (115, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 21 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-9-26', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 116, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 117, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 118, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (21, 119, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thành Cảnh', NULL, '1973-8-24', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Tin Lành', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 579', 090215103164, '1997-11-23', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (120, N'120', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thị Khuê', NULL, '1976-8-20', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Tin Lành', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 621', 363994636196, '1997-11-23', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (121, N'121', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Nam Đạt', NULL, '1946-5-19', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Tin Lành', N'Việt Nam', N'Hưu trí', N'Không', 606937919003, '1997-11-23', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (122, N'122', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Văn Hiếu', NULL, '2006-3-24', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Tin Lành', N'Việt Nam', N'Học sinh', N'Trường THPT 192', 498135278549, '2006-3-24', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (123, N'123', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Quỳnh Hà', NULL, '1919-3-24', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Tin Lành', N'Việt Nam', N'Hưu trí', N'Không', 496772459734, '1997-11-23', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (124, N'124', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (120, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 22 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1997-11-23', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 121, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 122, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 123, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (22, 124, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Hương Thư', NULL, '1982-8-25', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 921', 675496865771, '2009-9-27', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (125, N'125', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Đức Thành', NULL, '1981-8-27', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 545', 094910181033, '2009-9-27', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (126, N'126', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Nhật Dũng', NULL, '1953-8-2', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 811637449085, '2009-9-27', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (127, N'127', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thanh Trang', NULL, '1950-3-20', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 660305179196, '2009-9-27', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (128, N'128', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (125, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 23 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2009-9-27', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 126, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 127, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (23, 128, N'Mẹ');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Xuân Mai', NULL, '1970-5-26', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Không', N'Không', 031363820635, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (129, N'129', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nam Quốc', NULL, '1968-5-11', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 661', 274046142090, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (130, N'130', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Quang Minh', NULL, '1938-6-18', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 633376318750, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (131, N'131', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Đăng Hưng', NULL, '1998-10-19', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Không', N'Không', 710713622518, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (132, N'132', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Bảo Tâm', NULL, '1995-6-7', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 469', 943575129486, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (133, N'133', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thanh Hưng', NULL, '1914-9-11', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 437938727221, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (134, N'134', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thu Trang', NULL, '1907-6-9', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 553745622896, '2011-7-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (135, N'135', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (129, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 24 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2011-7-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 130, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 131, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 132, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 133, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 134, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (24, 135, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Diệu Mai', NULL, '1981-3-2', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 141', 181242546266, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (136, N'136', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hải Bảo', NULL, '1979-5-9', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 203', 228163812057, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (137, N'137', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Sơn', NULL, '1950-7-14', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Hưu trí', N'Không', 639999671786, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (138, N'138', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Hà', NULL, '1954-4-26', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Hưu trí', N'Không', 909875090608, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (139, N'139', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bảo Khánh', NULL, '2008-7-7', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Học sinh', N'Trường THCS 658', 519530984409, '2008-7-7', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (140, N'140', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trọng Sơn', NULL, '1921-4-18', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Hưu trí', N'Không', 450712321012, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (141, N'141', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Huyền Mai', NULL, '1924-4-4', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Hưu trí', N'Không', 049399204612, '1993-8-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (142, N'142', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (136, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 25 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-8-4', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 137, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 138, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 139, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 140, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 141, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (25, 142, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Duy Nhật', NULL, '1986-1-16', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 114', 059368106440, '2002-6-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (143, N'143', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Quỳnh Khánh', NULL, '1990-10-11', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 701', 142017288553, '2002-6-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (144, N'144', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Sơn Dũng', NULL, '1952-10-8', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 015200528572, '2002-6-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (145, N'145', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Trang', NULL, '1958-1-15', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 245706981016, '2002-6-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (146, N'146', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Thư', NULL, '1930-10-5', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 504642528348, '2002-6-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (147, N'147', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (143, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 26 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2002-6-21', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 144, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 145, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 146, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (26, 147, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Trường Kiên', NULL, '1992-7-27', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 553007982868, '1999-2-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (148, N'148', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quỳnh Huyền', NULL, '1989-6-9', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 181445626174, '1999-2-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (149, N'149', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Khánh Trang', NULL, '1963-4-21', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 913', 914739627186, '1999-2-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (150, N'150', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thu Khuê', NULL, '2018-5-15', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2018-5-15', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (151, N'151', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Gia Đạt', NULL, '1937-11-24', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 103186055231, '1999-2-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (152, N'152', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thanh Ly', NULL, '1934-3-10', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 708435761132, '1999-2-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (153, N'153', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (148, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 27 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-2-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 149, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 150, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 151, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 152, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (27, 153, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Phương Lan', NULL, '1970-3-7', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 278', 879127276794, '1993-5-20', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (154, N'154', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Hải Sơn', NULL, '1965-5-8', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 431581213939, '1993-5-20', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (155, N'155', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nam Tùng', NULL, '1940-4-12', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 468209519776, '1993-5-20', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (156, N'156', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trung Lương', NULL, '1919-7-8', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 734021547366, '1993-5-20', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (157, N'157', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Xuân Ly', NULL, '1919-8-17', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 080060601925, '1993-5-20', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (158, N'158', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (154, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 28 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-5-20', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 155, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 156, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 157, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (28, 158, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Diệu Yến', NULL, '1978-11-5', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 860', 797326951501, '2001-4-9', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (159, N'159', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Hải', NULL, '1978-10-20', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 266', 387074550252, '2001-4-9', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (160, N'160', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Sơn Trường', NULL, '1946-11-10', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 468299830025, '2001-4-9', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (161, N'161', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Mai', NULL, '1948-8-1', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 326356261127, '2001-4-9', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (162, N'162', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Phương', NULL, '2011-11-19', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 236', NULL, '2011-11-19', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (163, N'163', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bá Biển', NULL, '1920-7-20', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Mường', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 047113884414, '2001-4-9', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (164, N'164', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (159, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 29 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2001-4-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 160, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 161, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 162, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 163, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (29, 164, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Minh Mai', NULL, '1992-2-1', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 696', 611093422818, '1993-6-20', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (165, N'165', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Trường Luân', NULL, '1988-2-27', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', 440331647120, '1993-6-20', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (166, N'166', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Duy Bảo', NULL, '1966-8-13', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 921', 961179788009, '1993-6-20', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (167, N'167', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thanh Hà', NULL, '1963-11-11', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', 763108171779, '1993-6-20', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (168, N'168', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Sơn Kiên', NULL, '2021-5-4', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', NULL, '2021-5-4', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (169, N'169', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Khánh Yến', NULL, '2021-7-16', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Không', N'Không', NULL, '2021-7-16', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (170, N'170', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Diệu Yến', NULL, '1929-8-22', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 044225205018, '1993-6-20', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (171, N'171', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (165, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 30 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-6-20', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 166, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 167, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 168, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 169, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 170, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (30, 171, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Diệu Giang', NULL, '1994-3-10', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 232', 471316621325, '1996-8-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (172, N'172', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Bá Bảo', NULL, '1995-5-6', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 706', 006394695564, '1996-8-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (173, N'173', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Trung Sơn', NULL, '1966-5-8', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 300132520425, '1996-8-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (174, N'174', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Ngọc Khánh', NULL, '1967-1-5', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 660684888397, '1996-8-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (175, N'175', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Văn Hùng', NULL, '1928-11-18', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 522864975567, '1996-8-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (176, N'176', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (172, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 31 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1996-8-1', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 173, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 174, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 175, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (31, 176, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Trường Long', NULL, '1977-8-17', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 355', 850023601344, '1999-11-10', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (177, N'177', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Diệu Giang', NULL, '1973-3-24', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 278929093137, '1999-11-10', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (178, N'178', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thanh Phong', NULL, '1948-2-17', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 983807426892, '1999-11-10', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (179, N'179', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thị Yến', NULL, '1943-7-16', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 210721161159, '1999-11-10', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (180, N'180', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Minh Minh', NULL, '2009-8-14', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 921', NULL, '2009-8-14', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (181, N'181', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thị Anh', NULL, '2003-9-2', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 209', 502048070513, '2003-9-2', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (182, N'182', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Khánh Mai', NULL, '1919-4-26', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 997790968495, '1999-11-10', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (183, N'183', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (177, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 32 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-11-10', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 178, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 179, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 180, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 181, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 182, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (32, 183, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thành Bảo', NULL, '1974-11-2', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 653', 406960423610, '1992-5-24', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (184, N'184', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thu Ly', NULL, '1969-4-18', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 853', 772728013837, '1992-5-24', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (185, N'185', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trường Biển', NULL, '1948-10-11', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 628436776585, '1992-5-24', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (186, N'186', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Mai Phương', NULL, '2004-9-12', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 315', 164448342232, '2004-9-12', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (187, N'187', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Cao Long', NULL, '1917-4-9', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 898494524157, '1992-5-24', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (188, N'188', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thị Mai', NULL, '1914-1-4', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 664325501799, '1992-5-24', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (189, N'189', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (184, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 33 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1992-5-24', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 185, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 186, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 187, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 188, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (33, 189, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Minh Linh', NULL, '1976-4-13', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 569854699732, '2004-11-24', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (190, N'190', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Sơn Hiển', NULL, '1981-4-10', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 569', 527280770676, '2004-11-24', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (191, N'191', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Hương Khuê', NULL, '1942-4-12', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 816719395673, '2004-11-24', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (192, N'192', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Nam Lộc', NULL, '1920-4-19', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 147543285906, '2004-11-24', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (193, N'193', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Mai Khánh', NULL, '1921-5-15', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 759928277036, '2004-11-24', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (194, N'194', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (190, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 34 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2004-11-24', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 191, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 192, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 193, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (34, 194, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Bá Thắng', NULL, '1987-1-25', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 414', 510015030226, '1994-4-4', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (195, N'195', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Xuân Hương', NULL, '1992-7-24', N'Hà Giang', N'Nữ', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 754722010500, '1994-4-4', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (196, N'196', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quang Quốc', NULL, '1952-7-9', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 012404973404, '1994-4-4', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (197, N'197', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Mai Giang', NULL, '2017-11-17', N'Hà Giang', N'Nữ', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2017-11-17', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (198, N'198', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hải Quốc', NULL, '1933-7-23', N'Hà Giang', N'Nam', N'Hà Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 456172716307, '1994-4-4', N'Hà Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (199, N'199', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (195, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 35 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1994-4-4', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 196, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 197, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 198, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (35, 199, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Mai Huyền', NULL, '1971-1-11', N'Hà Nam', N'Nữ', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 685', 243954090091, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (200, N'200', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Trường Thành', NULL, '1967-4-20', N'Hà Nam', N'Nam', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 376', 170788759693, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (201, N'201', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Gia Thái', NULL, '1945-10-13', N'Hà Nam', N'Nam', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 178673288055, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (202, N'202', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Khánh Giang', NULL, '1943-2-20', N'Hà Nam', N'Nữ', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 579465882698, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (203, N'203', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Nhật Nhật', NULL, '1914-5-13', N'Hà Nam', N'Nam', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 155435712920, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (204, N'204', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Khánh Huyền', NULL, '1904-7-14', N'Hà Nam', N'Nữ', N'Hà Nam', N'Thái', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 557180393742, '1999-1-7', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (205, N'205', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (200, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 36 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-1-7', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 201, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 202, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 203, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 204, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (36, 205, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thành Hiếu', NULL, '1984-1-7', N'Lào Cai', N'Nam', N'Lào Cai', N'Dao', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 676', 606016757628, '1997-1-11', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (206, N'206', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Phương Ly', NULL, '1982-10-24', N'Lào Cai', N'Nữ', N'Lào Cai', N'Dao', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 561', 117068685639, '1997-1-11', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (207, N'207', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thị Khánh', NULL, '1958-9-12', N'Lào Cai', N'Nữ', N'Lào Cai', N'Dao', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 211', 397866424415, '1997-1-11', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (208, N'208', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Diệu Hương', NULL, '1929-7-13', N'Lào Cai', N'Nữ', N'Lào Cai', N'Dao', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 719251284666, '1997-1-11', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (209, N'209', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (206, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 37 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1997-1-11', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 207, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 208, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (37, 209, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Gia Đạt', NULL, '1993-2-1', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Không', N'Không', 725718300939, '1994-3-2', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (210, N'210', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thanh Khuê', NULL, '1990-9-8', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 245', 947084209249, '1994-3-2', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (211, N'211', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Bá Thái', NULL, '1958-11-4', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Không', N'Không', 422732330148, '1994-3-2', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (212, N'212', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Trường Minh', NULL, '2017-4-2', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Không', N'Không', NULL, '2017-4-2', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (213, N'213', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Phương Thư', NULL, '2020-8-5', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Không', N'Không', NULL, '2020-8-5', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (214, N'214', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Hoàng Dũng', NULL, '1934-10-22', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Tin Lành', N'Việt Nam', N'Hưu trí', N'Không', 573892684184, '1994-3-2', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (215, N'215', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (210, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 38 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1994-3-2', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 211, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 212, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 213, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 214, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (38, 215, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thành Thành', NULL, '1972-5-6', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 698', 738602788003, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (216, N'216', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Trang', NULL, '1977-7-8', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 971', 704355392261, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (217, N'217', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Huyền Phương', NULL, '1943-11-15', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 884412074409, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (218, N'218', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Quang Cảnh', NULL, '1999-1-13', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 907', 639423908409, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (219, N'219', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Phương Tâm', NULL, '2000-11-5', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 272', 967227950739, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (220, N'220', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Trọng Mạnh', NULL, '1909-4-16', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 880074837490, '2015-6-27', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (221, N'221', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (216, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 39 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2015-6-27', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 217, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 218, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 219, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 220, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (39, 221, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Sơn Hưng', NULL, '1980-2-20', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 449', 271743779395, '2019-2-9', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (222, N'222', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Phương Trang', NULL, '1979-2-9', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 725', 769963770731, '2019-2-9', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (223, N'223', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Bá Hoàng', NULL, '1946-4-3', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 597443258626, '2019-2-9', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (224, N'224', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Ngọc Yến', NULL, '2010-6-12', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 358', NULL, '2019-2-9', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (225, N'225', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thành Luân', NULL, '1915-11-25', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 000626530487, '2019-2-9', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (226, N'226', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (222, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 40 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2019-2-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 223, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 224, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 225, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (40, 226, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Phương Huyền', NULL, '1970-3-25', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 523', 564899598206, '1990-4-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (227, N'227', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Sơn Sơn', NULL, '1971-6-2', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 815', 824575697136, '1990-4-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (228, N'228', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thị Lan', NULL, '1936-7-7', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 211177939972, '1990-4-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (229, N'229', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Văn Nam', NULL, '1912-7-10', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 785268979841, '1990-4-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (230, N'230', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Phương Mai', NULL, '1902-9-19', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 136220390223, '1990-4-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (231, N'231', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (227, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 41 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1990-4-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 228, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 229, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 230, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (41, 231, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hương Linh', NULL, '1986-3-20', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 924', 911979236825, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (232, N'232', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thành Đạt', NULL, '1990-8-17', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 615178270492, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (233, N'233', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Duy Thành', NULL, '1956-3-20', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 293542755657, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (234, N'234', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Mai Giang', NULL, '1960-6-5', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 889', 368194580654, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (235, N'235', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Văn Bảo', NULL, '2019-4-13', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (236, N'236', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Minh Anh', NULL, '2016-1-21', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 779', NULL, '2021-10-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (237, N'237', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (232, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 42 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2021-10-25', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 233, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 234, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 235, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 236, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (42, 237, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hương Huyền', NULL, '1986-1-13', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 990', 753551317631, '2017-10-18', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (238, N'238', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thanh Hưng', NULL, '1990-3-24', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Kế toán', N'Công ty TNHH 298', 495843452650, '2017-10-18', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (239, N'239', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hoàng Hải', NULL, '1957-10-22', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Hưu trí', N'Không', 703379455814, '2017-10-18', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (240, N'240', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Nhật Hiếu', NULL, '2019-3-22', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Không', N'Không', NULL, '2019-3-22', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (241, N'241', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Khánh Phương', NULL, '2014-8-2', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Phật Giáo', N'Việt Nam', N'Học sinh', N'Trường tiểu học 277', NULL, '2017-10-18', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (242, N'242', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (238, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 43 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-10-18', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 239, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 240, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 241, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (43, 242, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Nhật Dũng', NULL, '1970-1-14', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 381', 712515427186, '2002-9-9', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (243, N'243', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Yến', NULL, '1973-11-24', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 830', 925844361537, '2002-9-9', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (244, N'244', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Sơn Khôi', NULL, '1999-11-21', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 845', 081075817756, '2002-9-9', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (245, N'245', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Xuân Tâm', NULL, '1919-5-8', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 125212539036, '2002-9-9', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (246, N'246', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (243, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 44 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2002-9-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 244, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 245, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (44, 246, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thị Hương', NULL, '1971-11-6', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 362', 940971629248, '1992-11-26', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (247, N'247', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Trọng Đạt', NULL, '1975-9-11', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 138', 655835090700, '1992-11-26', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (248, N'248', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Huyền Ly', NULL, '2001-1-21', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Trường Đại học 749', 106790530127, '2001-1-21', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (249, N'249', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (247, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 45 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1992-11-26', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (45, 248, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (45, 249, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Huyền Minh', NULL, '1976-3-10', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 948', 614511220764, '1993-5-23', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (250, N'250', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Hoàng Mạnh', NULL, '1974-7-16', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 116', 037863483670, '1993-5-23', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (251, N'251', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Minh', NULL, '1949-3-4', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 775907573136, '1993-5-23', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (252, N'252', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Cao Khôi', NULL, '1920-8-20', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 758202186575, '1993-5-23', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (253, N'253', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Diệu Oanh', NULL, '1924-10-16', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 818983456257, '1993-5-23', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (254, N'254', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (250, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 46 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-5-23', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 251, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 252, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 253, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (46, 254, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Khánh', NULL, '1972-9-3', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 453', 890068421536, '2012-11-25', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (255, N'255', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hải Lương', NULL, '1967-11-7', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 769', 204366465945, '2012-11-25', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (256, N'256', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (255, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 47 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2012-11-25', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (47, 256, N'Chồng');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Diệu Trang', NULL, '1989-8-3', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 958', 843608191449, '1994-5-18', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (257, N'257', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Trung Tùng', NULL, '1984-5-20', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 123', 664962592492, '1994-5-18', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (258, N'258', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Duy Thành', NULL, '1961-9-21', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 323', 088024076291, '1994-5-18', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (259, N'259', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Minh Nhi', NULL, '1962-4-18', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 313', 607320995392, '1994-5-18', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (260, N'260', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Hải Đức', NULL, '2014-8-25', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 355', NULL, '2014-8-25', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (261, N'261', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Minh Thái', NULL, '1922-1-25', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 734069802608, '1994-5-18', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (262, N'262', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (257, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 48 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1994-5-18', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 258, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 259, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 260, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 261, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (48, 262, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Nhật Trường', NULL, '1980-3-9', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 673', 572782220415, '1993-9-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (263, N'263', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thu Huyền', NULL, '1979-7-24', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 188', 275309996775, '1993-9-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (264, N'264', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Duy Hiển', NULL, '1952-7-25', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 584248185090, '1993-9-22', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (265, N'265', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Trung Hùng', NULL, '2008-2-4', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 951', 271226977851, '2008-2-4', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (266, N'266', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (263, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 49 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-9-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 264, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 265, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (49, 266, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Khánh Thư', NULL, '1985-5-1', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 690', 182308759046, '2005-11-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (267, N'267', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Nhật Khôi', NULL, '1981-4-2', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 730', 483809533588, '2005-11-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (268, N'268', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Hải Đức', NULL, '1952-10-4', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 665640034156, '2005-11-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (269, N'269', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Diệu Oanh', NULL, '1954-1-8', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 826085702387, '2005-11-15', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (270, N'270', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Bảo Mai', NULL, '2010-10-17', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 801', NULL, '2010-10-17', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (271, N'271', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (267, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 50 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2005-11-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 268, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 269, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 270, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (50, 271, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Huyền Anh', NULL, '1994-7-21', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 338', 824306049172, '1994-7-21', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (272, N'272', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Cao Cảnh', NULL, '1995-1-4', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 964', 863792628990, '1995-1-4', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (273, N'273', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Mai Khuê', NULL, '1967-5-3', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 429', 866008626199, '1991-10-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (274, N'274', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Cao Lộc', NULL, '2018-2-5', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2018-2-5', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (275, N'275', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Mai Ly', NULL, '1940-8-4', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 716151671141, '1991-10-22', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (276, N'276', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (272, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 51 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1991-10-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 273, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 274, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 275, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (51, 276, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hoàng Minh', NULL, '1994-10-13', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 179', 333628737373, '2001-4-10', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (277, N'277', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Huyền Anh', NULL, '1996-8-22', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 989', 226835713610, '2001-4-10', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (278, N'278', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Phương Nhi', NULL, '1964-7-10', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 527', 553533993198, '2001-4-10', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (279, N'279', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Ngọc Trang', NULL, '2017-11-5', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2017-11-5', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (280, N'280', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Mai Giang', NULL, '1935-5-3', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 353627338304, '2001-4-10', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (281, N'281', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (277, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 52 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2001-4-10', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 278, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 279, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 280, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (52, 281, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trọng Cảnh', NULL, '1970-5-3', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 617', 952352735627, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (282, N'282', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Quỳnh Khuê', NULL, '1971-7-22', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 627', 587552036462, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (283, N'283', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Quang Hiển', NULL, '1944-3-18', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 664697513784, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (284, N'284', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Ngọc Trang', NULL, '1942-10-12', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 450812845048, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (285, N'285', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Duy Minh', NULL, '2002-3-16', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 425', 997291954701, '2002-3-16', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (286, N'286', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thị Phương', NULL, '2003-2-9', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Sinh viên', N'Trường Đại học 586', 771332100555, '2003-2-9', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (287, N'287', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Duy Long', NULL, '1911-2-5', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 246150955164, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (288, N'288', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Diệu Huyền', NULL, '1906-2-21', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Tày', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 021230408944, '1997-4-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (289, N'289', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (282, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 53 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1997-4-12', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 283, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 284, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 285, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 286, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 287, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 288, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (53, 289, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Ly', NULL, '1981-3-5', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 563', 821323696558, '2003-9-2', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (290, N'290', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hoàng Hoàng', NULL, '1979-11-24', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 815', 255928538400, '2003-9-2', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (291, N'291', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Huyền Huyền', NULL, '1949-7-22', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 576890932501, '2003-9-2', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (292, N'292', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Mạnh', NULL, '1921-8-3', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 168954054438, '2003-9-2', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (293, N'293', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (290, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 54 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2003-9-2', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 291, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 292, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (54, 293, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thành Tùng', NULL, '1994-2-13', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Kế toán', N'Công ty TNHH 576', 648285448209, '2008-6-21', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (294, N'294', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hương Tâm', NULL, '1996-4-18', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 113', 346429959175, '2008-6-21', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (295, N'295', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Đức Mạnh', NULL, '1964-11-22', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Kế toán', N'Công ty TNHH 268', 261228619276, '2008-6-21', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (296, N'296', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Khánh Phương', NULL, '1959-5-5', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 619', 663599177606, '2008-6-21', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (297, N'297', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Đăng Đạt', NULL, '2020-9-13', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Không', N'Không', NULL, '2020-9-13', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (298, N'298', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Bảo Phương', NULL, '1924-6-13', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Hưu trí', N'Không', 230459032545, '2008-6-21', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (299, N'299', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (294, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 55 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-6-21', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 295, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 296, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 297, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 298, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (55, 299, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Lan', NULL, '1991-10-19', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 991', 328302149902, '1998-7-12', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (300, N'300', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Gia Chiến', NULL, '1995-11-1', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 652024089836, '1998-7-12', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (301, N'301', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Gia Minh', NULL, '1962-3-5', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 205416428420, '1998-7-12', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (302, N'302', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Quỳnh Huyền', NULL, '1958-3-20', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 800374160644, '1998-7-12', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (303, N'303', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Bá Long', NULL, '2021-10-20', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2021-10-20', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (304, N'304', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Hương Trang', NULL, '2020-8-4', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-8-4', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (305, N'305', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Trường Đức', NULL, '1926-5-20', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 374638706379, '1998-7-12', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (306, N'306', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (300, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 56 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1998-7-12', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 301, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 302, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 303, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 304, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 305, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (56, 306, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Diệu Mai', NULL, '1973-2-15', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 420', 081166947503, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (307, N'307', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thanh Minh', NULL, '1969-8-6', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 549', 711722952052, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (308, N'308', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Đức Mạnh', NULL, '1945-11-7', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 508064534795, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (309, N'309', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Hương Huyền', NULL, '1942-5-23', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 894548560675, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (310, N'310', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Xuân Minh', NULL, '2007-4-17', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 729', 764211045060, '2007-4-17', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (311, N'311', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Mai Huyền', NULL, '2002-5-5', N'Thái Bình', N'Nữ', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 267', 639126671784, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (312, N'312', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thành Chiến', NULL, '1921-6-16', N'Thái Bình', N'Nam', N'Thái Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 391057603516, '2003-3-16', N'Thái Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (313, N'313', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (307, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 57 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2003-3-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 308, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 309, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 310, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 311, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 312, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (57, 313, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bảo Anh', NULL, '1982-2-27', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 375', 292540107222, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (314, N'314', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trọng Nhật', NULL, '1977-3-3', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 853', 336015498419, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (315, N'315', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thành Hùng', NULL, '1947-1-8', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 308185985650, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (316, N'316', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thu Anh', NULL, '1947-4-1', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 326229111772, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (317, N'317', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hải Thái', NULL, '1915-3-20', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 540721570150, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (318, N'318', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Khánh Khánh', NULL, '1927-1-13', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 044402078758, '1996-6-25', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (319, N'319', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (314, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 58 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1996-6-25', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 315, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 316, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 317, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 318, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (58, 319, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hương Phương', NULL, '1988-6-3', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 601595799017, '2021-4-5', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (320, N'320', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hoàng Hưng', NULL, '1991-2-23', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 326', 432852267333, '2021-4-5', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (321, N'321', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thanh Khuê', NULL, '1958-4-9', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 922', 103351637253, '2021-4-5', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (322, N'322', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Minh Hà', NULL, '2021-11-12', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2021-11-12', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (323, N'323', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (320, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 59 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2021-4-5', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 321, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 322, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (59, 323, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trường Phong', NULL, '1970-4-24', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 914', 881179107964, '1991-9-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (324, N'324', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bảo Tâm', NULL, '1971-4-13', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 529', 445583179195, '1991-9-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (325, N'325', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Quỳnh Huyền', NULL, '1937-5-8', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 039763502541, '1991-9-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (326, N'326', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Nhật Lâm', NULL, '1995-2-25', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 564', 180454619604, '1995-2-25', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (327, N'327', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Yến', NULL, '2001-9-8', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 196', 565738268280, '2001-9-8', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (328, N'328', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Văn Khôi', NULL, '1905-1-25', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 412462843215, '1991-9-4', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (329, N'329', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (324, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 60 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1991-9-4', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 325, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 326, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 327, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 328, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (60, 329, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quỳnh Linh', NULL, '1986-11-10', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 548', 904124371989, '2008-6-5', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (330, N'330', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Duy Biển', NULL, '1985-1-22', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 708', 179182016398, '2008-6-5', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (331, N'331', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Nhật Khôi', NULL, '1952-11-16', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 734325397523, '2008-6-5', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (332, N'332', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thành Nhật', NULL, '2014-1-24', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 168', NULL, '2014-1-24', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (333, N'333', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Gia Minh', NULL, '1918-5-16', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 319591941811, '2008-6-5', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (334, N'334', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (330, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 61 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-6-5', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 331, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 332, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 333, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (61, 334, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Khánh', NULL, '1992-5-4', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 416', 805757959128, '2000-3-23', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (335, N'335', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Chiến', NULL, '1991-1-2', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 738', 193737556062, '2000-3-23', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (336, N'336', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Nam Sơn', NULL, '1966-11-11', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 363', 469261622635, '2000-3-23', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (337, N'337', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thu Hương', NULL, '1961-8-6', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 419', 936292442472, '2000-3-23', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (338, N'338', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Huyền Linh', NULL, '2021-7-2', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Không', N'Không', NULL, '2021-7-2', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (339, N'339', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Phương', NULL, '1936-10-3', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Bà La Môn', N'Việt Nam', N'Hưu trí', N'Không', 853138099796, '2000-3-23', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (340, N'340', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (335, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 62 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2000-3-23', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 336, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 337, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 338, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 339, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (62, 340, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Nam Tùng', NULL, '1977-8-7', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 144774435143, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (341, N'341', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thị Phương', NULL, '1975-8-7', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 952722927459, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (342, N'342', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Phương Yến', NULL, '1942-6-18', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 008656333547, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (343, N'343', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Văn Hùng', NULL, '2010-2-17', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 594', NULL, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (344, N'344', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thu Phương', NULL, '2009-5-15', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 244', NULL, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (345, N'345', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Văn Tùng', NULL, '1926-9-10', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 219755739283, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (346, N'346', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Minh Khánh', NULL, '1919-1-3', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 542371081007, '2018-5-27', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (347, N'347', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (341, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 63 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2018-5-27', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 342, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 343, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 344, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 345, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 346, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (63, 347, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Hoàng Long', NULL, '1985-4-20', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 974', 505796878824, '1990-6-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (348, N'348', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thanh Phương', NULL, '1983-9-20', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 726', 399037759381, '1990-6-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (349, N'349', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Đạt', NULL, '1953-9-9', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 308791045124, '1990-6-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (350, N'350', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Huyền Oanh', NULL, '2018-2-3', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2018-2-3', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (351, N'351', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (348, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 64 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1990-6-5', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 349, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 350, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (64, 351, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quang Kiên', NULL, '1980-1-20', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 333', 150932575805, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (352, N'352', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Phương Hà', NULL, '1984-5-4', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 944', 182234588953, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (353, N'353', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Nhật Biển', NULL, '1950-9-8', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 738312068102, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (354, N'354', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quỳnh Hương', NULL, '1950-8-26', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 841498900570, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (355, N'355', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Duy Đức', NULL, '2010-10-16', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 209', NULL, '2010-10-16', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (356, N'356', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Xuân Hà', NULL, '2011-10-27', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 510', NULL, '2011-10-27', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (357, N'357', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Gia Quốc', NULL, '1914-9-9', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 532692051865, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (358, N'358', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Khánh Yến', NULL, '1915-2-5', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 174950097727, '1990-1-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (359, N'359', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (352, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 65 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1990-1-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 353, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 354, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 355, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 356, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 357, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 358, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (65, 359, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Văn Cảnh', NULL, '1980-5-8', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 988', 530165820786, '2002-11-10', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (360, N'360', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Huyền Hà', NULL, '1980-3-21', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 954', 499981140821, '2002-11-10', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (361, N'361', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Văn Lộc', NULL, '1954-9-26', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 452806827549, '2002-11-10', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (362, N'362', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Sơn Dũng', NULL, '2008-5-1', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Học sinh', N'Trường THCS 373', 351768114798, '2008-5-1', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (363, N'363', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Mai Huyền', NULL, '1918-7-7', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Hồi Giáo', N'Việt Nam', N'Hưu trí', N'Không', 771123656098, '2002-11-10', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (364, N'364', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (360, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 66 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2002-11-10', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 361, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 362, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 363, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (66, 364, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Gia Lương', NULL, '1990-7-17', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 449', 817425875751, '2012-9-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (365, N'365', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Xuân Tâm', NULL, '1987-3-3', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 562', 203220382461, '2012-9-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (366, N'366', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Thành Minh', NULL, '1961-5-18', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 361', 091290308870, '2012-9-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (367, N'367', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Trọng Nguyên', NULL, '1927-2-19', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 310352320636, '2012-9-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (368, N'368', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (365, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 67 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2012-9-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 366, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 367, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (67, 368, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Đức Dũng', NULL, '1978-8-8', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Mông', N'Không', N'Việt Nam', N'Không', N'Không', 408885224870, '2006-5-3', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (369, N'369', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Quỳnh Hà', NULL, '1975-11-7', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Mông', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 313', 037600726700, '2006-5-3', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (370, N'370', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Sơn Mạnh', NULL, '1943-1-13', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Mông', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 799275754507, '2006-5-3', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (371, N'371', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Mai Nhi', NULL, '2012-8-1', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Mông', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 292', NULL, '2012-8-1', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (372, N'372', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thành Phong', NULL, '1925-9-25', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Mông', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 806394381194, '2006-5-3', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (373, N'373', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (369, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 68 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-5-3', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 370, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 371, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 372, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (68, 373, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Huyền Khánh', NULL, '1979-11-12', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 122', 592671660095, '2006-4-22', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (374, N'374', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Trọng Thành', NULL, '1980-8-23', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 592', 897087843901, '2006-4-22', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (375, N'375', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Đăng Tùng', NULL, '2009-3-20', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 406', NULL, '2009-3-20', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (376, N'376', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Minh Linh', NULL, '2006-1-17', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THPT 368', 252857430847, '2006-4-22', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (377, N'377', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Duy Cảnh', NULL, '1910-10-16', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 774708432578, '2006-4-22', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (378, N'378', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (374, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 69 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-4-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 375, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 376, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 377, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (69, 378, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Huyền Hà', NULL, '1993-4-25', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 602', 550513137865, '2005-8-11', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (379, N'379', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trường Minh', NULL, '1990-6-23', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 696', 614576312508, '2005-8-11', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (380, N'380', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hải Kiên', NULL, '1958-2-16', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 849', 367572309784, '2005-8-11', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (381, N'381', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Diệu Tâm', NULL, '1959-2-3', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 713', 000371048992, '2005-8-11', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (382, N'382', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Minh Hiển', NULL, '2015-2-2', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 906', NULL, '2015-2-2', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (383, N'383', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (379, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 70 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2005-8-11', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 380, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 381, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 382, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (70, 383, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Thị Hương', NULL, '1984-10-3', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 434', 962076704893, '2006-10-12', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (384, N'384', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Minh Mạnh', NULL, '1984-1-18', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 483', 263030659660, '2006-10-12', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (385, N'385', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Huyền Phương', NULL, '1955-8-11', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 945225430153, '2006-10-12', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (386, N'386', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Minh Linh', NULL, '2009-10-5', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 994', NULL, '2009-10-5', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (387, N'387', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Trọng Minh', NULL, '1927-6-24', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 011120164635, '2006-10-12', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (388, N'388', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Khánh Yến', NULL, '1914-2-8', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 582184738566, '2006-10-12', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (389, N'389', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (384, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 71 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-10-12', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 385, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 386, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 387, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 388, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (71, 389, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Sơn Khôi', NULL, '1986-7-1', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 873', 769649592680, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (390, N'390', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Ngọc Linh', NULL, '1981-8-27', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 250', 239911321547, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (391, N'391', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thành Thành', NULL, '1952-11-12', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 098853253525, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (392, N'392', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thị Nhi', NULL, '1951-5-12', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 270192861879, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (393, N'393', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Trọng Thái', NULL, '2012-1-3', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 200', NULL, '2012-1-3', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (394, N'394', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Minh Khôi', NULL, '1921-5-13', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 543658851821, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (395, N'395', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thanh Trang', NULL, '1928-2-23', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 007102627406, '2008-5-22', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (396, N'396', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (390, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 72 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-5-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 391, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 392, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 393, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 394, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 395, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (72, 396, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thu Yến', NULL, '1972-3-12', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 981', 467991800870, '2017-6-15', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (397, N'397', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hoàng Linh', NULL, '1974-11-4', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 602', 014176293642, '2017-6-15', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (398, N'398', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hoàng Trường', NULL, '1940-8-21', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 747373196659, '2017-6-15', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (399, N'399', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (397, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 73 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-6-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (73, 398, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (73, 399, N'Bố');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Hoàng Thái', NULL, '1979-9-6', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 342170038253, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (400, N'400', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Diệu Anh', NULL, '1975-8-13', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 153', 469330438121, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (401, N'401', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Bá Lâm', NULL, '1945-2-25', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 126638630542, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (402, N'402', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Ngọc Minh', NULL, '1946-11-4', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 536731823751, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (403, N'403', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thanh Lâm', NULL, '1918-3-15', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 831945328991, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (404, N'404', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Xuân Tâm', NULL, '1913-9-12', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 112487633738, '1995-1-6', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (405, N'405', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (400, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 74 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1995-1-6', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 401, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 402, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 403, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 404, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (74, 405, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trường Thắng', NULL, '1975-10-4', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 409', 306198955406, '1998-2-11', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (406, N'406', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Minh', NULL, '1978-3-2', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 452', 560493034600, '1998-2-11', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (407, N'407', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Văn Trường', NULL, '1946-2-24', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 200086649947, '1998-2-11', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (408, N'408', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thu Hương', NULL, '1945-7-9', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 366817833739, '1998-2-11', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (409, N'409', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thành Hải', NULL, '2003-9-3', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 938', 118157775583, '2003-9-3', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (410, N'410', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Linh', NULL, '1906-2-5', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 449910636275, '1998-2-11', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (411, N'411', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (406, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 75 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1998-2-11', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 407, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 408, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 409, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 410, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (75, 411, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thành Bảo', NULL, '1993-7-14', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 681', 982400883569, '2009-3-20', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (412, N'412', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thu Giang', NULL, '1994-3-4', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 570', 922778204460, '2009-3-20', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (413, N'413', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Trọng Mạnh', NULL, '1966-6-20', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 299', 134980401879, '2009-3-20', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (414, N'414', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Quang Lương', NULL, '1937-4-16', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 155380075556, '2009-3-20', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (415, N'415', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hương Ly', NULL, '1934-2-10', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 990282322943, '2009-3-20', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (416, N'416', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (412, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 76 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2009-3-20', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 413, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 414, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 415, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (76, 416, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Trọng Nhật', NULL, '1978-6-9', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 305', 687672096624, '2006-6-9', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (417, N'417', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Minh Lan', NULL, '1975-3-7', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 345', 621117164377, '2006-6-9', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (418, N'418', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Xuân Mạnh', NULL, '1947-7-19', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 455248785334, '2006-6-9', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (419, N'419', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Xuân Thư', NULL, '1948-3-27', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 522229484191, '2006-6-9', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (420, N'420', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Mai Trang', NULL, '2009-9-26', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 182', NULL, '2009-9-26', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (421, N'421', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Xuân Hương', NULL, '1926-8-20', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 832117533437, '2006-6-9', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (422, N'422', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (417, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 77 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-6-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 418, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 419, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 420, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 421, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (77, 422, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thanh Hải', NULL, '1979-8-1', N'Lào Cai', N'Nam', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 107', 506192120022, '2000-2-26', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (423, N'423', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thu Yến', NULL, '1979-5-11', N'Lào Cai', N'Nữ', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 519', 898430980420, '2000-2-26', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (424, N'424', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Cảnh', NULL, '1952-7-10', N'Lào Cai', N'Nam', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 933922229022, '2000-2-26', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (425, N'425', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Ngọc Yến', NULL, '1948-1-8', N'Lào Cai', N'Nữ', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 468335309040, '2000-2-26', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (426, N'426', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Nhật', NULL, '2011-8-7', N'Lào Cai', N'Nam', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 259', NULL, '2011-8-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (427, N'427', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Minh', NULL, '2010-2-12', N'Lào Cai', N'Nữ', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 860', NULL, '2010-2-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (428, N'428', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trọng Đạt', NULL, '1928-11-2', N'Lào Cai', N'Nam', N'Lào Cai', N'Nùng', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 502092347578, '2000-2-26', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (429, N'429', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (423, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 78 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2000-2-26', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 424, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 425, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 426, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 427, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 428, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (78, 429, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bá Thành', NULL, '1971-1-26', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 897035244082, '1992-5-22', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (430, N'430', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Mai', NULL, '1976-9-17', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 938', 897334229643, '1992-5-22', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (431, N'431', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Giang', NULL, '1937-9-21', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 261816686612, '1992-5-22', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (432, N'432', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Quang Lương', NULL, '2000-3-9', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 893', 392541870339, '2000-3-9', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (433, N'433', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Yến', NULL, '2001-10-18', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 336', 450780237267, '2001-10-18', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (434, N'434', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trung Đạt', NULL, '1914-5-16', N'Ninh Bình', N'Nam', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 524917703033, '1992-5-22', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (435, N'435', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Thư', NULL, '1913-7-27', N'Ninh Bình', N'Nữ', N'Ninh Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 185656766684, '1992-5-22', N'Ninh Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (436, N'436', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (430, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 79 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1992-5-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 431, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 432, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 433, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 434, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 435, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (79, 436, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Nam Cảnh', NULL, '1970-11-25', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 951', 542755062754, '1996-7-19', N'Yên Bái', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (437, N'437', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Huyền Huyền', NULL, '1971-10-25', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 723', 190537313472, '1996-7-19', N'Yên Bái', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (438, N'438', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trung Đạt', NULL, '1939-6-1', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 039978514264, '1996-7-19', N'Yên Bái', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (439, N'439', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Phương Anh', NULL, '1935-5-2', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 653520330596, '1996-7-19', N'Yên Bái', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (440, N'440', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Lan', NULL, '1911-1-8', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 141163083660, '1996-7-19', N'Yên Bái', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (441, N'441', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (437, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 80 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1996-7-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 438, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 439, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 440, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (80, 441, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thị Hương', NULL, '1984-11-9', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 629', 258548890680, '1993-3-20', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (442, N'442', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hải Thái', NULL, '1989-9-8', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 062725859447, '1993-3-20', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (443, N'443', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trung Phong', NULL, '1956-1-7', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 391224116381, '1993-3-20', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (444, N'444', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Xuân Linh', NULL, '1955-1-6', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 353256380015, '1993-3-20', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (445, N'445', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Quang Biển', NULL, '2016-11-16', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 116', NULL, '2016-11-16', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (446, N'446', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (442, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 81 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-3-20', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 443, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 444, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 445, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (81, 446, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Nam Hải', NULL, '1974-7-15', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 889', 674583650281, '2005-3-27', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (447, N'447', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Xuân Mai', NULL, '1973-1-1', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 356183992396, '2005-3-27', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (448, N'448', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Xuân Trường', NULL, '2000-9-16', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 475566229472, '2005-3-27', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (449, N'449', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Đăng Đức', NULL, '1919-7-25', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 039987688102, '2005-3-27', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (450, N'450', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (447, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 82 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2005-3-27', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 448, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 449, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (82, 450, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thành Trường', NULL, '1992-1-19', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 307', 108240496184, '2008-9-21', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (451, N'451', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Mai Nhi', NULL, '1992-7-15', N'Khánh Hòa', N'Nữ', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 370', 118043072640, '2008-9-21', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (452, N'452', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thành Chiến', NULL, '1962-8-3', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 181', 133589418833, '2008-9-21', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (453, N'453', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Đức Đạt', NULL, '1935-11-24', N'Khánh Hòa', N'Nam', N'Khánh Hòa', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 874496551902, '2008-9-21', N'Khánh Hòa', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (454, N'454', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (451, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 83 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-9-21', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 452, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 453, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (83, 454, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Bá Cảnh', NULL, '1988-7-1', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Không', N'Không', 322176543342, '1990-8-16', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (455, N'455', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thanh Anh', NULL, '1985-9-19', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 417', 364215117539, '1990-8-16', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (456, N'456', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thành Hải', NULL, '2020-9-18', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Không', N'Không', NULL, '2020-9-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (457, N'457', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Ngọc Nhi', NULL, '2016-7-17', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Học sinh', N'Trường tiểu học 590', NULL, '2016-7-17', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (458, N'458', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Trường Linh', NULL, '1927-7-27', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 205984878688, '1990-8-16', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (459, N'459', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Thu Trang', NULL, '1930-5-12', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 793465706349, '1990-8-16', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (460, N'460', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (455, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 84 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1990-8-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 456, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 457, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 458, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 459, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (84, 460, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Đăng Đạt', NULL, '1973-9-21', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 478', 864256264443, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (461, N'461', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Khuê', NULL, '1975-9-11', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 972439358641, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (462, N'462', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Ngọc Ly', NULL, '1946-6-10', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 543828020273, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (463, N'463', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Văn Linh', NULL, '1999-1-25', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 359', 221110656923, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (464, N'464', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thành Đức', NULL, '1915-10-3', N'Nam Định', N'Nam', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 316368967645, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (465, N'465', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Mai Ly', NULL, '1910-11-13', N'Nam Định', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 494325904690, '2006-10-8', N'Nam Định', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (466, N'466', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (461, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 85 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-10-8', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 462, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 463, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 464, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 465, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (85, 466, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Ly', NULL, '1989-4-1', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 683', 968294999474, '2015-11-8', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (467, N'467', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Hoàng Phong', NULL, '1984-3-19', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 946', 709954229477, '2015-11-8', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (468, N'468', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thanh Anh', NULL, '1963-6-2', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 328', 631931501293, '2015-11-8', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (469, N'469', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Đăng Đức', NULL, '2019-7-6', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-7-6', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (470, N'470', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thanh Khánh', NULL, '2019-4-27', N'Vĩnh Phúc', N'Nữ', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-4-27', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (471, N'471', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thanh Minh', NULL, '1925-5-8', N'Vĩnh Phúc', N'Nam', N'Vĩnh Phúc', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 810445434701, '2015-11-8', N'Vĩnh Phúc', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (472, N'472', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (467, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 86 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2015-11-8', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 468, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 469, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 470, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 471, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (86, 472, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Ngọc Lan', NULL, '1977-2-12', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 123', 404709803208, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (473, N'473', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Bá Luân', NULL, '1979-1-10', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 569905041297, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (474, N'474', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Sơn Khôi', NULL, '1946-6-20', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 506470387741, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (475, N'475', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Xuân Linh', NULL, '1946-5-24', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 562391068559, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (476, N'476', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thanh Nam', NULL, '2009-9-18', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 359', NULL, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (477, N'477', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Huyền Giang', NULL, '2007-1-6', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 469', 121139905510, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (478, N'478', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thu Nhi', NULL, '1909-2-23', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 962076660866, '2021-3-11', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (479, N'479', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (473, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 87 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2021-3-11', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 474, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 475, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 476, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 477, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 478, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (87, 479, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Văn Tùng', NULL, '1991-6-8', N'Sơn La', N'Nam', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 838', 239401885588, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (480, N'480', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Ngọc Linh', NULL, '1986-3-6', N'Sơn La', N'Nữ', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 475', 205204307989, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (481, N'481', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trọng Hải', NULL, '1958-7-12', N'Sơn La', N'Nam', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 309', 697187814668, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (482, N'482', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Bảo Thư', NULL, '1957-8-18', N'Sơn La', N'Nữ', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 416095901193, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (483, N'483', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Cảnh', NULL, '2018-4-8', N'Sơn La', N'Nam', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2018-4-8', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (484, N'484', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Trọng Quốc', NULL, '1936-2-10', N'Sơn La', N'Nam', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 634296427898, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (485, N'485', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Nhi', NULL, '1930-9-14', N'Sơn La', N'Nữ', N'Sơn La', N'Sán Dìu', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 628604692066, '2007-4-18', N'Sơn La', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (486, N'486', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (480, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 88 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2007-4-18', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 481, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 482, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 483, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 484, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 485, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (88, 486, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thu Yến', NULL, '1981-11-4', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 652', 386686037978, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (487, N'487', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trung Lương', NULL, '1983-11-20', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 201', 988740695911, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (488, N'488', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Cao Hưng', NULL, '1953-7-7', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 845622828326, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (489, N'489', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Diệu Trang', NULL, '1949-4-9', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 656312129143, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (490, N'490', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thành Sơn', NULL, '1927-7-4', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 913419444710, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (491, N'491', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Hương', NULL, '1926-3-16', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 438045531520, '1995-4-3', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (492, N'492', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (487, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 89 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1995-4-3', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 488, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 489, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 490, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 491, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (89, 492, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thanh Minh', NULL, '1976-6-26', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 945268992159, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (493, N'493', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nhật Nam', NULL, '1972-4-24', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 358', 456464852482, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (494, N'494', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Đăng Hải', NULL, '1945-9-7', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 044304447782, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (495, N'495', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Xuân Khánh', NULL, '1945-4-27', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 547297731933, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (496, N'496', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Diệu Tâm', NULL, '2003-8-7', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 760', 924951983464, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (497, N'497', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Hoàng Kiên', NULL, '1925-11-17', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 396041150389, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (498, N'498', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thị Minh', NULL, '1924-3-13', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 882805756780, '2016-3-25', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (499, N'499', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (493, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 90 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2016-3-25', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 494, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 495, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 496, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 497, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 498, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (90, 499, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trọng Thành', NULL, '1990-7-7', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 874553936880, '2017-1-24', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (500, N'500', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Diệu Yến', NULL, '1988-1-10', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 674', 691125204314, '2017-1-24', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (501, N'501', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Bảo Khuê', NULL, '1956-7-21', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 244733696893, '2017-1-24', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (502, N'502', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trường Hưng', NULL, '2015-11-4', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 996', NULL, '2017-1-24', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (503, N'503', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Quỳnh Khánh', NULL, '2019-11-26', N'Quảng Trị', N'Nữ', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-11-26', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (504, N'504', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Minh Đạt', NULL, '1926-10-9', N'Quảng Trị', N'Nam', N'Quảng Trị', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 174664378027, '2017-1-24', N'Quảng Trị', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (505, N'505', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (500, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 91 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-1-24', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 501, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 502, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 503, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 504, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (91, 505, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hương Giang', NULL, '1973-7-26', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 210', 486240134850, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (506, N'506', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hoàng Kiên', NULL, '1974-11-24', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 338', 084252172841, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (507, N'507', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Nhật Long', NULL, '1939-7-26', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 779062050654, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (508, N'508', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Minh Khánh', NULL, '1943-2-9', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 916478592421, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (509, N'509', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thị Phương', NULL, '2001-8-1', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Sinh viên', N'Trường Đại học 572', 662727161703, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (510, N'510', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Duy Nhật', NULL, '1905-9-10', N'Bắc Ninh', N'Nam', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 845619259918, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (511, N'511', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Khánh Anh', NULL, '1903-10-18', N'Bắc Ninh', N'Nữ', N'Bắc Ninh', N'Dao', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 823853692090, '2010-3-8', N'Bắc Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (512, N'512', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (506, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 92 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2010-3-8', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 507, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 508, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 509, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 510, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 511, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (92, 512, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hải Chiến', NULL, '1989-9-22', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 861', 890435009868, '2002-2-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (513, N'513', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Huyền Huyền', NULL, '1984-1-16', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 862258122977, '2002-2-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (514, N'514', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Huyền Yến', NULL, '1960-4-27', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 850', 601385199803, '2002-2-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (515, N'515', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Trung Bảo', NULL, '2020-11-23', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-11-23', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (516, N'516', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Phương Hương', NULL, '2016-9-11', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 790', NULL, '2016-9-11', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (517, N'517', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Thu Huyền', NULL, '1931-11-18', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 653734009278, '2002-2-1', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (518, N'518', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (513, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 93 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2002-2-1', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 514, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 515, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 516, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 517, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (93, 518, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Diệu Thư', NULL, '1993-1-9', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 552', 016096877754, '2004-10-14', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (519, N'519', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nhật Linh', NULL, '1995-3-21', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 658', 493011000607, '2004-10-14', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (520, N'520', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Đức Thái', NULL, '1959-7-15', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 430538296799, '2004-10-14', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (521, N'521', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Phương Trang', NULL, '1960-4-27', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 646', 177137076074, '2004-10-14', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (522, N'522', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Thị Phương', NULL, '1929-5-24', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 261653843527, '2004-10-14', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (523, N'523', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (519, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 94 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2004-10-14', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 520, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 521, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 522, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (94, 523, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Cao Hiển', NULL, '1976-11-26', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 596', 799310824397, '2009-4-23', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (524, N'524', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Thu Khánh', NULL, '1981-1-16', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 857', 912303721645, '2009-4-23', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (525, N'525', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Bá Đức', NULL, '1943-8-10', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 019424607433, '2009-4-23', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (526, N'526', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Quỳnh Hà', NULL, '1949-7-13', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 697353200578, '2009-4-23', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (527, N'527', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Minh Phương', NULL, '1915-11-23', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 598824622758, '2009-4-23', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (528, N'528', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (524, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 95 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2009-4-23', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 525, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 526, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 527, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (95, 528, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Khánh Ly', NULL, '1991-6-7', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 109', 794954640572, '2011-4-19', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (529, N'529', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Nhật Mạnh', NULL, '1992-3-23', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 810', 691400219094, '2011-4-19', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (530, N'530', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Duy Minh', NULL, '1957-11-14', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 940660330661, '2011-4-19', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (531, N'531', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Hương Huyền', NULL, '1963-10-14', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 154', 530375742434, '2011-4-19', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (532, N'532', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Nhật Long', NULL, '2022-8-26', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2022-8-26', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (533, N'533', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Thu Khánh', NULL, '2017-3-14', N'Đà Nẵng', N'Nữ', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2017-3-14', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (534, N'534', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Quang Hùng', NULL, '1939-7-12', N'Đà Nẵng', N'Nam', N'Đà Nẵng', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 341350260372, '2011-4-19', N'Đà Nẵng', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (535, N'535', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (529, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 96 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2011-4-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 530, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 531, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 532, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 533, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 534, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (96, 535, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Nam', NULL, '1972-9-27', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 849', 599412623011, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (536, N'536', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Khánh Phương', NULL, '1974-3-11', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 077202637671, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (537, N'537', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Hải Nguyên', NULL, '1941-7-15', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 330723437051, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (538, N'538', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Xuân Khánh', NULL, '2003-10-13', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 774', 835888439804, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (539, N'539', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Cao Hải', NULL, '1916-5-2', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 127764346077, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (540, N'540', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Khánh Trang', NULL, '1917-3-27', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 216354899900, '2012-5-21', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (541, N'541', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (536, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 97 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2012-5-21', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 537, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 538, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 539, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 540, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (97, 541, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Minh Lương', NULL, '1986-4-9', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 672', 302409939725, '1999-6-14', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (542, N'542', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thanh Lan', NULL, '1986-6-10', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 351', 262679234178, '1999-6-14', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (543, N'543', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Văn Phong', NULL, '1951-7-25', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 308334400754, '1999-6-14', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (544, N'544', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Xuân Trang', NULL, '1953-10-26', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 807707882441, '1999-6-14', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (545, N'545', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đào Thu Minh', NULL, '2017-8-12', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2017-8-12', N'Quảng Ninh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (546, N'546', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (542, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 98 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-6-14', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 543, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 544, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 545, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (98, 546, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Trường Hiển', NULL, '1982-3-11', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 658', 277152717725, '2007-11-3', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (547, N'547', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thị Hương', NULL, '1984-5-22', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 969', 917148641891, '2007-11-3', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (548, N'548', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Hoàng Hùng', NULL, '1949-4-23', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 209683963446, '2007-11-3', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (549, N'549', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Bảo Phương', NULL, '1949-7-8', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 110569658768, '2007-11-3', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (550, N'550', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Duy Thành', NULL, '2010-4-5', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 903', NULL, '2010-4-5', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (551, N'551', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thị Oanh', NULL, '2013-6-10', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 336', NULL, '2013-6-10', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (552, N'552', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thanh Minh', NULL, '1912-9-24', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 456554578179, '2007-11-3', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (553, N'553', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (547, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 99 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2007-11-3', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 548, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 549, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 550, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 551, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 552, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (99, 553, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Nam Lộc', NULL, '1989-5-23', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 183', 921054100495, '1997-1-8', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (554, N'554', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Xuân Huyền', NULL, '1992-3-13', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 719', 956511843609, '1997-1-8', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (555, N'555', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Khánh Linh', NULL, '1958-8-8', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 185', 075450796579, '1997-1-8', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (556, N'556', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thanh Sơn', NULL, '1934-9-9', N'Hà Nội', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 352797060497, '1997-1-8', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (557, N'557', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thanh Anh', NULL, '1926-3-10', N'Hà Nội', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 860946365781, '1997-1-8', N'Hà Nội', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (558, N'558', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (554, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 100 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1997-1-8', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 555, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 556, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 557, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (100, 558, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Sơn Luân', NULL, '1978-6-7', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 259', 588527742490, '2017-7-24', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (559, N'559', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Khánh Phương', NULL, '1982-9-7', N'Yên Bái', N'Nữ', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 536', 332012192629, '2017-7-24', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (560, N'560', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hoàng Đạt', NULL, '1946-1-10', N'Yên Bái', N'Nam', N'Yên Bái', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 005530985819, '2017-7-24', N'Yên Bái', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (561, N'561', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (559, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 101 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-7-24', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (101, 560, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (101, 561, N'Bố');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Bảo Anh', NULL, '1994-7-9', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 971541550308, '2013-11-15', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (562, N'562', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Xuân Minh', NULL, '1998-8-10', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 474333810875, '2013-11-15', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (563, N'563', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Diệu Trang', NULL, '1961-6-5', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 579', 132691085119, '2013-11-15', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (564, N'564', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Vũ Thị Nhi', NULL, '2020-11-16', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2020-11-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (565, N'565', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (562, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 102 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2013-11-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 563, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 564, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (102, 565, N'Con gái');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thị Khuê', NULL, '1981-8-3', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 109', 452981278927, '2017-6-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (566, N'566', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Trọng Dũng', NULL, '1976-7-14', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 810', 486340449220, '2017-6-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (567, N'567', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thành Hiển', NULL, '1952-11-15', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 687433794336, '2017-6-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (568, N'568', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hương Khuê', NULL, '2009-8-2', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 255', NULL, '2017-6-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (569, N'569', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Ngọc Thư', NULL, '1925-11-5', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 312704199196, '2017-6-22', N'Quảng Bình', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (570, N'570', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (566, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 103 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-6-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 567, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 568, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 569, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (103, 570, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hương Anh', NULL, '1976-1-27', N'Điện Biên', N'Nữ', N'Điện Biên', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 962', 598965382577, '1996-10-1', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (571, N'571', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Nam Trường', NULL, '1975-2-23', N'Điện Biên', N'Nam', N'Điện Biên', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Không', N'Không', 783597545931, '1996-10-1', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (572, N'572', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Hương Mai', NULL, '1943-11-17', N'Điện Biên', N'Nữ', N'Điện Biên', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 693671629131, '1996-10-1', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (573, N'573', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Xuân Tâm', NULL, '2005-3-20', N'Điện Biên', N'Nữ', N'Điện Biên', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Học sinh', N'Trường THPT 677', 244753590823, '2005-3-20', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (574, N'574', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trương Cao Minh', NULL, '1921-3-25', N'Điện Biên', N'Nam', N'Điện Biên', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 835980715805, '1996-10-1', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (575, N'575', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (571, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 104 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1996-10-1', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 572, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 573, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 574, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (104, 575, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hương Hương', NULL, '1980-2-8', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 972', 280427529292, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (576, N'576', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Quang Mạnh', NULL, '1980-7-3', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 176', 210181477157, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (577, N'577', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Gia Hưng', NULL, '1951-2-16', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 650926554098, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (578, N'578', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thị Ly', NULL, '1948-3-14', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 281768178671, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (579, N'579', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Hà', NULL, '2013-8-12', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 559', NULL, '2013-8-12', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (580, N'580', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Xuân Luân', NULL, '1915-9-17', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 999215671726, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (581, N'581', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Khánh Lan', NULL, '1924-11-3', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 587998643481, '2005-4-9', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (582, N'582', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (576, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 105 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2005-4-9', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 577, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 578, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 579, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 580, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 581, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (105, 582, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Đăng Nhật', NULL, '1980-3-2', N'Điện Biên', N'Nam', N'Điện Biên', N'Mường', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 730', 153710977663, '2006-2-19', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (583, N'583', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Quỳnh Minh', NULL, '1976-3-26', N'Điện Biên', N'Nữ', N'Điện Biên', N'Mường', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 608', 405342427908, '2006-2-19', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (584, N'584', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Trung Hải', NULL, '1951-7-23', N'Điện Biên', N'Nam', N'Điện Biên', N'Mường', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 402536460850, '2006-2-19', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (585, N'585', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hải Lâm', NULL, '1921-9-3', N'Điện Biên', N'Nam', N'Điện Biên', N'Mường', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 928740925633, '2006-2-19', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (586, N'586', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (583, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 106 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2006-2-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 584, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 585, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (106, 586, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Huyền Hương', NULL, '1982-4-26', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 395454509555, '1992-10-18', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (587, N'587', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Đăng Lương', NULL, '1982-7-14', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 570', 781050368604, '1992-10-18', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (588, N'588', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Diệu Oanh', NULL, '1953-4-15', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 032987112672, '1992-10-18', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (589, N'589', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Quang Hiển', NULL, '2013-11-15', N'Hưng Yên', N'Nam', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 467', NULL, '2013-11-15', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (590, N'590', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Thị Ly', NULL, '2015-6-21', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 552', NULL, '2015-6-21', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (591, N'591', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Minh Khánh', NULL, '1913-4-7', N'Hưng Yên', N'Nữ', N'Hưng Yên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 520671068292, '1992-10-18', N'Hưng Yên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (592, N'592', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (587, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 107 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1992-10-18', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 588, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 589, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 590, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 591, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (107, 592, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Xuân Khuê', NULL, '1987-2-24', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 255', 370767656252, '2011-6-16', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (593, N'593', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Nam Dũng', NULL, '1987-3-3', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 429', 843697188998, '2011-6-16', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (594, N'594', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Cao Minh', NULL, '1953-6-27', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 506480017782, '2011-6-16', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (595, N'595', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Minh Huyền', NULL, '1958-9-18', N'Hà Nam', N'Nữ', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 988238912795, '2011-6-16', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (596, N'596', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Trần Trường Bảo', NULL, '1927-4-2', N'Hà Nam', N'Nam', N'Hà Nam', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 549427449311, '2011-6-16', N'Hà Nam', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (597, N'597', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (593, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 108 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2011-6-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 594, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 595, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 596, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (108, 597, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Đăng Cảnh', NULL, '1976-6-5', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 271', 763294143152, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (598, N'598', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Diệu Tâm', NULL, '1975-1-16', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 361', 440406129552, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (599, N'599', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Minh Oanh', NULL, '1949-2-19', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 736650382443, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (600, N'600', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Thanh Đức', NULL, '2006-4-12', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Học sinh', N'Trường THPT 221', 525343494454, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (601, N'601', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Trọng Minh', NULL, '1910-2-13', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 086202478047, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (602, N'602', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Phạm Diệu Yến', NULL, '1910-1-20', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Thiên Chúa Giáo', N'Việt Nam', N'Hưu trí', N'Không', 288258656680, '2008-4-7', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (603, N'603', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (598, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 109 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2008-4-7', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 599, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 600, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 601, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 602, N'Ông nội');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (109, 603, N'Bà nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Ngọc Tâm', NULL, '1986-8-8', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 581', 627672545334, '2007-8-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (604, N'604', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Minh Lộc', NULL, '1989-1-6', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 225', 368431087000, '2007-8-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (605, N'605', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Duy Lâm', NULL, '1956-2-8', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 328671630719, '2007-8-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (606, N'606', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Khánh Hà', NULL, '1958-11-26', N'Lào Cai', N'Nữ', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Công ty TNHH 188', 261864617125, '2007-8-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (607, N'607', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Duy Lâm', NULL, '1916-9-3', N'Lào Cai', N'Nam', N'Lào Cai', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 740973547605, '2007-8-12', N'Lào Cai', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (608, N'608', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (604, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 110 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2007-8-12', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 605, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 606, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 607, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (110, 608, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hương Phương', NULL, '1992-11-16', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 426', 775248028588, '2003-5-19', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (609, N'609', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Nam Hùng', NULL, '1996-9-7', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 290', 495511120234, '2003-5-19', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (610, N'610', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Bá Hùng', NULL, '2019-7-5', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-7-5', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (611, N'611', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Nguyễn Hương Tâm', NULL, '1925-10-19', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 874184971238, '2003-5-19', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (612, N'612', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (609, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 111 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2003-5-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 610, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 611, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (111, 612, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Hoàng Bảo', NULL, '1982-3-9', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 966', 033816882441, '2020-6-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (613, N'613', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Mai Tâm', NULL, '1987-7-11', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 341', 143836295370, '2020-6-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (614, N'614', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Xuân Mai', NULL, '1948-9-7', N'TP. Hồ Chí Minh', N'Nữ', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 887832474697, '2020-6-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (615, N'615', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Đức Đạt', NULL, '2011-9-27', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 376', NULL, '2020-6-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (616, N'616', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thanh Phong', NULL, '1917-10-21', N'TP. Hồ Chí Minh', N'Nam', N'TP. Hồ Chí Minh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 077538856640, '2020-6-16', N'TP. Hồ Chí Minh', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (617, N'617', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (613, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 112 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2020-6-16', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 614, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 615, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 616, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (112, 617, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Thư', NULL, '1983-4-9', N'Điện Biên', N'Nữ', N'Điện Biên', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 170', 493165463072, '2004-5-2', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (618, N'618', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Nhật Chiến', NULL, '1981-8-7', N'Điện Biên', N'Nam', N'Điện Biên', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 537050132992, '2004-5-2', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (619, N'619', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Minh Bảo', NULL, '1952-2-18', N'Điện Biên', N'Nam', N'Điện Biên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 758741706143, '2004-5-2', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (620, N'620', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Bùi Trọng Lộc', NULL, '1922-3-2', N'Điện Biên', N'Nam', N'Điện Biên', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 476446143718, '2004-5-2', N'Điện Biên', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (621, N'621', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (618, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 113 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2004-5-2', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 619, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 620, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (113, 621, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Lan', NULL, '1973-1-26', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 719588748257, '1999-1-22', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (622, N'622', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Hoàng Chiến', NULL, '1968-11-9', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 636416244797, '1999-1-22', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (623, N'623', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Khánh Thư', NULL, '1942-5-8', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 782393464174, '1999-1-22', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (624, N'624', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Cao Biển', NULL, '2007-4-15', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 928', 337979707665, '2007-4-15', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (625, N'625', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Minh Anh', NULL, '2001-2-20', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học 837', 427667055239, '2001-2-20', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (626, N'626', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Văn Sơn', NULL, '1921-1-18', N'Phú Thọ', N'Nam', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 021320022018, '1999-1-22', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (627, N'627', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Lê Thanh Khuê', NULL, '1913-5-20', N'Phú Thọ', N'Nữ', N'Phú Thọ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 550748191628, '1999-1-22', N'Phú Thọ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (628, N'628', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (622, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 114 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1999-1-22', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 623, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 624, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 625, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 626, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 627, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (114, 628, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Hoàng Thắng', NULL, '1984-7-26', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 412', 873233117587, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (629, N'629', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thị Ly', NULL, '1989-7-22', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 954', 260772489891, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (630, N'630', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Nam Hưng', NULL, '1955-9-5', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 426688353508, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (631, N'631', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Huyền Nhi', NULL, '1954-3-9', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 547509522643, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (632, N'632', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Thanh Hải', NULL, '2010-6-25', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 951', NULL, '2010-6-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (633, N'633', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Xuân Phương', NULL, '2013-4-21', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 645', NULL, '2013-4-21', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (634, N'634', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Cao Hiếu', NULL, '1927-11-6', N'Cần Thơ', N'Nam', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 373667877189, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (635, N'635', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Mai Ly', NULL, '1916-2-16', N'Cần Thơ', N'Nữ', N'Cần Thơ', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 007198537328, '1991-1-25', N'Cần Thơ', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (636, N'636', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (629, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 115 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1991-1-25', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 630, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 631, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 632, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 633, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 634, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 635, N'Ông ngoại');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (115, 636, N'Bà ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Xuân Hà', NULL, '1984-3-19', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 554', 714014162799, '1993-1-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (637, N'637', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Duy Kiên', NULL, '1981-4-7', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 807908105415, '1993-1-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (638, N'638', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Trường Minh', NULL, '1950-2-22', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 058748389849, '1993-1-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (639, N'639', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Huyền Mai', NULL, '1956-7-25', N'Tuyên Quang', N'Nữ', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 077616457765, '1993-1-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (640, N'640', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Hoàng Dũng', NULL, '2012-9-23', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 953', NULL, '2012-9-23', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (641, N'641', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đinh Đăng Lộc', NULL, '1931-5-26', N'Tuyên Quang', N'Nam', N'Tuyên Quang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 793424613939, '1993-1-18', N'Tuyên Quang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (642, N'642', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (637, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 116 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '1993-1-18', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 638, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 639, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 640, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 641, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (116, 642, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Khánh Anh', NULL, '1978-6-3', N'Bắc Giang', N'Nữ', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 813148554814, '2014-6-15', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (643, N'643', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Hoàng Tùng', NULL, '1975-9-20', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 720', 800575275102, '2014-6-15', N'Bắc Giang', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (644, N'644', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Trung Quốc', NULL, '1944-3-14', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 640308992012, '2014-6-15', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (645, N'645', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Thành Linh', NULL, '2007-2-4', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 343', 845527970325, '2014-6-15', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (646, N'646', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Trường Đức', NULL, '1915-1-1', N'Bắc Giang', N'Nam', N'Bắc Giang', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 093466498697, '2014-6-15', N'Bắc Giang', N'Thường trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (647, N'647', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (643, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 117 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2014-6-15', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 644, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 645, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 646, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (117, 647, N'Ông nội');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Nhật Linh', NULL, '1987-7-3', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 458972752473, '2000-11-19', N'Sơn La', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (648, N'648', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Xuân Hương', NULL, '1983-6-13', N'Sơn La', N'Nữ', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', 557091470306, '2000-11-19', N'Sơn La', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (649, N'649', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Quang Thành', NULL, '1954-6-25', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 300511753149, '2000-11-19', N'Sơn La', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (650, N'650', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đỗ Nhật Sơn', NULL, '2019-7-20', N'Sơn La', N'Nam', N'Sơn La', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', NULL, '2019-7-20', N'Sơn La', N'Tạm vắng');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (651, N'651', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (648, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 118 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2000-11-19', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 649, N'Vợ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 650, N'Bố');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (118, 651, N'Con trai');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Bảo Hương', NULL, '1985-1-14', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 359', 307967604249, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (652, N'652', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Cao Sơn', NULL, '1982-9-18', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Bảo vệ', N'Công ty TNHH 740', 399472275777, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (653, N'653', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Hương Trang', NULL, '1959-11-25', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'Công ty TNHH 340', 812672149956, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (654, N'654', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Quang Quốc', NULL, '2010-5-23', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS 795', NULL, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (655, N'655', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Ngọc Phương', NULL, '2014-5-25', N'Quảng Ninh', N'Nữ', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học 427', NULL, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (656, N'656', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Đặng Gia Minh', NULL, '1932-9-21', N'Quảng Ninh', N'Nam', N'Quảng Ninh', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 744108053497, '2017-10-21', N'Quảng Ninh', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (657, N'657', N'12345678', N'Người dân');

INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (652, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 119 đường Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', '2017-10-21', N'Thường trú');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 653, N'Chồng');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 654, N'Mẹ');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 655, N'Con trai');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 656, N'Con gái');
INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES (119, 657, N'Ông ngoại');

INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Diệu Khuê', NULL, '1981-8-7', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Giám đốc', N'Công ty TNHH 191', 645059572455, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (658, N'658', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Duy Đức', NULL, '1980-1-12', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên', N'Công ty TNHH 400', 144328869908, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (659, N'659', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Minh Lâm', NULL, '1952-7-4', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 796627684683, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (660, N'660', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Thị Huyền', NULL, '1946-4-19', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 777403555778, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (661, N'661', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Hoàng Linh', NULL, '1930-4-7', N'Quảng Bình', N'Nam', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 701078636849, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (662, N'662', N'12345678', N'Người dân');
INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (N'Võ Huyền Yến', NULL, '1918-8-1', N'Quảng Bình', N'Nữ', N'Quảng Bình', N'Kinh', N'Không', N'Việt Nam', N'Hưu trí', N'Không', 728874436877, '2011-8-11', N'Quảng Bình', N'Tạm trú');
INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (663, N'663', N'12345678', N'Người dân');


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
	VALUES	(648, N'Quảng Bình', '2023-01-01', '2023-01-30', N'Du lịch', N'Đã duyệt'),
            (649, N'Quảng Bình', '2023-01-01', '2023-01-30', N'Du lịch', N'Đã duyệt'),
            (650, N'Quảng Bình', '2023-01-01', '2023-01-30', N'Du lịch', N'Đã duyệt'),
            (651, N'Quảng Bình', '2023-01-01', '2023-01-30', N'Du lịch', N'Đã duyệt'),
            (437, N'Yên Bái', '2023-02-01', '2023-02-28', N'Về quê', N'Đã duyệt'),
            (438, N'Yên Bái', '2023-02-01', '2023-02-28', N'Về quê', N'Đã duyệt'),
            (439, N'Yên Bái', '2023-02-01', '2023-02-28', N'Về quê', N'Đã duyệt'),
            (440, N'Yên Bái', '2023-02-01', '2023-02-28', N'Về quê', N'Đã duyệt'),
            (441, N'Yên Bái', '2023-02-01', '2023-02-28', N'Về quê', N'Đã duyệt'),
            (644, N'Bắc Giang', '2023-02-15', '2023-05-15', N'Đi công tác dài ngày', N'Chưa duyệt');


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
	VALUES	(658, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (659, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (660, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (661, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (662, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (663, N'Quảng Bình', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-12-01', '2023-06-04', N'Thăm họ hàng', N'Đã duyệt'),
            (652, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt'),
            (653, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt'),
            (654, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt'),
            (655, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt'),
            (656, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt'),
            (657, N'Quảng Ninh', N'Số 55 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-03-01', '2023-03-15', N'Du lịch', N'Chờ duyệt');

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
	VALUES  (54, '2011-02-11', NULL, N'Đã duyệt'),
            (89, '2010-05-15', NULL, N'Đã duyệt'),
            (96, '2020-10-20', NULL, N'Chờ duyệt'),
            (97, '2021-04-20', NULL, N'Chờ duyệt'),
            (109, '2020-02-20', NULL, N'Chờ duyệt'),
            (113, '2022-09-20', NULL, N'Chờ duyệt'),
            (169, '2021-05-20', NULL, N'Chờ duyệt'),
            (170, '2021-07-20', NULL, N'Chờ duyệt'),
            (214, '2020-08-20', NULL, N'Chờ duyệt'),
            (298, '2020-09-20', NULL, N'Chờ duyệt'),
            (304, '2021-10-20', NULL, N'Chờ duyệt'),
            (305, '2021-08-04', NULL, N'Chờ duyệt'),
            (323, '2021-11-20', NULL, N'Chờ duyệt'),
            (339, '2021-07-20', NULL, N'Chờ duyệt'),
            (457, '2020-09-20', NULL, N'Chờ duyệt'),
            (516, '2020-11-23', NULL, N'Chờ duyệt'),
            (533, '2022-08-26', NULL, N'Chờ duyệt'),
            (565, '2020-11-16', NULL, N'Chờ duyệt');


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
	VALUES	(8, 7, '2020-12-02', '2020-12-01', NULL, N'Đã duyệt'),
            (12, 11, '2021-01-02', '2020-01-01', NULL, N'Đã duyệt'),
            (13, 11, '2022-02-02', '2020-02-01', NULL, N'Đã duyệt'),
            (16, 15, '2020-03-02', '2020-03-01', NULL, N'Đã duyệt'),
            (23, 22, '2021-04-02', '2020-04-01', NULL, N'Đã duyệt'),
            (24, 22, '2022-05-02', '2020-05-01', NULL, N'Đã duyệt'),
            (30, 29, '2020-06-02', '2020-06-01', NULL, N'Đã duyệt'),
            (36, 35, '2021-07-02', '2020-07-01', NULL, N'Đã duyệt'),
            (40, 39, '2022-08-02', '2020-08-01', NULL, N'Đã duyệt'),
            (41, 39, '2020-09-02', '2020-09-01', NULL, N'Đã duyệt'),
            (46, 45, '2021-10-02', '2020-10-01', NULL, N'Đã duyệt'),
            (63, 62, '2022-11-02', '2020-11-01', NULL, N'Đã duyệt'),
            (64, 62, '2020-12-02', '2020-12-01', NULL, N'Đã duyệt'),
            (70, 69, '2021-01-02', '2020-01-01', NULL, N'Đã duyệt'),
            (74, 73, '2022-02-02', '2020-02-01', NULL, N'Đã duyệt'),
            (86, 85, '2020-03-02', '2020-03-01', NULL, N'Đã duyệt'),
            (90, 89, '2021-04-02', '2020-04-01', NULL, N'Đã duyệt'),
            (91, 89, '2022-05-02', '2020-05-01', NULL, N'Đã duyệt'),
            (98, 97, '2020-06-02', '2020-06-01', NULL, N'Đã duyệt'),
            (103, 102, '2021-07-02', '2020-07-01', NULL, N'Đã duyệt'),
            (104, 102, '2022-08-02', '2020-08-01', NULL, N'Đã duyệt'),
            (114, 113, '2020-09-02', '2020-09-01', NULL, N'Đã duyệt'),
            (118, 117, '2021-10-02', '2020-10-01', NULL, N'Chờ duyệt'),
            (119, 117, '2022-11-02', '2020-11-01', NULL, N'Chờ duyệt'),
            (124, 123, '2020-12-02', '2020-12-01', NULL, N'Chờ duyệt');

UPDATE NhanKhau SET trangThai = N'Qua đời' WHERE YEAR(ngaySinh) <= 1930;

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
	VALUES	(286, '2023-02-01', N'Mỹ', NULL, N'Đã duyệt'),
            (312, '2022-10-30', N'TP. Hồ Chí Minh', NULL, N'Đã duyệt'),
            (27, '2023-01-01', N'Hà Giang', NULL, N'Đã duyệt'),
            (33, '2022-10-01', N'Khánh Hòa', NULL, N'Chờ duyệt'),
            (44, '2021-01-24', N'Quảng Bình', NULL, N'Không duyệt'),
            (55, '2022-03-01', N'Đà Nẵng', NULL, N'Chờ duyệt'),
            (520, '2023-03-01', N'Đà Nẵng', NULL, N'Chờ duyệt');

UPDATE NhanKhau SET trangThai = N'Đã chuyển đi' WHERE idNhanKhau IN(286, 312, 27, 33, 44, 55, 520);

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
	VALUES	(330, '2018-01-21', NULL, N'Đã duyệt'),
            (335, '2019-02-11', NULL, N'Đã duyệt'),
            (341, '2021-05-17', NULL, N'Đã duyệt'),
            (640, '2021-05-17', NULL, N'Chờ duyệt');


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
    VALUES  (331, 61, '2018-01-21', NULL, N'Đã duyệt'),
            (332, 61, '2018-01-21', NULL, N'Đã duyệt'),
            (333, 61, '2018-01-21', NULL, N'Đã duyệt'),
            (334, 61, '2018-01-21', NULL, N'Đã duyệt'),
            (336, 62, '2018-01-21', NULL, N'Đã duyệt'),
            (337, 62, '2018-01-21', NULL, N'Đã duyệt'),
            (338, 62, '2018-01-21', NULL, N'Đã duyệt'),
            (339, 62, '2018-01-21', NULL, N'Đã duyệt'),
            (340, 62, '2018-01-21', NULL, N'Đã duyệt');


CREATE TABLE DipTraoThuong(
	idDip INT NOT NULL AUTO_INCREMENT,
	loaiDip VARCHAR(30) NOT NULL,
	tenDip VARCHAR(255) NOT NULL,
	ngayTraoThuong DATE NOT NULL,
	CONSTRAINT PK_DipTraoThuong PRIMARY KEY(idDip)
);

INSERT INTO DipTraoThuong(loaiDip, tenDip, ngayTraoThuong)
	VALUES	(N'Dịp đặc biệt', N'Tết thiếu nhi 2019', '2019-06-01'),
            (N'Cuối năm học', N'Cuối năm học 2018-2019', '2019-06-01'),
            (N'Dịp đặc biệt', N'Trung thu 2019', '2019-09-20'),
            (N'Dịp đặc biệt', N'Tết thiếu nhi 2020', '2020-06-01'),
            (N'Cuối năm học', N'Cuối năm học 2019-2020', '2020-06-01'),
            (N'Dịp đặc biệt', N'Trung thu 2020', '2020-09-20'),
            (N'Dịp đặc biệt', N'Tết thiếu nhi 2021', '2021-06-01'),
            (N'Cuối năm học', N'Cuối năm học 2020-2021', '2021-06-01'),
            (N'Dịp đặc biệt', N'Trung thu 2021', '2021-09-20'),
            (N'Dịp đặc biệt', N'Tết thiếu nhi 2022', '2022-06-01'),
            (N'Cuối năm học', N'Cuối năm học 2021-2022', '2022-06-01'),
            (N'Dịp đặc biệt', N'Trung thu 2022', '2022-09-20');


CREATE TABLE PhanThuong(
	id INT NOT NULL AUTO_INCREMENT,
	tenPhanThuong VARCHAR(255) NOT NULL,
	giaTriPhanThuong INT NOT NULL,
	ghiChu VARCHAR(255),
	CONSTRAINT PK_PhanThuong PRIMARY KEY(id)
);

INSERT INTO PhanThuong(tenPhanThuong, giaTriPhanThuong, ghiChu)
	VALUES	(N'Bánh kẹo', 50000, N'Tặng dịp đặc biệt'),
            (N'10 cuốn vở', 100000, N'Thưởng HSG'),
            (N'7 cuốn vở', 70000, N'Thưởng HSTT'),
            (N'5 cuốn vở', 50000, N'Thưởng HS'),
            (N'Đồ chơi', 50000, N'Tặng dịp đặc biệt'),
            (N'Sách', 65000, N'Tặng dịp đặc biệt'),
            (N'Không tặng', 0, N'Không có quà');


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
	VALUES	(344, 1, 344, NULL, '2019-05-11', N'Đã duyệt', NULL, 1),
            (351, 1, 351, NULL, '2019-05-12', N'Đã duyệt', NULL, 5),
            (383, 1, 383, NULL, '2019-05-13', N'Đã duyệt', NULL, 6),
            (427, 1, 427, NULL, '2019-05-14', N'Đã duyệt', NULL, 1),
            (471, 1, 471, NULL, '2019-05-15', N'Đã duyệt', NULL, 5),
            (590, 1, 590, NULL, '2019-05-16', N'Đã duyệt', NULL, 6),
            (517, 1, 517, NULL, '2019-05-16', N'Đã duyệt', NULL, 5),
            (503, 1, 503, NULL, '2019-05-17', N'Đã duyệt', NULL, 1),
            (534, 1, 534, NULL, '2019-05-16', N'Đã duyệt', NULL, 1),
            (591, 1, 591, NULL, '2019-05-17', N'Đã duyệt', NULL, 5),
            (580, 1, 580, NULL, '2019-05-18', N'Đã duyệt', NULL, 6),
            (633, 1, 633, NULL, '2019-05-19', N'Đã duyệt', NULL, 6),
            (641, 1, 641, NULL, '2019-05-17', N'Đã duyệt', NULL, 5),
            (656, 1, 656, NULL, '2019-05-11', N'Đã duyệt', NULL, 1),
            (242, 1, 242, NULL, '2019-05-17', N'Đã duyệt', NULL, 5),
            (344, 2, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-11', N'Đã duyệt', N'Học sinh giỏi', 2),
            (351, 2, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-12', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (383, 2, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-13', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (427, 2, 427, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-14', N'Đã duyệt', N'Học sinh giỏi', 2),
            (471, 2, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-15', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (590, 2, 65, NULL, '2019-05-16', N'Không duyệt', NULL, NULL),
            (517, 2, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-16', N'Đã duyệt', N'Học sinh giỏi', 2),
            (503, 2, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-17', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (534, 2, 37, NULL, '2019-05-16', N'Không duyệt', NULL, NULL),
            (591, 2, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (580, 2, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2019-05-18', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (633, 2, 633, NULL, '2019-05-19', N'Đã duyệt', NULL, 4),
            (641, 2, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2019-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (656, 2, 656, NULL, '2019-05-11', N'Đã duyệt', NULL, 4),
            (242, 2, 242, NULL, '2019-05-17', N'Đã duyệt', NULL, 4),
            (344, 3, 344, NULL, '2019-09-11', N'Đã duyệt', NULL, 1),
            (351, 3, 99, NULL, '2019-09-12', N'Không duyệt', NULL, NULL),
            (383, 3, 383, NULL, '2019-09-13', N'Đã duyệt', NULL, 6),
            (427, 3, 427, NULL, '2019-09-14', N'Đã duyệt', NULL, 5),
            (471, 3, 471, NULL, '2019-09-15', N'Đã duyệt', NULL, 5),
            (590, 3, 590, NULL, '2019-09-16', N'Đã duyệt', NULL, 6),
            (517, 3, 517, NULL, '2019-09-16', N'Đã duyệt', NULL, 5),
            (503, 3, 503, NULL, '2019-09-17', N'Đã duyệt', NULL, 1),
            (534, 3, 92, NULL, '2019-09-16', N'Không duyệt', NULL, NULL),
            (591, 3, 591, NULL, '2019-09-17', N'Đã duyệt', NULL, 6),
            (580, 3, 87, NULL, '2019-09-18', N'Không duyệt', NULL, NULL),
            (633, 3, 633, NULL, '2019-09-19', N'Đã duyệt', NULL, 5),

            (344, 4, 42, NULL, '2020-05-11', N'Không duyệt', NULL, NULL),
            (351, 4, 351, NULL, '2020-05-12', N'Đã duyệt', NULL, 5),
            (383, 4, 383, NULL, '2020-05-13', N'Đã duyệt', NULL, 5),
            (427, 4, 47, NULL, '2020-05-14', N'Không duyệt', NULL, NULL),
            (471, 4, 471, NULL, '2020-05-15', N'Đã duyệt', NULL, 6),
            (590, 4, 590, NULL, '2020-05-16', N'Đã duyệt', NULL, 5),
            (517, 4, 51, NULL, '2020-05-16', N'Không duyệt', NULL, NULL),
            (534, 4, 534, NULL, '2020-05-16', N'Đã duyệt', NULL, 1),
            (591, 4, 591, NULL, '2020-05-17', N'Đã duyệt', NULL, 5),
            (580, 4, 580, NULL, '2020-05-18', N'Đã duyệt', NULL, 6),
            (633, 4, 633, NULL, '2020-05-19', N'Đã duyệt', NULL, 6),
            (344, 5, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-11', N'Đã duyệt', N'Học sinh giỏi', 2),
            (351, 5, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-12', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (471, 5, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-15', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (590, 5, 65, NULL, '2020-05-16', N'Không duyệt', NULL, NULL),
            (517, 5, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-16', N'Đã duyệt', N'Học sinh giỏi', 2),
            (503, 5, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-17', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (534, 5, 37, NULL, '2020-05-16', N'Không duyệt', NULL, NULL),
            (591, 5, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (580, 5, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2020-05-18', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (633, 5, 633, NULL, '2020-05-19', N'Đã duyệt', NULL, 4),
            (641, 5, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2020-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (656, 5, 656, NULL, '2020-05-11', N'Đã duyệt', NULL, 4),
            (242, 5, 242, NULL, '2020-05-17', N'Đã duyệt', NULL, 4),
            (344, 6, 344, NULL, '2020-09-11', N'Đã duyệt', NULL, 1),
            (351, 6, 99, NULL, '2020-09-12', N'Không duyệt', NULL, NULL),
            (471, 6, 471, NULL, '2020-09-15', N'Đã duyệt', NULL, 5),
            (590, 6, 590, NULL, '2020-09-16', N'Đã duyệt', NULL, 6),
            (517, 6, 517, NULL, '2020-09-16', N'Đã duyệt', NULL, 5),
            (503, 6, 503, NULL, '2020-09-17', N'Đã duyệt', NULL, 1),
            (534, 6, 92, NULL, '2020-09-16', N'Không duyệt', NULL, NULL),
            (591, 6, 591, NULL, '2020-09-17', N'Đã duyệt', NULL, 6),
            (580, 6, 87, NULL, '2020-09-18', N'Không duyệt', NULL, NULL),
            (633, 6, 633, NULL, '2020-09-19', N'Đã duyệt', NULL, 5),

            (344, 7, 42, NULL, '2021-05-11', N'Không duyệt', NULL, NULL),
            (351, 7, 351, NULL, '2021-05-12', N'Đã duyệt', NULL, 5),
            (383, 7, 383, NULL, '2021-05-13', N'Đã duyệt', NULL, 5),
            (590, 7, 590, NULL, '2021-05-16', N'Đã duyệt', NULL, 5),
            (517, 7, 51, NULL, '2021-05-16', N'Không duyệt', NULL, NULL),
            (503, 7, 503, NULL, '2021-05-17', N'Đã duyệt', NULL, 1),
            (534, 7, 534, NULL, '2021-05-16', N'Đã duyệt', NULL, 1),
            (591, 7, 591, NULL, '2021-05-17', N'Đã duyệt', NULL, 5),
            (580, 7, 580, NULL, '2021-05-18', N'Đã duyệt', NULL, 6),
            (633, 7, 633, NULL, '2021-05-19', N'Đã duyệt', NULL, 6),
            (344, 8, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-11', N'Đã duyệt', N'Học sinh giỏi', 2),
            (351, 8, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-12', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (383, 8, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-13', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (590, 8, 65, NULL, '2021-05-16', N'Không duyệt', NULL, NULL),
            (517, 8, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-16', N'Đã duyệt', N'Học sinh giỏi', 2),
            (503, 8, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-17', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (534, 8, 37, NULL, '2021-05-16', N'Không duyệt', NULL, NULL),
            (591, 8, 591, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (580, 8, 580, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2021-05-18', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (633, 8, 633, NULL, '2021-05-19', N'Đã duyệt', NULL, 4),
            (641, 8, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2021-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (656, 8, 656, NULL, '2021-05-11', N'Đã duyệt', NULL, 4),
            (242, 8, 242, NULL, '2021-05-17', N'Đã duyệt', NULL, 4),
            (344, 9, 344, NULL, '2021-09-11', N'Đã duyệt', NULL, 1),
            (351, 9, 99, NULL, '2021-09-12', N'Không duyệt', NULL, NULL),
            (383, 9, 383, NULL, '2021-09-13', N'Đã duyệt', NULL, 6),
            (427, 9, 427, NULL, '2021-09-14', N'Đã duyệt', NULL, 5),
            (517, 9, 517, NULL, '2021-09-16', N'Đã duyệt', NULL, 5),
            (503, 9, 503, NULL, '2021-09-17', N'Đã duyệt', NULL, 1),
            (534, 9, 92, NULL, '2021-09-16', N'Không duyệt', NULL, NULL),
            (580, 9, 87, NULL, '2021-09-18', N'Không duyệt', NULL, NULL),
            (633, 9, 633, NULL, '2021-09-19', N'Đã duyệt', NULL, 5),

            (344, 10, 42, NULL, '2022-05-11', N'Không duyệt', NULL, NULL),
            (351, 10, 351, NULL, '2022-05-12', N'Đã duyệt', NULL, 5),
            (383, 10, 383, NULL, '2022-05-13', N'Đã duyệt', NULL, 5),
            (427, 10, 47, NULL, '2022-05-14', N'Không duyệt', NULL, NULL),
            (471, 10, 471, NULL, '2022-05-15', N'Đã duyệt', NULL, 6),
            (590, 10, 590, NULL, '2022-05-16', N'Đã duyệt', NULL, 5),
            (534, 10, 534, NULL, '2022-05-16', N'Đã duyệt', NULL, 1),
            (591, 10, 591, NULL, '2022-05-17', N'Đã duyệt', NULL, 5),
            (580, 10, 580, NULL, '2022-05-18', N'Đã duyệt', NULL, 6),
            (633, 10, 633, NULL, '2022-05-19', N'Đã duyệt', NULL, 6),
            (344, 11, 344, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-11', N'Đã duyệt', N'Học sinh giỏi', 2),
            (351, 11, 351, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-12', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (383, 11, 383, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-13', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (427, 11, 427, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-14', N'Đã duyệt', N'Học sinh giỏi', 2),
            (471, 11, 471, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-15', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (590, 11, 65, NULL, '2022-05-16', N'Không duyệt', NULL, NULL),
            (517, 11, 517, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-16', N'Đã duyệt', N'Học sinh giỏi', 2),
            (503, 11, 503, N'https://drive.google.com/file/d/1Dq_q5mAudqMmXovoYhrSiD4VLQfhgGRj/view?usp=share_link', '2022-05-17', N'Đã duyệt', N'Học sinh tiên tiến', 3),
            (534, 11, 37, NULL, '2022-05-16', N'Không duyệt', NULL, NULL),
            (633, 11, 633, NULL, '2022-05-19', N'Đã duyệt', NULL, 4),
            (641, 11, 641, N'https://drive.google.com/file/d/1a7eBuYov3rpdWEw47mb4ZenEAV7T8jEk/view?usp=share_link', '2022-05-17', N'Đã duyệt', N'Học sinh giỏi', 2),
            (656, 11, 656, NULL, '2022-05-11', N'Đã duyệt', NULL, 4),
            (242, 11, 242, NULL, '2022-05-17', N'Đã duyệt', NULL, 4),
            (344, 12, 344, NULL, '2022-09-11', N'Đã duyệt', NULL, 1),
            (351, 12, 99, NULL, '2022-09-12', N'Không duyệt', NULL, NULL),
            (383, 12, 383, NULL, '2022-09-13', N'Đã duyệt', NULL, 6),
            (427, 12, 427, NULL, '2022-09-14', N'Đã duyệt', NULL, 5),
            (471, 12, 471, NULL, '2022-09-15', N'Đã duyệt', NULL, 5),
            (503, 12, 503, NULL, '2022-09-17', N'Đã duyệt', NULL, 1),
            (534, 12, 92, NULL, '2022-09-16', N'Không duyệt', NULL, NULL),
            (591, 12, 591, NULL, '2022-09-17', N'Đã duyệt', NULL, 6),
            (580, 12, 87, NULL, '2022-09-18', N'Không duyệt', NULL, NULL);

UPDATE NhanKhau SET trangThai = N'Tạm vắng_Duyệt' WHERE trangThai = N'Tạm vắng';
UPDATE NhanKhau SET trangThai = N'Thường trú_Duyệt' WHERE trangThai = N'Thường trú';
UPDATE NhanKhau SET trangThai = N'Tạm trú_Duyệt' WHERE trangThai = N'Tạm trú';
UPDATE NhanKhau SET trangThai = N'Qua đời_Duyệt' WHERE trangThai = N'Qua đời';