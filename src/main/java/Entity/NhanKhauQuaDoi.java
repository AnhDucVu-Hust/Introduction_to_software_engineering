package Entity;

import java.sql.Date;

public class NhanKhauQuaDoi {
    private Integer id;
    private Integer idNguoiMat;
    private Integer idNguoiKhai;
    private Date ngayKhai;
    private Date ngayMat;
    private String ghiChu;
    private String trangThai;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public NhanKhauQuaDoi(Integer id, Integer idNguoiMat, Integer idNguoiKhai, Date ngayKhai, Date ngayMat, String ghiChu, String trangThai) {
        this.id = id;
        this.idNguoiMat = idNguoiMat;
        this.idNguoiKhai = idNguoiKhai;
        this.ngayKhai = ngayKhai;
        this.ngayMat = ngayMat;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public NhanKhauQuaDoi(Integer idNguoiMat, Integer idNguoiKhai, Date ngayKhai, Date ngayMat, String ghiChu, String trangThai) {
        this.idNguoiMat = idNguoiMat;
        this.idNguoiKhai = idNguoiKhai;
        this.ngayKhai = ngayKhai;
        this.ngayMat = ngayMat;
        this.ghiChu = ghiChu;
        this.trangThai = trangThai;
    }

    public Integer getIdNguoiMat() {
        return idNguoiMat;
    }

    public void setIdNguoiMat(Integer idNguoiMat) {
        this.idNguoiMat = idNguoiMat;
    }

    public Integer getIdNguoiKhai() {
        return idNguoiKhai;
    }

    public void setIdNguoiKhai(Integer idNguoiKhai) {
        this.idNguoiKhai = idNguoiKhai;
    }

    public Date getNgayKhai() {
        return ngayKhai;
    }

    public void setNgayKhai(Date ngayKhai) {
        this.ngayKhai = ngayKhai;
    }

    public Date getNgayMat() {
        return ngayMat;
    }

    public void setNgayMat(Date ngayMat) {
        this.ngayMat = ngayMat;
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
