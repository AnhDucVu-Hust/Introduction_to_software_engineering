package main.login;

import Entity.NhanKhau;
import Entity.PhanThuong;
import Service.Services;
import Entity.NhanKhauNhanThuong;
import Entity.NopMinhChung;
import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class danhSachNhanThuongController implements Initializable {
    private Integer idDip;

    public void setTenDip(String tenDip) {
        this.tenDip = tenDip;
    }

    private String tenDip;
    public void setIdDip(Integer idDip){
        this.idDip=idDip;
    }
    @FXML
    private HBox barNK;

    @FXML
    private Button btnChonQua;
    @FXML
    private Button btnQua;
    @FXML
    private Button btnDacBiet;

    @FXML
    private Button btnDuyet;

    @FXML
    private Button btnThemLoaiQua;

    @FXML
    private Button dangXuat;

    @FXML
    private Button hoKhau;

    @FXML
    private VBox menuPane;

    @FXML
    private Button nhanKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private TableView<NopMinhChung> tbDanhSach;

    @FXML
    private TableColumn<NopMinhChung, Integer> tbID;
    @FXML
    private TableColumn<NopMinhChung,String> tbThanhTich;
    @FXML
    private TableColumn<NopMinhChung, String> tbQua;

    @FXML
    private TableColumn<NopMinhChung, String> tbTen;

    @FXML
    private TableColumn<NhanKhauNhanThuong, String> tbTrangThai;
    @FXML
    private TableView<PhanThuong> tbPhanThuong;
    @FXML
    private TableColumn<PhanThuong,Integer> tbIDQua;
    @FXML
    private TableColumn<PhanThuong,String> tbTenQua;
    @FXML
    private TableColumn<PhanThuong,Integer> tbGiaTri;
    @FXML
    private TableColumn<PhanThuong,String> tbGhiChu;
    @FXML
    private Button thongKe;

    @FXML
    private Label title;
    @FXML
    void dsQuaClicked(MouseEvent event){
        ObservableList<PhanThuong> phanThuongs = Services.querryQuaTheoDip(idDip);
        tbDanhSach.setVisible(false);
        tbPhanThuong.setVisible(true);
        tbPhanThuong.setItems(phanThuongs);
        tbIDQua.setCellValueFactory(new PropertyValueFactory<>("id"));
        tbTenQua.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbGiaTri.setCellValueFactory(new PropertyValueFactory<>("giaTri"));
        tbGhiChu.setCellValueFactory(new PropertyValueFactory<>("ghiChu"));
        btnDacBiet.setStyle("-fx-background-color:#830136FF");
        btnQua.setStyle("-fx-background-color: #000000");
    }
    @FXML
    void chonQuaClicked(MouseEvent event) {

    }

    @FXML
    void dangXuatClicked(MouseEvent event) {

    }

    @FXML
    void dsThuongClicked(MouseEvent event) {
        ObservableList<NopMinhChung> nopMinhChungs = Services.queryNguoiNhanThuong(idDip);
        tbDanhSach.setVisible(true);
        tbPhanThuong.setVisible(false);
        tbDanhSach.setItems(nopMinhChungs);
        tbID.setCellValueFactory(new PropertyValueFactory<>("idNguoiNhan"));
        tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbQua.setCellValueFactory(new PropertyValueFactory<>("phanThuong"));
        tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
        tbThanhTich.setCellValueFactory(new PropertyValueFactory<>("thanhTich"));
        btnDacBiet.setStyle("-fx-background-color:#000000");
        btnQua.setStyle("-fx-background-color: #830136FF");
    }

    @FXML
    void duyetClicked(MouseEvent event) {

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
    void themLoaiQua(MouseEvent event)throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = new Stage();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("danhSachLoaiQua.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void thongKeClicked(MouseEvent event) {

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() ->
        {
            ObservableList<NopMinhChung> nopMinhChungs = Services.queryNguoiNhanThuong(idDip);
            tbDanhSach.setItems(nopMinhChungs);
            tbID.setCellValueFactory(new PropertyValueFactory<>("idNguoiNhan"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
            tbQua.setCellValueFactory(new PropertyValueFactory<>("phanThuong"));
            tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
            tbThanhTich.setCellValueFactory(new PropertyValueFactory<>("thanhTich"));
            title.setText("ID:"+idDip.toString()+"\n"+tenDip);
        }
        );
    }
}
