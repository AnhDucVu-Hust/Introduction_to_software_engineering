package Entity;

import java.sql.Date;

public class NhanKhau {
    private Integer id;
    private String hoTen;
    private Date ngaySinh;
    private String biDanh;
    private String noiSinh;
    private String gioiTinh;
    private String nguyenQuan;
    private String danToc;
    private String tonGiao;
    private String quocTich;
    private String ngheNghiep;
    private String noiLamViec;
    private String cmnd_cccd;
    private Date ngayChuyenDen;
    private String noiThuongTruTruoc;
    private String trangThai;

    public NhanKhau(Integer id, String ten, Date ngaySinh, String biDanh, String noiSinh, String gioiTinh, String nguyenQuan, String danToc, String tonGiao, String quocTich, String ngheNghiep, String noiLamViec, String cmndCccd, Date ngayChuyenDen, String noiThuongTruTruoc, String trangThai) {
        this.id = id;
        this.hoTen = ten;
        this.ngaySinh = ngaySinh;
        this.biDanh = biDanh;
        this.noiSinh = noiSinh;
        this.gioiTinh = gioiTinh;
        this.nguyenQuan = nguyenQuan;
        this.danToc = danToc;
        this.tonGiao = tonGiao;
        this.quocTich = quocTich;
        this.ngheNghiep = ngheNghiep;
        this.noiLamViec = noiLamViec;
        this.cmnd_cccd = cmndCccd;
        this.ngayChuyenDen = ngayChuyenDen;
        this.noiThuongTruTruoc = noiThuongTruTruoc;
        this.trangThai = trangThai;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String ten) {
        this.hoTen = ten;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getBiDanh() {
        return biDanh;
    }

    public void setBiDanh(String biDanh) {
        this.biDanh = biDanh;
    }

    public String getNoiSinh() {
        return noiSinh;
    }

    public void setNoiSinh(String noiSinh) {
        this.noiSinh = noiSinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getNguyenQuan() {
        return nguyenQuan;
    }

    public void setNguyenQuan(String nguyenQuan) {
        this.nguyenQuan = nguyenQuan;
    }

    public String getDanToc() {
        return danToc;
    }

    public void setDanToc(String danToc) {
        this.danToc = danToc;
    }

    public String getTonGiao() {
        return tonGiao;
    }

    public void setTonGiao(String tonGiao) {
        this.tonGiao = tonGiao;
    }

    public String getQuocTich() {
        return quocTich;
    }

    public void setQuocTich(String quocTich) {
        this.quocTich = quocTich;
    }

    public String getNgheNghiep() {
        return ngheNghiep;
    }

    public void setNgheNghiep(String ngheNghiep) {
        this.ngheNghiep = ngheNghiep;
    }

    public String getNoiLamViec() {
        return noiLamViec;
    }

    public void setNoiLamViec(String noiLamViec) {
        this.noiLamViec = noiLamViec;
    }

    public String getCmnd_cccd() {
        return cmnd_cccd;
    }

    public void setCmnd_cccd(String cmndCccd) {
        this.cmnd_cccd = cmndCccd;
    }

    public Date getNgayChuyenDen() {
        return ngayChuyenDen;
    }

    public void setNgayChuyenDen(Date ngayChuyenDen) {
        this.ngayChuyenDen = ngayChuyenDen;
    }

    public String getNoiThuongTruTruoc() {
        return noiThuongTruTruoc;
    }

    public void setNoiThuongTruTruoc(String noiThuongTruTruoc) {
        this.noiThuongTruTruoc = noiThuongTruTruoc;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }
}
