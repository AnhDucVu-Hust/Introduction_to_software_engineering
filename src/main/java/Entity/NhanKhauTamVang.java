package Entity;

import java.sql.Date;
public class NhanKhauTamVang {
    private Integer id;
    private Integer idNhanKhau;
    private String noiTamTru;
    private Date ngayDi;
    private Date ngayVe;
    private String lyDo;
    private String trangThai;

    public NhanKhauTamVang(Integer id, Integer idNhanKhau, String noiTamTru, Date ngayDi, Date ngayVe, String lyDo, String trangThai) {
        this.id = id;
        this.idNhanKhau = idNhanKhau;
        this.noiTamTru = noiTamTru;
        this.ngayDi = ngayDi;
        this.ngayVe = ngayVe;
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

    public String getNoiTamTru() {
        return noiTamTru;
    }

    public void setNoiTamTru(String noiTamTru) {
        this.noiTamTru = noiTamTru;
    }

    public Date getNgayDi() {
        return ngayDi;
    }

    public void setNgayDi(Date ngayDi) {
        this.ngayDi = ngayDi;
    }

    public Date getNgayVe() {
        return ngayVe;
    }

    public void setNgayVe(Date ngayVe) {
        this.ngayVe = ngayVe;
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
