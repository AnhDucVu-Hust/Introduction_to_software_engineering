package main.login;

import Entity.NhanKhau;
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

import java.io.IOException;
import java.net.URL;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ResourceBundle;

public class xemChiTietNhanKhauController implements Initializable {
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
    private ChoiceBox<?> gioiTinh;

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
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }



    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
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


    }
}
