package main.login;
import Entity.DipTraoThuong;
import Entity.HoKhau;
import Entity.PhanThuong;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;
import java.util.ResourceBundle;

public class mainPhanThuongController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }
    private int idNhanKhau;
    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    private String quyen;
    @FXML
    private HBox barNK;

    @FXML
    private Button btnDacBiet;

    @FXML
    private Button btnDipHSG;

    @FXML
    private Button btnDanhSach;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThem;

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
    private TableColumn<DipTraoThuong, Integer> tbID;

    @FXML
    private TableColumn<DipTraoThuong, String> tbNgay;

    @FXML
    private TableView<DipTraoThuong> tbPhanThuong;

    @FXML
    private TableColumn<DipTraoThuong, String> tbTen;

    @FXML
    private Button thongKe;

    @FXML
    void DacBietClicked(MouseEvent event) {
        btnDipHSG.setStyle("-fx-background-color: #830136FF");
        btnDacBiet.setStyle("-fx-background-color: #000000");
        btnQua.setStyle("-fx-background-color: #830136FF");
        tbQua.setVisible(false);
        tbPhanThuong.setVisible(true);
        Connection conn = MyConnection.conDB();
        String query = "SELECT * from diptraothuong where loaiDip='Dịp đặc biệt' ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<DipTraoThuong> dipHSG = FXCollections.observableArrayList();
            while (resultSet.next()) {
                dipHSG.add(new DipTraoThuong(resultSet.getInt("idDip"),
                        resultSet.getString("loaiDip"),
                        resultSet.getString("tenDip"),
                        resultSet.getDate("ngayTraoThuong")
                ));
                tbPhanThuong.setItems(dipHSG);
            }
            pstmt.close();
            resultSet.close();
            tbID.setCellValueFactory(new PropertyValueFactory<>("idDip"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("tenDip"));
            tbNgay.setCellValueFactory(new PropertyValueFactory<>("ngayTraoThuong"));
        } catch (SQLException ex) {
        }
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
    void dipHSGClicked(MouseEvent event) {
        btnDipHSG.setStyle("-fx-background-color: #000000");
        btnDacBiet.setStyle("-fx-background-color: #830136FF");
        btnQua.setStyle("-fx-background-color: #830136FF");
        tbQua.setVisible(false);
        tbPhanThuong.setVisible(true);
        Connection conn = MyConnection.conDB();
        String query = "SELECT * from diptraothuong where loaiDip='Cuối năm học' ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<DipTraoThuong> dipHSG = FXCollections.observableArrayList();
            while (resultSet.next()) {
                dipHSG.add(new DipTraoThuong(resultSet.getInt("idDip"),
                        resultSet.getString("loaiDip"),
                        resultSet.getString("tenDip"),
                        resultSet.getDate("ngayTraoThuong")
                ));
                tbPhanThuong.setItems(dipHSG);
            }
            pstmt.close();
            resultSet.close();
            tbID.setCellValueFactory(new PropertyValueFactory<>("idDip"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("tenDip"));
            tbNgay.setCellValueFactory(new PropertyValueFactory<>("ngayTraoThuong"));
        } catch (SQLException ex) {
        }
    }

    @FXML
    void danhSachClicked(MouseEvent event) throws IOException {
        DipTraoThuong diptraothuong = tbPhanThuong.getSelectionModel().getSelectedItem();
        if (diptraothuong!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/danhSachNhanThuong.fxml"));
            Parent danhSachNhanThuong = loader.load();
            danhSachNhanThuongController controller = loader.getController();
            controller.setIdDip(diptraothuong.getIdDip());
            controller.setTenDip(diptraothuong.getTenDip());
            controller.setQuyen(quyen);
            controller.setIdNhanKhau(idNhanKhau);
            Stage stage = (Stage) node.getScene().getWindow();
            stage.setScene(new Scene(danhSachNhanThuong));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Chưa dịp nào được chọn để sửa");
            alert.showAndWait();
        }

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
        System.out.println(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException {
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
        System.out.println(idNhanKhau);
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
        System.out.println(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }

    @FXML
    void suaClicked(MouseEvent event) throws IOException {
        DipTraoThuong diptraothuong = tbPhanThuong.getSelectionModel().getSelectedItem();
        if (diptraothuong != null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/suaSuKienPhanThuong.fxml"));
            Parent suaSuKienPhanThuong = loader.load();
            suaSuKienPhanThuongController controller = loader.getController();
            controller.setDiptraothuong(diptraothuong);
            controller.setQuyen(quyen);
            controller.setIdNhanKhau(idNhanKhau);
            Stage stage = (Stage) node.getScene().getWindow();
            stage.setScene(new Scene(suaSuKienPhanThuong));
            stage.show();
        } else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Hãy chọn sự kiện để sửa");
            alert.showAndWait();
        }
    }

    @FXML
    void themSuKienClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("themSuKienPhanThuong.fxml")));
        stage.setScene(scene);
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
    private Button btnQua;
    @FXML
    private TableView<PhanThuong> tbQua;
    @FXML
    private TableColumn<PhanThuong,Integer> tbIDQua;
    @FXML
    private TableColumn<PhanThuong,String> tbTenQua;
    @FXML
    private TableColumn<PhanThuong,Integer> tbGiaTri;
    @FXML
    private TableColumn<PhanThuong,String> tbGhiChu;
    @FXML
    void dsQuaClicked(MouseEvent e){
        ObservableList<PhanThuong> phanThuongs = Services.queryTatcaPhanThuong();
        tbPhanThuong.setVisible(false);
        tbQua.setVisible(true);
        tbQua.setItems(phanThuongs);
        tbIDQua.setCellValueFactory(new PropertyValueFactory<>("id"));
        tbTenQua.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbGiaTri.setCellValueFactory(new PropertyValueFactory<>("giaTri"));
        tbGhiChu.setCellValueFactory(new PropertyValueFactory<>("ghiChu"));
        btnDacBiet.setStyle("-fx-background-color:#830136FF");
        btnQua.setStyle("-fx-background-color: #000000");
        btnDipHSG.setStyle("-fx-background-color: #830136FF");
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            Connection conn = MyConnection.conDB();
            String query = "SELECT * from `diptraothuong` where loaiDip='Cuối năm học' ";
            try {
                PreparedStatement pstmt = conn.prepareStatement(query);
                ResultSet resultSet = pstmt.executeQuery();
                ObservableList<DipTraoThuong> dipHSG = FXCollections.observableArrayList();
                while (resultSet.next()) {
                    dipHSG.add(new DipTraoThuong(resultSet.getInt("idDip"),
                            resultSet.getString("loaiDip"),
                            resultSet.getString("tenDip"),
                            resultSet.getDate("ngayTraoThuong")
                    ));
                    tbPhanThuong.setItems(dipHSG);
                }
                pstmt.close();
                resultSet.close();
                tbID.setCellValueFactory(new PropertyValueFactory<>("idDip"));
                tbTen.setCellValueFactory(new PropertyValueFactory<>("tenDip"));
                tbNgay.setCellValueFactory(new PropertyValueFactory<>("ngayTraoThuong"));
            } catch (SQLException ex) {
            }

        });


    }
}
