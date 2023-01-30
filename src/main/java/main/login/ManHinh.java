package main.login;
import java.net.URL;
import java.time.LocalDate;

import java.sql.*;

import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.control.TextField;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.stage.Stage;

import javax.xml.transform.Result;
import java.io.IOException;
import java.util.ResourceBundle;

public class ManHinh implements Initializable {
    @FXML
    private VBox menuPane;
    @FXML
    private Button dangXuat;
    @FXML
    private Pane dkTamTru;
    @FXML
    private Button hoKhau;

    @FXML
    private Button nhanKhau;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;
    @FXML
    private Button btnKhaiTu;

    @FXML
    private Button btnTamTru;

    @FXML
    private Button btnThemNK;

    @FXML
    private Button btnXoa;
    @FXML
    private Pane themNhanKhau;
    @FXML
    private TableView<UserInfo> tableNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;
    @FXML
    private TextField cmndCccdKhaiTu;
    @FXML
    private TextField danTocKhaiTu;
    @FXML
    private ChoiceBox<?> gioiTinhKhaiTu;
    @FXML
    private Button guiThongTinKhaiTu;
    @FXML
    private TextField hoTenKhaiTu;
    @FXML
    private DatePicker ngayChuyenDen;

    @FXML
    private DatePicker ngayChuyenDenKhaiTu;

    @FXML
    private DatePicker ngaySinh;

    @FXML
    private DatePicker ngaySinhKhaiTu;
    @FXML
    private TextField ngheNghiep;

    @FXML
    private TextField nguyenNhanChet;

    @FXML
    private TextField nguyenQuan;

    @FXML
    private TextField nguyenQuanKhaiTu;
    @FXML
    private TextField noiChet;

    @FXML
    private TextField noiLamViec;

    @FXML
    private TextField noiSinh;

    @FXML
    private TextField noiSinhKhaiTu;

    @FXML
    private TextField noiThuongTruTruoc;

    @FXML
    private TextField noiThuongTruTruocKhaiTu;
    @FXML
    private TextField quocTich;

    @FXML
    private TextField quocTichKhaiTu;
    @FXML
    private TextField tonGiao;

    @FXML
    private TextField tonGiaoKhaiTu;
    @FXML
    private HBox barNK;
    @FXML
    private HBox barHK;
    @FXML
    private HBox barPT;
    @FXML
    void dangXuatClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        //stage.setMaximized(true);
        stage.close();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("Login.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void hoKhauClicked(MouseEvent event) {
        title.setText("Hộ khẩu");
        pgnBackground.setBackground(new Background(new BackgroundFill(Color.rgb(2, 73, 105), CornerRadii.EMPTY, Insets.EMPTY)));
        menuPane.setBackground(new Background(new BackgroundFill(Color.rgb(2, 73, 105), CornerRadii.EMPTY, Insets.EMPTY)));
        nhanKhau.setStyle("-fx-background-color: transparent; ");
        phanThuong.setStyle("-fx-background-color: transparent; ");
        thongKe.setStyle("-fx-background-color: transparent; ");
        hoKhau.setStyle("-fx-background-color: #000000; ");
        barNK.setVisible(false);
        barHK.setVisible(true);
        barPT.setVisible(false);

    }

    @FXML
    void nhanKhauClicked(MouseEvent event) {
        title.setText("Nhân khẩu");
        pgnBackground.setBackground(new Background(new BackgroundFill(Color.rgb(63,43,99), CornerRadii.EMPTY, Insets.EMPTY)));
        menuPane.setBackground(new Background(new BackgroundFill(Color.rgb(63, 43, 99), CornerRadii.EMPTY, Insets.EMPTY)));
        nhanKhau.setStyle("-fx-background-color: #000000; ");
        phanThuong.setStyle("-fx-background-color: transparent; ");
        thongKe.setStyle("-fx-background-color: transparent; ");
        hoKhau.setStyle("-fx-background-color: transparent; ");
        barNK.setVisible(true);
        barHK.setVisible(false);
        barPT.setVisible(false);
    }

