package Entity;

public class PhanThuong {
    private Integer id;
    private String ten;
    private Integer giaTri;
    private String ghiChu;

    private Integer soLuong; // dung cho thong ke dip trao thuong

    public PhanThuong(Integer id, String ten, Integer giaTri, String ghiChu, Integer soLuong) {
        this.id = id;
        this.ten = ten;
        this.giaTri = giaTri;
        this.ghiChu = ghiChu;
        this.soLuong = soLuong;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public PhanThuong(Integer id, String ten, Integer giaTri, String ghiChu) {
        this.id = id;
        this.ten = ten;
        this.giaTri = giaTri;
        this.ghiChu = ghiChu;
        this.soLuong = null;
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
