package Services;

import Entity.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import main.login.MyConnection;
import main.login.UserInfo;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

public class Services {

    private static Connection conn = MyConnection.conDB();

    // các phương thức thêm bản ghi vào database

    public static void themVaoBangNhanKhau(NhanKhau nk) {

        try {
            String query = "INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            String hoTenStr = nk.getTen();
            String biDanhStr = nk.getBiDanh();
            Date ngaySinhDate = nk.getNgaySinh();
            String noiSinhStr = nk.getNoiSinh();
            String nguyenQuanStr = nk.getNguyenQuan();
            String danTocStr = nk.getDanToc();
            String gioiTinhStr = nk.getGioiTinh();
            String tonGiaoStr = nk.getTonGiao();
            String quocTichStr = nk.getQuocTich();
            String cmndCccdStr = nk.getCmndCccd();
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
            pstmt.executeQuery();
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
            String query = "INSERT INTO NhanKhau_HoKhau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES(?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, hknk.getIdHoKhau());
            pstmt.setInt(2, hknk.getIdNhanKhau());
            pstmt.setString(3, hknk.getQuanHeVoiChuHo());

            pstmt.executeQuery();

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
            pstmt.setDate(4, hk.getNgayCap());
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
            String query = "INSERT INTO NguoiNopMinhChung(idNguoiNop, idDip, idNguoiNhan, linkMinhChung, ngayDangKy, trangThai, thanhTich, idPhanThuong) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nmc.getIdNguoiNop());
            pstmt.setInt(2, nmc.getIdDip());
            pstmt.setInt(3, nmc.getIdNguoiNhan());
            pstmt.setString(4, nmc.getLinkMinhChung());
            pstmt.setDate(5, nmc.getNgayDangKy());
            pstmt.setString(6, nmc.getTrangThai());
            pstmt.setString(7, nmc.getThanhTich());
            pstmt.setInt(8, nmc.getIdPhanThuong());

            pstmt.executeQuery();
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
            pstmt.setInt(2, nkcd.getId());

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
            pstmt.setInt(2, nkqd.getId());

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
            pstmt.setInt(2, nkt.getId());

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

    public static void doiThanhTichNguoiNopMinhChung(NopMinhChung nmc, String thanhTich){
        try {
            String query = "UPDATE NguoiNopMinhChung SET thanhTich = ? WHERE idDip = ? AND idNguoiNhan = ?";

            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, thanhTich);
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
            String query = "SELECT * from NhanKhau WHERE IdNhanKhau = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);
            pstmt.setInt(1, IdNhanKhau);
            ResultSet resultSet = pstmt.executeQuery();
            NhanKhau nk = new NhanKhau(resultSet.getInt("idNhanKhau"),
                    resultSet.getString("hoTen"),
                    resultSet.getDate("ngaySinh "),
                    resultSet.getString("biDanh"),
                    resultSet.getString("noiSinh"),
                    resultSet.getString("gioiTinh"),
                    resultSet.getString("nguyenQuan"),
                    resultSet.getString("danToc"),
                    resultSet.getString("tonGiao"),
                    resultSet.getString("quocTich"),
                    resultSet.getString("ngheNghiep"),
                    resultSet.getString("noiLamViec"),
                    resultSet.getString("cmndCccd"),
                    resultSet.getDate("ngayChuyenDen"),
                    resultSet.getString("noiThuongTruTruoc"),
                    resultSet.getString("trangThai"));
            return nk;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public static ObservableList<NhanKhau> queryIdNhanKhau(String hoTen, Date ngaySinh, String cmndCccd) {
        ObservableList<NhanKhau> dsNK = FXCollections.observableArrayList();
        ArrayList<Integer> idNK = new ArrayList<>();
        if (cmndCccd != null && cmndCccd != "") {
            try {
                String query = "SELECT idNhanKhau FROM NhanKhau WHERE cmnd_cccd = ?";
                PreparedStatement pstmt = Services.conn.prepareStatement(query);
                pstmt.setString(1, cmndCccd);
                ResultSet resultSet = pstmt.executeQuery();
                while(resultSet.next()){
                    Integer id = resultSet.getInt("idNhanKhau");
                    NhanKhau nk = queryNhanKhauTheoId(id);
                    dsNK.add(nk);
                }

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
                while(resultSet.next()){
                    Integer id = resultSet.getInt("idNhanKhau");
                    NhanKhau nk = queryNhanKhauTheoId(id);
                    dsNK.add(nk);
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return dsNK;
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

    public static ObservableList<NhanKhau> dsGiaDinh(Integer idHoKhau){
        ObservableList<NhanKhau> gd = FXCollections.observableArrayList();

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

    public static DipTraoThuong queryDipTheoId(Integer id){
        ObservableList<Integer> gd = FXCollections.observableArrayList();
        ArrayList<Integer> idNK = new ArrayList<>();

        try {
            String query = "SELECT * FROM DipTraoThuong WHERE idDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, id);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                DipTraoThuong dip = new DipTraoThuong(
                        resultSet.getInt("idDip"),
                        resultSet.getString("loaiDip"),
                        resultSet.getString("tenDip "),
                        resultSet.getDate("ngayTraoThuong"));
                return dip;
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public static ObservableList<DipTraoThuong> queryDipTheoLoai(String loaiDip){
        ObservableList<DipTraoThuong> dsDip = FXCollections.observableArrayList();

        try {
            String query = "SELECT idDip FROM DipTraoThuong WHERE loaiDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, loaiDip);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idDip");
                DipTraoThuong dip = queryDipTheoId(id);
                dsDip.add(dip);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsDip;
    }

    public static ObservableList<DipTraoThuong> queryDipTheoTen(String tenDip){
        tenDip = "%" + tenDip + "%";
        ObservableList<DipTraoThuong> dsDip = FXCollections.observableArrayList();

        try {
            String query = "SELECT idDip FROM DipTraoThuong WHERE tenDip LIKE ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tenDip);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idDip");
                DipTraoThuong dip = queryDipTheoId(id);
                dsDip.add(dip);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsDip;
    }

    public static ObservableList<DipTraoThuong> queryDipTheoTenVaLoai(String tenDip, String loaiDip){
        tenDip = "%" + tenDip + "%";
        ObservableList<DipTraoThuong> dsDip = FXCollections.observableArrayList();

        try {
            String query = "SELECT idDip FROM DipTraoThuong WHERE loaiDip = ? AND tenDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tenDip);
            pstmt.setString(2, loaiDip);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idDip");
                DipTraoThuong dip = queryDipTheoId(id);
                dsDip.add(dip);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsDip;
    }

    public static PhanThuong queryPhanThuongTheoId(Integer id){
        try {
            String query = "SELECT * FROM PhanThuong WHERE idPhanThuong = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, id);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                PhanThuong pt = new PhanThuong(
                        resultSet.getInt("idPhanThuong"),
                        resultSet.getString("tenPhanThuong"),
                        resultSet.getInt("giaTriPhanThuong "),
                        resultSet.getString("ghiChu"));
                return pt;
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public static ObservableList<PhanThuong> queryPhanThuongTheoTen(String tenPhanThuong){
        ObservableList<PhanThuong> dsPT = FXCollections.observableArrayList();
        tenPhanThuong = "%" + tenPhanThuong + "%";

        try {
            String query = "SELECT * FROM PhanThuong WHERE tenPhanThuong LIKE ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tenPhanThuong);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idPhanThuong");
                PhanThuong pt = queryPhanThuongTheoId(id);
                dsPT.add(pt);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsPT;
    }

    public static ObservableList<PhanThuong> queryPhanThuongTheoTenVaGiaTri(String tenPhanThuong, Integer giaTri){
        ObservableList<PhanThuong> dsPT = FXCollections.observableArrayList();
        tenPhanThuong = "%" + tenPhanThuong + "%";

        try {
            String query = "SELECT * FROM PhanThuong WHERE tenPhanThuong LIKE ? AND giaTri = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setString(1, tenPhanThuong);
            pstmt.setInt(2, giaTri);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idPhanThuong");
                PhanThuong pt = queryPhanThuongTheoId(id);
                dsPT.add(pt);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsPT;
    }

    public static ObservableList<PhanThuong> queryPhanThuongChoDip(DipTraoThuong d){
        ObservableList<PhanThuong> dsPT = FXCollections.observableArrayList();

        try {
            String query = "SELECT * FROM PhanThuong_DipTraoThuong WHERE idDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, d.getIdDip());
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idPhanThuong");
                PhanThuong pt = queryPhanThuongTheoId(id);
                dsPT.add(pt);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsPT;
    }

    public static ObservableList<NhanKhau> queryNguoiNhanPhanThuongTheoDip(DipTraoThuong d){
        ObservableList<NhanKhau> dsNK = FXCollections.observableArrayList();

        try {
            String query = "SELECT * FROM NguoiNopMinhChung WHERE idDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, d.getIdDip());
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idNguoiNhan");
                NhanKhau nk = queryNhanKhauTheoId(id);
                dsNK.add(nk);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsNK;
    }

    public static ObservableList<NhanKhau> queryNguoiNhanPhanThuongTheoDipVaTrangThai(DipTraoThuong d, String trangThai){
        ObservableList<NhanKhau> dsNK = FXCollections.observableArrayList();

        try {
            String query = "SELECT * FROM NguoiNopMinhChung WHERE idDip = ? AND trangThai = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, d.getIdDip());
            pstmt.setString(2, trangThai);
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idNguoiNhan");
                NhanKhau nk = queryNhanKhauTheoId(id);
                dsNK.add(nk);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsNK;
    }

    public static ObservableList<DipTraoThuong> queryDipTheoNguoiDangKyHoacNguoiNhan(NhanKhau nk){
        ObservableList<DipTraoThuong> dsDip = FXCollections.observableArrayList();

        try {
            String query = "SELECT * FROM NguoiNopMinhChung WHERE idNguoiNop = ? OR idNguoiNhan = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nk.getId());
            pstmt.setInt(2, nk.getId());
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idDip");
                DipTraoThuong dip = queryDipTheoId(id);
                dsDip.add(dip);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsDip;
    }

    public static ObservableList<PhanThuong> queryPhanThuongTheoNKVaDip(NhanKhau nk, DipTraoThuong dip){
        ObservableList<PhanThuong> dsPT = FXCollections.observableArrayList();

        try {
            String query = "SELECT * FROM NguoiNopMinhChung WHERE (idNguoiNop = ? OR idNguoiNhan = ?) AND idDip = ?";
            PreparedStatement pstmt = Services.conn.prepareStatement(query);

            pstmt.setInt(1, nk.getId());
            pstmt.setInt(2, nk.getId());
            pstmt.setInt(3, dip.getIdDip());
            ResultSet resultSet = pstmt.executeQuery();
            while(resultSet.next()){
                Integer id = resultSet.getInt("idPhanThuong");
                PhanThuong pt = queryPhanThuongTheoId(id);
                dsPT.add(pt);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return dsPT;
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

}