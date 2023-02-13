package main.login;

import Entity.*;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseButton;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.Optional;
import java.util.ResourceBundle;

public class danhSachNhanThuongController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }
    private int idNhanKhau;
    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }
    private String quyen;
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
    private TableColumn<NopMinhChung,String> tbMinhChung;

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
    void chonQuaClicked(MouseEvent event) {
        NopMinhChung nmc=tbDanhSach.getSelectionModel().getSelectedItem();
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/danhSachLoaiQua.fxml"));
        Parent mainHK = null;
        try {
            mainHK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        danhSachLoaiQuaController controller = loader.getController();
        controller.setNmc(nmc);
        controller.setQuyen(quyen);
        Stage stage = new Stage();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }
    @FXML
    void dangXuatClicked(MouseEvent event) throws  IOException {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Đăng xuất");
        alert.setHeaderText("Bạn có thực sự muốn đăng xuất?");
        Optional<ButtonType> option = alert.showAndWait();

        if (option.get() == null) {

        } else if (option.get() == ButtonType.OK) {
            Node node = (Node) event.getSource();
            Stage stage = (Stage) node.getScene().getWindow();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("login.fxml")));
            stage.setScene(scene);
            stage.show();
        }
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
        NopMinhChung nguoiNopMinhChung= tbDanhSach.getSelectionModel().getSelectedItem();
        Services.duyetNhanThuong(nguoiNopMinhChung.getIdNguoiNop());
        ObservableList<NopMinhChung> nopMinhChungs = Services.queryNguoiNhanThuong(idDip);
        tbDanhSach.setItems(nopMinhChungs);
        tbID.setCellValueFactory(new PropertyValueFactory<>("idNguoiNhan"));
        tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbQua.setCellValueFactory(new PropertyValueFactory<>("phanThuong"));
        tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
        tbThanhTich.setCellValueFactory(new PropertyValueFactory<>("thanhTich"));
        tbMinhChung.setCellValueFactory(new PropertyValueFactory<>("linkMinhChung"));
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
    void phanThuongClicked(MouseEvent event) throws IOException{
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
    void xemChiTiet(MouseEvent event){
        tbDanhSach.setOnMousePressed((MouseEvent e) -> {

            if (e.getClickCount()==2 && e.getButton()== MouseButton.PRIMARY){
                NopMinhChung selectedNMC=tbDanhSach.getSelectionModel().getSelectedItem();
                Node node = (Node) e.getSource();
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(getClass().getResource("/main/login/xemChiTietNguoiNhanThuong.fxml"));

                Parent xemNT = null;
                try {
                    xemNT = loader.load();
                } catch (IOException ex) {
                    throw new RuntimeException(ex);
                }
                xemChiTietNguoiNhanThuongController controller = loader.getController();
                controller.setNmc(selectedNMC);
                System.out.println(selectedNMC.getTen());
                Stage stage = new Stage();
                stage.setScene(new Scene(xemNT));
                stage.show();
            }
        });
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() ->
            {
                title.setText("ID:" + idDip.toString() + " - " + tenDip);
                if (!quyen.equals("Tổ trưởng")) {
                    btnDuyet.setVisible(false);
                    btnChonQua.setVisible(false);
                }
                ObservableList<NopMinhChung> nopMinhChungs = Services.queryNguoiNhanThuong(idDip);
                tbDanhSach.setItems(nopMinhChungs);
                tbID.setCellValueFactory(new PropertyValueFactory<>("idNguoiNhan"));
                tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
                tbQua.setCellValueFactory(new PropertyValueFactory<>("phanThuong"));
                tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
                tbThanhTich.setCellValueFactory(new PropertyValueFactory<>("thanhTich"));
                tbMinhChung.setCellValueFactory(new PropertyValueFactory<>("linkMinhChung"));
            }
        );
    }
    @FXML
    void themNguoiClicked(MouseEvent e) throws IOException{
        Node node = (Node) e.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/themNguoiNhanThuong.fxml"));
        Parent them = loader.load();
        themNguoiNhanThuongController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        controller.setIdDipTraoThuong(idDip);
        controller.setTenDipTraoThuong(tenDip);
        Stage stage = new Stage();
        stage.setScene(new Scene(them));
        stage.show();
    }

    @FXML
    void lamMoiClicked(MouseEvent e) {
        ObservableList<NopMinhChung> nopMinhChungs = Services.queryNguoiNhanThuong(idDip);
        tbDanhSach.setItems(nopMinhChungs);
        tbID.setCellValueFactory(new PropertyValueFactory<>("idNguoiNhan"));
        tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbQua.setCellValueFactory(new PropertyValueFactory<>("phanThuong"));
        tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
        tbThanhTich.setCellValueFactory(new PropertyValueFactory<>("thanhTich"));
        tbMinhChung.setCellValueFactory(new PropertyValueFactory<>("linkMinhChung"));
    }
}
