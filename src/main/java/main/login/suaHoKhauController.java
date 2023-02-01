package main.login;
import Service.Services;
import Entity.HoKhau;
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
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;

public class suaHoKhauController implements Initializable {

    @FXML
    private HBox barHK;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThemHK;

    @FXML
    private Button btnThemHK2;

    @FXML
    private Button dangXuat;

    @FXML
    private TextField diaChi;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField hoTen;

    @FXML
    private TextField idChuHo;

    @FXML
    private TextField idHoKhau;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayCap;

    @FXML
    private Button nhanKhau;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private TextField phuongXa;

    @FXML
    private TextField quanHuyen;

    @FXML
    private Button quayLai;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private TextField tinhThanhPho;

    @FXML
    private Label title;
    private HoKhau hokhau;
    @FXML
    private StackPane tuongTacChinhNK;

    public void set_hokhau(HoKhau hk) {
        this.hokhau = hk;
    }

    @FXML
    void dangXuatClicked(MouseEvent event) {

    }

    @FXML
    void guiThongTinClicked(MouseEvent event) throws  IOException {
        Integer idHoKhauStr = Integer.parseInt(idHoKhau.getText());
        Integer idChuHoStr = Integer.parseInt(idChuHo.getText());
        String tinhThanhPhoStr = tinhThanhPho.getText().toString();
        String quanHuyenStr = quanHuyen.getText().toString();
        String phuongXaStr = phuongXa.getText().toString();
        String diaChiStr = diaChi.getText().toString();
        Date ngayCapDate = Date.valueOf(ngayCap.getValue());
        HoKhau hk = new HoKhau(idHoKhauStr,idChuHoStr,tinhThanhPhoStr,quanHuyenStr,phuongXaStr,diaChiStr,ngayCapDate,"Binh thuong");
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Sửa hộ khẩu");
        alert.setHeaderText("Bạn muốn sửa hộ khẩu này?");
        alert.setContentText("Nếu bạn sửa, tất cả thông tin cũ của hộ khẩu sẽ mất");
        Optional<ButtonType> option = alert.showAndWait();

        if (option.get() == null) {

        } else if (option.get() == ButtonType.OK){
            Services.suaHoKhau(hk);
            Alert alert1 = new Alert(Alert.AlertType.INFORMATION);
            alert1.setTitle("Sửa hộ khẩu");
            alert1.setHeaderText("Bạn muốn sửa hộ khẩu này?");
            alert1.setContentText("Nếu bạn sửa, tất cả thông tin cũ của hộ khẩu sẽ mất");
            alert1.showAndWait();
            Node node = (Node) event.getSource();
            Stage stage = (Stage) node.getScene().getWindow();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainHoKhau.fxml")));
            stage.setScene(scene);
            stage.show();
        }
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
    void nhanKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void phanThuongClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void quayLaiClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainHoKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }


    @FXML
    void thongKeClicked(MouseEvent event) {

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() -> {
            try {
                Connection conn = MyConnection.conDB();
                String query = "SELECT hoTen FROM nhankhau WHERE idNhanKhau =" + hokhau.getIdChuHo();
                PreparedStatement pstmt = conn.prepareStatement(query);
                ResultSet resultSet = pstmt.executeQuery();
                if (resultSet!= null) {
                    String hoten = "";
                    if (resultSet.next()) {
                        hoten = resultSet.getString("hoTen");
                    }
                    hoTen.setText(hoten);
                    ngayCap.setValue(hokhau.getNgayTao().toLocalDate());
                    idChuHo.setText(hokhau.getIdChuHo().toString());
                    idHoKhau.setText(hokhau.getIdHoKhau().toString());
                    hoTen.setEditable(false);
                    idHoKhau.setEditable(false);
                    idChuHo.setEditable(false);
                    tinhThanhPho.setText(hokhau.getTinhThanhPho());
                    quanHuyen.setText(hokhau.getQuanHuyen());
                    phuongXa.setText(hokhau.getPhuongXa());
                    diaChi.setText(hokhau.getDiaChi());
                }
                else {
                    Alert alert = new Alert(Alert.AlertType.WARNING);
                    alert.setHeaderText(null);
                    alert.setContentText("Hãy chọn hộ khẩu muốn chỉnh sửa");
                    alert.showAndWait();
                }
            } catch (SQLException ex) {
            }
        });


    }
}