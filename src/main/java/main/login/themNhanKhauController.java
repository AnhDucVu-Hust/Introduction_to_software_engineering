package main.login;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.stage.Stage;
import Entity.NhanKhau;
import javafx.fxml.FXML;
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
import javafx.scene.control.Alert;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class themNhanKhauController implements Initializable {
    @FXML
    private HBox barNK;

    @FXML
    private TextField biDanh;

    @FXML
    private Button btnKhaiTu;

    @FXML
    private Button btnTamTru;

    @FXML
    private Button btnThemNK;

    @FXML
    private Button btnXoa;

    @FXML
    private TextField cmndCccd;

    @FXML
    private TextField danToc;

    @FXML
    private Button dangXuat;

    @FXML
    private ChoiceBox gioiTinh;

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
    void dangXuatClicked(MouseEvent event) {

    }

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        System.out.println("Clicked");
        try {
            Connection conn = MyConnection.conDB();
            String query = "INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai)\n" +
                    "\tVALUES\t(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, N'Thuong tru');\n ";
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
            pstmt.execute();
            System.out.println("them thanh cong!");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Thêm thành công");
            alert.showAndWait();
            Node node = (Node) event.getSource();
            Stage stage = (Stage) node.getScene().getWindow();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
            stage.setScene(scene);
            stage.show();
        } catch(Exception e){
            System.err.println(e.getMessage());
            Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Hãy điền đầy đủ thông tin");
                alert.showAndWait();
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
    void khaiTuClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("khaiTu.fxml")));
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
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainPhanThuong.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void quayLai(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();

    }
    @FXML
    void quayLaiThemNKClicked(MouseEvent event){

    }

    @FXML
    void themNhanKhauClicked(MouseEvent event) {
    }

    @FXML
    void thongKeClicked(MouseEvent event) {

    }
    public void initialize(URL url, ResourceBundle resourceBundle) {
        gioiTinh.getItems().add("Nam");
        gioiTinh.getItems().add("Nữ");
    }

}
