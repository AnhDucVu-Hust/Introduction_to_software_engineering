package Service;

import Entity.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import main.login.MyConnection;

import java.sql.*;
import java.text.Normalizer;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Optional;
import java.util.regex.Pattern;

public class Services {

    private static Connection conn = MyConnection.conDB();

    // các phương thức thêm bản ghi vào database

    public static void themVaoBangNhanKhau(NhanKhau nk) {

        try {
            String query = "INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            String hoTenStr = nk.getHoTen();
            String biDanhStr = nk.getBiDanh();
            Date ngaySinhDate = nk.getNgaySinh();
            String noiSinhStr = nk.getNoiSinh();
            String nguyenQuanStr = nk.getNguyenQuan();
            String danTocStr = nk.getDanToc();
            String gioiTinhStr = nk.getGioiTinh();
            String tonGiaoStr = nk.getTonGiao();
            String quocTichStr = nk.getQuocTich();
            String cmndCccdStr = nk.getCmnd_cccd();
            String ngheNghiepStr = nk.getNgheNghiep();
            String noiLamViecStr = nk.getNoiLamViec();
            Date ngayChuyenDenDate = nk.getNgayChuyenDen();
            String noiThuongTruTruocStr = nk.getNoiThuongTruTruoc();
            String trangThaiStr = nk.getTrangThai();

            pstmt.setString(1, hoTenStr);
            if (biDanhStr != "")
                pstmt.setString(2, biDanhStr);
            else
                pstmt.setNull(2, Types.NULL);
            pstmt.setDate(3, ngaySinhDate);
            pstmt.setString(4, noiSinhStr);
            pstmt.setString(5, gioiTinhStr);
            pstmt.setString(6, nguyenQuanStr);
            pstmt.setString(7, danTocStr);
            pstmt.setString(8, tonGiaoStr);
            pstmt.setString(9, quocTichStr);
            if (ngheNghiepStr != "")
                pstmt.setString(10, ngheNghiepStr);
            else
                pstmt.setNull(10, Types.NULL);
            if (noiLamViecStr != "")
                pstmt.setString(11, noiLamViecStr);
            else
                pstmt.setNull(11, Types.NULL);
            if (cmndCccdStr != "")
                pstmt.setString(12, cmndCccdStr);
            else
                pstmt.setNull(12, Types.NULL);

            pstmt.setDate(13, ngayChuyenDenDate);
            pstmt.setString(14, noiThuongTruTruocStr);
            pstmt.setString(15, trangThaiStr);
            pstmt.execute();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauTamTru(NhanKhauTamTru nktt) {
        try {
            String query = "INSERT INTO NhanKhauTamTru(idNhanKhau, noiThuongTru, noiTamTru, tuNgay, denNgay, lyDo, trangThai) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            Integer idNhanKhau = nktt.getIdNhanKhau();
            String noiThuongTru = nktt.getNoiThuongTru();
            String noiTamTru = nktt.getNoiTamTru();
            Date tuNgay = nktt.getNgayDen();
            Date denNgay = nktt.getNgayDi();
            String lyDo = nktt.getLyDo();
            String trangThai = nktt.getTrangThai();

            pstmt.setInt(1, idNhanKhau);
            pstmt.setString(2, noiThuongTru);
            pstmt.setString(3, noiTamTru);
            pstmt.setDate(4, tuNgay);
            pstmt.setDate(5, denNgay);
            pstmt.setString(6, lyDo);
            pstmt.setString(7, trangThai);

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauHoKhau(HoKhauNhanKhau hknk) {
        try {
            String q1 = "SELECT * FROM NhanKhau_HoKhau WHERE idNhanKhau = " + hknk.getIdNhanKhau();
            PreparedStatement pstmt1 = Services.conn.prepareStatement(q1);
            ResultSet rs1 = pstmt1.executeQuery();
            if(rs1.next()){
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Nhân khẩu đã nằm trong một hộ khẩu!");
                alert.showAndWait();
                return;
            }

            String query = "INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES(?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, hknk.getIdHoKhau());
            pstmt.setInt(2, hknk.getIdNhanKhau());
            pstmt.setString(3, hknk.getQuanHeChuHo());
            pstmt.executeUpdate();
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Đã thêm thành công");
            alert.showAndWait();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangHoKhau(HoKhau hk) {
        try {
            String query = "INSERT INTO HoKhau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayCap, trangThai) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, hk.getIdChuHo());
            pstmt.setString(2, hk.getTinhThanhPho());
            pstmt.setString(3, hk.getQuanHuyen());
            pstmt.setString(4, hk.getPhuongXa());
            pstmt.setString(4, hk.getDiaChi());
            pstmt.setDate(4, hk.getNgayTao());
            pstmt.setString(4, hk.getTrangThai());

            pstmt.executeQuery();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauTach(NhanKhauTach nkt) {
        try {
            String query = "INSERT INTO NhanKhauTach(idNhanKhau, ngayKhaiBao, ghiChu, trangThai) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nkt.getIdNhanKhau());
            pstmt.setDate(2, nkt.getNgayKhaiBao());
            pstmt.setString(3, nkt.getGhiChu());
            pstmt.setString(4, nkt.getTrangThai());

            pstmt.executeQuery();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauQuaDoi(NhanKhauQuaDoi nkqd) {
        try {
            String query = "INSERT INTO NhanKhauQuaDoi(idNhanKhau, idNguoiKhai, ngayKhai, ngayMat, ghiChu, trangThai) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nkqd.getIdNguoiMat());
            pstmt.setInt(2, nkqd.getIdNguoiKhai());
            pstmt.setDate(3, nkqd.getNgayKhai());
            pstmt.setDate(4, nkqd.getNgayMat());
            pstmt.setString(5, nkqd.getGhiChu());
            pstmt.setString(6, nkqd.getTrangThai());

            pstmt.executeQuery();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauTamVang(NhanKhauTamVang nktv) {
        try {
            String query = "INSERT INTO NhanKhauTamVang(idNhanKhau, noiTamTru, tuNgay, denNgay, lyDo, trangThai) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            Integer idNhanKhau = nktv.getIdNhanKhau();
            String noiTamTru = nktv.getNoiTamTru();
            Date tuNgay = nktv.getNgayDi();
            Date denNgay = nktv.getNgayVe();
            String lyDo = nktv.getLyDo();
            String trangThai = nktv.getTrangThai();

            pstmt.setInt(1, idNhanKhau);
            pstmt.setString(2, noiTamTru);
            pstmt.setDate(3, tuNgay);
            pstmt.setDate(4, denNgay);
            pstmt.setString(5, lyDo);
            pstmt.setString(6, trangThai);

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauThem(NhanKhauThem nkt) {
        try {
            String query = "INSERT INTO NhanKhauThem(idNhanKhau, ngayThem, ghiChu, trangThai) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nkt.getIdNhanKhau());
            pstmt.setDate(2, nkt.getNgayThem());
            pstmt.setString(3, nkt.getGhiChu());
            pstmt.setString(4, nkt.getTrangThai());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauChuyen(NhanKhauChuyenDi nkc) {
        try {
            String query = "INSERT INTO NhanKhauChuyen(idNhanKhau, ngayChuyen, noiChuyenDen, ghiChu, trangThai) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nkc.getIdNhanKhau());
            pstmt.setDate(2, nkc.getNgayChuyenDi());
            pstmt.setString(3, nkc.getNoiChuyenDen());
            pstmt.setString(4, nkc.getGhiChu());
            pstmt.setString(5, nkc.getTrangThai());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNhanKhauChuyenHoKhau(NhanKhauChuyenHoKhau nkchk) {
        try {
            String query = "INSERT INTO NhanKhauChuyenHoKhau(idNhanKhau, idHoKhau, ngayChuyen, ghiChu, trangThai) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nkchk.getIdNhanKhau());
            pstmt.setInt(2, nkchk.getIdHoKhau());
            pstmt.setDate(3, nkchk.getNgayChuyen());
            pstmt.setString(4, nkchk.getGhiChu());
            pstmt.setString(5, nkchk.getTrangThai());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangDipTraoThuong(DipTraoThuong dtt){
        try {
            String query = "INSERT INTO DipTraoThuong(loaiDip, tenDip, ngayTraoThuong) VALUES (?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, dtt.getLoaiDip());
            pstmt.setString(2, dtt.getTenDip());
            pstmt.setDate(3, dtt.getNgayTraoThuong());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }

    }

    public static void themVaoBangPhanThuong(PhanThuong pt){
        try {
            String query = "INSERT INTO PhanThuong(tenPhanThuong, giaTriPhanThuong, ghiChu) VALUES (?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, pt.getTen());
            pstmt.setInt(2, pt.getGiaTri());
            pstmt.setString(3, pt.getGhiChu());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }

    }
   public static void chonPhanThuong(NopMinhChung nmc,Integer idPhanThuong){
        try{
            String query = "UPDATE nguoinopminhchung SET idPhanThuong = "+idPhanThuong+" WHERE idNguoiNhan = ? and idDip = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nmc.getIdNguoiNhan());
            pstmt.setInt(2, nmc.getIdDip());

            pstmt.execute();
            System.out.println("them thanh cong!");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Thêm thành công");
            alert.showAndWait();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    public static void themVaoBangPhanThuongDip(PhanThuongDipTrao ptdt){
        try {
            String query = "INSERT INTO PhanThuong_DipTraoThuong(idPhanThuong, idDipTraoThuong, ghiChu) VALUES (?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, ptdt.getIdPhanTHuong());
            pstmt.setInt(2, ptdt.getIdDip());
            pstmt.setString(3, ptdt.getGhiChu());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangNguoiNopMinhChung(NopMinhChung nmc){
        try {
            String query = "INSERT INTO NguoiNopMinhChung(idNguoiNop, idDip, idNguoiNhan, linkMinhChung, ngayDangKy, trangThai, idPhanThuong) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nmc.getIdNguoiNop());
            pstmt.setInt(2, nmc.getIdDip());
            pstmt.setInt(3, nmc.getIdNguoiNhan());
            pstmt.setString(4, nmc.getLinkMinhChung());
            pstmt.setDate(5, nmc.getNgayDangKy());
            pstmt.setString(6, nmc.getTrangThai());
            if ( nmc.getIdPhanThuong()!= null ) pstmt.setInt(7, nmc.getIdPhanThuong());
            else pstmt.setInt(7,7);

            pstmt.execute();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void themVaoBangTaiKhoan(TaiKhoan tk){
        try {
            String query = "INSERT INTO taiKhoan(idNhanKhau, taiKhoan, matKhau, quyen) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, tk.getIdNhanKhau());
            pstmt.setString(2, tk.getTaiKhoan());
            pstmt.setString(3, tk.getQuyen());
            pstmt.setString(4, tk.getMatKhau());

            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    // các phương thức thay đổi bản ghi trong database

    public static void chuyenTrangThaiNhanKhauTamTru(NhanKhauTamTru nktt, String tt){
        try {
            String query = "UPDATE NhanKhauTamTru SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nktt.getId());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhau(NhanKhau nk, String tt){
        try {
            String query = "UPDATE NhanKhau SET trangThai = ? WHERE idNhanKhau = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nk.getId());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiHoKhau(HoKhau hk, String tt){
        try {
            String query = "UPDATE HoKhau SET trangThai = ? WHERE idHoKhau = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, hk.getIdHoKhau());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauTamVang(NhanKhauTamVang nktv, String tt){
        try {
            String query = "UPDATE NhanKhauTamVang SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nktv.getId());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauThem(NhanKhauThem nkt, String tt){
        try {
            String query = "UPDATE NhanKhauThem SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nkt.getId());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauChuyen(NhanKhauChuyenDi nkcd, String tt){
        try {
            String query = "UPDATE NhanKhauChuyen SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nkcd.getIdNhanKhau());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauQuaDoi(NhanKhauQuaDoi nkqd, String tt){
        try {
            String query = "UPDATE NhanKhauQuaDoi SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nkqd.getIdNguoiMat());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauTach(NhanKhauTach nkt, String tt){
        try {
            String query = "UPDATE NhanKhauQuaDoi SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nkt.getIdNhanKhau());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNhanKhauChuyenHoKhau(NhanKhauChuyenHoKhau nkchk, String tt){
        try {
            String query = "UPDATE NhanKhauChuyenHoKhau SET trangThai = ? WHERE id = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nkchk.getId());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public static void chuyenTrangThaiNguoiNopMinhChung(NopMinhChung nmc, String tt){
        try {
            String query = "UPDATE NguoiNopMinhChung SET trangThai = ? WHERE idDip = ? AND idNguoiNhan = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tt);
            pstmt.setInt(2, nmc.getIdDip());
            pstmt.setInt(2, nmc.getIdNguoiNhan());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    public static void suaNhanKhau(NhanKhau nk){
        try {
            String query = "UPDATE `nhankhau`\n" +
                    "SET hoTen=?, biDanh=?, ngaySinh=?, noiSinh=?, gioiTinh=?, nguyenQuan=?, danToc=?, tonGiao=?, quocTich=?, ngheNghiep=?, noiLamViec=?, cmnd_cccd=?, chuyenDenNgay=?, noiThuongTru=?, trangThai=?\n" +
                    "WHERE idNhanKhau=? ";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            String hoTenStr = nk.getHoTen();
            String biDanhStr = nk.getBiDanh();
            Date ngaySinhDate = nk.getNgaySinh();
            String noiSinhStr = nk.getNoiSinh();
            String nguyenQuanStr = nk.getNguyenQuan();
            String danTocStr = nk.getDanToc();
            String gioiTinhStr = nk.getGioiTinh();
            String tonGiaoStr = nk.getTonGiao();
            String quocTichStr = nk.getQuocTich();
            String cmndCccdStr = nk.getCmnd_cccd();
            String ngheNghiepStr = nk.getNgheNghiep();
            String noiLamViecStr = nk.getNoiLamViec();
            Date ngayChuyenDenDate = nk.getNgayChuyenDen();
            String noiThuongTruTruocStr = nk.getNoiThuongTruTruoc();
            String trangThaiStr = nk.getTrangThai();

            pstmt.setString(1, hoTenStr);
            if (biDanhStr != "")
                pstmt.setString(2, biDanhStr);
            else
                pstmt.setNull(2, Types.NULL);
            pstmt.setDate(3, ngaySinhDate);
            pstmt.setString(4, noiSinhStr);
            pstmt.setString(5, gioiTinhStr);
            pstmt.setString(6, nguyenQuanStr);
            pstmt.setString(7, danTocStr);
            pstmt.setString(8, tonGiaoStr);
            pstmt.setString(9, quocTichStr);
            if (ngheNghiepStr != "")
                pstmt.setString(10, ngheNghiepStr);
            else
                pstmt.setNull(10, Types.NULL);
            if (noiLamViecStr != "")
                pstmt.setString(11, noiLamViecStr);
            else
                pstmt.setNull(11, Types.NULL);
            if (cmndCccdStr != "")
                pstmt.setString(12, cmndCccdStr);
            else
                pstmt.setNull(12, Types.NULL);

            pstmt.setDate(13, ngayChuyenDenDate);
            pstmt.setString(14, noiThuongTruTruocStr);
            pstmt.setString(15, trangThaiStr);
            pstmt.setInt(16,nk.getId());
            pstmt.execute();
            System.out.println("them thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    public static void suaHoKhau(HoKhau hk){
        try {
            String query = "UPDATE `hokhau`\n" +
                    "SET idChuHo=?,tinhThanhPho=?,quanHuyen=?,phuongXa=?,diaChi=?,ngayCap=?\n" +
                    "Where idHoKhau=? ";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, hk.getIdChuHo());
            pstmt.setString(2, hk.getTinhThanhPho());
            pstmt.setString(3, hk.getQuanHuyen());
            pstmt.setString(4, hk.getPhuongXa());
            pstmt.setString(5, hk.getDiaChi());
            pstmt.setDate(6, hk.getNgayTao());
            pstmt.setInt(7, hk.getIdHoKhau());

            pstmt.execute();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Hãy điền đầy đủ thông tin hoặc hộ khẩu đã bị nhập sai");
            alert.showAndWait();
        }
    }
    public static void duyet(NhanKhau nk){
        try {
            String query="UPDATE nhankhau SET trangthai=? Where idNhanKhau="+ nk.getId();
            String trangThai=nk.getTrangThai();
            String query1;
            PreparedStatement pstmt1=Services.conn.prepareStatement(query);
            if (trangThai.contains("Thường trú")){
                query1="UPDATE nhankhauthem SET trangthai=? and ngaythem=? where idNhanKhau="+nk.getId();
                pstmt1=Services.conn.prepareStatement(query1);
                pstmt1.setDate(2,Date.valueOf(LocalDate.now()));
                pstmt1.setString(1,"Đã duyệt");
            }
            else if (trangThai.contains("Tạm trú")){
                query1="UPDATE nhankhautamtru  SET trangThai='Đã duyệt' where idNhanKhau="+nk.getId();
                pstmt1=Services.conn.prepareStatement(query1);
//                pstmt1.setDate(1,Date.valueOf(LocalDate.now()));
//                pstmt1.setString(2,"Duyệt");
            }
            else if (trangThai.contains("Tạm vắng")){
                query1="UPDATE nhankhautamvang SET trangthai='Duyệt' where idNhanKhau="+nk.getId();
                pstmt1=Services.conn.prepareStatement(query1);
            }
            else if (trangThai.contains("Qua đời")){
                query1="UPDATE nhankhauquadoi SET trangthai='Duyệt' where idNhanKhau="+nk.getId();
                pstmt1=Services.conn.prepareStatement(query1);
            }
            else if (trangThai.contains("Đã chuyển")){
                query1="UPDATE nhankhauchuyen SET trangthai='Duyệt' where idNhanKhau="+nk.getId();
                pstmt1=Services.conn.prepareStatement(query1);
            }

            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            String trangThaiReplaced= nk.getTrangThai().replace("Chờ duyệt","Duyệt");
            pstmt.setString(1,trangThaiReplaced);
            pstmt.execute();
            pstmt1.execute();

        } catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }
    public static void tangQua(NopMinhChung nmc, PhanThuong pt){
        try {
            String query = "UPDATE NguoiNopMinhChung SET idPhanThuong = ? WHERE idDip = ? AND idNguoiNhan = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, pt.getId());
            pstmt.setInt(2, nmc.getIdDip());
            pstmt.setInt(2, nmc.getIdNguoiNhan());

            pstmt.executeQuery();
            System.out.println("chuyen trang thai thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    // các phương thức lấy thông tin từ database

    public static NhanKhau queryNhanKhauTheoId(Integer IdNhanKhau){
        try {
            String query = "SELECT * from nhankhau WHERE idNhanKhau = "+ IdNhanKhau;
            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            //pstmt.setInt(1, IdNhanKhau);
            ResultSet resultSet = pstmt.executeQuery();
            NhanKhau nk = null;
            while (resultSet.next()) {
                nk = new NhanKhau(resultSet.getInt("idNhanKhau"),
                        resultSet.getString("hoTen"),
                        resultSet.getDate("ngaySinh"),
                        resultSet.getString("biDanh"),
                        resultSet.getString("noiSinh"),
                        resultSet.getString("gioiTinh"),
                        resultSet.getString("nguyenQuan"),
                        resultSet.getString("danToc"),
                        resultSet.getString("tonGiao"),
                        resultSet.getString("quocTich"),
                        resultSet.getString("ngheNghiep"),
                        resultSet.getString("noiLamViec"),
                        resultSet.getString("cmnd_cccd"),
                        resultSet.getDate("chuyenDenNgay"),
                        resultSet.getString("noiThuongTruTruoc"),
                        resultSet.getString("trangThai"));
            }
            return nk;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public static Integer queryNhanKhau(String hoTen, Date ngaySinh, String cmndCccd) {
        if (cmndCccd != null && cmndCccd != "") {
            try {
                String query = "SELECT idNhanKhau FROM nhankhau WHERE cmnd_cccd = ?";
                PreparedStatement pstmt = Services.conn.prepareStatement(query);
                pstmt.setString(1, cmndCccd);
                ResultSet resultSet = pstmt.executeQuery();
                if (!resultSet.next()) {
                    return null;
                } else return resultSet.getInt(1);

            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        } else {
            try {
                String query = "SELECT idNhanKhau FROM NhanKhau WHERE hoTen = ? AND ngaySinh = ?";
                PreparedStatement pstmt = Services.conn.prepareStatement(query);
                pstmt.setString(1, hoTen);
                pstmt.setDate(2, ngaySinh);
                ResultSet resultSet = pstmt.executeQuery();
                if (!resultSet.next()) {
                    return null;
                } else return resultSet.getInt(1);

            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return null;
    }

    public static Integer queryIdHoKhau(NhanKhau nk){
        try {
            String query = "SELECT idHoKhau FROM HoKhau WHERE idChuHo = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nk.getId());
            ResultSet resultSet = pstmt.executeQuery();
            if (!resultSet.next()) {
                return 0;
            } else return resultSet.getInt(0);
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return 0;
    }
    public static Integer queryIdHoKhauCuaNhanKhau(Integer idNhanKhau){
        try {
            String query = "SELECT idHoKhau FROM `nhankhau_hokhau`\n" +
                    "WHERE idNhanKhau=? ";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, idNhanKhau);
            ResultSet resultSet = pstmt.executeQuery();
            if (!resultSet.next()) {
                return 0;
            } else return resultSet.getInt("idHoKhau");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return 0;
    }
    public static ObservableList<NhanKhau> dsGiaDinh(Integer idHoKhau){
        ObservableList<NhanKhau> gd = FXCollections.observableArrayList();
        ArrayList<Integer> idNK = new ArrayList<>();

        try {
            String query = "SELECT idNhanKhau FROM NhanKhau, NhanKhau_HoKhau WHERE NhanKhau_HoKhau.idHoKhau = ? AND NhanKhau.idNhanKhau = NhanKhau_HoKhau.idNhanKhau";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, idHoKhau);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idNhanKhau");
                NhanKhau nk = queryNhanKhauTheoId(id);
                gd.add(nk);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return gd;
    }

    // các phương thức xóa bản ghi khỏi database

    public static void xoaKhoiBangNhanKhauHoKhau(NhanKhau nk) {
        try {
            String query = "DELETE FROM NhanKhau_HoKhau WHERE idNhanKhau = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nk.getId());

            pstmt.executeQuery();
            System.out.println("xoa thanh cong!");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    public static ObservableList<NopMinhChung> queryNguoiNhanThuong(Integer idDip){
        try {
            String query = "SELECT * FROM `nguoinopminhchung` WHERE idDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, idDip);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<NopMinhChung> nopMinhChungs = FXCollections.observableArrayList();
            while (resultSet.next()) {
                nopMinhChungs.add(new NopMinhChung(resultSet.getInt("idNguoiNop"),
                        resultSet.getInt("idDip"),
                        resultSet.getInt("idNguoiNhan"),
                        resultSet.getString("linkMinhChung"),
                        resultSet.getDate("ngayDangKy"),
                        resultSet.getString("trangThai"),
                        resultSet.getInt("idPhanThuong"),
                        resultSet.getString("thanhTich")));
            }
            return nopMinhChungs;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            return null;
        }
    }
    public static String queryPhanThuongTheoID(Integer idPhanThuong){
        try{
            String query="SELECT tenPhanThuong FROM `phanthuong` WHERE id=?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            if (idPhanThuong!=null) pstmt.setInt(1, idPhanThuong);
            else return " ";
            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()){
                return resultSet.getString("tenPhanThuong");
            }
            return " ";
        } catch (SQLException ex){
            return " ";
        }

    }
    public static void themQuaVaoDip(Integer idPhanThuong, Integer idDip) {
        try {
            Integer existed = 0;
            for (PhanThuong pt : querryQuaTheoDip(idDip))
                if (pt.getId() == idPhanThuong) existed = 1;
            if (existed == 0) {
                try {
                    String query = "INSERT INTO phanthuong_diptraothuong VALUES (?,?,?)";
                    PreparedStatement pstmt = conn.prepareStatement(query);
                    pstmt.setInt(1, idPhanThuong);
                    pstmt.setInt(2, idDip);
                    pstmt.setString(3, "");
                    pstmt.execute();
                } catch (SQLException e) {
                    System.err.println(e.getMessage());
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static ObservableList<PhanThuong> querryQuaTheoDip(Integer idDip){
        try {
            String query = "SELECT * FROM `phanthuong_diptraothuong` WHERE idDipTraoThuong = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, idDip);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<PhanThuong> phanThuongs = FXCollections.observableArrayList();
            while (resultSet.next()) {
                Integer idPhanThuong=resultSet.getInt("idPhanThuong");
                String query1 = "SELECT * FROM `phanthuong` WHERE id = ?";
                PreparedStatement pstmt1 = Services.conn.prepareStatement(query);

                pstmt1.setInt(1, idPhanThuong);
                ResultSet resultSet1 = pstmt.executeQuery();
                while (resultSet1.next()) {
                    PhanThuong phanthuong = new PhanThuong(resultSet1.getInt("id"),
                            resultSet1.getString("tenPhanThuong"),
                            resultSet1.getInt("giaTriPHanThuong"),
                            resultSet1.getString("ghiChu"));
                    phanThuongs.add(phanthuong);
                }
            }
            return phanThuongs;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            return null;
        }
    }
    public static ObservableList<PhanThuong> queryTatcaPhanThuong(){
        try {
            String query="SELECT * FROM `phanthuong`";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<PhanThuong> phanThuongs = FXCollections.observableArrayList();
            while (resultSet.next()){
                phanThuongs.add(new PhanThuong(resultSet.getInt("id"),
                        resultSet.getString("tenPhanThuong"),
                        resultSet.getInt("giaTriPhanThuong"),
                        resultSet.getString("ghiChu")));
            }
            return phanThuongs;
        } catch (SQLException ex){
            return null;
        }
    }
    public static ObservableList<String> queryfullHoKhau(){
            try {
                String query="SELECT * FROM hokhau";
                PreparedStatement pstmt = Services.conn.prepareStatement(query);
                ResultSet resultSet = pstmt.executeQuery();
                ObservableList<String> hoKhaus = FXCollections.observableArrayList();
                while (resultSet.next()){
                    Integer idHoKhau= resultSet.getInt("idHoKhau");
                    String tenChuHo=queryNhanKhauTheoId(resultSet.getInt("idChuHo")).getHoTen();
                    String diachi=resultSet.getString("tinhThanhPho")+"-"+ resultSet.getString("quanHuyen")+"-"+resultSet.getString("phuongXa")+"-"+resultSet.getString("diaChi");
                    hoKhaus.add(idHoKhau.toString()+"_"+tenChuHo+"_"+diachi);
                }
                return hoKhaus;
            } catch (SQLException ex){
                return null;
            }
    }
    public static void chuyenKhau(Integer idNhanKhau, Integer idHoKhauCu, Integer idHoKhauMoi,Date ngayChuyen, String ghiChu){
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Chuyển khẩu");
            alert.setHeaderText("Bạn chắc chắn muốn chuyển khẩu nhân khẩu này?");
            Optional<ButtonType> option = alert.showAndWait();
            String query="UPDATE nhankhau_hokhau SET idHoKhau=?, quanHeChuHo=? Where idNhanKhau=? AND idHoKhau=?";
            String query1="INSERT INTO nhankhauchuyenhokhau(idNhanKhau,idHoKhau,ngayChuyen,ghiChu,trangThai)\n" +
                    "VALUES (?, ?, ?, ?, ?)\n";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            PreparedStatement pstmt1=Services.conn.prepareStatement(query1);
            pstmt1.setInt(1,idNhanKhau);
            pstmt1.setInt(2,idHoKhauMoi);
            pstmt1.setDate(3,ngayChuyen);
            pstmt1.setString(4,ghiChu);
            pstmt1.setString(5,"Đã chuyển");
            pstmt.setInt(1,idHoKhauMoi);
            pstmt.setString(2,ghiChu);
            pstmt.setInt(3,idNhanKhau);
            pstmt.setInt(4,idHoKhauCu);
            pstmt.executeUpdate();
            pstmt1.executeUpdate();
            Alert alert1 = new Alert(Alert.AlertType.INFORMATION);
            alert1.setTitle("Chuyển khẩu");
            alert1.setHeaderText("Đã chuyển khẩu thành công");
            alert1.showAndWait();
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    public static void duyetNhanThuong(Integer idNopMinhChung) {
        try {
            String query = "UPDATE nguoinopminhchung SET trangThai = 'Đã duyệt' WHERE idNguoiNop=" + idNopMinhChung;
            PreparedStatement pstmt=conn.prepareStatement(query);
            pstmt.execute();

        } catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    public static String queryGhiChuNhanKhauChuyen(Integer idNhanKhau){
        try {
            String query = "SELECT noiChuyenDen,ghiChu FROM nhankhauchuyen Where idNhanKhau =" + idNhanKhau;
            PreparedStatement pstmt=conn.prepareStatement(query);
            ResultSet resultSet= pstmt.executeQuery();
            while (resultSet.next()){
                String ghiChuStr= resultSet.getString("ghiChu");
                String noiChuyenDenStr=resultSet.getString("noiChuyenDen");
                return "Chuyển đến "+noiChuyenDenStr+" , lí do: "+ghiChuStr;
            }
            return null;
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
            return null;
        }

    }
    public static String queryGhiChuNhanKhauTamTru(Integer idNhanKhau){
        try {
            String query = "SELECT noiTamTru,tuNgay,denNgay,lyDo FROM nhankhautamtru Where idNhanKhau =" + idNhanKhau;
            PreparedStatement pstmt=conn.prepareStatement(query);
            ResultSet resultSet= pstmt.executeQuery();
            while (resultSet.next()){
                String noiTamTruStr= resultSet.getString("noiTamTru");
                Date tuNgayDate=resultSet.getDate("tuNgay");
                Date denNgayDate=resultSet.getDate("denNgay");
                String lyDoStr=resultSet.getString("lyDo");
                return "Tạm trú tại "+noiTamTruStr+" từ ngày "+tuNgayDate+" đến ngày "+denNgayDate+" với lí do " + lyDoStr;
            }
            return null;
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
            return null;
        }
    }
    public static String queryGhiChuNhanKhauTamVang(Integer idNhanKhau){
        try {
            String query = "SELECT noiTamTru,tuNgay,denNgay,lyDo FROM nhankhautamvang Where idNhanKhau =" + idNhanKhau;
            PreparedStatement pstmt=conn.prepareStatement(query);
            ResultSet resultSet= pstmt.executeQuery();
            while (resultSet.next()){
                String noiTamTruStr= resultSet.getString("noiTamTru");
                Date tuNgayDate=resultSet.getDate("tuNgay");
                Date denNgayDate=resultSet.getDate("denNgay");
                String lyDoStr=resultSet.getString("lyDo");
                return "Tạm vắng tại "+noiTamTruStr+" từ ngày "+tuNgayDate+" đến ngày "+denNgayDate+" với lí do " + lyDoStr;
            }
            return null;
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
            return null;
        }
    }
    public static String queryGhiChuNhanKhauQuaDoi(Integer idNhanKhau){
        try {
            String query = "SELECT ngayMat,ghiChu FROM nhankhautamvang Where idNhanKhau =" + idNhanKhau;
            PreparedStatement pstmt=conn.prepareStatement(query);
            ResultSet resultSet= pstmt.executeQuery();
            while (resultSet.next()){

                Date ngayMatDate=resultSet.getDate("ngayMat");
                String ghiChuStr=resultSet.getString("ghiChu");
                return "Mất ngày " + ngayMatDate + ", " + ghiChuStr;
            }
            return null;
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
            return null;
        }
    }
    public static void themNguoiNhanThuong(Integer idNhanKhau){

    }
    public static String covertToString(String value) {
        try {
            String temp = Normalizer.normalize(value, Normalizer.Form.NFD);
            Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
            return pattern.matcher(temp).replaceAll("");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public static ObservableList<String> queryTatCaNhanKhauDeNopMinhChung(String quyen, Integer idNhanKhau){
        ObservableList<String> result = FXCollections.observableArrayList();
        try {
            String query;
            if (quyen.equals("Tổ trưởng")) query="SELECT * FROM nhankhau";
            else query="Select * FROM nhankhau,nhankhau_hokhau WHERE nhankhau.idNhanKhau=nhankhau_hokhau.idNhanKhau and nhankhau_hokhau.idHoKhau= " + Services.queryIdHoKhauCuaNhanKhau(idNhanKhau);
            PreparedStatement pstmt=conn.prepareStatement(query);
            ResultSet resultSet= pstmt.executeQuery();
            while (resultSet.next()){
                Integer id= resultSet.getInt("idNhanKhau");
                String ten = resultSet.getString("hoTen");
                String diaChi = resultSet.getString("nguyenQuan");
                String info = id.toString()+"_"+ten+"_"+diaChi;
                result.add(info);
            }
            return result;
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
            return null;
        }
    }
}


