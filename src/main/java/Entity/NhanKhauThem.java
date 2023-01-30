package Entity;

import java.sql.Date;

public class NhanKhauThem {
    private Integer id;
    private Integer idNhanKhau;
    private Date ngayThem;
    private String ghiChu;
    private String trangThai;

    public NhanKhauThem(Integer id, Integer idNhanKhau, Date ngayThem, String ghiChu, String trangThai) {
        this.id = id;
        this.idNhanKhau = idNhanKhau;
        this.ngayThem = ngayThem;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public Date getNgayThem() {
        return ngayThem;
    }

    public void setNgayThem(Date ngayThem) {
        this.ngayThem = ngayThem;
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
