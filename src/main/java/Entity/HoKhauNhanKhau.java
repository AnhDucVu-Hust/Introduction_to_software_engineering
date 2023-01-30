package Entity;

public class HoKhauNhanKhau {
    private Integer idHoKhau;
    private Integer idNhanKhau;
    private String quanHeVoiChuHo;

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getCmnd_cccd() {
        return cmnd_cccd;
    }

    public void setCmnd_cccd(String cmnd_cccd) {
        this.cmnd_cccd = cmnd_cccd;
    }

    private String hoTen;
    private String cmnd_cccd;
    public HoKhauNhanKhau(Integer idHoKhau, Integer idNhanKhau, String hoTen, String cmnd_cccd,String quanHeVoiChuHo) {
        this.idHoKhau = idHoKhau;
        this.idNhanKhau = idNhanKhau;
        this.quanHeVoiChuHo = quanHeVoiChuHo;
        this.hoTen=hoTen;
        this.cmnd_cccd=cmnd_cccd;
    }

    public Integer getIdHoKhau() {
        return idHoKhau;
    }

    public void setIdHoKhau(Integer idHoKhau) {
        this.idHoKhau = idHoKhau;
    }

    public Integer getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public String getQuanHeVoiChuHo() {
        return quanHeVoiChuHo;
    }

    public void setQuanHeVoiChuHo(String quanHeVoiChuHo) {
        this.quanHeVoiChuHo = quanHeVoiChuHo;
    }
}
