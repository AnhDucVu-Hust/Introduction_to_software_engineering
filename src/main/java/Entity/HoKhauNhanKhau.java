package Entity;

public class HoKhauNhanKhau {
    private Integer idHoKhau;
    private Integer idNhanKhau;
    private String quanHeVoiChuHo;

    public HoKhauNhanKhau(Integer idHoKhau, Integer idNhanKhau, String quanHeVoiChuHo) {
        this.idHoKhau = idHoKhau;
        this.idNhanKhau = idNhanKhau;
        this.quanHeVoiChuHo = quanHeVoiChuHo;
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
