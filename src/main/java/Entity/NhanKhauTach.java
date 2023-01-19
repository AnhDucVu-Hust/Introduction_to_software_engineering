package Entity;

import java.sql.Date;

public class NhanKhauTach {
    private Integer idNhanKhau;
    private Date ngayKhaiBao;
    private String ghiChu;
    private String trangThai;

    public NhanKhauTach(Integer idNhanKhau, Date ngayKhaiBao, String ghiChu, String trangThai) {
        this.idNhanKhau = idNhanKhau;
        this.ngayKhaiBao = ngayKhaiBao;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public Date getNgayKhaiBao() {
        return ngayKhaiBao;
    }

    public void setNgayKhaiBao(Date ngayKhaiBao) {
        this.ngayKhaiBao = ngayKhaiBao;
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
