package Entity;

public class PhanThuongDipTrao {
    private Integer idPhanTHuong;
    private Integer idDip;
    private String ghiChu;

    public PhanThuongDipTrao(Integer idPhanTHuong, Integer idDip, String ghiChu) {
        this.idPhanTHuong = idPhanTHuong;
        this.idDip = idDip;
        this.ghiChu = ghiChu;
    }

    public Integer getIdPhanTHuong() {
        return idPhanTHuong;
    }

    public void setIdPhanTHuong(Integer idPhanTHuong) {
        this.idPhanTHuong = idPhanTHuong;
    }

    public Integer getIdDip() {
        return idDip;
    }

    public void setIdDip(Integer idDip) {
        this.idDip = idDip;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }
}
