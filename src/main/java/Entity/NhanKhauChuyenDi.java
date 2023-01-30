package Entity;

import java.sql.Date;

public class NhanKhauChuyenDi {
    private Integer idNhanKhau;
    private Date ngayChuyenDi;
    private String noiChuyenDen;
    private String ghiChu;
    private String trangThai;

    public NhanKhauChuyenDi(Integer idNhanKhau, Date ngayChuyenDi, String noiChuyenDen, String ghiChu, String trangThai) {
        this.idNhanKhau = idNhanKhau;
        this.ngayChuyenDi = ngayChuyenDi;
        this.noiChuyenDen = noiChuyenDen;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public Date getNgayChuyenDi() {
        return ngayChuyenDi;
    }

    public void setNgayChuyenDi(Date ngayChuyenDi) {
        this.ngayChuyenDi = ngayChuyenDi;
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
