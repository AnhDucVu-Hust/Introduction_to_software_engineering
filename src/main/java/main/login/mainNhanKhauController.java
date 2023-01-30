package main.login;
import Entity.HoKhau;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.Event;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import Entity.NhanKhau;
import javafx.fxml.FXML;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import java.sql.SQLException;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Optional;

public class mainNhanKhauController implements Initializable {

    @FXML
    private HBox barNK;

    @FXML
    private Button btnKhaiTu;

    @FXML
    private Button btnTamTru;

    @FXML
    private Button btnThemNK;

    @FXML
    private Button btnXoa;

    @FXML
    private Button dangXuat;

    @FXML
    private Button hoKhau;

    @FXML
    private VBox menuPane;

    @FXML
    private Button nhanKhau;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private TableView<NhanKhau> tbNhanKhau;
    @FXML
    private TableColumn<NhanKhau,Integer> tbID;
    @FXML
    private TableColumn<NhanKhau,String> tbTen;
    @FXML
    private TableColumn<NhanKhau,String> tbCCCD;
    @FXML
    private TableColumn<NhanKhau,String> tbTrangThai;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;

    @FXML
    private StackPane tuongTacChinhNK;

    @FXML
    void dangXuatClicked(MouseEvent event) {

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
        NhanKhau nk=tbNhanKhau.getSelectionModel().getSelectedItem();
        if (nk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/khaiTu.fxml"));
            Parent khaiTu = loader.load();
            khaiTuController controller = loader.getController();
            controller.setNhanKhau(nk);
            Stage stage = new Stage();
            stage.setScene(new Scene(khaiTu));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Chưa nhân khẩu nào được chọn để sửa");
            alert.showAndWait();
        }
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
    void phanThuongClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainPhanThuong.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void themNhanKhauClicked(MouseEvent event) throws  IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("themNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void thongKeClicked(MouseEvent event) {

    }
    @FXML
    void xoaClicked(MouseEvent event) throws IOException{
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Xóa nhân khẩu");
            alert.setHeaderText("Bạn có thực sự muốn xóa nhân khẩu này ?");
            alert.setContentText("Việc xóa nhân khẩu sẽ làm mất tất cả các dữ liệu liên quan đến nhân khẩu.");
            Optional<ButtonType> option = alert.showAndWait();

            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                NhanKhau nk = tbNhanKhau.getSelectionModel().getSelectedItem();
                Connection conn = MyConnection.conDB();
                String query = "DELETE from `nhankhau` WHERE idNhanKhau=" + nk.getId();
                PreparedStatement preparedStatement = conn.prepareStatement(query);
                preparedStatement.execute();
                refreshTable();
                tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
                tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
                tbCCCD.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
            } else if (option.get() == ButtonType.CANCEL) {

            }
        } catch (SQLException ex) {
            //Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }


    }
    @FXML
    private void refreshTable() {
        Connection conn = MyConnection.conDB();
        String query = "SELECT * from `nhankhau`";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<NhanKhau> nhanKhaus = FXCollections.observableArrayList();
            while (resultSet.next()) {
                nhanKhaus.add(new NhanKhau(resultSet.getInt("idNhanKhau"),
                        resultSet.getString("hoTen"),
                        resultSet.getDate("ngaySinh"),
                        resultSet.getString("biDanh"),
                        resultSet.getString("noiSinh"),
                        resultSet.getString("gioiTinh"),
                        resultSet.getString("nguyenQuan"),
                        resultSet.getString("danToc"),
                        resultSet.getString("tonGiao"),
                        resultSet.getString("quocTich"),
                        resultSet.getString("ngheNghiep"),
                        resultSet.getString("noiLamViec"),
                        resultSet.getString("cmnd_cccd"),
                        resultSet.getDate("chuyenDenNgay"),
                        resultSet.getString("noiThuongTruTruoc"),
                        resultSet.getString("trangThai")));
                tbNhanKhau.setItems(nhanKhaus);
            }
            pstmt.close();
            resultSet.close();
        } catch (SQLException ex) {
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle){
            refreshTable();

            tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
            tbCCCD.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
            tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
    }
    @FXML
    TextField search;
    @FXML
    public void timKiem(KeyEvent e) {
        search.setOnAction(actionEvent -> {
            try {
                if (e.getCode().equals(KeyCode.ENTER)) {
                    String tuKhoa = search.getText().toString();
                    System.out.println(tuKhoa);
                    Connection conn = MyConnection.conDB();
                    String query = "SELECT * FROM NhanKhau\n" +
                            "WHERE trangThai like '%" + tuKhoa + "%' \n" +
                            "OR hoTen like '%" + tuKhoa + "%'\n" +
                            "OR cmnd_cccd like '%" + tuKhoa + "%'";
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    ResultSet resultSet = preparedStatement.executeQuery();
                    ObservableList<NhanKhau> nhanKhaus = FXCollections.observableArrayList();
                    while (resultSet.next()) {
                        nhanKhaus.add(new NhanKhau(resultSet.getInt("idNhanKhau"),
                                resultSet.getString("hoTen"),
                                resultSet.getDate("ngaySinh"),
                                resultSet.getString("biDanh"),
                                resultSet.getString("noiSinh"),
                                resultSet.getString("gioiTinh"),
                                resultSet.getString("nguyenQuan"),
                                resultSet.getString("danToc"),
                                resultSet.getString("tonGiao"),
                                resultSet.getString("quocTich"),
                                resultSet.getString("ngheNghiep"),
                                resultSet.getString("noiLamViec"),
                                resultSet.getString("cmnd_cccd"),
                                resultSet.getDate("chuyenDenNgay"),
                                resultSet.getString("noiThuongTruTruoc"),
                                resultSet.getString("trangThai")));
                        tbNhanKhau.setItems(nhanKhaus);
                        tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
                        tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
                        tbCCCD.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                        tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
                    }
                }
            } catch (SQLException ex) {

            }
        });
    }
}
