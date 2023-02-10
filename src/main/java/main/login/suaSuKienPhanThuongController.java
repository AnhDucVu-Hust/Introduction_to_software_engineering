package main.login;

import Entity.DipTraoThuong;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
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
    void hoKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainHoKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void phanThuongClicked(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainPhanThuong.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void quayLaiClicked(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainPhanThuong.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void thongKeClicked(MouseEvent event) throws IOException{

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
            loaiDip.setValue("Hoc sinh gioi");
        });


    }
}
