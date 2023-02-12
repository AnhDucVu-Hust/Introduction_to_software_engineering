package main.login;

import Entity.NhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import org.w3c.dom.Text;

import java.io.IOException;
import java.net.URL;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ResourceBundle;

public class xemChiTietNhanKhauController implements Initializable {
    public xemChiTietNhanKhauController() {
    }

    public void setNk(NhanKhau nk) {
        this.nk = nk;
    }

    private NhanKhau nk;

    @FXML
    private HBox barNK;

    @FXML
    private TextField biDanh;

    @FXML
    private TextField cmndCccd;

    @FXML
    private TextField danToc;

    @FXML
    private Button dangXuat;

    @FXML
    private ChoiceBox<String> gioiTinh;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField hoTen;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayChuyenDen;

    @FXML
    private DatePicker ngaySinh;

    @FXML
    private TextField ngheNghiep;

    @FXML
    private TextField nguyenQuan;

    @FXML
    private Button nhanKhau;

    @FXML
    private TextField noiLamViec;

    @FXML
    private TextField noiSinh;

    @FXML
    private TextField noiThuongTruTruoc;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private Button quayLai;

    @FXML
    private TextField quocTich;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;

    @FXML
    private TextField tonGiao;

    @FXML
    private StackPane tuongTacChinhNK;

    @FXML
    void quayLaiClicked(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }


    @FXML
    private TextField ghiChu;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            System.out.println(nk.getHoTen());
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
            gioiTinh.getItems().add("Nam");
            gioiTinh.getItems().add("Nữ");
            gioiTinh.setValue(nk.getGioiTinh());
            hoTen.setText(nk.getHoTen());
            ngaySinh.setValue(nk.getNgaySinh().toLocalDate());
            noiSinh.setText(nk.getNoiSinh());
            biDanh.setText(nk.getBiDanh());
            danToc.setText(nk.getDanToc());
            tonGiao.setText(nk.getTonGiao());
            nguyenQuan.setText(nk.getNguyenQuan());
            cmndCccd.setText(nk.getCmnd_cccd());
            quocTich.setText(nk.getQuocTich());
            ngheNghiep.setText(nk.getNgheNghiep());
            noiLamViec.setText(nk.getNoiLamViec());
            noiThuongTruTruoc.setText(nk.getNoiThuongTruTruoc());
            ngayChuyenDen.setValue(nk.getNgayChuyenDen().toLocalDate());
            String trangThai=nk.getTrangThai();
            if (trangThai.contains("Đã chuyển")) ghiChu.setText(Services.queryGhiChuNhanKhauChuyen(nk.getId()));
            else if (trangThai.contains("Đã mất")) ghiChu.setText(Services.queryGhiChuNhanKhauQuaDoi(nk.getId()));
            else if (trangThai.contains("Tạm trú")) ghiChu.setText(Services.queryGhiChuNhanKhauTamTru(nk.getId()));
            else if (trangThai.contains("Tạm vắng")) ghiChu.setText(Services.queryGhiChuNhanKhauTamVang(nk.getId()));
        });
    }
}
