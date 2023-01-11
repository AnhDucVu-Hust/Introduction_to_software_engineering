package main.login;

import java.sql.Date;

public class UserInfo {
    private int idNhanKhau;
    private String hoTen;
    private String trangThai;
    private Date ngaySinh;

    public UserInfo(int idNhanKhau, String hoTen, String trangThai, Date ngaySinh) {
        this.idNhanKhau = idNhanKhau;
        this.hoTen = hoTen;
        this.trangThai = trangThai;
        this.ngaySinh = ngaySinh;
    }

    public int getIdNhanKhau() {
        return idNhanKhau;
    }

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }
}
