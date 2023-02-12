package main.login;

import Service.Services;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class mainThongKeController implements Initializable {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private AnchorPane mainThongKe;

    @FXML
    private VBox menuPane;

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
    private Button thongKeDip;

    @FXML
    private Text n_ng;

    @FXML
    private Text n_nam;

    @FXML
    private Text n_nu;

    @FXML
    private Text n_ho;

    @FXML
    private Text n_vang;

    @FXML
    private Text n_tru;

    @FXML
    private Text n_06;

    @FXML
    private Text n_612;

    @FXML
    private Text n_1216;

    @FXML
    private Text n_1618;

    @FXML
    private Text n_1865;

    @FXML
    private Text n_65;

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }
    private int idNhanKhau;
    private int idHoKhau= Services.queryIdHoKhauCuaNhanKhau(idNhanKhau);
    @FXML
    private Text loginID;
    @FXML
    private Text loginTen;
    @FXML
    private Text loginQuyen;


    @FXML
    void dangXuatClicked(MouseEvent event) throws  IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("login.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void hoKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainHoKhau.fxml"));
        Parent mainHK = null;
        try {
            mainHK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainHoKhauController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainNhanKhau.fxml"));
        Parent mainNK = null;
        try {
            mainNK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainNhanKhauController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainNK));
        stage.show();
    }

    @FXML
    void phanThuongClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainPhanThuong.fxml"));
        Parent mainPT = null;
        try {
            mainPT = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainPhanThuongController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }

    @FXML
    void thongKeClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainThongKe.fxml"));
        Parent mainPT = null;
        try {
            mainPT = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainThongKeController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }

    @FXML
    void thongKeDipClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/thongKeTraoThuong.fxml"));
        Parent mainPT = null;
        try {
            mainPT = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        thongKeTraoThuongController controller = loader.getController();
        controller.setQuyen(this.quyen);
        controller.setIdNhanKhau(this.idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }

    @FXML
    public void initialize() {

        assert mainThongKe != null : "fx:id=\"mainThongKe\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert menuPane != null : "fx:id=\"menuPane\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert nhanKhau != null : "fx:id=\"nhanKhau\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert hoKhau != null : "fx:id=\"hoKhau\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert phanThuong != null : "fx:id=\"phanThuong\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert thongKe != null : "fx:id=\"thongKe\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert dangXuat != null : "fx:id=\"dangXuat\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_ng != null : "fx:id=\"n_ng\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_nam != null : "fx:id=\"n_nam\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_nu != null : "fx:id=\"n_nu\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_ho != null : "fx:id=\"n_ho\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_vang != null : "fx:id=\"n_vang\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_tru != null : "fx:id=\"n_tru\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_06 != null : "fx:id=\"n_06\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_612 != null : "fx:id=\"n_612\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_1216 != null : "fx:id=\"n_1216\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_1618 != null : "fx:id=\"n_1618\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_1865 != null : "fx:id=\"n_1865\" was not injected: check your FXML file 'mainThongKe.fxml'.";
        assert n_65 != null : "fx:id=\"n_65\" was not injected: check your FXML file 'mainThongKe.fxml'.";

    }

    Integer nnam;
    Integer nnu;
    Integer nng;
    Integer nho;
    Integer nvang;
    Integer ntru;
    Integer n06;
    Integer n612;
    Integer n1216;
    Integer n1618;
    Integer n1865;
    Integer n65;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("Tên: "+Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quyền: "+quyen);

            if(!quyen.equals("Tổ trưởng")){
                thongKeDip.setVisible(false);
            } else{
                thongKeDip.setVisible(true);
            }

            Connection conn = MyConnection.conDB();
            String query = null;
            PreparedStatement pstmt = null;
            ResultSet resultSet = null;
            try {
                // dem so ho gd
                query = "Select count(*) from HoKhau";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                nho = resultSet.getInt(1);
                n_ho.setText(nho + " hộ");

                // dem so nhan khau nam
                query = "Select count(*) from NhanKhau where trangThai = N'Thường trú_Duyệt' and gioiTinh = N'Nam'";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                nnam = resultSet.getInt(1);
                n_nam.setText(nnam + " người");

                // dem so nhan khau nu
                query = "Select count(*) from NhanKhau where trangThai = N'Thường trú_Duyệt' and gioiTinh = N'Nữ'";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                nnu = resultSet.getInt(1);
                n_nu.setText(nnu + " người");

                // dem so ng
                nng = nnam + nnu;
                n_ng.setText(nng + " người");

                // dem so tam vang
                query = "Select count(*) from NhanKhau where trangThai = N'Tạm vắng_Duyệt'";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                nvang = resultSet.getInt(1);
                n_vang.setText(nvang + " người");

                // dem so tam tru
                query = "Select count(*) from NhanKhau where trangThai = N'Tạm trú_Duyệt'";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                ntru = resultSet.getInt(1);
                n_tru.setText(ntru + " người");

                // dem so nguoi 0-6 tuoi
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 6 YEAR) < ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n06 = resultSet.getInt(1);
                n_06.setText(n06 + " người");

                // dem so nguoi 6-12 tuoi
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 6 YEAR) >= ngaySinh and DATE_SUB(CURDATE(), INTERVAL 12 YEAR) < ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n612 = resultSet.getInt(1);
                n_612.setText(n612 + " người");

                // dem so nguoi 12-16 tuoi
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 12 YEAR) >= ngaySinh and DATE_SUB(CURDATE(), INTERVAL 16 YEAR) < ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n1216 = resultSet.getInt(1);
                n_1216.setText(n1216 + " người");

                // dem so nguoi 16-18 tuoi
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 16 YEAR) >= ngaySinh and DATE_SUB(CURDATE(), INTERVAL 18 YEAR) < ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n1618 = resultSet.getInt(1);
                n_1618.setText(n1618 + " người");

                // dem so nguoi 18-65 tuoi
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 18 YEAR) >= ngaySinh and DATE_SUB(CURDATE(), INTERVAL 65 YEAR) < ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n1865 = resultSet.getInt(1);
                n_1865.setText(n1865 + " người");

                // dem so nguoi tren 65
                query = "Select count(*) from NhanKhau where DATE_SUB(CURDATE(), INTERVAL 65 YEAR) >= ngaySinh and trangThai = N'Thường trú_Duyệt';";
                pstmt = conn.prepareStatement(query);
                resultSet = pstmt.executeQuery();
                resultSet.next();
                n65 = resultSet.getInt(1);
                n_65.setText(n65 + " người");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        });
    }
}