    @FXML
    void phanThuongClicked(MouseEvent event) {
        title.setText("Phần thưởng");
        pgnBackground.setBackground(new Background(new BackgroundFill(Color.rgb(131, 1, 54), CornerRadii.EMPTY, Insets.EMPTY)));
        menuPane.setBackground(new Background(new BackgroundFill(Color.rgb(131, 1, 54), CornerRadii.EMPTY, Insets.EMPTY)));
        nhanKhau.setStyle("-fx-background-color: transparent; ");
        phanThuong.setStyle("-fx-background-color: #000000; ");
        thongKe.setStyle("-fx-background-color: transparent; ");
        hoKhau.setStyle("-fx-background-color: transparent; ");
        barPT.setVisible(true);
        barNK.setVisible(false);
        barHK.setVisible(false);
    }
    @FXML
    private StackPane tuongTacChinhNK;
    @FXML
    void thongKeClicked(MouseEvent event) {
        title.setText("Thống kê");
        pgnBackground.setBackground(new Background(new BackgroundFill(Color.rgb(1,54,3), CornerRadii.EMPTY, Insets.EMPTY)));
        menuPane.setBackground(new Background(new BackgroundFill(Color.rgb(1, 54, 3), CornerRadii.EMPTY, Insets.EMPTY)));
        nhanKhau.setStyle("-fx-background-color: transparent; ");
        phanThuong.setStyle("-fx-background-color: transparent; ");
        thongKe.setStyle("-fx-background-color: #000000; ");
        hoKhau.setStyle("-fx-background-color: transparent; ");
    }
    @FXML
    void themNhanKhauClicked(MouseEvent event){
        for (Node x : tuongTacChinhNK.getChildren()){
            x.setVisible(false);
        }
        themNhanKhau.setVisible(true);
    }
    @FXML
    private TextField hoTenNK;
    @FXML
    private TextField biDanhNK;
    @FXML
    private DatePicker ngaySinhNK;
    @FXML
    private TextField noiSinhNK;
    @FXML
    private TextField nguyenQuanNK;
    @FXML
    private TextField danTocNK;
    @FXML
    private TextField tonGiaoNK;
    @FXML
    private TextField quocTichNK;
    @FXML
    private TextField cmndCccdNK;
    @FXML
    private TextField ngheNghiepNK;
    @FXML
    private TextField noiLamViecNK;
    @FXML
    private TextField noiThuongTruTruocNK;
    @FXML
    private DatePicker ngayChuyenDenNK;
    @FXML
    private ChoiceBox gioiTinhNK;
    @FXML
    void guiThongTinClicked(MouseEvent event){
        System.out.println("Clicked");
        try {
            Connection conn = MyConnection.conDB();
            String query = "INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai)\n" +
                    "\tVALUES\t(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, N'Thuong tru');\n";
            PreparedStatement pstmt = conn.prepareStatement(query);

            String hoTenStr = hoTenNK.getText().toString();
            String biDanhStr = biDanhNK.getText().toString();
            LocalDate ngaySinhDate = ngaySinhNK.getValue();
            String noiSinhStr = noiSinhNK.getText().toString();
            String nguyenQuanStr = nguyenQuanNK.getText().toString();
            String danTocStr = danTocNK.getText().toString();
            String gioiTinhStr = gioiTinhNK.getValue().toString();
            String tonGiaoStr = tonGiaoNK.getText().toString();
            String quocTichStr = quocTichNK.getText().toString();
            String cmndCccdStr = cmndCccdNK.getText().toString();
            String ngheNghiepStr = ngheNghiepNK.getText().toString();
            String noiLamViecStr = noiLamViecNK.getText().toString();
            LocalDate ngayChuyenDenDate = ngayChuyenDenNK.getValue();
            String noiThuongTruTruocStr = noiThuongTruTruocNK.getText().toString();

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
        } catch(SQLException e){
            System.err.println(e.getMessage());
//            status = "Exception";
        }

    }
    @FXML
    private Pane khaiTu;
    @FXML
    void khaiTuClicked(MouseEvent event){
        for (Node x : tuongTacChinhNK.getChildren()){
            x.setVisible(false);
        }
        khaiTu.setVisible(true);
    }
    @FXML
    void guiThongTinKhaiTuClicked(MouseEvent event){

    }
    @FXML
    private Pane tuongtacchinhHK;
    @FXML
    private Pane themMoiHK;
    @FXML
    void themHoKhauClicked(MouseEvent event){
        for (Node x: tuongtacchinhHK.getChildren()){
            x.setVisible(false);
        }
        themMoiHK.setVisible(true);
    }
    @FXML
    private Button guiThongTinThemHK;
    @FXML
    void guiThongTinThemHKClicked(MouseEvent event){

    }
    @FXML
    void taoSuKienClicked(MouseEvent event){

    }
    @FXML
    void suaSuKienClicked(MouseEvent event){

    }
    @FXML
    void quayLaiThemNKClicked(MouseEvent event){
        themNhanKhau.setVisible(false);
        tableNhanKhau.setVisible(true);
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        gioiTinhNK.getItems().add("Nam");
        gioiTinhNK.getItems().add("Nữ");
        Connection conn = MyConnection.conDB();
        String query = "SELECT idNhanKhau, hoTen,trangThai,ngaySinh from nhankhau";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<UserInfo> users=tableNhanKhau.getItems();
            while(resultSet.next()) {
                UserInfo user = new UserInfo(resultSet.getInt("idNhanKhau"),
                        resultSet.getString("hoTen"),
                        resultSet.getString("trangThai"),
                        resultSet.getDate("ngaySinh"));
                System.out.println(resultSet.getInt("Age"));
                users.add(user);
                tableNhanKhau.setItems(users);
            }
        } catch(SQLException e){
                System.err.println(e.getMessage());
            }

        }



}

