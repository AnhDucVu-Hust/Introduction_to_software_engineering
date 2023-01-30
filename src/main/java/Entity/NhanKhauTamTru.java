package Entity;

import java.sql.Date;

public class NhanKhauTamTru {
    private Integer id;
    private Integer idNhanKhau;
    private String noiThuongTru;
    private String noiTamTru;
    private Date ngayDen;
    private Date ngayDi;
    private String lyDo;
    private String trangThai;

    public NhanKhauTamTru(Integer id, Integer idNhanKhau, String noiThuongTru, String noiTamTru, Date ngayDen, Date ngayDi, String lyDo, String trangThai) {
        this.id = id;
        this.idNhanKhau = idNhanKhau;
        this.noiThuongTru = noiThuongTru;
        this.noiTamTru = noiTamTru;
        this.ngayDen = ngayDen;
        this.ngayDi = ngayDi;
        this.lyDo = lyDo;
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

    public String getNoiThuongTru() {
        return noiThuongTru;
    }

    public void setNoiThuongTru(String noiThuongTru) {
        this.noiThuongTru = noiThuongTru;
    }

    public String getNoiTamTru() {
        return noiTamTru;
    }

    public void setNoiTamTru(String noiTamTru) {
        this.noiTamTru = noiTamTru;
    }

    public Date getNgayDen() {
        return ngayDen;
    }

    public void setNgayDen(Date ngayDen) {
        this.ngayDen = ngayDen;
    }

    public Date getNgayDi() {
        return ngayDi;
    }

    public void setNgayDi(Date ngayDi) {
        this.ngayDi = ngayDi;
    }

    public String getLyDo() {
        return lyDo;
    }

    public void setLyDo(String lyDo) {
        this.lyDo = lyDo;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }
}
