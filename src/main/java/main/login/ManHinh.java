package main.login;

import javafx.fxml.FXML;
import javafx.geometry.Insets;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.control.TextField;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
public class ManHinh {
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
    private TableView<?> tableNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;
    @FXML
    private TextField cmndCccd;

    @FXML
    private TextField cmndCccdKhaiTu;

    @FXML
    private TextField danToc;

    @FXML
    private TextField danTocKhaiTu;
    @FXML
    private ChoiceBox<?> gioiTinh;

    @FXML
    private ChoiceBox<?> gioiTinhKhaiTu;

    @FXML
    private Button guiThongTin;

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
    void dangXuatClicked(MouseEvent event) {

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
    void guiThongTinClicked(MouseEvent event){

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
}

