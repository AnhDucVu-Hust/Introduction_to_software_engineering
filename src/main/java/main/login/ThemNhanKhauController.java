package main.login;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Pane;

import java.sql.*;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;

public class ThemNhanKhauController {

    @FXML
    private Button nhanKhau;

    @FXML
    private Button hoKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private Button thongKe;

    @FXML
    private Button dangXuat;

    @FXML
    private TextField hoTen;

    @FXML
    private TextField biDanh;

    @FXML
    private DatePicker ngaySinh;

    @FXML
    private TextField noiSinh;

    @FXML
    private TextField nguyenQuan;

    @FXML
    private TextField danToc;

    @FXML
    private ChoiceBox<String> gioiTinh = new ChoiceBox<>(FXCollections.observableArrayList("Nam", "Nữ"));

    @FXML
    private TextField tonGiao;

    @FXML
    private TextField quocTich;

    @FXML
    private TextField cmndCccd;

    @FXML
    private TextField ngheNghiep;

    @FXML
    private TextField noiLamViec;

    @FXML
    private DatePicker ngayChuyenDen;

    @FXML
    private TextField noiThuongTruTruoc;

    @FXML
    private Button guiThongTin;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Label title;

    @FXML
    void dangXuatClicked(MouseEvent event) {

    }

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        String status;
        System.out.println("Clicked");
        try {
            Connection conn = MyConnection.conDB();
            String query = "INSERT INTO NhanKhau(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, N'Thường trú'";
            PreparedStatement pstmt = conn.prepareStatement(query);

            String hoTenStr = hoTen.getText().toString();
            String biDanhStr = biDanh.getText().toString();
            LocalDate ngaySinhDate = ngaySinh.getValue();
            String noiSinhStr = noiSinh.getText().toString();
            String nguyenQuanStr = nguyenQuan.getText().toString();
            String danTocStr = danToc.getText().toString();
            String gioiTinhStr = gioiTinh.getValue().toString();
            String tonGiaoStr = tonGiao.getText().toString();
            String quocTichStr = quocTich.getText().toString();
            String cmndCccdStr = cmndCccd.getText().toString();
            String ngheNghiepStr = ngheNghiep.getText().toString();
            String noiLamViecStr = noiLamViec.getText().toString();
            LocalDate ngayChuyenDenDate = ngayChuyenDen.getValue();
            String noiThuongTruTruocStr = noiThuongTruTruoc.getText().toString();

            pstmt.setString(1, hoTenStr);
            if(biDanhStr != "")
                pstmt.setString(2, biDanhStr);
            else
                pstmt.setNull(2, Types.NULL);
            pstmt.setDate(3, Date.valueOf(ngaySinhDate));
            pstmt.setString(4, noiSinhStr);
            pstmt.setString(5, "Nam");
            pstmt.setString(6, nguyenQuanStr);
            pstmt.setString(7, danTocStr);
            pstmt.setString(8, tonGiaoStr);
            pstmt.setString(9, quocTichStr);
            if(ngheNghiepStr != "")
                pstmt.setString(10, ngheNghiepStr);
            else
                pstmt.setNull(10, Types.NULL);
            if(noiLamViecStr != "")
                pstmt.setString(11, noiLamViecStr);
            else
                pstmt.setNull(11, Types.NULL);
            if(cmndCccdStr != "")
                pstmt.setString(12, cmndCccdStr);
            else
                pstmt.setNull(12, Types.NULL);

            pstmt.setDate(13, Date.valueOf(ngayChuyenDenDate));
            pstmt.setString(14, noiThuongTruTruocStr);
            pstmt.executeQuery();
            System.out.println("them thanh cong!");
        } catch(SQLException e){
            System.err.println(e.getMessage());
            status = "Exception";
        }

    }

    @FXML
    void khaiTuClicked(MouseEvent event) {

    }

    @FXML
    void nhanKhauClicked(MouseEvent event) {

    }

    @FXML
    void tamTruVangClicked(MouseEvent event) {

    }

    @FXML
    void themMoiClicked(MouseEvent event) {

    }

    @FXML
    void xoaClicked(MouseEvent event) {

    }


}
