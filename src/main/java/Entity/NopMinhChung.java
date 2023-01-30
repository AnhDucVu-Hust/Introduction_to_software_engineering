package Entity;

import Service.Services;

import java.sql.Date;

public class NopMinhChung {
    private Integer idNguoiNop;
    private Integer idDip;
    private Integer idNguoiNhan;
    private String linkMinhChung;
    private Date ngayDangKy;
    private String trangThai;
    private Integer idPhanThuong;

    public String getThanhTich() {
        return thanhTich;
    }

    public void setThanhTich(String thanhTich) {
        this.thanhTich = thanhTich;
    }

    private String thanhTich;
    public NopMinhChung(Integer idNguoiNop, Integer idDip, Integer idNguoiNhan, String linkMinhChung, Date ngayDangKy, String trangThai, Integer idPhanThuong, String thanhTich) {
        this.idNguoiNop = idNguoiNop;
        this.idDip = idDip;
        this.idNguoiNhan = idNguoiNhan;
        this.linkMinhChung = linkMinhChung;
        this.ngayDangKy = ngayDangKy;
        this.trangThai = trangThai;
        this.idPhanThuong = idPhanThuong;
        this.thanhTich=thanhTich;
        this.ten=Services.queryNhanKhauTheoId(idNguoiNhan).getHoTen();
        this.phanThuong=Services.queryPhanThuongTheoID(idPhanThuong);
    }

    public Integer getIdNguoiNop() {
        return idNguoiNop;
    }

    public void setIdNguoiNop(Integer idNguoiNop) {
        this.idNguoiNop = idNguoiNop;
    }

    public Integer getIdDip() {
        return idDip;
    }

    public void setIdDip(Integer idDip) {
        this.idDip = idDip;
    }

    public Integer getIdNguoiNhan() {
        return idNguoiNhan;
    }

    public void setIdNguoiNhan(Integer idNguoiNhan) {
        this.idNguoiNhan = idNguoiNhan;
    }

    public String getLinkMinhChung() {
        return linkMinhChung;
    }

    public void setLinkMinhChung(String linkMinhChung) {
        this.linkMinhChung = linkMinhChung;
    }

    public Date getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(Date ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Integer getIdPhanThuong() {
        return idPhanThuong;
    }

    public void setIdPhanThuong(Integer idPhanThuong) {
        this.idPhanThuong = idPhanThuong;
    }

    public String getTen() {
        return ten;
    }

    public String getPhanThuong() {
        return phanThuong;
    }

    private String ten;
    private String phanThuong;
}
