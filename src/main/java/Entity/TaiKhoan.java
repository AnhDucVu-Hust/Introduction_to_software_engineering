package Entity;

public class TaiKhoan {
    private Integer idNhanKhau;
    private String taiKhoan;
    private String matKhau;
    private String quyen;

    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getQuyen() {
        return quyen;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    public TaiKhoan(Integer idNhanKhau, String taiKhoan, String matKhau, String quyen) {
        this.idNhanKhau = idNhanKhau;
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.quyen = quyen;
    }
}
