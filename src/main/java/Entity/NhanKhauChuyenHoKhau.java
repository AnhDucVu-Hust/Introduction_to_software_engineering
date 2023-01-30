package Entity;

import java.sql.Date;

public class NhanKhauChuyenHoKhau {
    private Integer id;
    private Integer idNhanKhau;
    private Integer idHoKhau;
    private Date ngayChuyen;
    private String ghiChu;
    private String trangThai;

    public NhanKhauChuyenHoKhau(Integer id, Integer idNhanKhau, Integer idHoKhau, Date ngayChuyen, String ghiChu, String trangThai) {
        this.id = id;
        this.idNhanKhau = idNhanKhau;
        this.idHoKhau = idHoKhau;
        this.ngayChuyen = ngayChuyen;
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

    public Integer getIdHoKhau() {
        return idHoKhau;
    }

    public void setIdHoKhau(Integer idHoKhau) {
        this.idHoKhau = idHoKhau;
    }

    public Date getNgayChuyen() {
        return ngayChuyen;
    }

    public void setNgayChuyen(Date ngayChuyen) {
        this.ngayChuyen = ngayChuyen;
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