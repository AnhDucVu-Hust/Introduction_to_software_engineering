package main.login;

import Entity.DipTraoThuong;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class suaSuKienPhanThuongController implements Initializable {
    private DipTraoThuong diptraothuong;
    @FXML
    private HBox barNK;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThem;

    @FXML
    private Button dangXuat;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField iD;

    @FXML
    private ChoiceBox loaiDip;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayTraoQua;

    @FXML
    private Button nhanKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private Button quayLai;

    @FXML
    private TextField tenDip;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    void dangXuatClicked(MouseEvent event) {

    }

    @FXML
    void guiThongTinClicked(MouseEvent event) {

    }

    @FXML
    void hoKhauClicked(MouseEvent event) {

    }

    @FXML
    void nhanKhauClicked(MouseEvent event) {

    }

    @FXML
    void phanThuongClicked(MouseEvent event) {

    }

    @FXML
    void quayLaiClicked(MouseEvent event) {

    }

    @FXML
    void thongKeClicked(MouseEvent event) {

    }

    public DipTraoThuong getDiptraothuong() {
        return diptraothuong;
    }

    public void setDiptraothuong(DipTraoThuong diptraothuong) {
        this.diptraothuong = diptraothuong;
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() -> {
            iD.setText(diptraothuong.getIdDip().toString());
            tenDip.setText(diptraothuong.getTenDip());
            loaiDip.setValue(diptraothuong.getLoaiDip());
            ngayTraoQua.setValue(diptraothuong.getNgayTraoThuong().toLocalDate());
            iD.setEditable(false);
            loaiDip.getItems().add("Hoc sinh gioi");
            loaiDip.getItems().add("Dac biet");
        });


    }
}
