package Entity;
import Service.Services;
public class NhanKhauNhanThuong {
    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public String getTenNhanKhau() {
        return tenNhanKhau;
    }

    public void setTenNhanKhau(String tenNhanKhau) {
        this.tenNhanKhau = tenNhanKhau;
    }

    public String getThanhTich() {
        return thanhTich;
    }

    public void setThanhTich(String thanhTich) {
        this.thanhTich = thanhTich;
    }

    public String getMinhChung() {
        return minhChung;
    }

    public void setMinhChung(String minhChung) {
        this.minhChung = minhChung;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    private Integer idNhanKhau;

    public Integer getIdDip() {
        return idDip;
    }

    public void setIdDip(Integer idDip) {
        this.idDip = idDip;
    }

    private Integer idDip;
    private String tenNhanKhau;
    private String thanhTich;
    private String minhChung;
    private String trangThai;
}
