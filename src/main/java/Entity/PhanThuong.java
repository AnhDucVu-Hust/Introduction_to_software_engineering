package Entity;

public class PhanThuong {
    private Integer id;
    private String ten;
    private Integer giaTri;
    private String ghiChu;

    public PhanThuong(Integer id, String ten, Integer giaTri, String ghiChu) {
        this.id = id;
        this.ten = ten;
        this.giaTri = giaTri;
        this.ghiChu = ghiChu;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Integer getGiaTri() {
        return giaTri;
    }

    public void setGiaTri(Integer giaTri) {
        this.giaTri = giaTri;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }
}
