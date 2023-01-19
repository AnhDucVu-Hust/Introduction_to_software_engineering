package Entity;

import java.sql.Date;

public class HoKhauChuyen {
    private Integer idHoKhau;
    private Date ngayChuyenbDi;
    private String noiChuyenDen;
    private String ghiChu;
    private String trangThai;

    public HoKhauChuyen(Integer idHoKhau, Date ngayChuyenbDi, String noiChuyenDen, String ghiChu, String trangThai) {
        this.idHoKhau = idHoKhau;
        this.ngayChuyenbDi = ngayChuyenbDi;
        this.noiChuyenDen = noiChuyenDen;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public Integer getIdHoKhau() {
        return idHoKhau;
    }

    public void setIdHoKhau(Integer idHoKhau) {
        this.idHoKhau = idHoKhau;
    }

    public Date getNgayChuyenbDi() {
        return ngayChuyenbDi;
    }

    public void setNgayChuyenbDi(Date ngayChuyenbDi) {
        this.ngayChuyenbDi = ngayChuyenbDi;
    }

    public String getNoiChuyenDen() {
        return noiChuyenDen;
    }

    public void setNoiChuyenDen(String noiChuyenDen) {
        this.noiChuyenDen = noiChuyenDen;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }
}
