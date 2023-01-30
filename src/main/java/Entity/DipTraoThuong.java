package Entity;

import java.sql.Date;

public class DipTraoThuong {
    private Integer idDip;
    private String loaiDip;
    private String tenDip;
    private Date ngayTraoThuong;

    public DipTraoThuong(Integer idDip, String loaiDip, String tenDip, Date ngayTraoThuong) {
        this.idDip = idDip;
        this.loaiDip = loaiDip;
        this.tenDip = tenDip;
        this.ngayTraoThuong = ngayTraoThuong;
    }

    public Integer getIdDip() {
        return idDip;
    }

    public void setIdDip(Integer idDip) {
        this.idDip = idDip;
    }

    public String getLoaiDip() {
        return loaiDip;
    }

    public void setLoaiDip(String loaiDip) {
        this.loaiDip = loaiDip;
    }

    public String getTenDip() {
        return tenDip;
    }

    public void setTenDip(String tenDip) {
        this.tenDip = tenDip;
    }

    public Date getNgayTraoThuong() {
        return ngayTraoThuong;
    }

    public void setNgayTraoThuong(Date ngayTraoThuong) {
        this.ngayTraoThuong = ngayTraoThuong;
    }
}
